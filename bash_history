1958  vw -d train.w -k -c -f lazada_baseline2.vw -l 0.001  --loss_function logistic -b 26 --nn 512 --dropout --passes 200 --l2 0.0000001 > log_5_3_22_19 
 1959  vw -d train.w -k -c -f lazada_baseline2.vw -l 0.05  --loss_function logistic -b 26 --nn 512 --dropout --passes 200 --l2 0.0000001 > log_5_3_22_19 
 1960  vw -d train.w -k -c -f lazada_baseline2.vw -l 0.1  --loss_function logistic -b 26 --nn 512 --dropout --passes 200 --l2 0.0000001 > log_5_3_22_19 
 1961  vw -d train.w -k -c -f lazada_baseline2.vw -l 0.02  --loss_function logistic -b 26 --nn 512 --dropout --passes 200 --l2 0.0000001 > log_5_3_22_19 
 1962  vw -d train.w -k -c -f lazada_baseline3.vw --ftrl  --loss_function logistic -b 26 --nn 512 --dropout --passes 200 --l1 0.000001 > log_5_3_22_34 
 1963  vw -d train.w -k -c -f lazada_baseline3.vw -q cp ct cw --loss_function logistic -b 26 --nn 512 --dropout --passes 200 --l1 0.000001 > log_5_3_22_34 
 1964  vw -d train.w -k -c -f lazada_baseline3.vw -q cp ct cw --loss_function logistic -b 26 --nn 512 --dropout --passes 200 --l1 0.000001
 1965  vw -d train.w -k -c -f lazada_baseline3.vw -q cp -q ct -q cw --loss_function logistic -b 26 --nn 512 --dropout --passes 200 --l1 0.000001
 1966  vw -i lazada_baseline1.vw -t val.w 
 1967  ls
 1968  vw -i lazada_baseline1.vw -t val.w > val.txt
 1969  ls
 1970  ssh trungng@hpcc_vm
 1971  vw val.w -t -i lazada_baseline1.vw -p prob_nn_1.txt
 1972  ls
 1973  cat val.txt 
 1974  rm val.txt 
 1975  ls
 1976  head prob_nn_1.txt 
 1977  ipython
 1978  history
 1979  vw -d train.w -k -c -f lazada_baseline1_binary.vw --loss_function=logistic --link=logistic  -b 26 --nn 512 --dropout --passes 200 --l2 0.0000005
 1980  vw val.w -t -i lazada_baseline1_binary.vw -p prob_nn_1.txt
 1981  head prob_nn_1.txt 
 1982  vw val.w -t -i lazada_baseline1_binary.vw --link=logistic -p prob_nn_1.txt
 1983  head prob_nn_1.txt 
 1984  ipython
 1985  vw val.w -t -i lazada_baseline1_binary.vw --binary -p prob_nn_1.txt
 1986  ipython
 1987  vw val.w -t -i lazada_baseline1_binary.vw --link=logistic -p prob_nn_1.txt
 1988  ipython
 1989  vw val.w -t -i lazada_baseline1.vw --link=logistic -p prob_nn_1.txt
 1990  ipython
 1991  vw val.w -t -i lazada_baseline2.vw --link=logistic -p prob_nn_2.txt
 1992  ipython
 1993  vw val.w -t -i lazada_baseline3.vw --link=logistic -p prob_nn_3.txt

