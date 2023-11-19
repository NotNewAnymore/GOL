class Array
  def readAdj(x,y)
    z = 0
    mx = 0
    my = 1
    i = -1
    while i <= 1
      j = -1
      while j <= 1
        if x + i >= self.length
        mx = 0
        else
          mx = x + i
        end
        if y + j >= self[i].length
          my = 0
          else
            my = y + j
          end
        z = z + Integer(self[mx][my])
        j += 1
      end
      i += 1
    end
    if (z != 0)
    z -= 1
    end
    z
  end
end
