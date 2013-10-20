package com.biogenesisbago.prode.action.admin;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import com.biogenesisbago.prode.model.Cliente;
import com.biogenesisbago.prode.service.ClienteService;
import com.biogenesisbago.prode.service.MailService;
import com.biogenesisbago.prode.service.TarjetaService;
import com.biogenesisbago.prode.service.UsuarioService;
import com.opensymphony.xwork2.Action;

public class TarjetasProductorAction extends BaseAdminAction {
    /**
	 * 
	 */
	private static final long serialVersionUID = 8091259220973713414L;

	// Services
	private UsuarioService usuarioService;
	private ClienteService clienteService;
	private TarjetaService tarjetaService;
	private MailService mailService;
	
	// Model Principal
	private List<Cliente> clientes = new ArrayList<Cliente>();
	private int cantidad = 0;
	
	public TarjetasProductorAction(UsuarioService usuarioService, ClienteService clienteService, 
			TarjetaService tarjetaService, MailService mailService) {
    	
		// Seteamos los services
    	this.setUsuarioService(usuarioService);
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
	
	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}

	public int getCantidad() {
		return cantidad;
	}
	
	public void setUsuarioService(UsuarioService usuarioService) {
		this.usuarioService = usuarioService;
	}

	public UsuarioService getUsuarioService() {
		return usuarioService;
	}

	public void setMailService(MailService mailService) {
		this.mailService = mailService;
	}

	public MailService getMailService() {
		return mailService;
	}

    /*************************************************
     *  Methods
     *************************************************/
    public String doInput() {
    	
    	if (!isSessionActive()) return Action.LOGIN;
        
    	this.setRetorno(ACTION_MENU);
    	
    	this.clientes = clienteService.findClientesProductor();
    	
        return Action.INPUT;
    }

    public void validateDoGenerar() {
    	this.setSubmitted(true);
    	this.setRetorno(ACTION_MENU);

    	//TODO: validar
    	
    }

    
    public String doGenerar() {
    	
    	if (!isSessionActive()) return Action.LOGIN;

    	this.setRetorno(ACTION_TARJETAS_PRODUCTOR);
    	
    	String[] ids = request.getParameterValues("idCliente");
    	
    	if (ids == null ) {
    		this.setMensaje("Debe seleccionar al menos un cliente para generar las tarjetas!");
        	return Action.SUCCESS;
    	}
    	
    	for (Iterator iterator = clienteService.findClientesProductor().iterator(); iterator.hasNext();) {
			Cliente cliente = (Cliente) iterator.next();
			if (Existe(cliente.getId(), ids) ) {
				for (int i = 0; i < this.cantidad; i++) {
					tarjetaService.createTarjetaVaciaProductor(cliente.getId());	
				}
				//clienteService.save(cliente);
				
				/*try {
					mailService.send(cliente.getEMail(), "Nuevas Tarjetas", "Se le han generado nuevas tarjetas.");	
				} catch (Exception e) {
					// TODO: handle exception
				}*/
			}
		}

    	/*for (Iterator iterator = clienteService.findAll().iterator(); iterator.hasNext();) {
			Cliente cliente = (Cliente) iterator.next();
			System.out.println(cliente.getId());
			tarjetaService.createTarjetaVaciaFaseGrupo(cliente.getId());
		}*/


     	this.setMensaje("Tarjeta generadas correctamente!!!");
    		
    	return Action.SUCCESS;
    	
    }

    
    /*************************************************
     *  Common
     *************************************************/
    protected void addCommonResources() {
    	addScript("/admin/tarjetasProductor.js");
    }

    private boolean Existe(int idCliente, String[] ids) {
    	boolean result = false;
    	
    	for (int i = 0; i < ids.length; i++) {
			if (ids[i].equals(idCliente+"")) {
				result = true;
				break;
			}
		}
    	return result;
    }



}
