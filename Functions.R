createLabels <- function( aTable, show )
{
  a <- vector( length = dim( aTable )[1] )
  for(i in 1:( dim(aTable)[1] ) )
  {
    if( i %% show == 0)
      a[i] <- rownames( aTable )[i]
    else
      a[i] <- ""
  }
  a
}