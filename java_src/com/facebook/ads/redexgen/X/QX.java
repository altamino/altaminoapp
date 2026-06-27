package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.text.TextUtils;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import java.util.Arrays;
import java.util.HashMap;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
@SuppressLint({"ViewConstructor"})
@TargetApi(16)
/* loaded from: assets/assets/audience_network.dex */
public final class QX extends RelativeLayout implements PK {
    private static byte[] A0I;
    private static final int A0J;
    private static final int A0K;
    private static final int A0L;
    private static final int A0M;
    private static final RelativeLayout.LayoutParams A0N;
    public static final /* synthetic */ boolean A0O;
    private Toast A00;

    @Nullable
    private C8s A01;
    private SZ A02;
    private RN A03;
    private RG A04;
    private boolean A05;
    private boolean A06;
    private final C3A A07;
    private final C3B A08;
    private final InterfaceC03718p A09;
    private final KM A0A;
    private final KX A0B;
    private final C0740Nb A0C;
    private final C0740Nb A0D;
    private final InterfaceC03688m A0E;
    private final RK A0F;
    private final OQ A0G;

    @VisibleForTesting
    public final C0797Pg A0H;

    private static String A0B(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0I, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 73);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A0H() {
        A0I = new byte[]{71, 85, 82, 70, 89, 85, 71, 111, 83, 92, 89, 83, 91, 57, 54, 35, 62, 33, 50, 8, 52, 59, 62, 52, 60, 120, 80, 70, 64, 80, 126, 31, 16, 21, 31, 23, 35, 19, 14, 21, 27, 21, 18, 24, 4, 9, 11, 13, 5, 13, 6, 28};
    }

    static {
        A0H();
        A0O = !QX.class.desiredAssertionStatus();
        A0L = (int) (64.0f * OY.A01);
        A0K = (int) (16.0f * OY.A01);
        A0M = (int) (12.0f * OY.A01);
        A0J = (int) (10.0f * OY.A01);
        A0N = new RelativeLayout.LayoutParams(-1, -1);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public QX(Context context, KM km, InterfaceC03688m interfaceC03688m, C3B c3b, @Nullable String str, RK rk) {
        super(context);
        QP qp = null;
        this.A09 = new QP(this);
        this.A0E = interfaceC03688m;
        this.A0A = km;
        this.A08 = c3b;
        this.A07 = c3b.A06().A05();
        this.A0B = new KX(this.A08.A0B(), this.A0A);
        this.A0F = rk;
        this.A0G = new OQ(context, this.A0F, str, this.A0E);
        if (!A0O && this.A07 == null) {
            throw new AssertionError();
        }
        this.A0C = new C0740Nb(this.A07.A07(), new QT(this, qp));
        this.A0D = new C0740Nb(this.A07.A0H() ? 2 : 0, new QU(this, qp));
        this.A0H = A05();
        OY.A0P(this, -14473425);
    }

    private C0797Pg A05() {
        C0797Pg c0797Pg = new C0797Pg(getContext(), this.A0E, this.A0B, R3.A03, this.A08.A04());
        c0797Pg.A04(this.A08.A05().A01(), true);
        c0797Pg.setShowPageDetails(false);
        c0797Pg.setPageDetails(this.A08.A09(), this.A08.A0B(), this.A07.A07(), this.A08.A0A());
        c0797Pg.setToolbarListener(new QQ(this));
        return c0797Pg;
    }

    private SZ A07() {
        SZ sz = new SZ(getContext(), this.A08.A05().A01());
        sz.setText(this.A08.A08().A03());
        sz.setTextSize(14.0f);
        sz.setIncludeFontPadding(false);
        sz.setPadding(A0J, A0J, A0J, A0J);
        OY.A0Q(sz, 8);
        sz.setOnClickListener(new QR(this));
        return sz;
    }

    private C0883So A09() {
        C0883So c0883So = new C0883So(getContext(), this.A08.A05().A01(), true, 16, 14, 0);
        c0883So.A00(this.A08.A07().A08(), this.A08.A07().A07(), null, false, true);
        TextView descriptionTextView = c0883So.getDescriptionTextView();
        descriptionTextView.setAlpha(0.8f);
        descriptionTextView.setMaxLines(1);
        descriptionTextView.setEllipsize(TextUtils.TruncateAt.END);
        TextView titleTextView = c0883So.getTitleTextView();
        titleTextView.setMaxLines(1);
        titleTextView.setEllipsize(TextUtils.TruncateAt.END);
        return c0883So;
    }

    private void A0C() {
        QX qx = this;
        char c = qx.A07.A0H() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    qx = qx;
                    qx.A0E();
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    qx = qx;
                    qx.A0F();
                    c = 3;
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0D() {
        QX qx = this;
        qx.A06 = true;
        char c = qx.A0F.A74() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    qx = qx;
                    qx.A0G.A05();
                    qx.A0E.A2g(qx.A0F.A3B(), new LN(0, 0));
                    if (!qx.A05) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    qx = qx;
                    SY.A04(qx.A04.getViewabilityChecker(), qx.A04.getTouchDataRecorder(), qx.A0A, qx.A08.A08(), qx.A08.A0B());
                    c = 4;
                    break;
                case 4:
                    return;
            }
        }
    }

    private void A0E() {
        this.A03 = new RN(getContext(), this.A08);
        KZ.A07(this.A03, this.A0B, KW.A0V);
        addView(this.A03, A0N);
        this.A0D.A07();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0F() {
        OY.A0U(this);
        this.A04.A09();
        RelativeLayout relativeLayout = new RelativeLayout(getContext());
        OY.A0N(relativeLayout);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(A0K, A0M, A0K, A0M);
        layoutParams.addRule(12);
        this.A02 = A07();
        OY.A0N(this.A02);
        C0883So c0883SoA09 = A09();
        OY.A0N(c0883SoA09);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.addRule(0, this.A02.getId());
        layoutParams2.setMargins(0, 0, A0K, 0);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams3.addRule(11);
        layoutParams3.addRule(6, c0883SoA09.getId());
        layoutParams3.addRule(8, c0883SoA09.getId());
        relativeLayout.addView(c0883SoA09, layoutParams2);
        relativeLayout.addView(this.A02, layoutParams3);
        OY.A0N(this.A0H);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams4.addRule(10);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams5.setMargins(A0K, 0, A0K, 0);
        layoutParams5.addRule(3, this.A0H.getId());
        layoutParams5.addRule(2, relativeLayout.getId());
        OY.A0L(this.A03);
        addView(this.A0H, layoutParams4);
        addView(this.A04, layoutParams5);
        addView(relativeLayout, layoutParams);
        this.A0C.A07();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0G() {
        QX qx = this;
        char c = qx.A00 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    qx = qx;
                    if (qx.A00.getView().getWindowVisibility() != 0) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    return;
                case 4:
                    qx = qx;
                    qx.A00 = Toast.makeText(qx.getContext(), qx.A07.A0C(), 1);
                    qx.A0I((int) qx.A0C.A03());
                    qx.A00.show();
                    c = 3;
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0I(int i) {
        OY.A0Z(this.A00, this.A07.A0C().replace(A0B(25, 6, 106), String.valueOf(i)), 49, 0, A0L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0O(boolean z) {
        QX qx = this;
        boolean z2 = false;
        String strA0B = null;
        SY sy = null;
        boolean z3 = false;
        HashMap map = new HashMap();
        String strA0B2 = A0B(31, 12, 53);
        char c = z ? (char) 2 : (char) 11;
        while (true) {
            switch (c) {
                case 2:
                    strA0B = A0B(0, 13, 121);
                    c = 3;
                    break;
                case 3:
                    qx = qx;
                    map = map;
                    strA0B2 = strA0B2;
                    strA0B = strA0B;
                    map.put(strA0B2, strA0B);
                    if (!qx.A0C.A04()) {
                        c = 4;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case 4:
                    z2 = true;
                    c = 5;
                    break;
                case 5:
                    qx = qx;
                    sy = new SY(qx.getContext(), qx.A0F.A3O(), qx.A04.getViewabilityChecker(), qx.A04.getTouchDataRecorder(), qx.A0A, qx.A0E);
                    if (!z2) {
                        c = 6;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 6:
                    z3 = true;
                    c = 7;
                    break;
                case 7:
                    qx = qx;
                    map = map;
                    sy = sy;
                    sy.A0A(z3);
                    sy.A08(qx.A08.A0B(), qx.A08.A08().A04(), map);
                    if (!z2) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    qx = qx;
                    new Handler(Looper.getMainLooper()).post(new QS(qx));
                    c = '\t';
                    break;
                case '\t':
                    qx.A05 = true;
                    return;
                case '\n':
                    z3 = false;
                    z2 = false;
                    c = 5;
                    break;
                case 11:
                    strA0B = A0B(13, 12, 30);
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.PK
    public final void A45(Intent intent, Bundle bundle, C8s c8s) {
        QX qx = this;
        qx.A01 = c8s;
        qx.A01.A0N(qx.A09);
        HashMap map = new HashMap();
        map.put(A0B(43, 9, 33), qx.A0F.A3e());
        C3A c3aA05 = qx.A08.A06().A05();
        char c = c3aA05 == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    qx = qx;
                    qx.A0E.A2f(qx.A0F.A3V());
                    qx.A0E.A2f(qx.A0F.A3S());
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    qx = qx;
                    map = map;
                    c3aA05 = c3aA05;
                    qx.A04 = new RG(qx.getContext(), qx.A08, c3aA05, qx.A0A, new QW(qx, null), map);
                    qx.A0E.A2Z(qx, new RelativeLayout.LayoutParams(-1, -1));
                    qx.A0C();
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.PK
    public final void A5x(boolean z) {
        this.A0D.A06();
        this.A0C.A06();
    }

    @Override // com.facebook.ads.redexgen.X.PK
    public final void A67(boolean z) {
        QX qx = this;
        char c = !qx.A0D.A04() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    qx = qx;
                    qx.A0D.A07();
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    qx = qx;
                    if (!qx.A0C.A05()) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 5:
                    qx = qx;
                    qx.A0C.A07();
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.PK
    public final void A6x(Bundle bundle) {
    }

    @Override // com.facebook.ads.redexgen.X.PK
    public final void onDestroy() {
        QX qx = this;
        char c = qx.A01 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    qx = qx;
                    qx.A01.A0O(qx.A09);
                    c = 3;
                    break;
                case 3:
                    qx = qx;
                    if (qx.A04 == null) {
                        c = 7;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    qx = qx;
                    if (!TextUtils.isEmpty(qx.A08.A0B())) {
                        c = 5;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 5:
                    qx = qx;
                    qx.A0A.A4D(qx.A08.A0B(), new SN().A04(qx.A04.getViewabilityChecker()).A03(qx.A04.getTouchDataRecorder()).A07());
                    c = 6;
                    break;
                case 6:
                    qx = qx;
                    qx.A04.A0A();
                    c = 7;
                    break;
                case 7:
                    QX qx2 = qx;
                    qx2.A0D.A06();
                    qx2.A0C.A06();
                    qx2.A0H.setToolbarListener(null);
                    qx2.A00 = null;
                    qx2.A01 = null;
                    return;
            }
        }
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(boolean z) {
        QX qx = this;
        super.onWindowFocusChanged(z);
        char c = z ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    qx = qx;
                    qx.A67(false);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    qx = qx;
                    qx.A5x(false);
                    c = 3;
                    break;
            }
        }
    }

    public void setListener(InterfaceC03688m interfaceC03688m) {
    }
}
