import numpy as np

def write_to_file(data,filename=None):
    if data is None:
        print "Please input data"
        return 
    if filename is None:
        print "Please specify the file name"
        return
    np.savetxt(filename,data,fmt="%.5f")
    print "Write successfully %s rows to %s"%(len(data),filename)
    