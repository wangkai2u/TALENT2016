module grid
implicit none
     integer, parameter :: wp=kind(1.0d0)
     real(wp), parameter :: pi = 3.14159265358979_wp
     real(wp) :: h,conv,hbar22m,v0
     real(wp), allocatable,dimension(:) :: meshpoints,wavefunctions,wfl,wfr
     integer :: nbox, nodes
contains
     subroutine init_params

          namelist /input/ nbox,h,nodes,v0,conv,hbar22m
          read(5,input)

     end subroutine init_params

     subroutine init_grids

          integer :: i

          allocate(meshpoints(0:nbox))
          meshpoints = (/ (real(i)*h,i=0,nbox) /)

     end subroutine init_grids

     subroutine init_wavefunctions
	
          allocate(wavefunctions(0:nbox),wfr(0:nbox),wfl(0:nbox))

     end subroutine

end module grid
