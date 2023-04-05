** 
*TITLE1
   'OTIMIZACAO DE PRODUCAO'
** 
*TITLE2
   'FASE 2'
** 
*TITLE3
   'NEW TOY-CASE '
** 
** Sistema de unidades
*INUNIT *MODSI 
** 
*XDR *OFF
*OUTUNIT *MODSI          ** Unidades internacionais modificadas

** *WPRN   *WELL   *TIME    ** Frequencia de impressao no arq. saida .OUT
*WPRN   *WELL   1        ** Frequencia de impressao no arq. saida .OUT
*WPRN   *GRID   0
*WPRN   *ITER   *BRIEF

*OUTPRN *WELL   *ALL     ** Informacoes a serem impressas arq.saida .OUT
*OUTPRN *RES    *ALL
*OUTPRN *TABLES *NONE
*OUTPRN *GRID   *NONE

*WSRF   *GRID   1        ** Frequencia de gravacao nos arq. .IRF e .MRF
*WSRF   *WELL   1

                                             ** Informacoes a serem gravadas nos
*OUTSRF *GRID *SW *SG *SO *PRES *DATUMPRES   ** arq. .IRF e .MRF
*OUTSRF *WELL *LAYER *ALL

** 
**--------------------------------------------------------------------------
** 		Parte 2: Descricao do Reservatorio
**--------------------------------------------------------------------------
** 
*GRID *CART 51 51 3 
*KDIR *DOWN
*DI *CON    10
*DJ *CON    10
*DK *CON    4
*MOD
      1:51    1:51     2:3   =  8

*DTOP 2601*2000

*POR *CON    0.3
*NULL *IJK
      1:51    1:51        2  0
      1:51    1:51        3  0
*PERMI *IJK
      1:51    1:51        1  1000
      1:51    1:51        2  1000
      1:51    1:51        3  1000
*MOD
      1:26    26:51	1:3  * 1.50
     27:51    26:51	1:3  * 0.50
*PERMJ *EQUALSI 
*PERMK *EQUALSI * 0.1
*SECTOR 'CAM1'
      1:51    1:51        1
*SECTOR 'CAM2'
      1:51    1:51        2
*SECTOR 'CAM3'
      1:51    1:51        3
** 
*CROCKTYPE 1
*CPRPOR 200.000
*CCPOR 5E-005

** 
** 
**--------------------------------------------------------------------------
** 		Parte 3: Propriedades dos Componentes
**--------------------------------------------------------------------------
** 
*MODEL *BLACKOIL

** Temperatura do Reservatorio (oC)

*TRES 100.000
** 
** Regiao 1
** 
*PVT *EG 1
**    P          Rs         Bo         Eg         VisO       VisG       co        
**    (kg/cm2)   (sm3/sm3)  (rm3/sm3)  (sm3/rm3)  (cP)       (cP)       (cm2/kg)  
         1.033        0.5      1.074     0.7774   5.812680   0.013292  0.0004267
         7.631        1.9      1.077     5.7924   5.412240   0.013353  0.0004267
        14.229        3.6      1.081    10.8956   5.010100   0.013438  0.0004267
        20.827        5.5      1.085    16.0867   4.636120   0.013539  0.0004267
        27.424        7.5      1.090    21.3645   4.297090   0.013653  0.0004267
        34.022        9.6      1.094    26.7276   3.992900   0.013780  0.0004267
        40.620       11.8      1.099    32.1738   3.721000   0.013919  0.0004267
        47.218       14.0      1.104    37.7002   3.478060   0.014068  0.0004267
        53.816       16.3      1.109    43.3033   3.260710   0.014229  0.0004267
        60.413       18.7      1.115    48.9786   3.065810   0.014400  0.0004267
        67.011       21.1      1.120    54.7210   2.890540   0.014582  0.0004267
        73.609       23.6      1.126    60.5243   2.732430   0.014775  0.0004267
        80.207       26.1      1.132    66.3817   2.589350   0.014978  0.0004267
        86.804       28.7      1.138    72.2854   2.459440   0.015191  0.0004267
        93.402       31.2      1.144    78.2270   2.341110   0.015414  0.0004267
       100.000       33.9      1.151    84.1972   2.233010   0.015646  0.0004267
       160.000       59.2      1.213   138.0790   1.564330   0.018155 0.000289776
       220.000       86.6      1.283   186.5890   1.201580   0.021108 0.000191717
       280.000      115.5      1.361   226.7390   0.976856   0.024144 0.000140259
       340.000      145.7      1.445   259.1040   0.824782   0.027056 0.000109074
       400.000      177.1      1.535   285.3140   0.715284   0.029768 8.83779e-005
** 

** Massa especifica do oleo
*DENSITY *OIL      903.249

** Massa especifica do gas
*DENSITY *GAS        0.856

** Massa especifica da agua
*DENSITY *WATER      965.284

*CVO        0.001
*BWI        1.043
*CW     4.8e-005
*REFPW        1.033
*VWI     0.294779
*CVW            0


*************************************************************************************
** 
**--------------------------------------------------------------------------
** 		Parte 4: Propriedades Rocha-Fluido
**--------------------------------------------------------------------------
** 
*ROCKFLUID
*RPT 1

** Tabela de Permeabilidade Relativa Oleo-Agua
*SWT 
**    Sw         Krw        Krow       Pcow      
**    (adm)      (adm)      (adm)      (kg/cm2)  
0.08800000      0.000      0.800      0.000
0.10000000      0.000      0.750       *INT
0.15000000      0.000      0.563       *INT
0.20000000      0.002      0.411       *INT
0.25000000      0.005      0.288       *INT
0.30000000      0.011      0.193       *INT
0.35000000      0.020      0.122       *INT
0.40000000      0.034      0.070       *INT
0.45000000      0.053      0.036       *INT
0.50000000      0.079      0.015       *INT
0.55000000      0.111      0.005       *INT
0.60000000      0.151      0.001       *INT
0.65000000      0.200      0.000      0.000

** Tabela de Permeabilidade Relativa Gas-Oleo
*SLT 
**    Sl         Krg        Krog       Pcog      
**    (adm)      (adm)      (adm)      (kg/cm2)  
0.17600000      0.900      0.000      0.000
0.20000000      0.824      0.000       *INT
0.25000000      0.679      0.001       *INT
0.30000000      0.552      0.003       *INT
0.35000000      0.442      0.008       *INT
0.40000000      0.347      0.016       *INT
0.45000000      0.268      0.029       *INT
0.50000000      0.201      0.049       *INT
0.55000000      0.147      0.075       *INT
0.60000000      0.103      0.109       *INT
0.65000000      0.069      0.152       *INT
0.70000000      0.043      0.206       *INT
0.75000000      0.025      0.270       *INT
0.80000000      0.013      0.347       *INT
0.85000000      0.005      0.438       *INT
0.90000000      0.002      0.543       *INT
0.95000000      0.000      0.663       *INT
1.00000000      0.000      0.800      0.000

** 
**--------------------------------------------------------------------------
** 		Parte 5: Condicoes Iniciais
**--------------------------------------------------------------------------
** 

*INITIAL

*VERTICAL *BLOCK_CENTER   
** DATUM para gravacao
*DATUMDEPTH 1000.000
** 
** Profundidade de Referencia
*REFDEPTH     2000.500      

** Pressao inicial
*REFPRES      200.000      

** Profundidade do contato oleo-agua
*DWOC        3000.000      

** Profundidade do contato gas-oleo
*DGOC        1000.000      



** Pressao de bolha (todas as celulas)
*PB *CON    273.033
** 
**--------------------------------------------------------------------------
** 		Parte 6: Metodos Numericos
**--------------------------------------------------------------------------
** 
*NUMERICAL
** 
*DTMAX         30.             ** Tamanho maximo do timestep em dias

*MAXSTEPS      1000000        ** Numero maximo de timesteps

                              ** Controle do tamanho do timestep
*NORM *PRESS    10.0             ** max. variacao  pressao  no timestep
                                    ** unidade: kgf/cm2
*NORM *SATUR     0.05            ** max. variacao saturacao no timestep

                              ** Metodo implicito adaptativo
*AIM  *THRESH    0.25 .20        ** Criterio de mudanca: threshold

** 

**--------------------------------------------------------------------------
** 		Parte 7: Pocos e Dados Recorrentes
**--------------------------------------------------------------------------
** 

*RUN
*DATE 2006 01 01

*GROUP 'PLAT' *ATTACHTO 'FIELD'


** -------------------------------------------------------
*WELL  1  'PROD1' *ATTACHTO 'PLAT'

*PRODUCER 'PROD1' ** WELL no.1
*OPERATE *MAX *STL 30.0 
**OPERATE *MIN *BHP 180.0
**MONITOR *WCUT     0.95   *STOP

*GEOMETRY *K 0.100 0.37 1 0
*PERF *GEO 'PROD1'
   51 51 1 1.000000 
   51 51 2 1.000000 
   51 51 3 1.000000 

** -------------------------------------------------------
*WELL  2  'PROD2' *ATTACHTO 'PLAT'

*PRODUCER 'PROD2' ** WELL no.2
*OPERATE *MAX *STL 30.0
**OPERATE *MIN *BHP 180.0 
**MONITOR *WCUT     0.95   *STOP

*GEOMETRY *K 0.100 0.37 1 0
*PERF *GEO 'PROD2'
   1 51 1 1.000000 
   1 51 2 1.000000 
   1 51 3 1.000000 

** -------------------------------------------------------
*WELL  3  'INJ1' *ATTACHTO 'PLAT'

*INJECTOR 'INJ1' ** WELL no.3
*INCOMP *WATER
**OPERATE *MAX *BHP 220.000 
*OPERATE *MAX *STW  44.000

*GEOMETRY *K 0.100 0.37 1 0
*PERF *GEO 'INJ1'
   26 1 3 1.000000 
   26 1 2 1.000000 
   26 1 1 1.000000 

** -------------------------------------------------------
** RESTRICOES DA PLATAFORMA
 *GCONP 'PLAT'
 *MAX STL  40.0
 *IPP

 *ALTER 'PROD1'   'PROD2'
               $GP1_1          $GP1_2

*DATE 2006 02 01


*DATE 2006 03 01


*DATE 2006 04 01


*DATE 2006 05 01


*DATE 2006 06 01


*DATE 2006 07 01


*DATE 2006 08 01


*DATE 2006 09 01


*DATE 2006 10 01


*DATE 2006 11 01


*DATE 2006 12 01


*DATE 2007 01 01
 *ALTER 'PROD1'   'PROD2'
               $GP2_1          $GP2_2

*DATE 2007 02 01


*DATE 2007 03 01


*DATE 2007 04 01


*DATE 2007 05 01


*DATE 2007 06 01


*DATE 2007 07 01


*DATE 2007 08 01


*DATE 2007 09 01


*DATE 2007 10 01


*DATE 2007 11 01


*DATE 2007 12 01


*DATE 2008 01 01
 *ALTER 'PROD1'   'PROD2'
               $GP3_1          $GP3_2

*DATE 2008 02 01


*DATE 2008 03 01


*DATE 2008 04 01


*DATE 2008 05 01


*DATE 2008 06 01


*DATE 2008 07 01


*DATE 2008 08 01


*DATE 2008 09 01


*DATE 2008 10 01


*DATE 2008 11 01


*DATE 2008 12 01


*DATE 2009 01 01
 *ALTER 'PROD1'   'PROD2'
               $GP4_1          $GP4_2

*DATE 2009 02 01


*DATE 2009 03 01


*DATE 2009 04 01


*DATE 2009 05 01


*DATE 2009 06 01


*DATE 2009 07 01


*DATE 2009 08 01


*DATE 2009 09 01


*DATE 2009 10 01


*DATE 2009 11 01


*DATE 2009 12 01


*DATE 2010 01 01
 *ALTER 'PROD1'   'PROD2'
               $GP5_1          $GP5_2

*DATE 2010 02 01


*DATE 2010 03 01


*DATE 2010 04 01


*DATE 2010 05 01


*DATE 2010 06 01


*DATE 2010 07 01


*DATE 2010 08 01


*DATE 2010 09 01


*DATE 2010 10 01


*DATE 2010 11 01


*DATE 2010 12 01


*DATE 2011 01 01
 *ALTER 'PROD1'   'PROD2'
               $GP6_1          $GP6_2

*DATE 2011 02 01


*DATE 2011 03 01


*DATE 2011 04 01


*DATE 2011 05 01


*DATE 2011 06 01


*DATE 2011 07 01


*DATE 2011 08 01


*DATE 2011 09 01


*DATE 2011 10 01


*DATE 2011 11 01


*DATE 2011 12 01


*DATE 2012 01 01

*ALTER 'PROD1'   'PROD2'
               $GP7_1              $GP7_2

*DATE 2012 02 01


*DATE 2012 03 01


*DATE 2012 04 01


*DATE 2012 05 01


*DATE 2012 06 01


*DATE 2012 07 01


*DATE 2012 08 01


*DATE 2012 09 01


*DATE 2012 10 01


*DATE 2012 11 01


*DATE 2012 12 01


*DATE 2013 01 01
 *ALTER 'PROD1'   'PROD2'
               $GP8_1          $GP8_2

*DATE 2013 02 01


*DATE 2013 03 01


*DATE 2013 04 01


*DATE 2013 05 01


*DATE 2013 06 01


*DATE 2013 07 01


*DATE 2013 08 01


*DATE 2013 09 01


*DATE 2013 10 01


*DATE 2013 11 01


*DATE 2013 12 01


*DATE 2014 01 01
 *ALTER 'PROD1'   'PROD2'
               $GP9_1          $GP9_2

*DATE 2014 02 01


*DATE 2014 03 01


*DATE 2014 04 01


*DATE 2014 05 01


*DATE 2014 06 01


*DATE 2014 07 01


*DATE 2014 08 01


*DATE 2014 09 01


*DATE 2014 10 01


*DATE 2014 11 01


*DATE 2014 12 01


*DATE 2015 01 01
 *ALTER 'PROD1'   'PROD2'
               $GP10_1          $GP10_2

*DATE 2015 02 01


*DATE 2015 03 01


*DATE 2015 04 01


*DATE 2015 05 01


*DATE 2015 06 01


*DATE 2015 07 01


*DATE 2015 08 01


*DATE 2015 09 01


*DATE 2015 10 01


*DATE 2015 11 01


*DATE 2015 12 01


*DATE 2016 01 01
 *ALTER 'PROD1'   'PROD2'
               $GP11_1          $GP11_2

*DATE 2016 02 01


*DATE 2016 03 01


*DATE 2016 04 01


*DATE 2016 05 01


*DATE 2016 06 01


*DATE 2016 07 01


*DATE 2016 08 01


*DATE 2016 09 01


*DATE 2016 10 01


*DATE 2016 11 01


*DATE 2016 12 01


*DATE 2017 01 01
 *ALTER 'PROD1'   'PROD2'
               $GP12_1          $GP12_2

*DATE 2017 02 01


*DATE 2017 03 01


*DATE 2017 04 01


*DATE 2017 05 01


*DATE 2017 06 01


*DATE 2017 07 01


*DATE 2017 08 01


*DATE 2017 09 01


*DATE 2017 10 01


*DATE 2017 11 01


*DATE 2017 12 01


*DATE 2018 01 01


*DATE 2018 02 01


*DATE 2018 03 01


*DATE 2018 04 01


*DATE 2018 05 01


*DATE 2018 06 01


*DATE 2018 07 01


*DATE 2018 08 01


*DATE 2018 09 01


*DATE 2018 10 01


*DATE 2018 11 01


*DATE 2018 12 01


*DATE 2019 01 01


*DATE 2019 02 01


*DATE 2019 03 01


*DATE 2019 04 01


*DATE 2019 05 01


*DATE 2019 06 01


*DATE 2019 07 01


*DATE 2019 08 01


*DATE 2019 09 01


*DATE 2019 10 01


*DATE 2019 11 01


*DATE 2019 12 01


*DATE 2020 01 01


*DATE 2020 02 01


*DATE 2020 03 01


*DATE 2020 04 01


*DATE 2020 05 01


*DATE 2020 06 01


*DATE 2020 07 01


*DATE 2020 08 01


*DATE 2020 09 01


*DATE 2020 10 01


*DATE 2020 11 01


*DATE 2020 12 01


*DATE 2021 01 01


*DATE 2021 02 01


*DATE 2021 03 01


*DATE 2021 04 01


*DATE 2021 05 01


*DATE 2021 06 01


*DATE 2021 07 01


*DATE 2021 08 01


*DATE 2021 09 01


*DATE 2021 10 01


*DATE 2021 11 01


*DATE 2021 12 01

  *STOP

*DATE 2022 01 01


*DATE 2022 02 01


*DATE 2022 03 01


*DATE 2022 04 01


*DATE 2022 05 01


*DATE 2022 06 01


*DATE 2022 07 01


*DATE 2022 08 01


*DATE 2022 09 01


*DATE 2022 10 01


*DATE 2022 11 01


*DATE 2022 12 01


*DATE 2023 01 01


*DATE 2023 02 01


*DATE 2023 03 01


*DATE 2023 04 01


*DATE 2023 05 01


*DATE 2023 06 01


*DATE 2023 07 01


*DATE 2023 08 01


*DATE 2023 09 01


*DATE 2023 10 01


*DATE 2023 11 01


*DATE 2023 12 01


*DATE 2024 01 01


*DATE 2024 02 01


*DATE 2024 03 01


*DATE 2024 04 01


*DATE 2024 05 01


*DATE 2024 06 01


*DATE 2024 07 01


*DATE 2024 08 01


*DATE 2024 09 01


*DATE 2024 10 01


*DATE 2024 11 01


*DATE 2024 12 01


*DATE 2025 01 01


*DATE 2025 02 01


*DATE 2025 03 01


*DATE 2025 04 01


*DATE 2025 05 01


*DATE 2025 06 01


*DATE 2025 07 01


*DATE 2025 08 01


*DATE 2025 09 01


*DATE 2025 10 01


*DATE 2025 11 01


*DATE 2025 12 01


*DATE 2026 01 01


*DATE 2026 02 01


*DATE 2026 03 01


*DATE 2026 04 01


*DATE 2026 05 01


*DATE 2026 06 01


*DATE 2026 07 01


*DATE 2026 08 01


*DATE 2026 09 01


*DATE 2026 10 01


*DATE 2026 11 01


*DATE 2026 12 01


*DATE 2027 01 01


*DATE 2027 02 01


*DATE 2027 03 01


*DATE 2027 04 01


*DATE 2027 05 01


*DATE 2027 06 01


*DATE 2027 07 01


*DATE 2027 08 01


*DATE 2027 09 01


*DATE 2027 10 01


*DATE 2027 11 01


*DATE 2027 12 01


*DATE 2028 01 01


*DATE 2028 02 01


*DATE 2028 03 01


*DATE 2028 04 01


*DATE 2028 05 01


*DATE 2028 06 01


*DATE 2028 07 01


*DATE 2028 08 01


*DATE 2028 09 01


*DATE 2028 10 01


*DATE 2028 11 01


*DATE 2028 12 01


*DATE 2029 01 01


*DATE 2029 02 01


*DATE 2029 03 01


*DATE 2029 04 01


*DATE 2029 05 01


*DATE 2029 06 01


*DATE 2029 07 01


*DATE 2029 08 01


*DATE 2029 09 01


*DATE 2029 10 01


*DATE 2029 11 01


*DATE 2029 12 01


*DATE 2030 01 01


*DATE 2030 02 01


*DATE 2030 03 01


*DATE 2030 04 01


*DATE 2030 05 01


*DATE 2030 06 01


*DATE 2030 07 01


*DATE 2030 08 01


*DATE 2030 09 01


*DATE 2030 10 01


*DATE 2030 11 01


*DATE 2030 12 01


*DATE 2031 01 01


*DATE 2031 02 01


*DATE 2031 03 01


*DATE 2031 04 01


*DATE 2031 05 01


*DATE 2031 06 01


*DATE 2031 07 01


*DATE 2031 08 01


*DATE 2031 09 01


*DATE 2031 10 01


*DATE 2031 11 01


*DATE 2031 12 01


*DATE 2032 01 01


*DATE 2032 02 01


*DATE 2032 03 01


*DATE 2032 04 01


*DATE 2032 05 01


*DATE 2032 06 01


*DATE 2032 07 01


*DATE 2032 08 01


*DATE 2032 09 01


*DATE 2032 10 01


*DATE 2032 11 01


*DATE 2032 12 01


*DATE 2033 01 01


*DATE 2033 02 01


*DATE 2033 03 01


*DATE 2033 04 01


*DATE 2033 05 01


*DATE 2033 06 01


*DATE 2033 07 01


*DATE 2033 08 01


*DATE 2033 09 01


*DATE 2033 10 01


*DATE 2033 11 01


*DATE 2033 12 01


*DATE 2034 01 01


*DATE 2034 02 01


*DATE 2034 03 01


*DATE 2034 04 01


*DATE 2034 05 01


*DATE 2034 06 01


*DATE 2034 07 01


*DATE 2034 08 01


*DATE 2034 09 01


*DATE 2034 10 01


*DATE 2034 11 01


*DATE 2034 12 01


*DATE 2035 01 01


*DATE 2035 02 01


*DATE 2035 03 01


*DATE 2035 04 01


*DATE 2035 05 01


*DATE 2035 06 01


*DATE 2035 07 01


*DATE 2035 08 01


*DATE 2035 09 01


*DATE 2035 10 01


*DATE 2035 11 01


*DATE 2035 12 01


*DATE 2036 01 01


*DATE 2036 02 01


*DATE 2036 03 01


*DATE 2036 04 01


*DATE 2036 05 01


*DATE 2036 06 01


*DATE 2036 07 01


*DATE 2036 08 01


*DATE 2036 09 01


*DATE 2036 10 01


*DATE 2036 11 01


*DATE 2036 12 01


*STOP
