module maths
contains
function fac(n) result(fak)
implicit none
integer::i,n
double precision::lfak,fak
if (n==0) then
 fak=1.d0
else
 lfak = 0.d0
 do i=1,n
 lfak = lfak + log(dble(i))
 enddo
 fak = exp(lfak)
endif
end function fac
function ffac(n) result (ffak)
implicit none
integer::n,k
double precision::ffak
if (mod(n,2) == 0) then
  k=n/2
  ffak = 2.d0**(dble(k))*fac(k)
 else
  k=(n+1)/2
  ffak = fac(2*k)/(2**(dble(k))*fac(k))
endif
end function ffac

integer function delta(i,j)
  integer :: i, j
  delta=0; if(i==j) delta=1
end function delta

!recursive function ffac(n) result (ffak)
!implicit none
!integer::n,ffak
!if (n .gt. -2 .and. n .le. 0) then
!    ffak = 1
!else
!    ffak = n*ffac(n-2)
!endif
!end function ffac

!function gausslag(n,func) result(inte)
!use lag_pol
!use constants
!implicit none
!double precision,external::func
!double precision::inte,wi,xxi,xi
!integer::i,n
!inte=0.d0
!do i=1,n
!wi=lag_w(i)
!xxi=(lag_zeros(i))
!inte = inte + wi*func(xxi)
!enddo
!end function gausslag





end module maths
