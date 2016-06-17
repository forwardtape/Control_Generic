package Modelo.VO;

public class EmpleadoVO {
	
	private int idEmpleado;
	private String nombreEmpleado;
	private String apellidoEmpleado;
	private String direccionEmpleado;
	private String telefonoEmpleado;
	private String contrasenaEmpleado;
	private int codigoCiudadEmpleado;
	
	

	public int getIdEmpleado(){
		return idEmpleado;
	}
	
	public void setIdEmpleado(int idEmpleado){
		this.idEmpleado = idEmpleado;
	}
	
	public String getNombreEmpleado() {
		return nombreEmpleado;
	}

	public void setNombreEmpleado(String nombreEmpleado) {
		this.nombreEmpleado = nombreEmpleado;
	}

	public String getApellidoEmpleado() {
		return apellidoEmpleado;
	}

	public void setApellidoEmpleado(String apellidoEmpleado) {
		this.apellidoEmpleado = apellidoEmpleado;
	}

	public String getDireccionEmpleado() {
		return direccionEmpleado;
	}

	public void setDireccionEmpleado(String direccionEmpleado) {
		this.direccionEmpleado = direccionEmpleado;
	}

	public String getTelefonoEmpleado() {
		return telefonoEmpleado;
	}

	public void setTelefonoEmpleado(String telefonoEmpleado) {
		this.telefonoEmpleado = telefonoEmpleado;
	}

	public String getContrasenaEmpleado() {
		return contrasenaEmpleado;
	}

	public void setContrasenaEmpleado(String contrasenaEmpleado) {
		this.contrasenaEmpleado = contrasenaEmpleado;
	}

	public int getCodigoCiudadEmpleado() {
		return codigoCiudadEmpleado;
	}

	public void setCodigoCiudadEmpleado(int codigoCiudadEmpleado) {
		this.codigoCiudadEmpleado = codigoCiudadEmpleado;
	}
	
	
}
