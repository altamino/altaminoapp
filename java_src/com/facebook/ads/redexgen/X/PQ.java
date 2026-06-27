package com.facebook.ads.redexgen.X;

import android.R;
import android.annotation.TargetApi;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.RelativeLayout;
import com.facebook.ads.internal.api.BuildConfigApi;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
@TargetApi(19)
/* loaded from: assets/assets/audience_network.dex */
public final class PQ implements PK {
    private static byte[] A0C;
    private static final String A0D;
    private long A00;
    private String A02;
    private String A03;
    private final C8s A07;
    private final KM A08;
    private final C0868Rz A09;
    private final S0 A0A;
    private final S9 A0B;
    private final InterfaceC03718p A06 = new PL(this);
    private boolean A05 = true;
    private long A01 = -1;
    private boolean A04 = true;

    private static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0C, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 72);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A04() {
        A0C = new byte[]{-96, -48, -51, -43, -47, -61, -48, 126, -47, -61, -47, -47, -57, -51, -52, 126, -62, -65, -46, -65, 126, -54, -51, -59, -59, -61, -62, 126, -98, 126, 5, 21, 18, 26, 22, 8, 21, -8, -11, -17, 124, -110, -110, -97, -110, -74, -31, -33, -110, -75, -31, -32, -26, -41, -32, -26, -110, -66, -31, -45, -42, -41, -42, -110, -58, -37, -33, -41, -84, -110, 124, -110, -110, -97, -110, -59, -41, -27, -27, -37, -31, -32, -110, -72, -37, -32, -37, -27, -38, -110, -58, -37, -33, -41, -84, -110, 110, -124, -124, -111, -124, -84, -59, -46, -56, -48, -55, -42, -124, -72, -51, -47, -55, -98, -124, -41, -40, -27, -21, -22, -80, -40, -30, -41, -28, -31, -124, -102, -102, -89, -102, -51, -35, -20, -23, -26, -26, -102, -52, -33, -37, -34, -13, -102, -50, -29, -25, -33, -76, -102, -48, -39, -42, -46, -37, -31, -63, -36, -40, -46, -37, -106, -84, -84, -71, -84, -40, -5, -19, -16, -84, -46, -11, -6, -11, -1, -12, -84, -32, -11, -7, -15, -58, -84, 32, 25, 38, 28, 36, 29, 42, 12, 33, 37, 29, -58, -36, -36, -23, -36, 8, 43, 29, 32, -36, 15, 48, 29, 46, 48, -36, 16, 37, 41, 33, -10, -36, 83, 105, 105, 118, 105, -101, -82, -68, -71, -72, -73, -68, -82, 105, -114, -73, -83, 105, -99, -78, -74, -82, -125, 105, -68};
    }

    static {
        A04();
        A0D = PQ.class.getSimpleName();
    }

    public PQ(C8s c8s, KM km, InterfaceC03688m interfaceC03688m) {
        this.A07 = c8s;
        this.A08 = km;
        int i = (int) (2.0f * OY.A01);
        this.A09 = new C0868Rz(c8s.A0M());
        this.A09.setId(View.generateViewId());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(10);
        this.A09.setListener(new PN(this, c8s));
        interfaceC03688m.A2Z(this.A09, layoutParams);
        this.A0B = new S9(c8s.A0M());
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.addRule(3, this.A09.getId());
        layoutParams2.addRule(12);
        this.A0B.setListener(new PP(this));
        interfaceC03688m.A2Z(this.A0B, layoutParams2);
        this.A0A = new S0(c8s.A0M(), null, R.attr.progressBarStyleHorizontal);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, i);
        layoutParams3.addRule(3, this.A09.getId());
        this.A0A.setProgress(0);
        interfaceC03688m.A2Z(this.A0A, layoutParams3);
        c8s.A0N(this.A06);
    }

    @Override // com.facebook.ads.redexgen.X.PK
    public final void A45(Intent intent, Bundle bundle, C8s c8s) {
        PQ pq = this;
        String strA03 = null;
        char c = pq.A01 < 0 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    pq = pq;
                    pq.A01 = System.currentTimeMillis();
                    c = 3;
                    break;
                case 3:
                    bundle = bundle;
                    if (bundle != null) {
                        c = '\t';
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    pq = pq;
                    intent = intent;
                    pq.A02 = intent.getStringExtra(A03(30, 10, 91));
                    pq.A03 = intent.getStringExtra(A03(150, 11, 37));
                    pq.A00 = intent.getLongExtra(A03(184, 11, 112), -1L);
                    c = 5;
                    break;
                case 5:
                    pq = pq;
                    if (pq.A02 == null) {
                        c = '\b';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    pq = pq;
                    strA03 = pq.A02;
                    c = 7;
                    break;
                case 7:
                    PQ pq2 = pq;
                    String str = strA03;
                    pq2.A09.setUrl(str);
                    pq2.A0B.loadUrl(str);
                    return;
                case '\b':
                    strA03 = A03(115, 11, 46);
                    c = 7;
                    break;
                case '\t':
                    pq = pq;
                    bundle = bundle;
                    pq.A02 = bundle.getString(A03(30, 10, 91));
                    pq.A03 = bundle.getString(A03(150, 11, 37));
                    pq.A00 = bundle.getLong(A03(184, 11, 112), -1L);
                    c = 5;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.PK
    public final void A5x(boolean z) {
        PQ pq = this;
        S3 s3A07 = null;
        pq.A0B.onPause();
        char c = pq.A04 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    pq = pq;
                    pq.A04 = false;
                    s3A07 = new S2(pq.A0B.getFirstUrl()).A01(pq.A00).A03(pq.A01).A04(pq.A0B.getResponseEndMs()).A00(pq.A0B.getDomContentLoadedMs()).A05(pq.A0B.getScrollReadyMs()).A02(pq.A0B.getLoadFinishMs()).A06(System.currentTimeMillis()).A07();
                    pq.A08.A4B(pq.A03, s3A07.A02());
                    if (!BuildConfigApi.isDebug()) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    s3A07 = s3A07;
                    String str = A03(0, 30, 22) + System.currentTimeMillis() + A03(241, 1, 58) + A03(96, 19, 28) + s3A07.A01 + A03(195, 22, 116) + s3A07.A03 + A03(217, 24, 1) + s3A07.A04 + A03(40, 30, 42) + s3A07.A00 + A03(126, 24, 50) + s3A07.A05 + A03(161, 23, 68) + s3A07.A02 + A03(70, 26, 42) + s3A07.A06;
                    c = 4;
                    break;
                case 4:
                    return;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.PK
    public final void A67(boolean z) {
        this.A0B.onResume();
    }

    @Override // com.facebook.ads.redexgen.X.PK
    public final void A6x(Bundle bundle) {
        bundle.putString(A03(30, 10, 91), this.A02);
    }

    @Override // com.facebook.ads.redexgen.X.PK
    public final void onDestroy() {
        this.A07.A0O(this.A06);
        C0778On.A03(this.A0B);
        this.A0B.destroy();
    }
}
