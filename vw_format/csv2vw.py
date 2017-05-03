import csv
import sys
from datetime import datetime
def csv_to_vw(finput,foutput,train=True,mode='clarity'):
    reader = csv.DictReader(open(finput),delimiter=',')
    output = open(foutput,'wb')
    train=True

    namespace = ["c","t","a","b","d","p","q","w","o","l"]
    map_namespace = dict(zip(namespace,reader.fieldnames))
    def isnumber(word):
        if word.isdigit()==False:
            try:
                tmp = float(word)
                return True
            except:
                return False
        else:
            return True
    lines = []
    start = datetime.now()
    for idx,row in enumerate(reader):
        if train is True:
            label = row[mode]
            if label == "0":
                label = "-1"
        else:
            label = "1"
        line = ""
        for key in map_namespace:
            try:
                val = row[map_namespace[key]].strip().decode('unicode_escape').encode('ascii','ignore')
            except:
                val = row[map_namespace[key]].strip()
            if isnumber(val)==False:
                line +=" |%s %s"%(key,val.replace("\n",""))
            else:
                line +=" |%s %s:%s"%(key,map_namespace[key],val)
        vw_row = "%s '%s%s\n"%(label,idx,line)
        #lines.append(vw_row)
        output.write(vw_row)
        if idx % 1000 == 0:
            print "%s\t%s"%(idx, str(datetime.now() - start))
if __name__=="__main__":
    trainable = True
    if len(sys.argv)==4:
        if sys.argv[3] == "test":
            trainable = False
        if sys.argv[3] == "train":
            trainable = True
    csv_to_vw(sys.argv[1],sys.argv[2],train=trainable,mode='clarity')
