package com.biogenesisbago.prode.action;

import com.biogenesisbago.prode.model.Promocion;
import com.biogenesisbago.prode.service.PromocionService;
import com.opensymphony.xwork2.Action;

public class TarjetasExtrasAction extends BasePublicAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 970100749846719801L;
	// Services
	private PromocionService promocionService;
	
	// Model Principal
	private Promocion promocion;
    
	public TarjetasExtrasAction(PromocionService promocionService) {
    	
		// Seteamos los services
    	this.promocionService = promocionService;
        
    }

    /*************************************************
     *  Getters y Setters
     *************************************************/
	public Promocion getPromocion() {
		return promocion;
	}

	public void setPromocion(Promocion promocion) {
		this.promocion = promocion;
	}
	
    /*************************************************
     *  Methods
     *************************************************/
    public String doInput() {
    	
    	if (!isSessionActive()) return Action.LOGIN;

    	this.setRetorno(ACTION_PRINCIPAL);

    	this.promocion = promocionService.findPromocionVigente();
    	
    	if (promocion== null)
    		this.promocion = new Promocion();
    	
        return Action.INPUT;
    }


    /*************************************************
     *  Common
     *************************************************/
    protected void addCommonResources() {
    	
    }
    

}
