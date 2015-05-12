xquery version "1.0";
<result>
	{
		 for $x in count(//CATALOGUE/FAMILLE/SOUSFAMILLE/LIGNE[@N='l911'])
			 return 
				 $x
	 }
 </result>