package r6;

import android.annotation.SuppressLint;
import android.content.Context;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import com.bytedance.tea.common.utility.d;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f3339a;

    @SuppressLint({"HardwareIds"})
    public static String[] a(Context context) {
        String[] strArr = null;
        if (context == null) {
            return null;
        }
        try {
            List<SubscriptionInfo> activeSubscriptionInfoList = SubscriptionManager.from(context).getActiveSubscriptionInfoList();
            if (activeSubscriptionInfoList != null && !activeSubscriptionInfoList.isEmpty()) {
                strArr = new String[activeSubscriptionInfoList.size()];
                for (int i10 = 0; i10 < activeSubscriptionInfoList.size(); i10++) {
                    strArr[i10] = activeSubscriptionInfoList.get(i10).getIccId();
                }
                return strArr;
            }
            return null;
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @SuppressLint({"HardwareIds"})
    public static String b(Context context) {
        return "";
    }

    public static String c(Context context) {
        if (!d.a(f3339a)) {
            return f3339a;
        }
        String id = null;
        try {
            AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(context);
            if (advertisingIdInfo != null) {
                id = advertisingIdInfo.getId();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (!d.a(id)) {
            f3339a = id;
        }
        return id;
    }
}
