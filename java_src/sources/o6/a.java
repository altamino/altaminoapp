package o6;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.bytedance.tea.common.utility.Logger;
import com.bytedance.tea.common.utility.NetworkClient;
import com.bytedance.tea.common.utility.d;
import com.narvii.account.notice.AccountNotice;
import com.narvii.broadcast.DeliveryTimePickerFragment;
import com.ss.android.tea.common.applog.y;
import com.ss.android.tea.common.deviceregister.c;
import java.util.TimeZone;
import org.json.JSONObject;
import q6.b;

/* JADX INFO: loaded from: classes9.dex */
public class a {

    /* JADX INFO: renamed from: o6.a$a, reason: collision with other inner class name */
    public static class C0471a extends Thread {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Context f3285a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f3286b;

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            a.b(this.f3285a, this.f3286b);
        }

        public C0471a(Context context, String str) {
            this.f3285a = context;
            this.f3286b = str;
        }
    }

    private static void a(StringBuilder sb, String str, String str2, boolean z6) {
        if (sb == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        if (sb.toString().indexOf(63) < 0) {
            sb.append("?");
        } else {
            sb.append("&");
        }
        sb.append(str);
        sb.append("=");
        if (z6) {
            str2 = Uri.encode(str2);
        }
        sb.append(str2);
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00ce A[Catch: Exception -> 0x00e7, TryCatch #1 {Exception -> 0x00e7, blocks: (B:3:0x0003, B:31:0x00c5, B:33:0x00ce, B:36:0x00e9, B:38:0x010f, B:30:0x00b1, B:5:0x000a, B:7:0x0017, B:11:0x0020, B:13:0x0026, B:14:0x002a, B:20:0x0045, B:22:0x0089, B:24:0x008c, B:25:0x008f, B:27:0x0092, B:28:0x00ab), top: B:45:0x0003, inners: #0 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:33:0x00ce, please report this as an issue */
    public static boolean b(Context context, String str) {
        String str2;
        try {
            StringBuilder sb = new StringBuilder(str);
            try {
                a(sb, "build_serial", Build.SERIAL, true);
                String strC = com.ss.android.tea.common.deviceregister.a.q() ? r6.a.c(context) : null;
                if (d.a(strC)) {
                    strC = c.a();
                }
                a(sb, "google_aid", strC, true);
                int rawOffset = TimeZone.getDefault().getRawOffset() / DeliveryTimePickerFragment.ONE_HOUR;
                if (rawOffset < -12) {
                    rawOffset = -12;
                }
                if (rawOffset > 12) {
                    rawOffset = 12;
                }
                a(sb, "timezone", rawOffset + "", false);
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                a(sb, "carrier", telephonyManager.getNetworkOperatorName(), true);
                a(sb, "mcc_mnc", telephonyManager.getNetworkOperator(), true);
                a(sb, "sim_region", telephonyManager.getSimCountryIso(), true);
                String[] strArrA = b.a(context).a();
                if (strArrA == null || strArrA.length <= 0) {
                    y.b(sb, true);
                    if (Logger.debug()) {
                        Logger.i("ActiveUser", "request : " + sb.toString());
                    }
                    str2 = NetworkClient.getDefault().get(sb.toString(), null, null);
                    Logger.d("ActiveUser", "NetworkClient.getDefault().get response:" + str2);
                    if (d.a(str2) && "success".equals(new JSONObject(str2).optString(AccountNotice.LEVEL_MESSAGE))) {
                        return true;
                    }
                } else {
                    String str3 = strArrA[0];
                    for (int i10 = 1; i10 < strArrA.length; i10++) {
                        str3 = str3 + "," + strArrA[i10];
                    }
                    a(sb, "sim_serial_number", str3, true);
                    y.b(sb, true);
                    if (Logger.debug()) {
                        Logger.i("ActiveUser", "request : " + sb.toString());
                    }
                    str2 = NetworkClient.getDefault().get(sb.toString(), null, null);
                    Logger.d("ActiveUser", "NetworkClient.getDefault().get response:" + str2);
                    if (d.a(str2)) {
                    }
                }
            } catch (Exception e) {
                Logger.w("ActiveUser", "prepare app_alert param exception: " + e);
            }
        } catch (Exception e2) {
            Logger.e("ActiveUser", "NetworkClient.getDefault().get exception:" + e2);
        }
        return false;
    }
}
