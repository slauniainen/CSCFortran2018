module heat
  
  use iso_fortran_env, only : real64, int16

  type temperature_field
     integer :: nx, ny  ! number of rows & columns
     real(kind=real64) :: dx, dy ! grid spacings (row & cols)
     real(kind=real64), allocatable :: T(:,:) !2d temperature field
  end type temperature_field

  !type(temperature_field) :: x
  
  
end module heat

