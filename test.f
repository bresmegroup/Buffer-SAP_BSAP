      


   
        real x(6941,5000), y(6941,5000), z(6941,5000)
       
        character(len=15) r(5000)
        character(len=15) q(6941)
        character(len=3) l(6941,5000)
        character(len=8) m(6941,5000)
        character(len=20) f(100000)
        real, dimension(1:6941,1:6941,1:500) :: d
c        real d2(8000,8000,8000)
        integer p(0:6941,5000), n(6941,5000)
        integer resno(0:6941)         
        integer i, j
        integer natom

cc        p = "ATOM  "
      open(unit=100,file="input-filename.dat",status="unknown")
      open(unit=300,file="test.dat",status="unknown")
      open(unit=199,file="sequence.dat",status="unknown")  
c      open(unit=900,file="index-filename.dat",status="unknown")

cc      open(unit=500,file="test.gro",status="unknown")  

        do i = 1,500
        read(100,*) r(i)
        enddo
        
        
        do 23 j = 1,1
c        print*, "reading file:", j
          open(unit=200,file= r(j),status="unknown")
          do 17 i = 1,6941
        read(200,100) p(i,j),l(i,j),m(i,j),n(i,j),x(i,j),y(i,j),z(i,j)
        write(300,100) p(i,j),l(i,j),m(i,j),n(i,j),x(i,j),y(i,j),z(i,j)
          
cc          write(500,100)p(i,j),l(i,j),m(i,j),n(i,j),x(i,j),y(i,j),z(i,j)
17        enddo
23      enddo        
         

 
100      format(i5, a3, a8, i5, 3F8.3) 





        stop
        end






