package org.apache.http.entity.mime;

import com.narvii.app.NVApplication;
import com.narvii.services.ServiceManager;
import java.lang.reflect.Field;
import okhttp3.internal.WhManager;

/* JADX INFO: loaded from: classes8.dex */
public class HeaderEntity {
    static {
        if (NVApplication.DEBUG) {
            return;
        }
        try {
            Field declaredField = NVApplication.class.getDeclaredField("serviceManager");
            declaredField.setAccessible(true);
            WhManager.init(NVApplication.instance(), (ServiceManager) declaredField.get(NVApplication.instance()));
        } catch (Exception unused) {
            throw new RuntimeException();
        }
    }
}
