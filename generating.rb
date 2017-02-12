require "./prime_testing"
class Generating
  def sortdiginint (p)
    q=0;
    for i in (1..9)
      temp=p
      while (temp!=0)
        if (temp%10==i)
          q=q*10+i
        end
        temp/=10
      end
    end
    return q
  end

  def generuj(d, l, u, s, w, pot)  #d-length l-ilość lczb do wygen, u - max użyta liczba (gen multipodzbiory rozsacą) s - suma w - wartość liczby, którą sworzyliśmy pot - tablica
    if (s<=pot[10][d])
      if (l==0)
        if (s>=pot[10][d-1])
          if (sortdiginint(s)==w)
            if (PrimeTesting.new.prime(s))
              puts s
            end

          end
        end
      else
        for i in (u..9)
          generuj(d, l-1, i, s+pot[i][d], (i+10*w), pot)
        end
      end
    end
  end
end