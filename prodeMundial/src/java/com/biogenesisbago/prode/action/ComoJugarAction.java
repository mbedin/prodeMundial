package com.biogenesisbago.prode.action;

import java.util.Map;

import com.biogenesisbago.prode.model.Cliente;
import com.biogenesisbago.prode.service.ClienteService;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

public class ComoJugarAction extends BasePublicAction {

	
    /**
	 * 
	 */
	private static final long serialVersionUID = -2514975465946565810L;
	
	// Services
	private ClienteService clienteService;
	
    // Model Principal

	public ComoJugarAction(ClienteService clienteService) {
		
		this.setCliente(new Cliente());
		
		// Seteamos los services
    	this.clienteService = clienteService;
        
    }

    /*************************************************
     *  Getters y Setters
     *************************************************/
    

    /*************************************************
     *  Methods
     *************************************************/

    public String doInput() {

    	if (!isSessionActive()) return Action.LOGIN;
    	
    	this.setRetorno(ACTION_PRINCIPAL);

        return Action.INPUT;
        
    }
    
    public void validateDoAceptoBases(){
    	this.setSubmitted(true);

    	if (!this.getCliente().getAceptoBases()) {
    		this.addFieldError("comoJugar.error", getText("comoJugar.error"));    		
    	}

    }
    
	@SuppressWarnings("unchecked")
	public String doAceptoBases() {

		Cliente cliente = clienteService.find(this.getCliente().getId());
    	
		if (cliente == null) {
			return Action.LOGIN;
		}

		cliente.setAceptoBases(true);
		clienteService.save(cliente);
		
		this.setCliente(cliente);
		
    	Map session = ActionContext.getContext().getSession();
    	session.put(CLIENTE_LOGUEADO, this.getCliente());
    	
    	return Action.SUCCESS;
    }
  
	
    /*************************************************
     *  Common
     *************************************************/
    protected void addCommonResources() {
    	addScript("comoJugar.js");
    }
    

}
