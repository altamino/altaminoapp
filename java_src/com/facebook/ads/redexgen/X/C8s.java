package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.MotionEvent;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.ads.AudienceNetworkActivity;
import com.facebook.ads.internal.api.AudienceNetworkActivityApi;
import com.facebook.ads.internal.logging.AdEventManagerImpl;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.8s, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class C8s implements AudienceNetworkActivityApi {
    private static byte[] A0L;
    private int A00;
    private int A02;
    private long A03;
    private long A04;
    private Intent A05;
    private RelativeLayout A06;
    private KX A07;
    private M6 A08;

    @Nullable
    private PK A09;
    private RU A0A;
    private SL A0B;

    @Nullable
    private S6 A0C;
    private String A0D;
    private String A0E;

    @Nullable
    private String A0F;
    private boolean A0G;
    private boolean A0H;
    private final AudienceNetworkActivity A0I;
    private final AudienceNetworkActivityApi A0J;
    private final List<InterfaceC03718p> A0K = new ArrayList();
    private int A01 = -1;

    static {
        A0B();
    }

    private static String A08(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0L, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 13);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A0B() {
        A0L = new byte[]{22, 9, 20, 18, 20, 7, 15, 18, 35, 47, 45, 110, 38, 33, 35, 37, 34, 47, 47, 43, 110, 33, 36, 51, 110, 41, 46, 52, 37, 50, 51, 52, 41, 52, 41, 33, 44, 110, 37, 50, 50, 47, 50, 34, 61, 49, 35, 0, 45, 36, 49, 100, 120, 117, 119, 113, 121, 113, 122, 96, 93, 112, 5, 13, 12, 1, 9, 28, 1, 7, 6, 44, 9, 28, 9, 5, 9, 11, 72, 0, 7, 5, 3, 4, 9, 9, 13, 72, 7, 2, 21, 72, 15, 8, 18, 3, 20, 21, 18, 15, 18, 15, 7, 10, 72, 2, 15, 21, 11, 15, 21, 21, 3, 2, 4, 8, 10, 73, 1, 6, 4, 2, 5, 8, 8, 12, 73, 6, 3, 20, 73, 6, 3, 21, 2, 23, 8, 21, 19, 14, 9, 0, 73, 33, 46, 41, 46, 52, 47, 56, 38, 35, 56, 53, 34, 55, 40, 53, 51, 46, 41, 32, 56, 33, 43, 40, 48, 49, 16, 23, 0, 18, 12, 31, 12, 7, 29, 6, 30, 28, 5, 52, 19, 1, 16, 7, 38, 16, 22, 26, 27, 17, 6, 23, 27, 25, 90, 18, 21, 23, 17, 22, 27, 27, 31, 90, 21, 16, 7, 90, 29, 26, 0, 17, 6, 7, 0, 29, 0, 29, 21, 24, 90, 16, 29, 7, 4, 24, 21, 13, 17, 16, 41, 38, 35, 47, 36, 62, 30, 37, 33, 47, 36, 111, 84, 91, 88, 86, 95, 26, 78, 85, 26, 83, 84, 92, 95, 72, 26, 76, 83, 95, 77, 110, 67, 74, 95, 26, 92, 72, 85, 87, 26, 83, 84, 78, 95, 84, 78, 26, 85, 72, 26, 73, 91, 76, 95, 94, 115, 84, 73, 78, 91, 84, 89, 95, 105, 78, 91, 78, 95, 56, 35, 36, 60, 56, 40, 4, 41, 112, 124, 126, 61, 117, 114, 112, 118, 113, 124, 124, 120, 61, 114, 119, 96, 61, 122, 125, 103, 118, 97, 96, 103, 122, 103, 122, 114, 127, 61, 114, 112, 103, 122, 101, 122, 103, 106, 76, 119, 118, 96, 103, 97, 124, 106, 118, 119, 114, 101, 113, 117, 101, 115, 116, 84, 105, 109, 101, 96, 98, 117, 116, 117, 118, 121, 126, 117, 116, 95, 98, 121, 117, 126, 100, 113, 100, 121, 127, 126, 91, 117, 105, 90, 85, 100, 90, 88, 79, 82, 77, 82, 79, 66, 92, 71, 119, 71, 90, 65, 77, 70, 92, 73, 92, 65, 71, 70, 122, 118, 116, 55, 127, 120, 122, 124, 123, 118, 118, 114, 55, 120, 125, 106, 55, 112, 119, 109, 124, 107, 106, 109, 112, 109, 112, 120, 117, 55, 127, 112, 119, 112, 106, 113, 70, 120, 122, 109, 112, 111, 112, 109, 96, 34, 47, 32, 42, 61, 45, 47, 62, 43, 71};
    }

    public C8s(AudienceNetworkActivity audienceNetworkActivity, AudienceNetworkActivityApi audienceNetworkActivityApi) {
        this.A0I = audienceNetworkActivity;
        this.A0J = audienceNetworkActivityApi;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    private PK A02(Intent intent) {
        C8s c8s = this;
        PK pkA01 = null;
        C03708o c03708o = new C03708o(c8s, intent, AdEventManagerImpl.getInstance(c8s.A0I), 0 == true ? 1 : 0);
        char c = c8s.A08 == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return pkA01;
                case 3:
                    c8s = c8s;
                    switch (c8s.A08) {
                        case A05:
                            c = 14;
                            break;
                        case A0B:
                            c = '\r';
                            break;
                        case A0A:
                            c = '\f';
                            break;
                        case A0C:
                            c = 11;
                            break;
                        case A02:
                            c = '\n';
                            break;
                        case A09:
                            c = '\t';
                            break;
                        case A07:
                            c = '\b';
                            break;
                        case A06:
                            c = 7;
                            break;
                        case A08:
                            c = 6;
                            break;
                        case A03:
                            c = 5;
                            break;
                        case A04:
                            c = 4;
                            break;
                        default:
                            c = 2;
                            break;
                    }
                case 4:
                    c03708o = c03708o;
                    pkA01 = c03708o.A04();
                    c = 2;
                    break;
                case 5:
                    c03708o = c03708o;
                    pkA01 = c03708o.A03();
                    c = 2;
                    break;
                case 6:
                    c03708o = c03708o;
                    pkA01 = c03708o.A07();
                    c = 2;
                    break;
                case 7:
                    c03708o = c03708o;
                    pkA01 = c03708o.A05();
                    c = 2;
                    break;
                case '\b':
                    c03708o = c03708o;
                    pkA01 = c03708o.A06();
                    c = 2;
                    break;
                case '\t':
                    c03708o = c03708o;
                    pkA01 = c03708o.A08();
                    c = 2;
                    break;
                case '\n':
                    c03708o = c03708o;
                    pkA01 = c03708o.A01();
                    c = 2;
                    break;
                case 11:
                    c03708o = c03708o;
                    pkA01 = c03708o.A02();
                    c = 2;
                    break;
                case '\f':
                    c03708o = c03708o;
                    pkA01 = c03708o.A0A();
                    c = 2;
                    break;
                case '\r':
                    c03708o = c03708o;
                    pkA01 = c03708o.A09();
                    c = 2;
                    break;
                case 14:
                    c8s = c8s;
                    c03708o = c03708o;
                    pkA01 = c03708o.A0B(c8s.A06);
                    c = 2;
                    break;
            }
        }
    }

    private void A09() {
        C8s c8s = this;
        char c = c8s.A0F != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c8s = c8s;
                    c8s.A0C = SA.A01(c8s.A0I, c8s.A0F);
                    if (c8s.A0C == null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c8s = c8s;
                    c8s.A06.addView(c8s.A0C, new RelativeLayout.LayoutParams(-1, -1));
                    c = 4;
                    break;
                case 4:
                    return;
            }
        }
    }

    private void A0A() {
        C8s c8s = this;
        char c = !c8s.A0G ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    c8s = c8s;
                    if (!c8s.A0K()) {
                        c = 6;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c8s = c8s;
                    c8s.A0H(J8.A03.A02());
                    c = 4;
                    break;
                case 4:
                    c8s = c8s;
                    c8s.A0G = true;
                    c = 5;
                    break;
                case 5:
                    return;
                case 6:
                    c8s = c8s;
                    c8s.A0H(A08(309, 48, 30));
                    c = 4;
                    break;
            }
        }
    }

    private void A0C(Intent intent) {
        C8s c8s = this;
        long requestTimeMs = 0;
        char c = K1.A12(c8s.A0I) ? (char) 2 : (char) 7;
        while (true) {
            switch (c) {
                case 2:
                    c8s = c8s;
                    if (c8s.A08 == M6.A02) {
                        c = 7;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    if (Build.VERSION.SDK_INT < 18) {
                        c = 7;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c8s = c8s;
                    intent = intent;
                    c8s.A0B = new SL();
                    c8s.A0B.A0C(intent.getStringExtra(A08(51, 11, 25)));
                    c8s.A0B.A0B(c8s.A0I.getPackageName());
                    requestTimeMs = intent.getLongExtra(A08(357, 11, 13), 0L);
                    if (requestTimeMs == 0) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c8s = c8s;
                    c8s.A0B.A09(requestTimeMs);
                    c = 6;
                    break;
                case 6:
                    c8s = c8s;
                    TextView textView = new TextView(c8s.A0I);
                    textView.setText(A08(167, 5, 120));
                    textView.setTextColor(-1);
                    OY.A0P(textView, Color.argb(160, 0, 0, 0));
                    textView.setPadding(5, 5, 5, 5);
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
                    layoutParams.addRule(12, -1);
                    layoutParams.addRule(11, -1);
                    textView.setLayoutParams(layoutParams);
                    ViewOnLongClickListenerC03728q viewOnLongClickListenerC03728q = new ViewOnLongClickListenerC03728q(c8s);
                    textView.setOnLongClickListener(viewOnLongClickListenerC03728q);
                    c8s.A06.setOnLongClickListener(viewOnLongClickListenerC03728q);
                    c8s.A06.getOverlay().add(c8s.A0B);
                    c = 7;
                    break;
                case 7:
                    return;
            }
        }
    }

    private void A0D(Intent intent, @Nullable Bundle bundle) {
        C8s c8s = this;
        char c = bundle != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c8s = c8s;
                    bundle = bundle;
                    Bundle bundleA02 = NQ.A02(bundle);
                    c8s.A01 = bundleA02.getInt(A08(368, 24, 29), -1);
                    c8s.A0D = bundleA02.getString(A08(301, 8, 64));
                    c8s.A08 = (M6) bundleA02.getSerializable(A08(43, 8, 89));
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c8s = c8s;
                    intent = intent;
                    c8s.A01 = intent.getIntExtra(A08(368, 24, 29), -1);
                    c8s.A0D = intent.getStringExtra(A08(301, 8, 64));
                    c8s.A08 = (M6) intent.getSerializableExtra(A08(43, 8, 89));
                    c8s.A02 = intent.getIntExtra(A08(177, 16, 120), 0) * 1000;
                    c = 3;
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0H(String str) {
        C8s c8s = this;
        char c = !A08(114, 53, 106).equals(str) ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    str = str;
                    if (!A08(417, 45, 20).equals(str)) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c8s = c8s;
                    c8s.finish();
                    c = 4;
                    break;
                case 4:
                    return;
                case 5:
                    c8s = c8s;
                    str = str;
                    C02784w.A00(c8s.A0I).A07(new Intent(str + A08(471, 1, 112) + c8s.A0D));
                    c = 4;
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0I(String str, AnonymousClass38 anonymousClass38, boolean z, @Nullable PZ pz) {
        AnonymousClass38 anonymousClass382 = anonymousClass38;
        String str2 = str;
        C8s c8s = this;
        char c = c8s.A09 == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    c8s = c8s;
                    if (c8s.A0A != null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c8s = c8s;
                    str2 = str2;
                    anonymousClass382 = anonymousClass382;
                    c8s.A0A = RV.A02(c8s.A0I.getApplicationContext(), AdEventManagerImpl.getInstance(c8s.A0I), str2, anonymousClass382, c8s.A09, new C03698n(c8s));
                    c8s.A0A.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
                    c = 5;
                    break;
                case 5:
                    c8s = c8s;
                    pz = pz;
                    c8s.A0A.A0O(z);
                    c8s.A0A.setAdReportingFlowListener(pz);
                    OY.A0L(c8s.A0A);
                    OY.A0U(c8s.A06);
                    c8s.A06.addView(c8s.A0A);
                    c8s.A0A.A0J();
                    c = 2;
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0J(String str, C0660Jv c0660Jv) {
        Intent intent = new Intent(str + A08(471, 1, 112) + this.A0D);
        intent.putExtra(A08(TsExtractor.TS_STREAM_TYPE_AC4, 5, 100), c0660Jv);
        C02784w.A00(this.A0I).A07(intent);
    }

    private boolean A0K() {
        C8s c8s = this;
        boolean z = false;
        char c = c8s.A08 != M6.A0B ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c8s = c8s;
                    if (c8s.A08 == M6.A0A) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c8s = c8s;
                    if (c8s.A08 != M6.A0C) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    z = true;
                    c = 5;
                    break;
                case 5:
                    return z;
                case 6:
                    z = false;
                    c = 5;
                    break;
            }
        }
    }

    public final Intent A0L() {
        return this.A05;
    }

    public final AudienceNetworkActivity A0M() {
        return this.A0I;
    }

    public final void A0N(InterfaceC03718p interfaceC03718p) {
        this.A0K.add(interfaceC03718p);
    }

    public final void A0O(InterfaceC03718p interfaceC03718p) {
        this.A0K.remove(interfaceC03718p);
    }

    public final void finish() {
        C8s c8s = this;
        char c = c8s.A0I.isFinishing() ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    c8s = c8s;
                    if (!c8s.A0K()) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c8s = c8s;
                    c8s.A0H(J8.A06.A02());
                    c = 5;
                    break;
                case 5:
                    c8s = c8s;
                    c8s.A0A();
                    c8s.A0J.finish();
                    c = 2;
                    break;
                case 6:
                    c8s = c8s;
                    c8s.A0H(A08(75, 39, 107));
                    c = 5;
                    break;
            }
        }
    }

    public final void onBackPressed() {
        C8s c8s = this;
        Iterator<InterfaceC03718p> it = null;
        boolean z = false;
        long jCurrentTimeMillis = System.currentTimeMillis();
        c8s.A03 += jCurrentTimeMillis - c8s.A04;
        c8s.A04 = jCurrentTimeMillis;
        char c = c8s.A03 > ((long) c8s.A02) ? (char) 2 : '\b';
        while (true) {
            switch (c) {
                case 2:
                    c8s = c8s;
                    z = false;
                    it = c8s.A0K.iterator();
                    c = 3;
                    break;
                case 3:
                    it = it;
                    if (!it.hasNext()) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    it = it;
                    if (!it.next().A3t()) {
                        c = 3;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    z = true;
                    c = 3;
                    break;
                case 6:
                    if (!z) {
                        c = 7;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case 7:
                    c8s = c8s;
                    c8s.A0J.onBackPressed();
                    c = '\b';
                    break;
                case '\b':
                    return;
            }
        }
    }

    public final void onConfigurationChanged(Configuration configuration) {
        C8s c8s = this;
        HashMap map = null;
        char c = c8s.A09 instanceof C0836Qt ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c8s = c8s;
                    configuration = configuration;
                    ((C0836Qt) c8s.A09).onConfigurationChanged(configuration);
                    c = 3;
                    break;
                case 3:
                    c8s = c8s;
                    configuration = configuration;
                    if (c8s.A00 == configuration.orientation) {
                        c = 7;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    configuration = configuration;
                    map = new HashMap();
                    if (configuration.orientation != 1) {
                        c = '\b';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    map = map;
                    map.put(A08(403, 14, 37), A08(0, 8, 107));
                    c = 6;
                    break;
                case 6:
                    c8s = c8s;
                    configuration = configuration;
                    map = map;
                    c8s.A07.A02(KW.A0L, map);
                    c8s.A00 = configuration.orientation;
                    c = 7;
                    break;
                case 7:
                    return;
                case '\b':
                    map = map;
                    map.put(A08(403, 14, 37), A08(462, 9, 67));
                    c = 6;
                    break;
            }
        }
    }

    public final void onCreate(@Nullable Bundle bundle) {
        C8s c8s = this;
        Context contextA00 = null;
        NV.A02();
        c8s.A05 = NQ.A00(c8s.A0I.getIntent());
        c8s.A0I.requestWindowFeature(1);
        c8s.A0I.getWindow().setFlags(1024, 1024);
        c8s.A06 = new RelativeLayout(c8s.A0I);
        OY.A0P(c8s.A06, 0);
        c8s.A0I.setContentView(c8s.A06, new RelativeLayout.LayoutParams(-1, -1));
        c8s.A0D(c8s.A05, bundle);
        c8s.A09 = c8s.A02(c8s.A05);
        char c = c8s.A09 == null ? (char) 2 : (char) 6;
        while (true) {
            switch (c) {
                case 2:
                    contextA00 = IF.A00();
                    if (contextA00 == null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    contextA00 = contextA00;
                    P7.A07(contextA00, A08(392, 11, 54), P8.A01, new PA(A08(243, 58, 55)));
                    c = 4;
                    break;
                case 4:
                    c8s = c8s;
                    c8s.A0H(A08(8, 35, 77));
                    c8s.finish();
                    c = 5;
                    break;
                case 5:
                    return;
                case 6:
                    c8s = c8s;
                    bundle = bundle;
                    c8s.A09.A45(c8s.A05, bundle, c8s);
                    c8s.A0H(A08(193, 39, 121));
                    c8s.A04 = System.currentTimeMillis();
                    c8s.A0F = c8s.A05.getStringExtra(A08(62, 13, 101));
                    c8s.A09();
                    c8s.A0C(c8s.A05);
                    c8s.A00 = c8s.A0I.getResources().getConfiguration().orientation;
                    if (bundle == null) {
                        c = '\t';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c8s = c8s;
                    bundle = bundle;
                    c8s.A0E = bundle.getString(A08(232, 11, 71));
                    c = '\b';
                    break;
                case '\b':
                    c8s = c8s;
                    c8s.A07 = new KX(c8s.A0E, AdEventManagerImpl.getInstance(c8s.A0I));
                    c = 5;
                    break;
                case '\t':
                    c8s = c8s;
                    c8s.A0E = c8s.A05.getStringExtra(A08(232, 11, 71));
                    c = '\b';
                    break;
            }
        }
    }

    public final void onDestroy() {
        C8s c8s = this;
        c8s.A0A();
        char c = c8s.A06 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c8s = c8s;
                    c8s.A06.removeAllViews();
                    c = 3;
                    break;
                case 3:
                    c8s = c8s;
                    if (c8s.A09 == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c8s = c8s;
                    c8s.A09.onDestroy();
                    c8s.A09 = null;
                    c = 5;
                    break;
                case 5:
                    c8s = c8s;
                    if (c8s.A0B == null) {
                        c = '\b';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c8s = c8s;
                    if (!K1.A12(c8s.A0I)) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c8s = c8s;
                    c8s.A0B.A07();
                    c = '\b';
                    break;
                case '\b':
                    c8s = c8s;
                    if (c8s.A0A == null) {
                        c = '\n';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    c8s = c8s;
                    c8s.A0A.A0I();
                    c = '\n';
                    break;
                case '\n':
                    return;
            }
        }
    }

    public final void onPause() {
        C8s c8s = this;
        c8s.A03 += System.currentTimeMillis() - c8s.A04;
        char c = c8s.A09 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c8s = c8s;
                    c8s.A09.A5x(false);
                    if (!c8s.A0I.isFinishing()) {
                        c = 3;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 3:
                    c8s = c8s;
                    c8s.A07.A02(KW.A0F, null);
                    c8s.A0H = true;
                    c = 4;
                    break;
                case 4:
                    return;
            }
        }
    }

    public final void onResume() {
        C8s c8s = this;
        c8s.A04 = System.currentTimeMillis();
        char c = c8s.A09 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c8s = c8s;
                    c8s.A09.A67(false);
                    if (!c8s.A0H) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c8s = c8s;
                    c8s.A07.A02(KW.A0G, null);
                    c = 4;
                    break;
                case 4:
                    return;
            }
        }
    }

    public final void onSaveInstanceState(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        if (this.A09 != null) {
            this.A09.A6x(bundle2);
        }
        bundle2.putInt(A08(368, 24, 29), this.A01);
        bundle2.putString(A08(301, 8, 64), this.A0D);
        bundle2.putString(A08(232, 11, 71), this.A0E);
        bundle2.putSerializable(A08(43, 8, 89), this.A08);
        NQ.A07(bundle, bundle2);
    }

    public final void onStart() {
        if (this.A01 != -1) {
            PH.A02(this.A0I, this.A01);
        }
    }

    public final boolean onTouchEvent(MotionEvent motionEvent) {
        C0418Al.A02(null, motionEvent);
        return this.A0J.onTouchEvent(motionEvent);
    }
}
