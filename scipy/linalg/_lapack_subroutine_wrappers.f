      subroutine dlamchwrapper(ret, cmach)
        external dlamch
        double precision dlamch
        double precision ret
        character cmach
        ret = dlamch(cmach)
      end

      subroutine slamchwrapper(ret, cmach)
        external wslamch
        real wslamch
        real ret
        character cmach
        ret = wslamch(cmach)
      end
