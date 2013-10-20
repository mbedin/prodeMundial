package com.biogenesisbago.prode.action;

import com.biogenesisbago.prode.model.Cliente;
import com.biogenesisbago.prode.service.ClienteService;
import com.opensymphony.xwork2.Action;

public class PrincipalAction extends BasePublicAction {

	
    /**
	 * 
	 */
	private static final long serialVersionUID = -2514975465946565810L;
	
	// Services
	private ClienteService clienteService;
	
	// Model Principal
	private Cliente cliente = new Cliente();
	
    
	
	public PrincipalAction(ClienteService clienteService) {
    	
		// Seteamos los services
    	this.clienteService = clienteService;
    
        
    }

    /*************************************************
     *  Getters y Setters
     *************************************************/
	
	public Cliente getCliente() {
		return cliente;
	}

	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}
	
		
    /*************************************************
     *  Methods
     *************************************************/
    
	public String doInput() {
    	
    	if (!isSessionActive()) return Action.LOGIN;
    	
    	cliente = (Cliente)session.get(CLIENTE_LOGUEADO);
    	
    	cliente = clienteService.findPuntosCliente(cliente.getId());
    	
    	return Action.INPUT;
    }


    /*************************************************
     *  Common
     *************************************************/
    protected void addCommonResources() {
    	//addScript("login.js");
    }

    
}
