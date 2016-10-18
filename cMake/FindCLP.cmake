IF(CLP_INCLUDE_DIR AND CLP2_INCLUDE_DIR AND CLP_LIBRARY AND CLP2_LIBRARY AND CLP3_LIBRARY)
    SET(CLP_FOUND TRUE)
ELSE(CLP_INCLUDE_DIR AND CLP2_INCLUDE_DIR AND CLP_LIBRARY AND CLP2_LIBRARY AND CLP3_LIBRARY)
	FIND_LIBRARY(CLP_LIBRARY NAMES Clp 
		PATHS
		/usr/lib/x86_64-linux-gnu
	    )

	FIND_LIBRARY(CLP2_LIBRARY NAMES OsiClp 
		PATHS
		/usr/lib/x86_64-linux-gnu
	    )

	FIND_LIBRARY(CLP3_LIBRARY NAMES CoinUtils
		PATHS
		/usr/lib/x86_64-linux-gnu
	    )


	FIND_PATH(
	      CLP_INCLUDE_DIR ClpSimplexDual.hpp
	    PATHS
	      /usr/include/coin
	    )

	FIND_PATH(
	      CLP2_INCLUDE_DIR coinutils.pc
	    PATHS
	      /usr/lib/x86_64-linux-gnu/pkgconfig
	    )
    
    IF(CLP_INCLUDE_DIR AND CLP2_INCLUDE_DIR AND CLP_LIBRARY AND CLP2_LIBRARY AND CLP3_LIBRARY)
        SET(CLP_FOUND TRUE)
        MESSAGE(STATUS "Found CLP: ${CLP_INCLUDE_DIR}, ${CLP_LIBRARY}")
    ELSE(CLP_INCLUDE_DIR AND CLP2_INCLUDE_DIR AND CLP_LIBRARY AND CLP2_LIBRARY AND CLP3_LIBRARY)
        SET(CLP_FOUND FALSE)
        MESSAGE(STATUS "CLP not found.")
    ENDIF(CLP_INCLUDE_DIR AND CLP2_INCLUDE_DIR AND CLP_LIBRARY AND CLP2_LIBRARY AND CLP3_LIBRARY)
    
    MARK_AS_ADVANCED(CLP_INCLUDE_DIR CLP2_INCLUDE_DIR CLP_LIBRARY CLP2_LIBRARY CLP3_LIBRARY)
ENDIF(CLP_INCLUDE_DIR AND CLP2_INCLUDE_DIR AND CLP_LIBRARY AND CLP2_LIBRARY AND CLP3_LIBRARY)
