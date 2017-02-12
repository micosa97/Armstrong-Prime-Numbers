require "./generating"



def power (pot)
  for i in (0..10)
    pot[i]=[]
    for u in (0..25)
      pot[i][u]=i**u
    end
  end
end


class Main
  pot=[]
  power(pot) #oblicznie poteg aby potem korzystać z nich w czasie 1
  for i in (1..23)
    Generating.new.generuj(i, i, 0, 0, 0, pot) #multipodzbiory zbioru cyfr o dlugosci i, zostalo jeszcze i miejsc, oraz max used val=0 oraz na razie suma to 0, a liczba już stworzona to tez 0

  end
end
