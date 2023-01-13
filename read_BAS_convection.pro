;***************************************************************************************
; Programme read_BAS_convection.pro Mai Mai Lam 5 Jan 2023
; Reads in regression coefficients for high-latitude northern hemisphere, 
; for 559 equal-area location bins.
; This programme will read in 2 ASCII files: first, the east-west coefficients
; second, the north-south coefficients.
; PLEASE REFER TO THE METADATA INFORMATION AND DATA FILES FOR THE LIST OF VARIABLE NAMES
;***************************************************************************************
no_loc_bins = 559 ; number of spatial location bins

; the 2 regression data files
filenameEW  = 'PlasmaVelocityForecastCoefficientsEW.asc'
filenameNS  = 'PlasmaVelocityForecastCoefficientsNS.asc'

; first, read in the EW regression coefficients
Print, 'Retrieving forecast model regression coefficients from: ' + filenameEW
OpenR, unit,  filenameEW, /Get_Lun
text = ''

Print, 'Full header info:'
  for itext = 0, 3 do begin
    Readf, unit, text
    Print, text
  endfor
;  
Readf, unit, text
print, 'Model quantity: ', text
cen_colatitude = fltarr(559)
Readf, unit,  cen_colatitude
help,  cen_colatitude
;
Readf, unit, text
print, 'Model quantity: ', text
cen_longitude = fltarr(559)
Readf, unit,  cen_longitude
help,  cen_longitude
;
Readf, unit, text
print, 'Model quantity: ', text
lim_colatitude = fltarr(559, 2)
Readf, unit, lim_colatitude
help,  lim_colatitude
;
Readf, unit, text
print, 'Model quantity: ', text
lim_longitude = fltarr(559, 2)
Readf, unit, lim_longitude
help,  lim_longitude
;
Readf, unit, text
print, 'Model quantity: ', text
Sv2epEW = fltarr(559)
Readf, unit, Sv2epEW
help, Sv2epEW
;
Readf, unit, text
print, 'Model quantity: ', text
Cv2epEW = fltarr(559)
Readf, unit, Cv2epEW
help, Cv2epEW
;
Readf, unit, text
print, 'Model quantity: ', text
Fv2epEW = fltarr(559)
Readf, unit, Fv2epEW
help, Fv2epEW
;
Readf, unit, text
print, 'Model quantity: ', text
iv2epEW = fltarr(559)
Readf, unit, iv2epEW
help, iv2epEW
;
Readf, unit, text
print, 'Model quantity: ', text
Sv2ByEW = fltarr(559)
Readf, unit, Sv2ByEW
help, Sv2ByEW
;
Readf, unit, text
print, 'Model quantity: ', text
Cv2ByEW = fltarr(559)
Readf, unit, Cv2ByEW
help, Cv2ByEW
;
Readf, unit, text
print, 'Model quantity: ', text
Fv2ByEW = fltarr(559)
Readf, unit, Fv2ByEW
help, Fv2ByEW
;
Readf, unit, text
print, 'Model quantity: ', text
iv2ByEW = fltarr(559)
Readf, unit, iv2ByEW
help, iv2ByEW
;
Readf, unit, text
print, 'Model quantity: ', text
Sv2cEW = fltarr(559)
Readf, unit, Sv2cEW
help, Sv2cEW
;
Readf, unit, text
print, 'Model quantity: ', text
Cv2cEW = fltarr(559)
Readf, unit, Cv2cEW
help, Cv2cEW
;
Readf, unit, text
print, 'Model quantity: ', text
Fv2cEW = fltarr(559)
Readf, unit, Fv2cEW
help, Fv2cEW
;
Readf, unit, text
print, 'Model quantity: ', text
iv2cEW = fltarr(559)
Readf, unit, iv2cEW
help, iv2cEW
;
Free_lun, unit 
;---------------------------------------------------------
; secondly, read in the NS regression coefficients
Print, 'Retrieving forecast model regression coefficients from: ' + filenameNS

OpenR, unit,  filenameNS, /Get_Lun

for itext = 0, 0 do begin
  Readf, unit, text
  print, text
endfor
;
for itext = 0, 2 do begin
  Readf, unit, text
;  print, text; NO NEED TO REPRINT THIS TEXT
endfor

Readf, unit, text
Readf, unit,  cen_colatitude
Readf, unit, text
Readf, unit,  cen_longitude
Readf, unit, text
Readf, unit,  lim_colatitude
Readf, unit, text
Readf, unit,  lim_longitude
; NO NEED TO REPRINT ABOVE QUANTITIES

Readf, unit, text
print, 'Model quantity: ', text
Sv2epNS = fltarr(559)
Readf, unit, Sv2epNS
help, Sv2epNS
;
Readf, unit, text
print, 'Model quantity: ', text
Cv2epNS = fltarr(559)
Readf, unit, Cv2epNS
help, Cv2epNS
;
Readf, unit, text
print, 'Model quantity: ', text
Fv2epNS = fltarr(559)
Readf, unit, Fv2epNS
help, Fv2epNS
;
Readf, unit, text
print, 'Model quantity: ', text
iv2epNS = fltarr(559)
Readf, unit, iv2epNS
help, iv2epNS
;
Readf, unit, text
print, 'Model quantity: ', text
Sv2ByNS = fltarr(559)
Readf, unit, Sv2ByNS
help, Sv2ByNS
;
Readf, unit, text
print, 'Model quantity: ', text
Cv2ByNS = fltarr(559)
Readf, unit, Cv2ByNS
help, Cv2ByNS
;
Readf, unit, text
print, 'Model quantity: ', text
Fv2ByNS = fltarr(559)
Readf, unit, Fv2ByNS
help, Fv2ByNS
;
Readf, unit, text
print, 'Model quantity: ', text
iv2ByNS = fltarr(559)
Readf, unit, iv2ByNS
help, iv2ByNS
;
Readf, unit, text
print, 'Model quantity: ', text
Sv2cNS = fltarr(559)
Readf, unit, Sv2cNS
help, Sv2cNS
;
Readf, unit, text
print, 'Model quantity: ', text
Cv2cNS = fltarr(559)
Readf, unit, Cv2cNS
help, Cv2cNS
;
Readf, unit, text
print, 'Model quantity: ', text
Fv2cNS = fltarr(559)
Readf, unit, Fv2cNS
help, Fv2cNS
;
Readf, unit, text
print, 'Model quantity: ', text
iv2cNS = fltarr(559)
Readf, unit, iv2cNS
help, iv2cNS
;
Free_lun, unit
;************************************************************************************
; Calculate the velocity components for a given 5 min instance 
; Let's choose 05:42:00 on Feb 13 2001 as in Figure 7c of Lam et al, Space Weather, 2023, draft.
; Assign appropriate set of values for:
; 1. DOY or day of year. x = 2*pi(DOY-79)/365.25, and so defines cos(x) and sin(x)
; 2. epsilon, the weel-known coupling parameter
; 3. IMF By
; 4. f10.7 index
; Note: Model development used DOY or day of year at the middle day of the month
; This is fine but could try using actual day of year.
; Lam et al., 2023 model development used epsilon and IMF By lagged by 20 mins
; in addition to the OMNI website lag to the bow shock nose
; Use the monthly mean value of f10.7 (could use rolling monthly mean)
; 
;************************************************************************************
; assign v2 model arrays
v2_model_intercept     = fltarr(no_loc_bins)
v2_model_epsilon_slope = fltarr(no_loc_bins)
v2_model_IMFBy_slope   = fltarr(no_loc_bins)

;cos(x) for middle day for the 12 months of the year
capital_C = [0.46071509,  0.83397478,  0.99703294,  0.90147913,  0.56340468, 0.073760055, $
            -0.43572789, -0.83278632, -0.99807858, -0.89486217, -0.55090553, -0.058740627 ]
;sin(x) for middle day for the 12 months of the year
capital_S = [-0.88754809, -0.55180258, -0.076976262,  0.43282256,  0.82618105,  0.99727601,  $
              0.90007842,  0.55359453,  0.061960474, -0.44634256, -0.83456761, -0.99827325 ]
; 1. We choose the middle-of-the-month DOY for February 2001. 
capitalS = capital_S(1) ; sin(x)
capitalC = capital_C(1) ; cos(x)
; 2. OMNI data gives the following value for monthly mean of f10.7 index for Feb 2001:
f107     = 143.10359
; Let's look at n=1 5-min intervals of OMNI 1-min data
; Lam et al. calculated mean values for epsilon and IMF By
; and then lagged by 20 mins. 
no5mins = 1             ; could change to any value
epsilon = 2.42819e+012  ; could change to array n of values
IMFBy   = -0.0300000    ; could change to array n of values

; Let's calculate the EW component of velocity:
themodel = fltarr(no_loc_bins)

for iloc = 0, no_loc_bins - 1 do begin
;
  v2_model_intercept(iloc)     = iv2cEW(iloc) + Fv2cEW(iloc) * f107 $
    + Sv2cEW(iloc) * capitalS $
    + Cv2cEW(iloc) * capitalC
;
  v2_model_epsilon_slope(iloc) = iv2epEW(iloc) + Fv2epEW(iloc) * f107 $
    + Sv2epEW(iloc) * capitalS $
    + Cv2epEW(iloc) * capitalC
;
  v2_model_IMFBy_slope(iloc)   = iv2ByEW(iloc) + Fv2ByEW(iloc) * f107 $
    + Sv2ByEW(iloc) * capitalS $
    + Cv2ByEW(iloc) * capitalC
;
  for it = 0, no5mins - 1 do begin
    themodel(iloc, it) = v2_model_intercept(iloc) $
      + epsilon(it) * v2_model_epsilon_slope(iloc) $
      + IMFBy(it)  * v2_model_IMFBy_slope(iloc)
  endfor
endfor
;
themodelEW = themodel 
;*****************************************************
; now calculate the NS component of velocity
  
for iloc = 0, no_loc_bins - 1 do begin
  ;
  v2_model_intercept(iloc)     = iv2cNS(iloc) + Fv2cNS(iloc) * f107 $
    + Sv2cNS(iloc) * capitalS $
    + Cv2cNS(iloc) * capitalC
  ;
  v2_model_epsilon_slope(iloc) = iv2epNS(iloc) + Fv2epNS(iloc) * f107 $
    + Sv2epNS(iloc) * capitalS $
    + Cv2epNS(iloc) * capitalC
  ;
  v2_model_IMFBy_slope(iloc)   = iv2ByNS(iloc) + Fv2ByNS(iloc) * f107 $
    + Sv2ByNS(iloc) * capitalS $
    + Cv2ByNS(iloc) * capitalC
  ;
  for it = 0, no5mins - 1 do begin
    themodel(iloc, it) = v2_model_intercept(iloc) $
      + epsilon(it) * v2_model_epsilon_slope(iloc) $
      + IMFBy(it)  * v2_model_IMFBy_slope(iloc)
  endfor
endfor

themodelNS = themodel
;Output the results
Print, 'The BAS forecast ionospheric plasma velocity at 05:42:00 on Feb 13 2001: '
Print, 'Co-ordinates: Quasi dipolar. Colatitude in degs from the north pole, longitude in deg east'
Print, 'Colat. (Deg.)     Long. (Deg.) EW vel. (m/s) NS vel. (m/s) '
   for iloc = 0, 1 do begin
   Print, cen_colatitude(iloc), cen_longitude(iloc), themodelEW(iloc), themodelNS(iloc)
   endfor
Print, 'We expect NaN values for colatitudes greater than ~30 deg., as for the parent BAS reanalysis dataset'
end