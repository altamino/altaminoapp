package okhttp3.internal;

import com.narvii.app.NVApplication;
import com.narvii.services.ServiceManager;

/* JADX INFO: loaded from: classes8.dex */
public class WhManager {
    public static final boolean DEBUG = false;
    public static final String TAG = "wormhole";

    public static void init(NVApplication nVApplication, ServiceManager serviceManager) {
        serviceManager.addServiceProvider("whOkhttp3", new WhOkhttp3());
        serviceManager.addServiceProvider("whInfoSync", new WhInfoSync());
        serviceManager.addServiceProvider("whPushRecv", new WhPushRecv());
    }
}
