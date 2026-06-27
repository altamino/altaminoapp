package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.os.Handler;
import android.support.annotation.Nullable;
import com.facebook.ads.AdSettings;
import com.facebook.ads.AdSize;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
import com.facebook.ads.internal.logging.AdEventManagerImpl;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.facebook.ads.internal.protocol.AdPlacementType;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.3r, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C02473r implements C3Y {
    private static byte[] A0E;
    private InterfaceC02443o A00;
    private JJ A01;
    private String A02;
    private boolean A03;
    private final int A04;
    private final Context A05;
    private final Handler A06;

    @Nullable
    private final AdSize A07;
    private final C01901m A08;
    private final KM A09;
    private final LW A0A;
    private final C0710Lw A0B;
    private final Runnable A0C;
    private final String A0D;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 19);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A05() {
        A0E = new byte[]{-117, -116, -115, -112, -107, -112, -101, -112, -106, -107, -25, -24, -103, -23, -27, -38, -36, -34, -26, -34, -25, -19, -103, -30, -25, -103, -21, -34, -20, -23, -24, -25, -20, -34, -109, -112, -93, -112};
    }

    static {
        A05();
        NV.A02();
    }

    public C02473r(Context context, String str, LW lw, @Nullable AdSize adSize, int i) {
        this.A05 = context;
        this.A0D = str;
        this.A0A = lw;
        this.A07 = adSize;
        this.A04 = i;
        this.A0B = new C0710Lw(this.A05);
        this.A0B.A0W(this);
        this.A08 = new C01901m();
        this.A03 = true;
        this.A06 = new Handler();
        this.A0C = new AbstractC02453p<C02473r>(this) { // from class: com.facebook.ads.redexgen.X.3q
            {
                super(this);
            }

            @Override // com.facebook.ads.redexgen.X.AnonymousClass27
            public final void A03() {
                C02473r c02473rA04 = A04();
                char c = c02473rA04 == null ? (char) 2 : (char) 3;
                while (true) {
                    switch (c) {
                        case 2:
                            return;
                        case 3:
                            c02473rA04 = c02473rA04;
                            if (!PE.A02(c02473rA04.A05)) {
                                c = 5;
                                break;
                            } else {
                                c = 4;
                                break;
                            }
                        case 4:
                            c02473rA04 = c02473rA04;
                            c02473rA04.A08();
                            c = 2;
                            break;
                        case 5:
                            c02473rA04 = c02473rA04;
                            c02473rA04.A06.postDelayed(c02473rA04.A0C, DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
                            c = 2;
                            break;
                    }
                }
            }
        };
        this.A09 = AdEventManagerImpl.getInstance(this.A05);
        DynamicLoaderFactory.makeLoader(this.A05).getInitApi().onAdLoadInvoked(this.A05);
    }

    private List<AnonymousClass29> A04() {
        final C02473r c02473r = this;
        InterfaceC01851h interfaceC01851hA00 = null;
        JJ jj = c02473r.A01;
        JH jhA04 = jj.A04();
        final ArrayList arrayList = new ArrayList(jj.A02());
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    jhA04 = jhA04;
                    if (jhA04 == null) {
                        c = 7;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c02473r = c02473r;
                    interfaceC01851hA00 = c02473r.A08.A00(AdPlacementType.NATIVE);
                    if (interfaceC01851hA00 == null) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    interfaceC01851hA00 = interfaceC01851hA00;
                    if (interfaceC01851hA00.A3d() != AdPlacementType.NATIVE) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c02473r = c02473r;
                    jj = jj;
                    jhA04 = jhA04;
                    arrayList = arrayList;
                    interfaceC01851hA00 = interfaceC01851hA00;
                    HashMap map = new HashMap();
                    map.put(A03(34, 4, 28), jhA04.A05());
                    map.put(A03(0, 10, 20), jj.A05());
                    final AnonymousClass29 anonymousClass29 = (AnonymousClass29) interfaceC01851hA00;
                    anonymousClass29.A0W(c02473r.A05, new C2X() { // from class: com.facebook.ads.redexgen.X.3n
                        @Override // com.facebook.ads.redexgen.X.C2X
                        public final void A5n(AnonymousClass29 anonymousClass292) {
                        }

                        @Override // com.facebook.ads.redexgen.X.C2X
                        public final void A5o(AnonymousClass29 anonymousClass292) {
                            arrayList.add(anonymousClass29);
                        }

                        @Override // com.facebook.ads.redexgen.X.C2X
                        public final void A5p(AnonymousClass29 anonymousClass292) {
                        }

                        @Override // com.facebook.ads.redexgen.X.C2X
                        public final void A5r(AnonymousClass29 anonymousClass292, LQ lq) {
                        }
                    }, c02473r.A09, map, L8.A0G());
                    c = 6;
                    break;
                case 6:
                    jj = jj;
                    jhA04 = jj.A04();
                    c = 2;
                    break;
                case 7:
                    return arrayList;
            }
        }
    }

    public final void A06() {
    }

    public final void A07() {
        this.A03 = false;
        this.A06.removeCallbacks(this.A0C);
    }

    public final void A08() {
        C0764Nz c0764Nz;
        try {
            C0691Lb c0691Lb = new C0691Lb(this.A05, null, null, null);
            Context context = this.A05;
            String str = this.A0D;
            if (this.A07 != null) {
                c0764Nz = new C0764Nz(this.A07.getHeight(), this.A07.getWidth());
            } else {
                c0764Nz = null;
            }
            this.A0B.A0V(new C0700Lk(context, str, c0764Nz, this.A0A, null, this.A04, AdSettings.isTestMode(this.A05), AdSettings.isChildDirected() || AdSettings.isMixedAudience(), c0691Lb, OE.A01(K1.A0P(this.A05)), this.A02));
        } catch (LR e) {
            A5G(LQ.A03(e));
        }
    }

    public final void A09(InterfaceC02443o interfaceC02443o) {
        this.A00 = interfaceC02443o;
    }

    public final void A0A(String str) {
        this.A02 = str;
    }

    public final boolean A0B() {
        C02473r c02473r = this;
        boolean z = false;
        char c = c02473r.A01 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c02473r = c02473r;
                    if (!c02473r.A01.A0A()) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    z = true;
                    c = 4;
                    break;
                case 4:
                    return z;
                case 5:
                    z = false;
                    c = 4;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.C3Y
    public final void A5G(LQ lq) {
        C02473r c02473r = this;
        char c = c02473r.A03 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c02473r = c02473r;
                    c02473r.A06.postDelayed(c02473r.A0C, 1800000L);
                    c = 3;
                    break;
                case 3:
                    c02473r = c02473r;
                    if (c02473r.A00 == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c02473r = c02473r;
                    lq = lq;
                    c02473r.A00.A5G(lq);
                    c = 5;
                    break;
                case 5:
                    return;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.C3Y
    public final void A6H(M0 m0) {
        C02473r c02473r = this;
        long refreshInterval = 0;
        List<AnonymousClass29> listA04 = null;
        JJ jjA00 = m0.A00();
        char c = jjA00 == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    throw new IllegalStateException(A03(10, 24, 102));
                case 3:
                    c02473r = c02473r;
                    if (!c02473r.A03) {
                        c = 7;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    jjA00 = jjA00;
                    refreshInterval = jjA00.A05().A0A();
                    if (refreshInterval != 0) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    refreshInterval = 1800000;
                    c = 6;
                    break;
                case 6:
                    c02473r = c02473r;
                    c02473r.A06.postDelayed(c02473r.A0C, refreshInterval);
                    c = 7;
                    break;
                case 7:
                    c02473r = c02473r;
                    jjA00 = jjA00;
                    c02473r.A01 = jjA00;
                    listA04 = c02473r.A04();
                    if (c02473r.A00 == null) {
                        c = '\n';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    listA04 = listA04;
                    if (!listA04.isEmpty()) {
                        c = 11;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    c02473r = c02473r;
                    c02473r.A00.A5G(LQ.A02(AdErrorType.NO_FILL, A03(38, 0, 13)));
                    c = '\n';
                    break;
                case '\n':
                    return;
                case 11:
                    c02473r = c02473r;
                    listA04 = listA04;
                    c02473r.A00.A5q(listA04);
                    c = '\n';
                    break;
            }
        }
    }
}
