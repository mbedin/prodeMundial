package com.biogenesisbago.prode.action.admin;

import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import com.biogenesisbago.prode.model.Cliente;
import com.biogenesisbago.prode.service.ClienteService;
import com.biogenesisbago.prode.service.MailService;
import com.biogenesisbago.prode.service.TarjetaService;
import com.biogenesisbago.prode.service.UsuarioService;
import com.opensymphony.xwork2.Action;

public class TarjetasNuevasAction extends BaseAdminAction {
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
	
	public TarjetasNuevasAction(UsuarioService usuarioService, ClienteService clienteService, 
			TarjetaService tarjetaService, MailService mailService) {
    	
		// Seteamos los services
    	this.setUsuarioService(usuarioService);
    	this.clienteService = clienteService;
    	this.tarjetaService = tarjetaService;
    	this.mailService = mailService;
        
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
	
	public void setUsuarioService(UsuarioService usuarioService) {
		this.usuarioService = usuarioService;
	}

	public UsuarioService getUsuarioService() {
		return usuarioService;
	}
	
    /*************************************************
     *  Methods
     *************************************************/
    public String doInput() {
    	
    	if (!isSessionActive()) return Action.LOGIN;
        
    	this.setRetorno(ACTION_MENU);
    	
    	this.clientes = clienteService.findClientesConNuevasTarjetas();
    	
        return Action.INPUT;
    }

    public void validateDoGenerar() {
    	this.setSubmitted(true);
    	this.setRetorno(ACTION_MENU);

    	//TODO: validar
    	
    }

    
    public String doGenerar() {
    	
    	if (!isSessionActive()) return Action.LOGIN;

    	this.setRetorno(ACTION_TARJETAS_NUEVAS);
    	
    	String[] ids = request.getParameterValues("idCliente");
    	
    	if (ids == null ) {
    		this.setMensaje("Debe seleccionar al menos un cliente para generar las tarjetas!");
        	return Action.SUCCESS;
    	}
    	
    	for (Iterator iterator = clienteService.findClientesConNuevasTarjetas().iterator(); iterator.hasNext();) {
			Cliente cliente = (Cliente) iterator.next();
			if (Existe(cliente.getId(), ids) ) {
				if (cliente.getTarjetasNuevas() > 0) {
					for (int i = 0; i < cliente.getTarjetasNuevas(); i++) {
						tarjetaService.createTarjetaVaciaFaseGrupo(cliente.getId());	
					}
					cliente.setTarjetasAnterior(cliente.getTarjetas());
					cliente.setTarjetasExtrasAnterior(cliente.getTarjetasExtras());
					cliente.setTarjetas(0);
					cliente.setTarjetasExtras(0);
					clienteService.save(cliente);
					try {
						String texto = " ";
						mailService.sendNuevasTarjetas(cliente.getEMail(), getText("admin.tarjetasNuevas.mail.asunto"), texto, new File (this.context.getRealPath("/img/mails/mail001.jpg")));
					} catch (Exception e) {
						// TODO: handle exception
						e.printStackTrace();
					}
					
				}
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

    
    public String doInputSinTarjetas() {
    	
    	if (!isSessionActive()) return Action.LOGIN;
        
    	this.setRetorno(ACTION_MENU);
    	
    	this.clientes = clienteService.findClientesSinTarjetas();
    	
        return Action.INPUT;
    }

    public void validateDoGenerarSinTarjetas() {
    	this.setSubmitted(true);
    	this.setRetorno(ACTION_MENU);

    	//TODO: validar
    	
    }

    
    public String doGenerarSinTarjetas() {
    	
    	if (!isSessionActive()) return Action.LOGIN;

    	this.setRetorno(ACTION_TARJETAS_NUEVAS);
    	
    	String[] ids = request.getParameterValues("idCliente");
    	
    	if (ids == null ) {
    		this.setMensaje("Debe seleccionar al menos un cliente para generar las tarjetas!");
        	return Action.SUCCESS;
    	}
    	
    	for (Iterator iterator = clienteService.findClientesSinTarjetas().iterator(); iterator.hasNext();) {
			Cliente cliente = (Cliente) iterator.next();
			if (Existe(cliente.getId(), ids) ) {
				tarjetaService.createTarjetaVaciaFaseGrupo(cliente.getId());	
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
    
    public String doInputTarjetasOctavos() {
    	
    	if (!isSessionActive()) return Action.LOGIN;
        
    	this.setRetorno(ACTION_MENU);
    	
    	this.clientes = clienteService.findClientesConNuevasTarjetasOctavos();
    	
        
    	return Action.INPUT;
    }

    public void validateDoGenerarTarjetaOctavos() {
    	this.setSubmitted(true);
    	this.setRetorno(ACTION_MENU);

    	//TODO: validar
    	
    }

    
    public String doGenerarTarjetasOctavos() {
    	
    	if (!isSessionActive()) return Action.LOGIN;

    	this.setRetorno(ACTION_TARJETAS_NUEVAS);
    	
    	String[] ids = request.getParameterValues("idCliente");
    	
    	if (ids == null ) {
    		this.setMensaje("Debe seleccionar al menos un cliente para generar las tarjetas!");
        	return Action.SUCCESS;
    	}
    	
    	for (Iterator iterator = clienteService.findClientesConNuevasTarjetasOctavos().iterator(); iterator.hasNext();) {
			Cliente cliente = (Cliente) iterator.next();
			if (Existe(cliente.getId(), ids) ) {
				tarjetaService.createTarjetaVaciaFaseOctavos(cliente.getId());	
				
				try {
					String texto = " ";
					mailService.sendNuevasTarjetas(cliente.getEMail(), getText("admin.tarjetasNuevas.mail.asunto"), texto, new File (this.context.getRealPath("/img/mails/mail001.jpg")));
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}
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
    
 public String doInputTarjetasCuartos() {
    	
    	if (!isSessionActive()) return Action.LOGIN;
        
    	this.setRetorno(ACTION_MENU);
    	
    	this.clientes = clienteService.findClientesConNuevasTarjetasOctavos();
    	
        return Action.INPUT;
    }

    public void validateDoGenerarTarjetaCuartos() {
    	this.setSubmitted(true);
    	this.setRetorno(ACTION_MENU);

    	//TODO: validar
    	
    }

    public String doGenerarTarjetasCuartos() {
    	
    	if (!isSessionActive()) return Action.LOGIN;

    	this.setRetorno(ACTION_TARJETAS_NUEVAS);
    	
    	String[] ids = request.getParameterValues("idCliente");
    	
    	if (ids == null ) {
    		this.setMensaje("Debe seleccionar al menos un cliente para generar las tarjetas!");
        	return Action.SUCCESS;
    	}
    	
    	for (Iterator iterator = clienteService.findClientesConNuevasTarjetasOctavos().iterator(); iterator.hasNext();) {
			Cliente cliente = (Cliente) iterator.next();
			if (Existe(cliente.getId(), ids) ) {
				tarjetaService.createTarjetaVaciaFaseCuartos(cliente.getId());	
				
				try {
					/*String texto = " ";
					mailService.sendNuevasTarjetas(cliente.getEMail(), getText("admin.tarjetasNuevas.mail.asunto"), texto, new File (this.context.getRealPath("/img/mails/mail001.jpg")));
					*/
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}
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
    
    public String doInputTarjetasSemi() {
    	
    	if (!isSessionActive()) return Action.LOGIN;
        
    	this.setRetorno(ACTION_MENU);
    	
    	this.clientes = clienteService.findClientesConNuevasTarjetasOctavos();
    	
        return Action.INPUT;
    }

    public void validateDoGenerarTarjetaSemi() {
    	this.setSubmitted(true);
    	this.setRetorno(ACTION_MENU);
    	
    	//TODO: validar
    }

    public String doGenerarTarjetasSemi() {
    	
    	if (!isSessionActive()) return Action.LOGIN;

    	this.setRetorno(ACTION_TARJETAS_NUEVAS);
    	
    	String[] ids = request.getParameterValues("idCliente");
    	
    	if (ids == null ) {
    		this.setMensaje("Debe seleccionar al menos un cliente para generar las tarjetas!");
        	return Action.SUCCESS;
    	}
    	
    	for (Iterator iterator = clienteService.findClientesConNuevasTarjetasOctavos().iterator(); iterator.hasNext();) {
			Cliente cliente = (Cliente) iterator.next();
			if (Existe(cliente.getId(), ids) ) {
				tarjetaService.createTarjetaVaciaFaseSemi(cliente.getId());	
				
				try {
					/*String texto = " ";
					mailService.sendNuevasTarjetas(cliente.getEMail(), getText("admin.tarjetasNuevas.mail.asunto"), texto, new File (this.context.getRealPath("/img/mails/mail001.jpg")));
					*/
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}
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
    
    public String doInputTarjetasFinal() {
    	
    	if (!isSessionActive()) return Action.LOGIN;
        
    	this.setRetorno(ACTION_MENU);
    	
    	this.clientes = clienteService.findClientesConNuevasTarjetasOctavos();
    	
        return Action.INPUT;
    }

    public void validateDoGenerarTarjetaFinal() {
    	this.setSubmitted(true);
    	this.setRetorno(ACTION_MENU);
    	
    	//TODO: validar
    }

    public String doGenerarTarjetasFinal() {
    	
    	if (!isSessionActive()) return Action.LOGIN;

    	this.setRetorno(ACTION_TARJETAS_NUEVAS);
    	
    	String[] ids = request.getParameterValues("idCliente");
    	
    	if (ids == null ) {
    		this.setMensaje("Debe seleccionar al menos un cliente para generar las tarjetas!");
        	return Action.SUCCESS;
    	}
    	
    	for (Iterator iterator = clienteService.findClientesConNuevasTarjetasOctavos().iterator(); iterator.hasNext();) {
			Cliente cliente = (Cliente) iterator.next();
			if (Existe(cliente.getId(), ids) ) {
				tarjetaService.createTarjetaVaciaFaseFinal(cliente.getId());	
				
				try {
					/*String texto = " ";
					mailService.sendNuevasTarjetas(cliente.getEMail(), getText("admin.tarjetasNuevas.mail.asunto"), texto, new File (this.context.getRealPath("/img/mails/mail001.jpg")));
					*/
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}
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
    	addScript("/admin/tarjetasNuevas.js");
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
