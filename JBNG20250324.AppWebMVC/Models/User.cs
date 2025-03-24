using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace JBNG20250324.AppWebMVC.Models;

public partial class User
{
    public int Id { get; set; }

    [Required(ErrorMessage = "El Nombre es obligatorio.")]
    [Display(Name = "Nombre")]
    public string Username { get; set; } = null!;

    [EmailAddress(ErrorMessage = "El correo electrónico no tiene un formato válido.")]
    [Required(ErrorMessage = "El correo es obligatorio.")]
    [Display(Name = "Correo")]
    public string Email { get; set; } = null!;

    [StringLength(40, MinimumLength = 5, ErrorMessage = "El passowrd debe tener entre 5 y 50 caracteres.")]
    [Required(ErrorMessage = "La contraseña es obligatorio.")]
    [DataType(DataType.Password)]
    [Display(Name = "Contraseña")]
    public string Password { get; set; } = null!;

    [Display(Name = "Rol")]
    [Required(ErrorMessage = "El Rol es obligatorio.")]
    public string Role { get; set; } = null!;

    [Display(Name = "Nota")]
    [Required(ErrorMessage = "La nota es obligatoria.")] 
    public string? Notes { get; set; }
}
