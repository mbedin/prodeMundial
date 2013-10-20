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
import com.biogenesisbago.prode.model.Tarjeta;
import com.biogenesisbago.prode.service.ClienteService;
import com.biogenesisbago.prode.service.MailService;
import com.biogenesisbago.prode.service.TarjetaService;
import com.opensymphony.xwork2.Action;

public class ReportesClientesAction extends BaseAdminAction {
    /**
	 * 
	 */
	private static final long serialVersionUID = 8091259220973713414L;

	private static final int REPORTE_CLIENTES_ACEPTO_BASES = 1;
	private static final int REPORTE_CLIENTES_TARJETAS = 2;
	private static final int REPORTE_CLIENTES_PUNTOS_TRIVIA = 3;
	private static final int REPORTE_CLIENTES_GENERAL = 4;
	private static final int REPORTE_TARJETAS_PUNTOS = 5;
	
	// Services
	private ClienteService clienteService;
	private TarjetaService tarjetaService;
	private MailService mailService;

	// Listas
	private List<Cliente> clientes = new ArrayList<Cliente>();
	private List<Tarjeta> tarjetas = new ArrayList<Tarjeta>();
	
	// Model Principal
	private Cliente cliente = new Cliente();
	private Tarjeta tarjeta = new Tarjeta();
	private InputStream excelStream;

	
	public ReportesClientesAction(ClienteService clienteService, MailService mailService,
			TarjetaService tarjetaService) {
    	
		// Seteamos los services
    	this.clienteService = clienteService;
    	this.tarjetaService = tarjetaService;
    	this.setMailService(mailService);
        
    }

    /*************************************************
     *  Getters y Setters
     *************************************************/
	public List<Cliente> getClientes() {
		return clientes;
	}

	public void setClientes(List<Cliente> clientes) {
		this.clientes = clientes;
	}

	public Cliente getCliente() {
		return cliente;
	}

	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}
	
	public void setTarjeta(Tarjeta tarjeta) {
		this.tarjeta = tarjeta;
	}

	public Tarjeta getTarjeta() {
		return tarjeta;
	}

	public InputStream getExcelStream() {
		return excelStream;
	}

	public void setExcelStream(InputStream excelStream) {
		this.excelStream = excelStream;
	}
	
	public static int getReporteTarjetasPuntos() {
		return REPORTE_TARJETAS_PUNTOS;
	}

	public void setMailService(MailService mailService) {
		this.mailService = mailService;
	}

	public MailService getMailService() {
		return mailService;
	}

	public void setTarjetas(List<Tarjeta> tarjetas) {
		this.tarjetas = tarjetas;
	}

	public List<Tarjeta> getTarjetas() {
		return tarjetas;
	}
	
    /*************************************************
     *  Methods
     *************************************************/
	
	public String doListAceptoBases() {
    	
    	if (!isSessionActive()) return Action.LOGIN;
        
    	this.setRetorno(ACTION_MENU);
    	
    	this.clientes = clienteService.findClientesByAceptoBases(this.cliente.getAceptoBases());
    	
        return Action.SUCCESS;
    }

	public String doExcelAceptoBases() {
    	if (!isSessionActive()) return Action.LOGIN;
        
    	this.setRetorno(ACTION_MENU);

    	this.excelStream = getExcelAceptoBases();
    	
        return Action.SUCCESS;
    }
	
	public String doListTarjetas() {
    	
    	if (!isSessionActive()) return Action.LOGIN;
        
    	this.setRetorno(ACTION_MENU);
    	
    	this.clientes = clienteService.findClientesReporteTarjetas();
    	
        return Action.SUCCESS;
    }

	public String doExcelTarjetas() {
    	
		if (!isSessionActive()) return Action.LOGIN;
        
    	this.setRetorno(ACTION_MENU);

    	this.excelStream = getExcelTarjetas();
    	
        return Action.SUCCESS;
    }
	
	public String doListPuntosTrivia() {
    	
    	if (!isSessionActive()) return Action.LOGIN;
        
    	this.setRetorno(ACTION_MENU);
    	
    	this.clientes = clienteService.findClientesPuntosTrivia();
    	
        return Action.SUCCESS;
    }

	public String doExcelPuntosTrivia() {
    	
    	if (!isSessionActive()) return Action.LOGIN;
        
    	this.setRetorno(ACTION_MENU);
    	
    	this.excelStream = getExcelPuntosTrivia();
    	
        return Action.SUCCESS;
    }
	
	public String doListGeneral() {
    	
    	if (!isSessionActive()) return Action.LOGIN;
        
    	this.setRetorno(ACTION_MENU);
    	
    	this.clientes = clienteService.findClientesReporteGeneral();
    	
        return Action.SUCCESS;
    }

	public String doExcelGeneral() {
    	
    	if (!isSessionActive()) return Action.LOGIN;
        
    	this.setRetorno(ACTION_MENU);
    	
    	this.excelStream = getExcelReporteGeneral();
    	
        return Action.SUCCESS;
    }
	
	public String doListTarjetasPorPuntos() {
    	
    	if (!isSessionActive()) return Action.LOGIN;
        
    	this.setRetorno(ACTION_MENU);
    	
    	this.setTarjetas(tarjetaService.findTarjetasPorPuntos());
    	
    	
    	return Action.SUCCESS;
    }

	public String doExcelTarjetasPorPuntos() {
    	
    	if (!isSessionActive()) return Action.LOGIN;
        
    	this.setRetorno(ACTION_MENU);
    	
    	this.excelStream = getExcelReporteTarjetasPorPuntos();
    	
        return Action.SUCCESS;
    }
	
	public String doListClientesPorPuntos() {
    	
    	if (!isSessionActive()) return Action.LOGIN;
        
    	this.setRetorno(ACTION_MENU);
    	
    	this.setClientes(clienteService.findClientesPorPuntos());
    	
        return Action.SUCCESS;
    }

	public String doExcelClientesPorPuntos() {
    	
    	if (!isSessionActive()) return Action.LOGIN;
        
    	this.setRetorno(ACTION_MENU);
    	
    	this.excelStream = getExcelReporteClientesPorPuntos();
    	
        return Action.SUCCESS;
    }
	
	public String doListClientesPuntosFinales() {
    	
    	if (!isSessionActive()) return Action.LOGIN;
        
    	this.setRetorno(ACTION_MENU);
    	
    	this.setClientes(clienteService.findClientesPuntosFinales());
    	
        return Action.SUCCESS;
    }

	public String doExcelClientesPuntosFinales() {
    	
    	if (!isSessionActive()) return Action.LOGIN;
        
    	this.setRetorno(ACTION_MENU);
    	
    	this.excelStream = getExcelReporteClientesPuntosFinales();
    	
        return Action.SUCCESS;
    }

    


   
	/*************************************************
     *  Common
     *************************************************/
    protected void addCommonResources() {
    	addScript("/admin/clientes.js");
    }

    private InputStream getExcelAceptoBases() {
    	ByteArrayOutputStream bos = new ByteArrayOutputStream();
    	try {
        	this.clientes = clienteService.findClientesByAceptoBases(this.cliente.getAceptoBases());

        	HSSFWorkbook libro = new HSSFWorkbook();
            HSSFSheet hoja = libro.createSheet();

            InsertarEncabezado(hoja, REPORTE_CLIENTES_ACEPTO_BASES);
            
            for (Iterator<Cliente> iterator = this.clientes .iterator(); iterator.hasNext();) {
				Cliente cliente = (Cliente) iterator.next();
				InsertarCliente(hoja, REPORTE_CLIENTES_ACEPTO_BASES, cliente);
			}

            libro.write(bos);

    	} catch (Exception e) {
			e.printStackTrace();
		}

		return new ByteArrayInputStream(bos.toByteArray());

    }

    private InputStream getExcelTarjetas() {
    	ByteArrayOutputStream bos = new ByteArrayOutputStream();
    	try {
        	this.clientes = clienteService.findClientesReporteTarjetas();

        	HSSFWorkbook libro = new HSSFWorkbook();
            HSSFSheet hoja = libro.createSheet();

            InsertarEncabezado(hoja, REPORTE_CLIENTES_TARJETAS);
            
            for (Iterator<Cliente> iterator = this.clientes .iterator(); iterator.hasNext();) {
				Cliente cliente = (Cliente) iterator.next();
				InsertarCliente(hoja, REPORTE_CLIENTES_TARJETAS, cliente);
			}

            libro.write(bos);

    	} catch (Exception e) {
			e.printStackTrace();
		}

		return new ByteArrayInputStream(bos.toByteArray());

    }
    
    private InputStream getExcelPuntosTrivia() {
    	ByteArrayOutputStream bos = new ByteArrayOutputStream();
    	try {
        	this.clientes = clienteService.findClientesPuntosTrivia();

        	HSSFWorkbook libro = new HSSFWorkbook();
            HSSFSheet hoja = libro.createSheet();

            InsertarEncabezado(hoja, REPORTE_CLIENTES_PUNTOS_TRIVIA);
            
            for (Iterator<Cliente> iterator = this.clientes .iterator(); iterator.hasNext();) {
				Cliente cliente = (Cliente) iterator.next();
				InsertarCliente(hoja, REPORTE_CLIENTES_PUNTOS_TRIVIA, cliente);
			}

            libro.write(bos);

    	} catch (Exception e) {
			e.printStackTrace();
		}

		return new ByteArrayInputStream(bos.toByteArray());
    }
    
    private InputStream getExcelReporteGeneral() {
    	ByteArrayOutputStream bos = new ByteArrayOutputStream();
    	try {
        	this.clientes = clienteService.findClientesReporteGeneral();

        	HSSFWorkbook libro = new HSSFWorkbook();
            HSSFSheet hoja = libro.createSheet();

            InsertarEncabezado(hoja, REPORTE_CLIENTES_GENERAL);
            
            for (Iterator<Cliente> iterator = this.clientes .iterator(); iterator.hasNext();) {
				Cliente cliente = (Cliente) iterator.next();
				InsertarCliente(hoja, REPORTE_CLIENTES_GENERAL, cliente);
			}

            libro.write(bos);

    	} catch (Exception e) {
			e.printStackTrace();
		}

		return new ByteArrayInputStream(bos.toByteArray());

    }
    
    private InputStream getExcelReporteTarjetasPorPuntos() {
    	ByteArrayOutputStream bos = new ByteArrayOutputStream();
    	try {
        	this.tarjetas = tarjetaService.findTarjetasPorPuntos();

        	HSSFWorkbook libro = new HSSFWorkbook();
            HSSFSheet hoja = libro.createSheet();

            InsertarEncabezadoTarjeta(hoja);
            
            for (Iterator<Tarjeta> iterator = this.tarjetas.iterator(); iterator.hasNext();) {
				Tarjeta tarjeta = (Tarjeta) iterator.next();
				InsertarTarjeta(hoja, REPORTE_TARJETAS_PUNTOS, tarjeta);
			}

            libro.write(bos);

    	} catch (Exception e) {
			e.printStackTrace();
		}

		return new ByteArrayInputStream(bos.toByteArray());

    }
    
    private InputStream getExcelReporteClientesPuntosFinales() {
    	ByteArrayOutputStream bos = new ByteArrayOutputStream();
    	try {
        	this.clientes = clienteService.findClientesPuntosFinales();

        	HSSFWorkbook libro = new HSSFWorkbook();
            HSSFSheet hoja = libro.createSheet();

            InsertarEncabezadoClientePorPuntos(hoja);
            
            for (Iterator<Cliente> iterator = this.clientes .iterator(); iterator.hasNext();) {
				Cliente cliente = (Cliente) iterator.next();
				InsertarClientePorPuntos(hoja, cliente);
			}

            libro.write(bos);

    	} catch (Exception e) {
			e.printStackTrace();
		}

		return new ByteArrayInputStream(bos.toByteArray());
	}


    
    private InputStream getExcelReporteClientesPorPuntos() {
    	
    	ByteArrayOutputStream bos = new ByteArrayOutputStream();
    	try {
        	
    		this.clientes = clienteService.findClientesPorPuntos();

        	HSSFWorkbook libro = new HSSFWorkbook();
            HSSFSheet hoja = libro.createSheet();

            InsertarEncabezadoClientePorPuntos(hoja);
            
            for (Iterator<Cliente> iterator = this.clientes .iterator(); iterator.hasNext();) {
				Cliente cliente = (Cliente) iterator.next();
				System.out.println(cliente.getId());
				InsertarClientePorPuntos(hoja, cliente);
			}

            libro.write(bos);

    	} catch (Exception e) {
			e.printStackTrace();
		}

		return new ByteArrayInputStream(bos.toByteArray());

	}

    
    private void InsertarClientePorPuntos(HSSFSheet hoja, Cliente cliente) {
    	int i = 0;
    	HSSFRow fila = hoja.createRow(hoja.getLastRowNum()+1);
    	HSSFCell celda = fila.createCell(i++);
    	HSSFRichTextString texto = new HSSFRichTextString(cliente.getUsuario());
        celda.setCellValue(texto);
        
        celda = fila.createCell(i++);
    	texto = new HSSFRichTextString(cliente.getNombreYApellido());
        celda.setCellValue(texto);

        celda = fila.createCell(i++);
        if (cliente.getAceptoBases())
        	texto = new HSSFRichTextString("SI");
        else
        	texto = new HSSFRichTextString("NO");
        celda.setCellValue(texto);
        
        celda = fila.createCell(i++);
        celda.setCellValue(cliente.getTarjetasExtras());
		
	}

	private void InsertarEncabezadoClientePorPuntos(HSSFSheet hoja) {
	    	int i = 0;
	    	HSSFRow fila = hoja.createRow(0);
	    	HSSFCell celda = fila.createCell(i++);
	    	HSSFRichTextString texto = new HSSFRichTextString(getText("admin.cliente.usuario"));
	        celda.setCellValue(texto);
	        
	        celda = fila.createCell(i++);
	    	texto = new HSSFRichTextString(getText("admin.cliente.nombre"));
	        celda.setCellValue(texto);
	
	        celda = fila.createCell(i++);
	    	texto = new HSSFRichTextString(getText("admin.cliente.aceptoBases"));
	        celda.setCellValue(texto);
	        
	        celda = fila.createCell(i++);
	    	texto = new HSSFRichTextString(getText("admin.cliente.puntos"));
	        celda.setCellValue(texto);

    }
    
    
    private void InsertarEncabezado(HSSFSheet hoja, int tipo) {
    	int i = 0;
    	HSSFRow fila = hoja.createRow(0);
    	HSSFCell celda = fila.createCell(i++);
    	HSSFRichTextString texto = new HSSFRichTextString(getText("admin.cliente.nombre"));
        celda.setCellValue(texto);
        
        celda = fila.createCell(i++);
    	texto = new HSSFRichTextString(getText("admin.cliente.mail"));
        celda.setCellValue(texto);

        celda = fila.createCell(i++);
    	texto = new HSSFRichTextString(getText("admin.cliente.usuario"));
        celda.setCellValue(texto);

        celda = fila.createCell(i++);
    	texto = new HSSFRichTextString(getText("admin.cliente.aceptoBases"));
        celda.setCellValue(texto);

        switch (tipo) {
    	case REPORTE_CLIENTES_ACEPTO_BASES:
    		break;
    	case REPORTE_CLIENTES_TARJETAS:
    		celda = fila.createCell(i++);
    		texto = new HSSFRichTextString(getText("admin.tarjetasClientes.total"));
    		celda.setCellValue(texto);
		
    		celda = fila.createCell(i++);
    		texto = new HSSFRichTextString(getText("admin.tarjetasClientes.jugadas"));
    		celda.setCellValue(texto);
    		break;
    	case REPORTE_CLIENTES_PUNTOS_TRIVIA:
    		celda = fila.createCell(i++);
    		texto = new HSSFRichTextString(getText("admin.puntosTriviaClientes.puntos"));
    		celda.setCellValue(texto);
    		break;
    	case REPORTE_CLIENTES_GENERAL:
    		celda = fila.createCell(i++);
    		texto = new HSSFRichTextString(getText("admin.clientes.razonSocial"));
    		celda.setCellValue(texto);
    		
    		celda = fila.createCell(i++);
    		texto = new HSSFRichTextString(getText("admin.tarjetasClientes.total"));
    		celda.setCellValue(texto);
    		
    		celda = fila.createCell(i++);
    		texto = new HSSFRichTextString(getText("admin.tarjetasClientes.jugadas"));
    		celda.setCellValue(texto);
    		
    		celda = fila.createCell(i++);
    		texto = new HSSFRichTextString(getText("admin.tarjetasClientes.porJugar"));
    		celda.setCellValue(texto);
    		
    		celda = fila.createCell(i++);
    		texto = new HSSFRichTextString(getText("admin.puntosTriviaClientes.puntos"));
    		celda.setCellValue(texto);
    		break;

    	default:
    		break;
        }
    } 
    
    private void InsertarEncabezadoTarjeta (HSSFSheet hoja) {
    	int i = 0;
    	HSSFRow fila = hoja.createRow(0);
    	HSSFCell celda = fila.createCell(i++);
    	HSSFRichTextString texto = new HSSFRichTextString(getText("admin.tarjeta.id"));
        celda.setCellValue(texto);
        
        celda = fila.createCell(i++);
    	texto = new HSSFRichTextString(getText("admin.cliente.nombre"));
        celda.setCellValue(texto);

        celda = fila.createCell(i++);
    	texto = new HSSFRichTextString(getText("admin.tarjeta.puntos"));
        celda.setCellValue(texto);
    
    }
        
    
    private void InsertarCliente(HSSFSheet hoja, int tipo, Cliente cliente) {
    	int i = 0;
    	HSSFRow fila = hoja.createRow(hoja.getLastRowNum()+1);
    	HSSFCell celda = fila.createCell(i++);
    	HSSFRichTextString texto = new HSSFRichTextString(cliente.getNombreYApellido());
        celda.setCellValue(texto);
        
        celda = fila.createCell(i++);
    	texto = new HSSFRichTextString(cliente.getEMail());
        celda.setCellValue(texto);

        celda = fila.createCell(i++);
    	texto = new HSSFRichTextString(cliente.getUsuario());
        celda.setCellValue(texto);

        celda = fila.createCell(i++);
        if (cliente.getAceptoBases())
        	texto = new HSSFRichTextString("SI");
        else
        	texto = new HSSFRichTextString("NO");
        celda.setCellValue(texto);

        switch (tipo) {
		case REPORTE_CLIENTES_ACEPTO_BASES:
			
			break;
		case REPORTE_CLIENTES_TARJETAS:
	        celda = fila.createCell(i++);
	        celda.setCellValue(cliente.getTarjetasAnterior());
			celda = fila.createCell(i++);
	        celda.setCellValue(cliente.getTarjetasExtrasAnterior());
	        
			break;
		case REPORTE_CLIENTES_PUNTOS_TRIVIA:
	        celda = fila.createCell(i++);
	        celda.setCellValue(cliente.getTarjetasAnterior());
			
	        break;
		case REPORTE_CLIENTES_GENERAL:
			celda = fila.createCell(i++);
	        celda.setCellValue(cliente.getRazonSocial());
			celda = fila.createCell(i++);
	        celda.setCellValue(cliente.getTarjetasAnterior());
	        celda = fila.createCell(i++);
	        celda.setCellValue(cliente.getTarjetasExtrasAnterior());
	        celda = fila.createCell(i++);
	        celda.setCellValue(cliente.getTarjetasExtras());
	        celda = fila.createCell(i++);
	        celda.setCellValue(cliente.getTarjetas());
			
	        break;
		default:
			break;
		}

    }
    
    private void InsertarTarjeta(HSSFSheet hoja, int tipo, Tarjeta tarjeta) {
    	int i = 0;
    	HSSFRow fila = hoja.createRow(hoja.getLastRowNum()+1);
    	HSSFCell celda = fila.createCell(i++);
    	cliente=tarjeta.getCliente();
    	
    	celda.setCellValue(tarjeta.getId());
        
        celda = fila.createCell(i++);
        HSSFRichTextString texto = new HSSFRichTextString(cliente.getNombreYApellido());
        celda.setCellValue(texto);

        celda = fila.createCell(i++);
        celda.setCellValue(tarjeta.getPuntosCampeon());

    }




	  
}
