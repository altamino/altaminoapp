package com.narvii.util.logging;

import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes11.dex */
public class LoggingServiceWrapper implements LoggingService {
    private final Object[] addList;
    private final LoggingService wrapped;

    @Override // com.narvii.util.logging.LoggingService
    public void logEvent(String str, Object... objArr) {
        int length = ((objArr.length / 2) * 2) + this.addList.length;
        Object[] objArr2 = new Object[length];
        System.arraycopy(objArr, 0, objArr2, 0, objArr.length);
        int length2 = objArr.length;
        int i10 = 0;
        while (true) {
            Object[] objArr3 = this.addList;
            if (i10 >= objArr3.length) {
                break;
            }
            String str2 = (String) objArr3[i10];
            int i11 = 0;
            while (true) {
                if (i11 >= objArr.length) {
                    Object obj = this.addList[i10 + 1];
                    int i12 = length2 + 1;
                    objArr2[length2] = str2;
                    length2 += 2;
                    objArr2[i12] = obj;
                    break;
                }
                if (Utils.isEqualsNotNull(str2, objArr[i11])) {
                    break;
                } else {
                    i11 += 2;
                }
            }
            i10 += 2;
        }
        if (length != length2) {
            Object[] objArr4 = new Object[length2];
            System.arraycopy(objArr2, 0, objArr4, 0, length2);
            objArr2 = objArr4;
        }
        LoggingService loggingService = this.wrapped;
        if (loggingService != null) {
            loggingService.logEvent(str, objArr2);
        }
    }

    public LoggingServiceWrapper(LoggingService loggingService, Object... objArr) {
        this.wrapped = loggingService;
        for (int i10 = 0; i10 < objArr.length; i10 += 2) {
            Object obj = objArr[i10];
            Object obj2 = objArr[i10 + 1];
            if (!(obj instanceof String)) {
                throw new IllegalArgumentException("unsupported key " + obj);
            }
        }
        this.addList = objArr;
    }
}
