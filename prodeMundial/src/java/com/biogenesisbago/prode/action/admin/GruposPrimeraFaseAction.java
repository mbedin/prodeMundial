package com.biogenesisbago.prode.action.admin;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRichTextString;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;

import com.biogenesisbago.prode.model.Cliente;
import com.biogenesisbago.prode.model.Equipo;
import com.biogenesisbago.prode.model.Grupo;
import com.biogenesisbago.prode.model.Tarjeta;
import com.biogenesisbago.prode.service.EquipoService;
import com.biogenesisbago.prode.service.GrupoService;
import com.biogenesisbago.prode.service.TarjetaService;
import com.opensymphony.xwork2.Action;

public class GruposPrimeraFaseAction extends BaseAdminAction {
    /**
	 * 
	 */
	private static final long serialVersionUID = 8091259220973713414L;

	// Services
	private GrupoService grupoService;
	private EquipoService equipoService;
	private TarjetaService tarjetaService;

	// Model Principal
	private Cliente cliente = new Cliente();
	private InputStream excelStream;
	private Grupo grupo = new Grupo();
	
	// Listas
	private List<Grupo> grupos = new ArrayList<Grupo>();
	private List<Equipo> equipos = new ArrayList<Equipo>();
	private List<Tarjeta> tarjetas = new ArrayList<Tarjeta>();
	
	
	public GruposPrimeraFaseAction(GrupoService grupoService,EquipoService equipoService,
			TarjetaService tarjetaService) {
    	// Seteamos los services
    	this.grupoService = grupoService;
    	this.equipoService = equipoService;
    	this.tarjetaService = tarjetaService;
    
	}

	/*************************************************
     *  Getters y Setters
     *************************************************/

	public void setGrupoService(GrupoService grupoService) {
		this.grupoService = grupoService;
	}

	public GrupoService getGrupoService() {
		return grupoService;
	}
	
	public void setEquipoService(EquipoService equipoService) {
		this.equipoService = equipoService;
	}

	public EquipoService getEquipoService() {
		return equipoService;
	}
	
	public TarjetaService getTarjetaService() {
		return tarjetaService;
	}

	public void setTarjetaService(TarjetaService tarjetaService) {
		this.tarjetaService = tarjetaService;
	}

	public void setTarjetas(List<Tarjeta> tarjetas) {
		this.tarjetas = tarjetas;
	}

	public List<Tarjeta> getTarjetas() {
		return tarjetas;
	}
	
	public void setGrupos(List<Grupo> grupos) {
		this.grupos = grupos;
	}
	
	public void setEquipos(List<Equipo> equipos) {
		this.equipos = equipos;
	}

	public List<Equipo> getEquipos() {
		return equipos;
	}

	public List<Grupo> getGrupos() {
		return grupos;
	}

	public void setGrupo(Grupo grupo) {
		this.grupo = grupo;
	}

	public Grupo getGrupo() {
		return grupo;
	}
	
	public void setExcelStream(InputStream excelStream) {
		this.excelStream = excelStream;
	}

	public InputStream getExcelStream() {
		return excelStream;
	}

    /*************************************************
     *  Methods
     *************************************************/
    public String doList() {
    	
    	if (!isSessionActive()) return Action.LOGIN;
        
    	this.setRetorno(ACTION_MENU);
    	
    	this.grupos = grupoService.findAll();
    	
        return Action.INPUT;
    }

    
    public String doInput() {
    	
    	if (!isSessionActive()) return Action.LOGIN;

    	this.setRetorno(ACTION_POSICIONES);
    	
    	this.grupo = grupoService.find(grupo.getId());
    	for (Iterator<Equipo> iterator = this.grupo.getEquipos().iterator(); iterator.hasNext();) {
			Equipo e = (Equipo)iterator.next();
			this.equipos.add(equipoService.find(e.getId()));
		}
    	this.grupo.setEquipos(equipos);
    	return Action.INPUT;
    	
    }
    
	public void validateDoSave() {
		int idEquipoPrimero=this.grupo.getEquipoPrimero().getId();
		int idEquipoSegundo=this.grupo.getEquipoSegundo().getId();
		if (idEquipoPrimero != idEquipoSegundo) {
			this.grupo = grupoService.find(this.grupo.getId());
			this.grupo.setEquipoPrimero(equipoService.find(idEquipoPrimero));
			this.grupo.setEquipoSegundo(equipoService.find(idEquipoSegundo));
			
			this.setSubmitted(true);
		    this.setRetorno(ACTION_POSICIONES);
		    
		    this.clearFieldErrors();
		} else {
			this.addFieldError("posiciones.guardar", getText("admin.posiciones.guardar.imposibleGuardar"));
			doInput();
		}
		
    }
    
	public String doSave() {
    	
    	if (!isSessionActive()) return Action.LOGIN;

    	this.setMensaje("Posiciones actualizadas correctamente.");
    	
    	grupoService.save(this.grupo);
    	
    	this.setRetorno(ACTION_POSICIONES);
    	
    	return Action.SUCCESS;
    	
    }
	
	public String doListTarjetasConAciertos() {
		if (!isSessionActive()) return Action.LOGIN;
		this.setRetorno(ACTION_POSICIONES);
		this.grupo =grupoService.find(this.grupo.getId());
		int total;
		total = tarjetaService.countTarjetasConPremioClasificacion(this.grupo.getId(),
					this.grupo.getEquipoPrimero().getId(), this.grupo.getEquipoSegundo().getId());
		if (total>0) {
			this.tarjetas = tarjetaService.findTarjetasConPremioPorClasificacion(this.grupo.getId());	
		} else {
			this.setMensaje("No se encontraron tarjetas con premios");
			return Action.SUCCESS;
		}
		return Action.INPUT;
	}
	
	public String doExcelTarjetasConAciertos() {
	    	
	    	if (!isSessionActive()) return Action.LOGIN;
	        
	    	this.setRetorno(ACTION_MENU);
	    	
	    	this.excelStream = getExcelTarjetasConPremio();
	    	
	        return Action.SUCCESS;
	}

	    
	public String doSendNotificacion() {
		if (!isSessionActive()) return Action.LOGIN;
		this.setMensaje("Notificaciones enviadas correctamente");
		if (this.grupo.getId()!=0) {
	    	this.grupo = grupoService.find(this.grupo.getId());
	    	grupo.setPremioEnviado(true);
	    	grupoService.save(this.grupo);
	    }		
	    this.setRetorno(ACTION_POSICIONES);
		return Action.SUCCESS;
	}

    
    /*************************************************
     *  Common
     *************************************************/
    protected void addCommonResources() {
    	addScript("/admin/posiciones.js");
    }
    
    
    private InputStream getExcelTarjetasConPremio() {
    	ByteArrayOutputStream bos = new ByteArrayOutputStream();
    	try {
    		this.tarjetas = tarjetaService.findTarjetasConPremioPorClasificacion(this.grupo.getId());

        	HSSFWorkbook libro = new HSSFWorkbook();
            HSSFSheet hoja = libro.createSheet();

            InsertarEncabezado(hoja);
            
            for (Iterator<Tarjeta> iterator = this.tarjetas.iterator(); iterator.hasNext();) {
				Tarjeta tarjeta = (Tarjeta) iterator.next();
				InsertarTarjeta(hoja, tarjeta);
			}

            libro.write(bos);

    	} catch (Exception e) {
			e.printStackTrace();
		}

		return new ByteArrayInputStream(bos.toByteArray());

	}
    
    private void InsertarEncabezado(HSSFSheet hoja) {
    	
    	int i = 0;
    	HSSFRow fila = hoja.createRow(0);
    	HSSFCell celda = fila.createCell(i++);
    	HSSFRichTextString texto = new HSSFRichTextString(getText("admin.tarjeta.id"));
        celda.setCellValue(texto);
        
        celda = fila.createCell(i++);
    	texto = new HSSFRichTextString(getText("admin.cliente.nombre"));
        celda.setCellValue(texto);

        celda = fila.createCell(i++);
    	texto = new HSSFRichTextString(getText("admin.cliente.mail"));
        celda.setCellValue(texto);

    }
    
    private void InsertarTarjeta(HSSFSheet hoja, Tarjeta tarjeta) {
    	int i = 0;
    	HSSFRow fila = hoja.createRow(hoja.getLastRowNum()+1);
    	HSSFCell celda = fila.createCell(i++);
    	cliente=tarjeta.getCliente();
    	
    	celda.setCellValue(tarjeta.getId());
    	
    	celda = fila.createCell(i++);
        HSSFRichTextString texto = new HSSFRichTextString(cliente.getNombreYApellido());
        celda.setCellValue(texto);

        celda = fila.createCell(i++);
    	texto = new HSSFRichTextString(cliente.getEMail());
        celda.setCellValue(texto);

    }



}
