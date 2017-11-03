EFA Code for 	SPSS
FACTOR
  /VARIABLES i1 i2 i3 i4 i5 i6 i7 i8 i9 i10 i11 i12 i13 i14 i15 i16 i17 i18 i19 i20 i21 i22 i23 i24 i25 i26
  /MISSING LISTWISE 
  /ANALYSIS i1 i2 i3 i4 i5 i6 i7 i8 i9 i10 i11 i12 i13 i14 i15 i16 i17 i18 i19 i20 i21 i22 i23 i24 i25 i26
  /PRINT INITIAL EXTRACTION
  /PLOT EIGEN
  /CRITERIA MINEIGEN(1) ITERATE(25)
  /EXTRACTION PAF
  /ROTATION NOROTATE
  /METHOD=CORRELATION.
GRM Code

#loading the ltm package into library
library(ltm)

#define working directory.
setwd("G:/PhD/PhD/Dissertation/Analysis/")

#Reading in the data file and call it "temp"
temp <- read.table("revcodedata.txt",header=FALSE,sep="")

#Change the text file into matrix format that ltm can read
ITFdata <- temp
ITFdata

############# Running the GRM ##################

# remember, the 1.7 constant is added to the model in the ltm package
# the IRT.param = FALSE command does not work for GRM in the way we discussed!!
modelGRM <- grm(ITFdata, constrained=FALSE, IRT.param=FALSE)
modelGRM

#Extracting estimated parameters
item.pars.GRM <- coef(modelGRM)
item.pars.GRM <- as.data.frame(item.pars.GRM)
item.pars.GRM

summary (modelGRM)

#Plotting ICC's of first three items
#In practice you want to look at ICCs of all items
jpeg ("Perspectives_item_1.jpg")
plot(modelGRM, type = c("ICC"), item = 1, legend = TRUE,
	main="Perspectives ICC for Item 1")
dev.off()

jpeg ("Multiperspect_item_2.jpg")
plot(modelGRM, type = c("ICC"), item = 2, legend = TRUE,
	main="Multiperspect ICC for Item 2")
dev.off()

jpeg ("Waythink_item_3.jpg")
plot(modelGRM, type = c("ICC"), item = 3, legend = TRUE,
	main="Waythink ICC for Item 3")
dev.off()

jpeg ("Effectdec_item_4.jpg")
plot(modelGRM, type = c("ICC"), item = 4, legend = TRUE,
	main="Effectdec ICC for Item 4")
dev.off()

jpeg ("Knownorms_item_5.jpg")
plot(modelGRM, type = c("ICC"), item = 5, legend = TRUE,
	main="Knownorms ICC for Item 5")
dev.off()

jpeg("Thinkcritical_item_6.jpg")
plot(modelGRM, type = c("ICC"), item = 6, legend = TRUE,
	main="Thinkcritical ICC for Item 6")
dev.off()

jpeg ("Actlearn_item_7.jpg")
plot(modelGRM, type = c("ICC"), item = 7, legend = TRUE,
	main="Actlearn ICC for Item 7")
dev.off()

jpeg ("Ptsview_item_8.jpg")
plot(modelGRM, type = c("ICC"), item = 8, legend = TRUE,
	main="Ptsview ICC for Item 8")
dev.off()

jpeg ("Solvprob_item_9.jpg")
plot(modelGRM, type = c("ICC"), item = 9, legend = TRUE,
	main="Solvprob ICC for Item 9")
dev.off()


jpeg ("Contrcult_item_10.jpg")
plot(modelGRM, type = c("ICC"), item = 10, legend = TRUE,
	main="Contrcult ICC for Item 10")
dev.off()

jpeg ("Knowbeliefs_item_11.jpg")
plot(modelGRM, type = c("ICC"), item = 11, legend = TRUE,
	main="Knowbeliefs ICC for Item 11")
dev.off()

jpeg ("Recdec_item_12.jpg")
plot(modelGRM, type = c("ICC"), item = 12, legend = TRUE,
	main="Recdec ICC for Item 12")
dev.off()

jpeg ("Flex_item_13.jpg")
plot(modelGRM, type = c("ICC"), item = 13, legend = TRUE,
	main="Flex ICC for Item 13")
dev.off()

jpeg ("Social_item_14.jpg")
plot(modelGRM, type = c("ICC"), item = 14, legend = TRUE,
	main="Social ICC for Item 14")
dev.off()

jpeg ("Adapt_item_15.jpg")
plot(modelGRM, type = c("ICC"), item = 15, legend = TRUE,
	main="Adapt ICC for Item 15")
dev.off()

jpeg ("Commeffect_item_16.jpg")
plot(modelGRM, type = c("ICC"), item = 16, legend = TRUE,
	main="Commeffect ICC for Item 16")
dev.off()

jpeg ("Grpwork_item_17.jpg")
plot(modelGRM, type = c("ICC"), item = 17, legend = TRUE,
	main="Grpwork ICC for Item 17")
dev.off()

jpeg ("Comfortconv_item_18.jpg")
plot(modelGRM, type = c("ICC"), item = 18, legend = TRUE,
	main="Comfortconv ICC for Item 18")
dev.off()


jpeg ("Grpcollob_item_19.jpg")
plot(modelGRM, type = c("ICC"), item = 19, legend = TRUE,
	main="Grpcollob ICC for Item 19")
dev.off()

jpeg ("Askquest_item_20.jpg")
plot(modelGRM, type = c("ICC"), item = 20, legend = TRUE,
	main="Askquest ICC for Item 20")
dev.off()

jpeg ("Enjoylearn_item_21.jpg")
plot(modelGRM, type = c("ICC"), item = 21, legend = TRUE,
	main="Enjoylearn ICC for Item 21")
dev.off()

jpeg ("Teachcult_item_22.jpg")
plot(modelGRM, type = c("ICC"), item = 22, legend = TRUE,
	main="Teachcult ICC for Item 22")
dev.off()

jpeg ("Inteffect_item_23.jpg")
plot(modelGRM, type = c("ICC"), item = 23, legend = TRUE,
	main="Inteffect ICC for Item 23")
dev.off()

jpeg ("Appdiff_item_24.jpg")
plot(modelGRM, type = c("ICC"), item = 24, legend = TRUE,
	main="Appdiff ICC for Item 24")
dev.off()

jpeg ("Intissues_item_25.jpg")
plot(modelGRM, type = c("ICC"), item = 25, legend = TRUE,
	main="Intissues ICC for Item 25")
dev.off()

jpeg ("Articulate_item_26.jpg")
plot(modelGRM, type = c("ICC"), item = 26, legend = TRUE,
	main="Articulate ICC for Item 26")
dev.off()







#Plotting step functions of first three items
#In practice you want to look at step functions of all items
jpeg ("GRM_step_function_item_1.jpg")
plot(modelGRM, type = c("OCCu"), item = 1, legend = TRUE,
	main="Perspectives Step Function for Item 1")
dev.off()

jpeg ("GRM_step_function_item_2.jpg")
plot(modelGRM, type = c("OCCu"), item = 2, legend = TRUE,
	main="Multiperspect Step Function for Item 2")
dev.off()

jpeg ("GRM_step_function_item_3.jpg")
plot(modelGRM, type = c("OCCu"), item = 3, legend = TRUE,
	main="Waythink Step Function for Item 3")
dev.off()

jpeg ("GRM_step_function_item_4.jpg")
plot(modelGRM, type = c("OCCu"), item = 4, legend = TRUE,
	main="Effectdec Step Function for Item 4")
dev.off()

jpeg ("GRM_step_function_item_5.jpg")
plot(modelGRM, type = c("OCCu"), item = 5, legend = TRUE,
	main="Knownorms Step Function for Item 5")
dev.off()

jpeg ("GRM_step_function_item_6.jpg")
plot(modelGRM, type = c("OCCu"), item = 6, legend = TRUE,
	main="Thinkcrit Step Function for Item 6")
dev.off()

jpeg ("GRM_step_function_item_7.jpg")
plot(modelGRM, type = c("OCCu"), item = 7, legend = TRUE,
	main="Actlearn Step Function for Item 7")
dev.off()

jpeg ("GRM_step_function_item_8.jpg")
plot(modelGRM, type = c("OCCu"), item = 8, legend = TRUE,
	main="Ptsview Step Function for Item 8")
dev.off()

jpeg ("GRM_step_function_item_9.jpg")
plot(modelGRM, type = c("OCCu"), item = 9, legend = TRUE,
	main="Solvprob Step Function for Item 9")
dev.off()
jpeg ("GRM_step_function_item_10.jpg")
plot(modelGRM, type = c("OCCu"), item = 10, legend = TRUE,
	main="Contrcult Step Function for Item 10")
dev.off()

jpeg ("GRM_step_function_item_11.jpg")
plot(modelGRM, type = c("OCCu"), item = 11, legend = TRUE,
	main="Knowbeliefs Step Function for Item 11")
dev.off()

jpeg ("GRM_step_function_item_12.jpg")
plot(modelGRM, type = c("OCCu"), item = 12, legend = TRUE,
	main="Recdec Step Function for Item 12")
dev.off()

jpeg ("GRM_step_function_item_13.jpg")
plot(modelGRM, type = c("OCCu"), item = 13, legend = TRUE,
	main="Flex Step Function for Item 13")
dev.off()

jpeg ("GRM_step_function_item_14.jpg")
plot(modelGRM, type = c("OCCu"), item = 14, legend = TRUE,
	main="Social Step Function for Item 14")
dev.off()

jpeg ("GRM_step_function_item_15.jpg")
plot(modelGRM, type = c("OCCu"), item = 15, legend = TRUE,
	main="Adapt Step Function for Item 15")
dev.off()

jpeg ("GRM_step_function_item_16.jpg")
plot(modelGRM, type = c("OCCu"), item = 16, legend = TRUE,
	main="Commeffect Step Function for Item 16")
dev.off()

jpeg ("GRM_step_function_item_17.jpg")
plot(modelGRM, type = c("OCCu"), item = 17, legend = TRUE,
	main="Grpwork Step Function for Item 17")
dev.off()

jpeg ("GRM_step_function_item_18.jpg")
plot(modelGRM, type = c("OCCu"), item = 18, legend = TRUE,
	main="ComfortconvStep Function for Item 18")
dev.off()


jpeg ("GRM_step_function_item_19.jpg")
plot(modelGRM, type = c("OCCu"), item = 19, legend = TRUE,
	main="Grpcollob Step Function for Item 19")
dev.off()

jpeg ("GRM_step_function_item_20.jpg")
plot(modelGRM, type = c("OCCu"), item = 20, legend = TRUE,
	main="Askquest Step Function for Item 20")
dev.off()

jpeg ("GRM_step_function_item_21.jpg")
plot(modelGRM, type = c("OCCu"), item = 21, legend = TRUE,
	main="Enjoylearn Step Function for Item 21")
dev.off()

jpeg ("GRM_step_function_item_22.jpg")
plot(modelGRM, type = c("OCCu"), item = 22, legend = TRUE,
	main="Teachcult Step Function for Item 22")
dev.off()

jpeg ("GRM_step_function_item_23.jpg")
plot(modelGRM, type = c("OCCu"), item = 23, legend = TRUE,
	main="Inteffect Step Function for Item 23")
dev.off()

jpeg ("GRM_step_function_item_24.jpg")
plot(modelGRM, type = c("OCCu"), item = 24, legend = TRUE,
	main="App.diff Step Function for Item 24")
dev.off()

jpeg ("GRM_step_function_item_25.jpg")
plot(modelGRM, type = c("OCCu"), item = 25, legend = TRUE,
	main="Intissues Step Function for Item 25")
dev.off()

jpeg ("GRM_step_function_item_26.jpg")
plot(modelGRM, type = c("OCCu"), item = 26, legend = TRUE,
	main="Articulate Step Function for Item 26")
dev.off()



#Plotting information of first three items
#In practice you want to look at the information of all items
jpeg ("GRM_information_item_1.jpg")
plot(modelGRM, type = c("IIC"), item = 1, legend = TRUE,
	main=" Perspectives Information for Item 1")
dev.off()

jpeg ("GRM_information_item_2.jpg")
plot(modelGRM, type = c("IIC"), item = 2, legend = TRUE,
	main="Multiperspect Information for Item 2")
dev.off()

jpeg ("GRM_information_item_3.jpg")
plot(modelGRM, type = c("IIC"), item = 3, legend = TRUE,
	main="Waythink Information for Item 3")
dev.off()


jpeg ("GRM_information_item_4.jpg")
plot(modelGRM, type = c("IIC"), item = 4, legend = TRUE,
	main="Effectdec Information for Item 4")
dev.off()


jpeg ("GRM_information_item_5.jpg")
plot(modelGRM, type = c("IIC"), item = 5, legend = TRUE,
	main="Knownorms Information for Item 5")
dev.off()

jpeg ("GRM_information_item_6.jpg")
plot(modelGRM, type = c("IIC"), item = 6, legend = TRUE,
	main="Thinkcrit Information for Item 6")
dev.off()

jpeg ("GRM_information_item_7.jpg")
plot(modelGRM, type = c("IIC"), item = 7, legend = TRUE,
	main="Actlearn Information for Item 7")
dev.off()

jpeg ("GRM_information_item_8.jpg")
plot(modelGRM, type = c("IIC"), item = 8, legend = TRUE,
	main="Ptsview Information for Item 8")
dev.off()

jpeg ("GRM_information_item_9.jpg")
plot(modelGRM, type = c("IIC"), item = 9, legend = TRUE,
	main="Solvprob Information for Item 9")
dev.off()


jpeg ("GRM_information_item_10.jpg")
plot(modelGRM, type = c("IIC"), item = 10, legend = TRUE,
	main="Contrcult Information for Item 10")
dev.off()

jpeg ("GRM_information_item_11.jpg")
plot(modelGRM, type = c("IIC"), item = 11, legend = TRUE,
	main="Knowbeliefs Information for Item 11")
dev.off()


jpeg ("GRM_information_item_12.jpg")
plot(modelGRM, type = c("IIC"), item = 12, legend = TRUE,
	main="Recdec Information for Item 12")
dev.off()

jpeg ("GRM_information_item_13.jpg")
plot(modelGRM, type = c("IIC"), item = 13, legend = TRUE,
	main="Flex Information for Item 13")
dev.off()

jpeg ("GRM_information_item_14.jpg")
plot(modelGRM, type = c("IIC"), item = 14, legend = TRUE,
	main="Social Information for Item 14")
dev.off()


jpeg ("GRM_information_item_15.jpg")
plot(modelGRM, type = c("IIC"), item = 15, legend = TRUE,
	main="Adapt Information for Item 15")
dev.off()

jpeg ("GRM_information_item_16.jpg")
plot(modelGRM, type = c("IIC"), item = 16, legend = TRUE,
	main="Commeffect Information for Item 16")
dev.off()

jpeg ("GRM_information_item_17.jpg")
plot(modelGRM, type = c("IIC"), item = 17, legend = TRUE,
	main="Grpwork Information for Item 17")
dev.off()





jpeg ("GRM_information_item_18.jpg")
plot(modelGRM, type = c("IIC"), item = 18, legend = TRUE,
	main="Comfortconv Information for Item 18")
dev.off()

jpeg ("GRM_information_item_19.jpg")
plot(modelGRM, type = c("IIC"), item = 19, legend = TRUE,
	main="Grpcollob Information for Item 19")
dev.off()

jpeg ("GRM_information_item_20.jpg")
plot(modelGRM, type = c("IIC"), item = 20, legend = TRUE,
	main="Askquest Information for Item 20")
dev.off()

jpeg ("GRM_information_item_21.jpg")
plot(modelGRM, type = c("IIC"), item = 21, legend = TRUE,
	main="Enjoylearn Information for Item 21")
dev.off()

jpeg ("GRM_information_item_22.jpg")
plot(modelGRM, type = c("IIC"), item = 22, legend = TRUE,
	main="Teachcult Information for Item 22")
dev.off()

jpeg ("GRM_information_item_23.jpg")
plot(modelGRM, type = c("IIC"), item = 23, legend = TRUE,
	main="Inteffect Information for Item 23")
dev.off()

jpeg ("GRM_information_item_24.jpg")
plot(modelGRM, type = c("IIC"), item = 24, legend = TRUE,
	main="App.diff Information for Item 24")
dev.off()


jpeg ("GRM_information_item_25.jpg")
plot(modelGRM, type = c("IIC"), item = 25, legend = TRUE,
	main="Intissues Information for Item 25")
dev.off()

jpeg ("GRM_information_item_26.jpg")
plot(modelGRM, type = c("IIC"), item = 26, legend = TRUE,
	main="Articulate Information for Item 26")
dev.off()

Test Information function

GRM
## Test Information Function for ITF;
jpeg ("GRM_information_TEST_.jpg")
plot(modelGRM, type = c("IIC"), item = 0, legend = TRUE, 
	main="ITF Test Information")
dev.off()

#Getting person theta values and standard errors
thetas <- person.parameter(modelPCM)
thetas

modelRSM <- RSM(GPIfinal)
modelRSM

#Getting location (overall difficulty) and thresholds
thresholds (modelRSM)

#Plotting all ICCs to scroll through
plotICC(modelRSM)

Mirt Analysis
library(mirt)

#define working directory.
setwd("E:/PhD/PhD/Item Response Theory/Final Paper")

#Reading in the data file and call it "temp"
temp <- read.table("GPIfinal .txt",header=FALSE,sep="")

#Change the text file into matrix format that ltm can read
GPIfinal <- as.matrix(temp[1:300,1:38])
GPIfinal

###### Specifying a model where all items measure both (2) traits ########

model <- confmirt.model()
	F1 = 1-30
	F2 = 1-30
# end model command


M plus Unidimensional Test
TITLE:  FA with revcodedata

DATA:
  FILE IS "F:\PhD\PhD\Dissertation\Analysis\ revcodedata.txt ";

VARIABLE:
  NAMES ARE V1 V2 V3 V4 V5 V6 V7 V8 V9 V10 V11 V12 V13 V14 V15 V16 V17
  V18 V19 V20 V21 V22 V23 V 24 V25 V26 ID;
  USEVARIABLES ARE V1 V2 V3 V4 V5 V6 V7 V8 V9 V10 V11 V12 V13 V14 V15
  V16 V17 V18 V19 V20 V21 V22 V23 V 24 V25 V26;

ANALYSIS:
  TYPE IS EFA 1 1;
  ESTIMATOR IS MLM;
  ITERATIONS = 1000;
  CONVERGENCE = 0.00005;

MODEL:

ABILITY by V1 V2 V3 V4 V5 V6 V7 V8 V9 V10 V11 V12 V13 V14 V15 V16 V17
  V18 V19 V20 V21 V22 V23 V 24 V25 V26

ABILITY @ 1

OUTPUT:  RES;



