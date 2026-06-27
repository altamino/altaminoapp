package com.facebook.ads.redexgen.X;

import android.app.Application;
import android.content.Context;
import android.support.annotation.Nullable;
import android.util.Log;
import com.facebook.ads.AdSettings;
import com.facebook.ads.internal.settings.AdInternalSettings;
import com.facebook.ads.internal.util.process.ProcessUtils;
import com.narvii.util.ws.WsMessage;
import com.tonyodev.fetch.FetchConst;
import io.agora.rtc.Constants;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Jg, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0646Jg {

    @Nullable
    private static AtomicBoolean A00;
    private static byte[] A01;

    static {
        A02();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        int i4 = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    bArrCopyOfRange = bArrCopyOfRange;
                    if (i4 >= bArrCopyOfRange.length) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    bArrCopyOfRange = bArrCopyOfRange;
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) + FetchConst.ERROR_FILE_NOT_FOUND);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A01 = new byte[]{7, 9, 6, -6, -4, 10, 10, -10, 5, -8, 4, -4, -43, -47, -48, 4, -13, -8, -12, -3, -14, -12, -35, -12, 3, 6, -2, 1, -6, 3, 50, 50, 46, 43, 37, 35, 54, 43, 49, 48, 5, 49, 48, 54, 39, 58, 54, -30, 43, 53, -30, 48, 49, 54, -30, 3, 50, 50, 46, 43, 37, 35, 54, 43, 49, 48, -16, 3, 36, -43, -10, 42, 25, 30, 26, 35, 24, 26, 3, 26, 41, 44, 36, 39, 32, -10, 25, 40, -29, 30, 40, -2, 35, -10, 25, 40, 5, 39, 36, 24, 26, 40, 40, -35, -34, -43, 24, 22, 33, 33, -29, -41, -43, -34, -43, -30, -39, -45, -16, 9, 6, 9, 10, 18, 9, 8, 18, -2, 0, 3, 18, -2, 15, 17, 14, 2, 4, 18, 18, 71, 80, 77, 73, 82, 88, 67, 87, 89, 84, 84, 83, 86, 88, 87, -30, -23, -36, 18, 58, 49, 57, 46, -14, 53, 55, 52, 40, 42, 56, 56, -27, 56, 58, 53, 53, 52, 55, 57, -27, 60, 52, 51, -20, 57, -27, 60, 52, 55, 48, -27, 39, 42, 40, 38, 58, 56, 42, -27, 38, 53, 53, 49, 46, 40, 38, 57, 46, 52, 51, -27, 8, 52, 51, 57, 42, 61, 57, -27, 46, 56, -27, 51, 52, 57, -27, 6, 53, 53, 49, 46, 40, 38, 57, 46, 52, 51, -27, 46, 51, 56, 57, 38, 51, 40, 42, -13, 48, 70, 76, -9, 56, 73, 60, -9, 76, 74, 64, 69, 62, -9, 58, 76, 74, 75, 70, 68, -9, 24, 71, 71, 67, 64, 58, 56, 75, 64, 70, 69, -9, 58, 67, 56, 74, 74, -9, 56, 69, 59, -9, 59, 70, 69, -2, 75, -9, 58, 56, 67, 67, -9, 24, 76, 59, 64, 60, 69, 58, 60, 37, 60, 75, 78, 70, 73, 66, 24, 59, 74, 5, 64, 74, 32, 69, 24, 59, 74, 39, 73, 70, 58, 60, 74, 74, -1, 0, 5, -9, 36, 76, 67, 75, 64, 4, 71, 73, 70, 58, 60, 74, 74, -9, 74, 76, 71, 71, 70, 73, 75, -9, 78, 64, 67, 67, -9, 57, 60, -9, 59, 64, 74, 56, 57, 67, 60, 59, 5, -9, 39, 67, 60, 56, 74, 60, -9, 58, 56, 67, 67, -9, 24, 76, 59, 64, 60, 69, 58, 60, 37, 60, 75, 78, 70, 73, 66, 24, 59, 74, 5, 64, 74, 32, 69, 24, 59, 74, 39, 73, 70, 58, 60, 74, 74, -1, 0, -9, 64, 61, -9, 80, 70, 76, -9, 78, 56, 69, 75, -9, 75, 70, -9, 74, 76, 71, 71, 70, 73, 75, -9, 68, 76, 67, 75, 64, 4, 71, 73, 70, 58, 60, 74, 74, -9, 68, 70, 59, 60, 5, -17, 33, 31, 32, 27, 25, -52, -19, 28, 28, 24, 21, 15, 13, 32, 21, 27, 26, -26, -52};
    }

    private C0646Jg() {
    }

    public static String A01(Context context) throws JSONException {
        String processName = null;
        JSONObject jSONObject = new JSONObject();
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    context = context;
                    processName = ProcessUtils.getProcessName(context);
                    if (processName == null) {
                        c = 4;
                    } else {
                        c = 6;
                        continue;
                    }
                case 4:
                    try {
                        processName = A00(118, 7, 44);
                        c = 6;
                        continue;
                    } catch (Exception e) {
                        P7.A07(context, A00(111, 7, 1), P8.A19, new PA(e));
                        break;
                    }
                case 6:
                    String processName2 = A00(0, 12, 40);
                    jSONObject.put(processName2, processName);
                    jSONObject.put(A00(125, 14, 48), ProcessUtils.sRemoteProcess);
                    jSONObject.put(A00(WsMessage.THREAD_WAIT_LIST_JOIN_RESPONSE, 15, 117), A03(context.getApplicationContext()));
                    String processName3 = jSONObject.toString();
                    return processName3;
            }
            P7.A07(context, A00(111, 7, 1), P8.A19, new PA(e));
            String processName32 = jSONObject.toString();
            return processName32;
        }
    }

    public static boolean A03(Context applicationContext) {
        boolean z = false;
        Context applicationContext2 = null;
        char c = AdInternalSettings.sMultiprocessSupportMode == AdSettings.MultiprocessSupportMode.MULTIPROCESS_SUPPORT_MODE_OFF ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    z = false;
                    c = 3;
                    break;
                case 3:
                    return z;
                case 4:
                    if (A00 == null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    z = A00.get();
                    c = 3;
                    break;
                case 6:
                    applicationContext = applicationContext;
                    applicationContext2 = applicationContext.getApplicationContext();
                    if (!(applicationContext2 instanceof Application)) {
                        c = 7;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case 7:
                    applicationContext = applicationContext;
                    applicationContext2 = applicationContext2;
                    z = false;
                    Log.w(A00(12, 17, 32), A00(157, 89, 86));
                    P7.A08(applicationContext, A00(Constants.ERR_PUBLISH_STREAM_INTERNAL_SERVER_ERROR, 3, 10), P8.A1G, new PA(A00(29, 38, 83), applicationContext2.getClass().getName()));
                    A00 = new AtomicBoolean(false);
                    c = 3;
                    break;
                case '\b':
                    if (AdInternalSettings.sMultiprocessSupportMode == AdSettings.MultiprocessSupportMode.MULTIPROCESS_SUPPORT_MODE_ON) {
                        c = '\f';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    if (!ProcessUtils.sCurrentProcessCheckCalled) {
                        c = '\n';
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\n':
                    applicationContext2 = applicationContext2;
                    if (!((Application) applicationContext2).getClass().equals(Application.class)) {
                        c = 11;
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case 11:
                    applicationContext = applicationContext;
                    applicationContext2 = applicationContext2;
                    z = false;
                    Log.e(A00(12, 17, 32), A00(246, 221, 104));
                    P7.A08(applicationContext, A00(Constants.ERR_PUBLISH_STREAM_INTERNAL_SERVER_ERROR, 3, 10), P8.A1H, new PA(A00(67, 44, 70), A00(467, 20, 61) + applicationContext2.getClass().getName()));
                    A00 = new AtomicBoolean(false);
                    c = 3;
                    break;
                case '\f':
                    A00 = new AtomicBoolean(true);
                    z = true;
                    c = 3;
                    break;
            }
        }
    }
}
