createLabels <- function( aTable, show )
{
  lLabels <- vector( length = dim( aTable )[1] )
  for(i in 1:( dim(aTable)[1] ) )
  {
    if( i %% show == 0)
      lLabels[i] <- rownames( aTable )[i]
    else
      lLabels[i] <- ""
  }
  lLabels
}
