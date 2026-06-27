package com.narvii.util.logging;

import com.narvii.util.Utils;

/* loaded from: classes.dex */
public class LoggingServiceWrapper implements LoggingService {
    private final Object[] addList;
    private final LoggingService wrapped;

    public LoggingServiceWrapper(LoggingService loggingService, Object... objArr) {
        this.wrapped = loggingService;
        for (int i = 0; i < objArr.length; i += 2) {
            Object obj = objArr[i];
            Object obj2 = objArr[i + 1];
            if (!(obj instanceof String)) {
                throw new IllegalArgumentException("unsupported key " + obj);
            }
        }
        this.addList = objArr;
    }

    @Override // com.narvii.util.logging.LoggingService
    /* renamed from: logEvent */
    public void lambda$logEvent$0$LoggingServiceImpl(String str, Object... objArr) {
        Object[] objArr2;
        boolean z;
        Object[] objArr3 = new Object[((objArr.length / 2) * 2) + this.addList.length];
        System.arraycopy(objArr, 0, objArr3, 0, objArr.length);
        int length = objArr.length;
        int i = 0;
        while (true) {
            Object[] objArr4 = this.addList;
            if (i >= objArr4.length) {
                break;
            }
            String str2 = (String) objArr4[i];
            int i2 = 0;
            while (true) {
                if (i2 >= objArr.length) {
                    z = false;
                    break;
                } else {
                    if (Utils.isEqualsNotNull(str2, objArr[i2])) {
                        z = true;
                        break;
                    }
                    i2 += 2;
                }
            }
            if (!z) {
                Object obj = this.addList[i + 1];
                int i3 = length + 1;
                objArr3[length] = str2;
                length = i3 + 1;
                objArr3[i3] = obj;
            }
            i += 2;
        }
        if (objArr3.length != length) {
            objArr2 = new Object[length];
            System.arraycopy(objArr3, 0, objArr2, 0, length);
        } else {
            objArr2 = objArr3;
        }
        LoggingService loggingService = this.wrapped;
        if (loggingService != null) {
            loggingService.lambda$logEvent$0$LoggingServiceImpl(str, objArr2);
        }
    }
}
