class Array
  def readAdj(x,y)
    z = 0
    mx = 0
    my = 1
    i = -1
      while i <= 1  #vertical axis
        if x + i >= self.length   #Vertical positoin
          mx = 0
          else
            mx = x + i
          end
        j = -1
        while j <= 1  #horizontal axis

          if y + j >= self[0].length  #Horizontal positon
            my = 0
            else
              my = y + j
            end
            # if x == 1 && y == 1
            #   puts Integer(self[mx][my])
            # end
            if (i != 0 || j != 0)
            z = z + Integer(self[mx][my])
            end
          j += 1
        end
        i += 1
      end
    # if (z != 0 && Integer(self[mx][my]) != 0)
    # z -= 1
    # end
    z
  end
end
