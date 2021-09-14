-- Project: a cup of coffee

cup flOz = \message -> message flOz

getOz aCup = aCup (\flOz -> flOz)

drink aCup ozDrank = if ozDiff >= 0
                     then cup ozDiff
                     else cup 0
  where ozDiff = (getOz aCup - ozDrank)

isEmpty aCup = getOz aCup == 0