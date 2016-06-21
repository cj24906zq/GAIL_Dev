
%% QE with martingale correction_European call option_Strike = 70 
%%
% %InitializeWorkspaceDisplay %initialize the workspace and the display parameters
% inp.timeDim.endTime = 5;
% inp.timeDim.nSteps  = 15;
inp.timeDim.timeVector = 0:0.25:2; 
% To generate an asset path modeled by a geometric Brownian motion we need
% to add some more properties

inp.assetParam.initPrice = 100; %initial stock price
inp.assetParam.interest = 0; %risk-free interest rate
inp.assetParam.volatility = 0.3;
inp.assetParam.Vinst = 0.09; 
inp.assetParam.Vlong = 0.09;
inp.assetParam.kappa = 1;
inp.assetParam.nu = 1e-16;
inp.assetParam.rho = 0;
inp.assetParam.pathType = 'QE_m';

%%
% To generate some discounted option payoffs to add some more properties
Strike = 100;
inp.payoffParam.strike =Strike; 

%% 
inp.priceParam.absTol = 0; %absolute tolerance
inp.priceParam.relTol = 0.01; %one penny on the dollar relative tolerance
ourQE_mCallPrice = optPrice(inp) %construct an optPrice object 
[QE_mCallPrice, out] = genOptPrice(ourQE_mCallPrice) %the option price
% Calculate option price by provided codes
%  MC_QE(S0,r,d,T,Vinst,Vlong,kappa,epsilon,rho,NTime,NSim,NBatches)
 Ntime = 8;
 T = 2;
 [a,b]=MC_QE_m(100,0,0,T,0.09,0.09,1,1e-16,-0.0,Ntime,1e5,1);

 PT = a(:,Ntime + 1);
 PT = max(PT-Strike,0);
 PP = mean(PT)
%  PP = PP*exp(-0.01*3)
ourGBMCallPrice = optPrice(ourQE_mCallPrice);
ourGBMCallPrice.assetParam.pathType = 'GBM';
[GBMCallPrice, out] = genOptPrice(ourGBMCallPrice) %the option price
return

%% QE with martingale correction_European call option_Strike = 100 

%%
% %InitializeWorkspaceDisplay %initialize the workspace and the display parameters
inp.timeDim.endTime = 5; 
inp.timeDim.nSteps  = 15;

% To generate an asset path modeled by a geometric Brownian motion we need
% to add some more properties

inp.assetParam.initPrice = 100; %initial stock price
inp.assetParam.interest = 0; %risk-free interest rate
inp.assetParam.volatility = 0.09;
inp.assetParam.Vinst = 0.09; 
inp.assetParam.Vlong = 0.09;
inp.assetParam.kappa = 1;
inp.assetParam.epsilon = 1;
inp.assetParam.rho = -0.3;
inp.assetParam.pathType = 'QE_m';

%%
% To generate some discounted option payoffs to add some more properties

inp.payoffParam.strike =100; 

%% 
inp.priceParam.absTol = 0; %absolute tolerance
inp.priceParam.relTol = 0.005; %one penny on the dollar relative tolerance
ourCallPrice = optPrice(inp) %construct an optPrice object 

[CallPrice, out] = genOptPrice(ourCallPrice) %the option price
% Calculate option price by provided codes
%  MC_QE(S0,r,d,T,Vinst,Vlong,kappa,epsilon,rho,NTime,NSim,NBatches)
 [a,b]=MC_QE_m(100,0,0,5,0.09,0.09,1,1,-0.3,15,1e5,1);
 Strike = 100;
 PT = a(:,16);
 PT = max(PT-Strike,0);
 PP = mean(PT)

%% QE with martingale correction_European call option_Strike = 105 

%%
% %InitializeWorkspaceDisplay %initialize the workspace and the display parameters
inp.timeDim.endTime = 5; %time increments of 0.004 up to time 1
inp.timeDim.nSteps  = 15;

% To generate an asset path modeled by a geometric Brownian motion we need
% to add some more properties

inp.assetParam.initPrice = 100; %initial stock price
inp.assetParam.interest = 0; %risk-free interest rate
inp.assetParam.volatility = 0.09;
inp.assetParam.Vinst = 0.09; 
inp.assetParam.Vlong = 0.09;
inp.assetParam.kappa = 1;
inp.assetParam.epsilon = 1;
inp.assetParam.rho = -0.3;
inp.assetParam.pathType = 'QE_m';

%%
% To generate some discounted option payoffs to add some more properties

inp.payoffParam.strike =105; 

%% 
inp.priceParam.absTol = 0; %absolute tolerance
inp.priceParam.relTol = 0.005; %one penny on the dollar relative tolerance
ourCallPrice = optPrice(inp) %construct an optPrice object 

[CallPrice, out] = genOptPrice(ourCallPrice) %the option price
% Calculate option price by provided codes
%  MC_QE(S0,r,d,T,Vinst,Vlong,kappa,epsilon,rho,NTime,NSim,NBatches)
 [a,b]=MC_QE_m(100,0,0,5,0.09,0.09,1,1,-0.3,15,100000,1);
 Strike = 105;
 PT = a(:,16);
 PT = max(PT-Strike,0);
 PP = mean(PT)

 %% QE with martingale correction_European call option_Strike = 140

%%
% %InitializeWorkspaceDisplay %initialize the workspace and the display parameters
inp.timeDim.endTime = 5; %time increments of 0.004 up to time 1
inp.timeDim.nSteps  = 15;

% To generate an asset path modeled by a geometric Brownian motion we need
% to add some more properties

inp.assetParam.initPrice = 100; %initial stock price
inp.assetParam.interest = 0; %risk-free interest rate
inp.assetParam.volatility = 0.09;
inp.assetParam.Vinst = 0.09; 
inp.assetParam.Vlong = 0.09;
inp.assetParam.kappa = 1;
inp.assetParam.epsilon = 1;
inp.assetParam.rho = -0.3;
inp.assetParam.pathType = 'QE_m';

%%
% To generate some discounted option payoffs to add some more properties

inp.payoffParam.strike =140; 

%% 
inp.priceParam.absTol = 0; %absolute tolerance
inp.priceParam.relTol = 0.005; %one penny on the dollar relative tolerance
ourCallPrice = optPrice(inp) %construct an optPrice object 

[CallPrice, out] = genOptPrice(ourCallPrice) %the option price
% Calculate option price by provided codes
%  MC_QE(S0,r,d,T,Vinst,Vlong,kappa,epsilon,rho,NTime,NSim,NBatches)
 [a,b]=MC_QE_m(100,0,0,5,0.09,0.09,1,1,-0.3,15,100000,1);
 Strike = 140;
 PT = a(:,16);
 PT = max(PT-Strike,0);
 PP = mean(PT)
 
 