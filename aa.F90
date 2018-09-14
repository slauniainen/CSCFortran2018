program aa 
 implicit none

 character(len=10) :: filename = "bottle.dat"
 real, dimension(:,:), allocatable :: field
 call read_field(field, filename)

 contains

  ! Reads the temperature distribution from an input file
  subroutine read_field(field, filename)
    implicit none

    real, dimension(:,:), allocatable, intent(out) :: field
    character(len=*), intent(in) :: filename
    integer :: k, nx, ny
    character(len=30) :: dummy
    ! open file
    open (unit=99, file=filename, status='old', action='read')
    !read(99,'(1x, 2i4)') nx, ny ! ignore # and read into two integers
    read(99,*) dummy, nx, ny
    write(*,*) nx, ny
   
    allocate(field(nx,ny))
    write(*,*) shape(field) 
    do k = 1, nx
       read(99,*) field(k,1:ny)
       write(*,*) 'min= ', minval(field(k,:)), &
            'nr = ', count(field(k,:)==minval(field(k,:)))
            
       
    end do
    close(99)

    !write(*,*) 'fline: ', field(1,:)
    !write(*,*) 'lline: ', field(nx,:)
    ! TODO: implement function that will:
    ! open the file
    ! read the first header line to get nx and ny
    ! allocate matrix called field
    ! read rest of the file into field
    ! close the file

  end subroutine read_field

end program aa
