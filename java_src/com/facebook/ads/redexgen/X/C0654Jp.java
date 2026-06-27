package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.Base64OutputStream;
import com.facebook.ads.internal.bridge.fbsdk.FBLoginASID;
import com.facebook.ads.internal.settings.AdInternalSettings;
import com.facebook.ads.internal.util.process.ProcessUtils;
import com.narvii.model.User;
import com.narvii.util.http.ApiService;
import com.narvii.util.ws.WsMessage;
import io.agora.rtc.Constants;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import java.util.zip.DeflaterOutputStream;
import org.json.JSONObject;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Jp, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0654Jp implements InterfaceC0652Jm {

    @Nullable
    private static String A02;
    private static byte[] A03;
    private static final EnumC0741Nc A04;
    private static final AtomicBoolean A05;
    private static final AtomicInteger A06;
    private static final AtomicReference<Map<String, String>> A07;
    private final Context A00;
    private final JF A01;

    private static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 9);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A07() {
        A03 = new byte[]{88, 72, 89, 78, 78, 69, 84, 67, 78, 66, 76, 67, 95, 96, 104, 105, 100, 108, 121, 100, 98, 99, 114, 126, 104, 127, 123, 100, 110, 104, 85, 68, 68, 75, 89, 93, 90, 75, 71, 80, 95, 75, 66, 81, 70, 71, 93, 91, 90, 28, 11, 4, 16, 12, 14, 31, 14, 13, 6, 3, 6, 27, 22, 111, 98, 121, 117, 105, 115, 116, 101, 99, 68, 83, 72, 66, 74, 67, 30, 28, 23, 28, 11, 16, 26, 103, 114, 114, 116, 111, 100, 115, 114, 111, 105, 104, 121, 111, 98, 6, 49, 22, 30, 27, 18, 19, 87, 3, 24, 87, 21, 2, 30, 27, 19, 87, 2, 4, 18, 5, 87, 3, 24, 28, 18, 25, 94, 69, 66, 95, 82, 11, 25, 2, 11, 25, 15, 3, 9, 7, 88, 91, 87, 85, 88, 81, 96, 103, 122, 125, 104, 101, 101, 108, 123, 106, 109, 123, 7, 16, 29, 1, 16, 3, 16, 28, 2, 54, 55, 60, 33, 59, 38, 43, 69, 72, 74, 77, 33, 42, 59, 56, 32, 61, 36, 48, 59, 54, 63, 42, 20, 22, 22, 16, 6, 6, 28, 23, 28, 25, 28, 1, 12, 10, 16, 27, 20, 23, 25, 16, 17, 92, 74, 92, 92, 70, 64, 65, 80, 91, 70, 66, 74, 37, 39, 58, 54, 48, 38, 38, 116, 105, 105, 114, 99, 98, 79, 93, 71, 74, 13, 10, 28, 119, 76, 74, 92, 75, 70, 88, 94, 92, 87, 77, 94, 81, 94, 83, 80, 88, 46, 62, 47, 56, 56, 51, 34, 42, 52, 57, 41, 53, 44, 40, 43, 14, 58, 24, 15, 12, 25, 3, 1, 18, 18, 9, 5, 18};
    }

    static {
        A07();
        A05 = new AtomicBoolean();
        A06 = new AtomicInteger(0);
        A02 = null;
        A04 = C0742Nd.A00();
        A07 = new AtomicReference<>();
    }

    public C0654Jp(Context context, boolean z) throws ExecutionException, InterruptedException {
        this.A00 = context;
        this.A01 = new JF(context);
        A08(context, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"CatchGeneralException"})
    @Nullable
    public static String A02(Context context, String str) {
        String strA02 = null;
        Throwable e = null;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    try {
                        context = context;
                        strA02 = C0758Nt.A02(context.getPackageManager().getApplicationInfo(str, 0).sourceDir);
                        c = '\n';
                        break;
                    } catch (Exception e2) {
                        e = e2;
                        if (!A05.compareAndSet(false, true)) {
                            c = '\t';
                            break;
                        } else {
                            c = '\b';
                            break;
                        }
                    }
                case '\b':
                    context = context;
                    e = e;
                    P7.A07(context.getApplicationContext(), A01(78, 7, 112), P8.A0z, new PA(e));
                    c = '\t';
                    break;
                case '\t':
                    strA02 = null;
                    c = '\n';
                    break;
                case '\n':
                    return strA02;
            }
        }
    }

    @Nullable
    public static Map<String, String> A05() {
        return A07.get();
    }

    @SuppressLint({"CatchGeneralException"})
    private static void A08(Context context, boolean z) throws ExecutionException, InterruptedException {
        if (!A06.compareAndSet(0, 1)) {
            return;
        }
        try {
            O2.A04();
            SharedPreferences sharedPreferences = context.getSharedPreferences(ProcessUtils.getProcessSpecificName(A01(272, 9, 99), context), 0);
            String str = A01(240, 4, 69) + new JF(context).A05();
            A02 = sharedPreferences.getString(str, null);
            FutureTask<Boolean> initialiser = new FutureTask<>(new CallableC0653Jo(context, sharedPreferences, str));
            Executors.newSingleThreadExecutor().submit(initialiser);
            if (!z) {
                return;
            }
            initialiser.get();
        } catch (Exception unused) {
            A06.set(0);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0652Jm
    public final Map<String, String> A3T() throws ExecutionException, InterruptedException {
        C0654Jp c0654Jp = this;
        String mediationService = null;
        String mediationService2 = null;
        String fBLoginASID = null;
        A08(c0654Jp.A00, false);
        JE.A0B(c0654Jp.A00);
        JE.A08(c0654Jp.A00);
        HashMap map = new HashMap();
        C0647Jh.A02(c0654Jp.A00, map);
        map.put(A01(140, 6, 29), Locale.getDefault().toString());
        float f = OY.A01;
        int i = c0654Jp.A00.getResources().getDisplayMetrics().widthPixels;
        int i2 = c0654Jp.A00.getResources().getDisplayMetrics().heightPixels;
        map.put(A01(167, 7, 123), String.valueOf(f));
        float density = i;
        map.put(A01(260, 12, 116), String.valueOf((int) (density / f)));
        float density2 = i2;
        map.put(A01(0, 13, 2), String.valueOf((int) (density2 / f)));
        map.put(A01(85, 14, 47), AQ.A03());
        map.put(A01(63, 9, 47), AQ.A00().A01().name());
        map.put(A01(72, 6, 15), C0657Js.A03(c0654Jp.A00, c0654Jp.A01));
        map.put(A01(281, 7, 73), c0654Jp.A01.A07());
        map.put(A01(WsMessage.THREAD_WAIT_LIST_JOIN_CANCEL_REQUEST, 4, 75), c0654Jp.A01.A08());
        map.put(A01(ApiService.API_ERR_USER_NOT_IN_COMMUNITY, 6, 47), String.valueOf(A04.A00));
        map.put(A01(146, 9, 32), c0654Jp.A01.A0A());
        map.put(A01(49, 14, 70), NU.A01());
        map.put(A01(178, 12, 102), String.valueOf(OL.A00(c0654Jp.A00).A00));
        map.put(A01(211, 12, 6), OO.A02(O2.A01()));
        float density3 = A02 != null ? 2.8E-45f : 4.2E-45f;
        while (true) {
            switch (density3) {
                case 2.8E-45f:
                    map = map;
                    map.put(A01(Constants.ERR_PUBLISH_STREAM_NOT_FOUND, 3, 34), A02);
                    density3 = 4.2E-45f;
                    break;
                case 4.2E-45f:
                    c0654Jp = c0654Jp;
                    mediationService = C0742Nd.A02(c0654Jp.A00);
                    if (mediationService == null) {
                        density3 = 7.0E-45f;
                        break;
                    } else {
                        density3 = 5.6E-45f;
                        break;
                    }
                case 5.6E-45f:
                    map = map;
                    mediationService = mediationService;
                    map.put(A01(131, 5, 67), mediationService);
                    density3 = 7.0E-45f;
                    break;
                case 7.0E-45f:
                    c0654Jp = c0654Jp;
                    map = map;
                    map.put(A01(126, 5, 2), String.valueOf(C0746Nh.A05(c0654Jp.A00)));
                    mediationService2 = AdInternalSettings.getMediationService();
                    if (mediationService2 == null) {
                        density3 = 9.8E-45f;
                        break;
                    } else {
                        density3 = 8.4E-45f;
                        break;
                    }
                case 8.4E-45f:
                    map = map;
                    mediationService2 = mediationService2;
                    map.put(A01(13, 17, 36), mediationService2);
                    density3 = 9.8E-45f;
                    break;
                case 9.8E-45f:
                    c0654Jp = c0654Jp;
                    map = map;
                    map.put(A01(190, 21, 92), String.valueOf(c0654Jp.A01.A0B()));
                    if (c0654Jp.A01.A02() == -1) {
                        density3 = 1.3E-44f;
                        break;
                    } else {
                        density3 = 1.1E-44f;
                        break;
                    }
                case 1.1E-44f:
                    c0654Jp = c0654Jp;
                    map = map;
                    map.put(A01(30, 19, 29), String.valueOf(c0654Jp.A01.A02()));
                    density3 = 1.3E-44f;
                    break;
                case 1.3E-44f:
                    c0654Jp = c0654Jp;
                    map = map;
                    map.put(A01(158, 9, 88), C0642Jc.A03(c0654Jp.A00));
                    map.put(A01(User.USER_ROLE_SYSTEM, 6, 22), C0760Nv.A01(JE.A02()));
                    map.put(A01(223, 7, 124), C0646Jg.A01(c0654Jp.A00));
                    if (!K1.A1b(c0654Jp.A00)) {
                        density3 = 1.7E-44f;
                        break;
                    } else {
                        density3 = 1.4E-44f;
                        break;
                    }
                case 1.4E-44f:
                    fBLoginASID = FBLoginASID.getFBLoginASID();
                    if (fBLoginASID == null) {
                        density3 = 1.7E-44f;
                        break;
                    } else {
                        density3 = 1.5E-44f;
                        break;
                    }
                case 1.5E-44f:
                    map = map;
                    fBLoginASID = fBLoginASID;
                    map.put(A01(236, 4, 7), fBLoginASID);
                    density3 = 1.7E-44f;
                    break;
                case 1.7E-44f:
                    HashMap map2 = map;
                    A07.set(map2);
                    return map2;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0652Jm
    public final String A3k() {
        return A3l(C0651Jl.A00());
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0652Jm
    public final String A3l(InterfaceC0648Ji interfaceC0648Ji) throws Throwable {
        A08(this.A00, true);
        ByteArrayOutputStream byteArrayOutputStream = null;
        Base64OutputStream base64OutputStream = null;
        DeflaterOutputStream deflaterOutputStream = null;
        try {
            try {
                ByteArrayOutputStream out = new ByteArrayOutputStream();
                try {
                    Base64OutputStream base64OutputStream2 = new Base64OutputStream(out, 0);
                    try {
                        DeflaterOutputStream deflaterOutputStream2 = new DeflaterOutputStream(base64OutputStream2);
                        try {
                            Map<String, String> mapA3T = A3T();
                            if (TextUtils.isEmpty(AQ.A00().A02())) {
                                AQ.A06(this.A00);
                            }
                            mapA3T.put(A01(174, 4, 5), AQ.A00().A02());
                            mapA3T.put(A01(IjkMediaMeta.FF_PROFILE_H264_HIGH_444_PREDICTIVE, 10, 16), C0657Js.A06(this.A01, this.A00, false));
                            Iterator<Map.Entry<String, String>> it = mapA3T.entrySet().iterator();
                            while (it.hasNext()) {
                                if (!interfaceC0648Ji.A2S(it.next().getKey())) {
                                    it.remove();
                                }
                            }
                            JSONObject envParameters = new JSONObject(mapA3T);
                            deflaterOutputStream2.write(envParameters.toString().getBytes());
                            deflaterOutputStream2.close();
                            String strReplaceAll = out.toString().replaceAll(A01(99, 1, 5), A01(167, 0, 66));
                            if (deflaterOutputStream2 != null) {
                                try {
                                    deflaterOutputStream2.close();
                                } catch (IOException unused) {
                                }
                            }
                            if (base64OutputStream2 != null) {
                                base64OutputStream2.close();
                            }
                            if (out != null) {
                                out.close();
                            }
                            return strReplaceAll;
                        } catch (IOException e) {
                            e = e;
                            throw new RuntimeException(A01(100, 26, 126), e);
                        } catch (Throwable th) {
                            th = th;
                            deflaterOutputStream = deflaterOutputStream2;
                            base64OutputStream = base64OutputStream2;
                            byteArrayOutputStream = out;
                            if (deflaterOutputStream != null) {
                                try {
                                    deflaterOutputStream.close();
                                } catch (IOException unused2) {
                                    throw th;
                                }
                            }
                            if (base64OutputStream != null) {
                                base64OutputStream.close();
                            }
                            if (byteArrayOutputStream != null) {
                                byteArrayOutputStream.close();
                            }
                            throw th;
                        }
                    } catch (IOException e2) {
                        e = e2;
                    } catch (Throwable th2) {
                        th = th2;
                        base64OutputStream = base64OutputStream2;
                        byteArrayOutputStream = out;
                    }
                } catch (IOException e3) {
                    e = e3;
                } catch (Throwable th3) {
                    th = th3;
                    byteArrayOutputStream = out;
                }
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (IOException e4) {
            e = e4;
        }
    }
}
