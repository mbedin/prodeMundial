package com.biogenesisbago.prode.action.admin;

import java.util.ArrayList;
import java.util.List;

import com.biogenesisbago.prode.model.Promocion;
import com.biogenesisbago.prode.service.MailService;
import com.biogenesisbago.prode.service.PromocionService;
import com.opensymphony.xwork2.Action;

public class PromocionAction extends BaseAdminAction {
    /**
	 * 
	 */
	private static final long serialVersionUID = 8091259220973713414L;

	// Services
	private PromocionService promocionService;
	private MailService mailService;
	
	// listas
	private List<Promocion> promociones = new ArrayList<Promocion>();
	
	// Model Principal
	private Promocion promocion = new Promocion();
	
	public PromocionAction(PromocionService promocionService, MailService mailService) {
    	
		// Seteamos los services
    	this.promocionService = promocionService;
    	this.setMailService(mailService);
        
    }

    /*************************************************
     *  Getters y Setters
     *************************************************/
	
	public List<Promocion> getPromociones() {
		return promociones;
	}

	public void setPromociones(List<Promocion> promociones) {
		this.promociones = promociones;
	}

	public Promocion getPromocion() {
		return promocion;
	}

	public void setPromocion(Promocion promocion) {
		this.promocion = promocion;
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
    public String doList() {
    	
    	if (!isSessionActive()) return Action.LOGIN;
        
    	this.setRetorno(ACTION_MENU);
    	
    	this.promociones = promocionService.findAll();
    	
        return Action.INPUT;
    }

    
    public String doInput() {
    	
    	if (!isSessionActive()) return Action.LOGIN;

    	this.setRetorno(ACTION_PROMOCIONES);
    	
    	if (this.promocion.getId() > 0)
    		this.promocion = promocionService.find(this.promocion.getId());
    	else
    		this.promocion = new Promocion();
    		
    	return Action.INPUT;
    	
    }
    
    public void validateDoSave() {
    	// validar... todo!!!
    }
    
    public String doSave() {
    	
    	if (!isSessionActive()) return Action.LOGIN;

    	if (this.promocion.getId() > 0) {
    		/*Promocion promo = promocionService.find(this.promocion.getId());
    		promo.setNombreProducto(promocion.getNombreProducto());
    		promo.setTextoPromocion(promocion.getTextoPromocion());
    		promo.setImagen(promocion.getImagen());
    		promo.setFechaDesde(promocion.getFechaDesde());
    		promo.setFechaHasta(promocion.getFechaHasta());
    		this.promocion = promo;*/
    		this.setMensaje("Promocion actualizada correctamente.");
    	} else {
    		this.setMensaje("Promocion insertada correctamente");
    	}
    	
    	promocionService.save(this.promocion);
    	
    	this.setRetorno(ACTION_PROMOCIONES);
    	
    	return Action.SUCCESS;
    	
    }

    public void validateDoDelete() {
    	// validar... todo!!!
    }
    
    public String doDelete() {
    	
    	if (!isSessionActive()) return Action.LOGIN;

   		this.setMensaje("Promocion eliminada correctamente.");
    	
    	promocionService.remove(this.promocion.getId());
    	
    	this.setRetorno(ACTION_PROMOCIONES);
    	
    	return Action.SUCCESS;
    	
    }

    
    /*************************************************
     *  Common
     *************************************************/
    protected void addCommonResources() {
    	addScript("/admin/promociones.js");
    }



}
