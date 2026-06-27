package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.net.ConnectivityManager;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.Nullable;
import com.facebook.ads.internal.api.BuildConfigApi;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class KL {
    private static byte[] A0E;
    private static final String A0F;
    private int A00;
    private long A01;

    @Nullable
    private MQ A02;

    @Nullable
    private InterfaceC02855d A03;
    private final long A04;
    private final long A05;
    private final Context A06;
    private final ConnectivityManager A07;
    private final Handler A08;
    private final KK A09;
    private volatile boolean A0D;
    private final Runnable A0B = new KI(this);
    private final Runnable A0A = new KJ(this);
    private final ThreadPoolExecutor A0C = new ThreadPoolExecutor(1, 1, 0, TimeUnit.MILLISECONDS, new LinkedBlockingQueue());

    private static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0E, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 10);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A07() {
        A0E = new byte[]{73, 64, 81, 55, -107, -90, -107, -98, -92, -93, 124, 109, -123, 120, 123, 109, 112, -85, -34, -55, -53, -42, -38, -49, -43, -44, -122, -35, -50, -49, -46, -53, -122, -54, -49, -39, -42, -57, -38, -55, -50, -49, -44, -51, -122, -53, -36, -53, -44, -38, -39, -108, 111, -108, -98, -101, -116, -97, -114, -109, -108, -103, -110, 75, -112, -95, -112, -103, -97, 75, 83, -99, -102, -83, -102, -125, -113, -114, -114, -123, -125, -108, -119, -106, -119, -108, -103, -108, -89, -89, -104, -96, -93, -89, -102, -78, -80, -73, -73, -80, -75, -82, 103, -85, -80, -70, -73, -88, -69, -86, -81, 103, -85, -68, -84, 103, -69, -74, 103, -77, -88, -86, -78, 103, -74, -83, 103, -86, -74, -75, -75, -84, -86, -69, -80, -67, -80, -69, -64, 117, -93, -75, -62, -58, -75, -62, 112, -57, -79, -61, 112, -59, -66, -79, -78, -68, -75, 112, -60, -65, 112, -64, -62, -65, -77, -75, -61, -61, 112, -79, -68, -68, 112, -75, -58, -75, -66, -60, -61, 124, 112, -60, -62, -55, -71, -66, -73, 112, -79, -73, -79, -71, -66, 126, -90, -72, -59, -55, -72, -59, 115, -59, -72, -57, -56, -59, -63, -72, -73, 115, -76, 115, -63, -62, -63, -128, -58, -56, -74, -74, -72, -58, -58, -71, -56, -65, 115, -58, -57, -76, -57, -56, -58, 115, -74, -62, -73, -72, 115, -62, -71, 115, -99, -81, -68, -64, -81, -68, 106, -68, -81, -67, -70, -71, -72, -67, -81, 106, -77, -67, 106, -81, -73, -70, -66, -61, 120};
    }

    static {
        A07();
        A0F = KL.class.getSimpleName();
    }

    public KL(Context context, KK kk) {
        this.A09 = kk;
        this.A06 = context;
        this.A07 = (ConnectivityManager) context.getSystemService(A03(75, 12, 22));
        if (K1.A17(context)) {
            this.A03 = C0780Op.A05(context);
        } else {
            this.A02 = C0780Op.A01(context);
        }
        this.A08 = new Handler(Looper.getMainLooper());
        this.A05 = K1.A0X(context);
        this.A04 = K1.A0W(context);
    }

    public static /* synthetic */ int A00(KL kl) {
        int i = kl.A00 + 1;
        kl.A00 = i;
        return i;
    }

    private void A05() {
        KL kl = this;
        char c = BuildConfigApi.isDebug() ? (char) 2 : (char) 2;
        while (true) {
            switch (c) {
                case 2:
                    kl = kl;
                    kl.A00 = 0;
                    kl.A01 = 0L;
                    if (kl.A0C.getQueue().size() != 0) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    kl = kl;
                    kl.A09.A4r();
                    c = 4;
                    break;
                case 4:
                    return;
            }
        }
    }

    private void A06() {
        KL kl = this;
        char c = kl.A00 >= 5 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    kl = kl;
                    kl.A05();
                    kl.A0B();
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    kl = kl;
                    if (kl.A00 != 1) {
                        c = 7;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    kl = kl;
                    kl.A01 = 2000L;
                    c = 6;
                    break;
                case 6:
                    kl = kl;
                    kl.A0C();
                    c = 3;
                    break;
                case 7:
                    kl = kl;
                    kl.A01 *= 2;
                    c = 6;
                    break;
            }
        }
    }

    private void A08(long j) {
        this.A08.postDelayed(this.A0A, j);
    }

    private void A09(JSONObject jSONObject) throws JSONException {
        Map<String, String> mapA01 = C0647Jh.A01(this.A06);
        Iterator<String> it = mapA01.keySet().iterator();
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    it = it;
                    if (!it.hasNext()) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    jSONObject = jSONObject;
                    mapA01 = mapA01;
                    it = it;
                    String next = it.next();
                    jSONObject.put(next, mapA01.get(next));
                    c = 2;
                    break;
                case 4:
                    return;
            }
        }
    }

    public final void A0B() {
        if (this.A0D) {
            return;
        }
        this.A0D = true;
        this.A08.removeCallbacks(this.A0A);
        A08(this.A04);
    }

    public final void A0C() {
        this.A0D = true;
        this.A08.removeCallbacks(this.A0A);
        A08(this.A05);
    }

    /* JADX WARN: Incorrect condition in loop: B:19:0x0064 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void A0D() throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 536
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.KL.A0D():void");
    }
}
