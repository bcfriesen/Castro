subroutine f_rhs(n, t, y, ydot, rpar, ipar)

  use bl_types
  use bl_constants_module
  use network
  use rpar_indices
  use extern_probin_module
  
  implicit none

  ! our convention is that y(1:nspec) are the species (in the same
  ! order as defined in network.f90, and y(nspec+1) is the temperature
  integer :: n
  real(kind=dp_t) :: y(n), ydot(n)

  real(kind=dp_t) :: rpar(n_rpar_comps)
  integer :: ipar

  real(kind=dp_t) :: t
  real(kind=dp_t) :: xfueltmp

  real(kind=dp_t) :: dens, temp, rate

  xfueltmp = max(y(ifuel_),0.d0)
  dens = rpar(irp_dens)
  temp = rpar(irp_temp)

  rate = r0*dens*xfueltmp*temp**nu
  ydot(ifuel_) = -rate
  ydot(iash_)  =  rate
  return

end subroutine f_rhs


subroutine jac(neq, t, y, ml, mu, pd, nrpd, rpar, ipar)

  use bl_types
  use bl_constants_module
  use network

  ! EOS calls

  implicit none

  integer        , intent(IN   ) :: neq, ml, mu, nrpd, ipar
  real(kind=dp_t), intent(IN   ) :: y(neq), rpar, t
  real(kind=dp_t), intent(  OUT) :: pd(neq,neq)


  ! we get the thermodynamic state through the burner_aux module -- we freeze
  ! these to the values are the top of the timestep to avoid costly

  return
end subroutine jac
