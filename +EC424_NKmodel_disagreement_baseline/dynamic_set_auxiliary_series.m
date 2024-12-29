function ds = dynamic_set_auxiliary_series(ds, params)
%
% Computes auxiliary variables of the dynamic model
%
ds.AUX_ENDO_LAG_1_1=ds.y_cb(-1);
ds.AUX_ENDO_LAG_1_2=ds.AUX_ENDO_LAG_1_1(-1);
ds.AUX_ENDO_LAG_1_3=ds.AUX_ENDO_LAG_1_2(-1);
ds.AUX_ENDO_LAG_1_4=ds.AUX_ENDO_LAG_1_3(-1);
ds.AUX_ENDO_LAG_1_5=ds.AUX_ENDO_LAG_1_4(-1);
ds.AUX_ENDO_LAG_1_6=ds.AUX_ENDO_LAG_1_5(-1);
ds.AUX_ENDO_LAG_1_7=ds.AUX_ENDO_LAG_1_6(-1);
ds.AUX_ENDO_LAG_1_8=ds.AUX_ENDO_LAG_1_7(-1);
ds.AUX_ENDO_LAG_1_9=ds.AUX_ENDO_LAG_1_8(-1);
ds.AUX_ENDO_LAG_1_10=ds.AUX_ENDO_LAG_1_9(-1);
end
