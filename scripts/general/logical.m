## Copyright (C) 1996, 1997 John W. Eaton
##
## This file is part of Octave.
##
## Octave is free software; you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 2, or (at your option)
## any later version.
##
## Octave is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
## General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with Octave; see the file COPYING.  If not, write to the Free
## Software Foundation, 59 Temple Place - Suite 330, Boston, MA
## 02111-1307, USA.

## usage: logical (arg)
##
## Convert ARG to a logical value.  For example,
##
##   logical ([-1, 0, 1])
##
## is equivalent to
##
##   [-1, 0, 1] != 0

## Author: jwe

function y = logical (x)

  if (nargin == 1)
    if (! islogical (x))
      y = x != 0;
    else
      y = x;
    endif
  else
    usage ("logical (x)");
  endif

endfunction
