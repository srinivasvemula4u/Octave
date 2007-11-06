## Copyright (C) 1993, 1994, 1995, 1996, 1997, 1999, 2000, 2002, 2004,
##               2005, 2006, 2007 John W. Eaton
##
## This file is part of Octave.
##
## Octave is free software; you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or (at
## your option) any later version.
##
## Octave is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
## General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with Octave; see the file COPYING.  If not, see
## <http://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {Function File} {} mesh (@var{x}, @var{y}, @var{z})
## Plot a mesh given matrices @var{x}, and @var{y} from @code{meshgrid} and
## a matrix @var{z} corresponding to the @var{x} and @var{y} coordinates of
## the mesh.  If @var{x} and @var{y} are vectors, then a typical vertex
## is (@var{x}(j), @var{y}(i), @var{z}(i,j)).  Thus, columns of @var{z}
## correspond to different @var{x} values and rows of @var{z} correspond
## to different @var{y} values.
## @seealso{meshgrid, contour}
## @end deftypefn

## Author: jwe

function h = mesh (varargin)

  newplot ();

  tmp = surface (varargin{:});
  ax = get(tmp, "parent");
  set (tmp, "FaceColor", "none");
  set (tmp, "EdgeColor", "flat");
  set (ax, "view", [-37.5, 30]);
  if (nargout > 0)
    h = tmp;
  endif

endfunction
