package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Th, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0902Th extends AbstractC0810Pt {
    private static byte[] A0C;
    private static final int A0D;
    private static final int A0E;
    private static final int A0F;
    private static final int A0G;
    private static final int A0H;
    private int A00;
    private int A01;

    @Nullable
    private LinearLayout A02;
    private C0607Ht A03;

    @Nullable
    private PS A04;

    @Nullable
    private C0877Si A05;
    private UA A06;
    private AbstractC02052b A07;
    private C6K A08;
    private String A09;
    private List<UB> A0A;
    private final OP A0B;

    private static String A0A(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 109);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static void A0C() {
        A0C = new byte[]{59, 62, 5, 62, 59, 46, 59, 5, 56, 47, 52, 62, 54, 63};
    }

    static {
        A0C();
        A0D = (int) (48.0f * OY.A01);
        A0E = (int) (OY.A01 * 8.0f);
        A0F = (int) (OY.A01 * 8.0f);
        A0H = (int) (56.0f * OY.A01);
        A0G = (int) (12.0f * OY.A01);
    }

    public C0902Th(Context context, KM km, C0607Ht c0607Ht, InterfaceC03688m interfaceC03688m, AnonymousClass31 anonymousClass31) {
        super(context, km, interfaceC03688m, anonymousClass31);
        this.A0B = new OP();
        this.A03 = c0607Ht;
    }

    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.facebook.ads.redexgen.X.PS, com.facebook.ads.redexgen.X.Si] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3 */
    private final void A0D() {
        C0902Th c0902Th = this;
        ?? r1 = 0;
        char c = c0902Th.A02 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c0902Th = c0902Th;
                    r1 = 0;
                    c0902Th.A02.removeAllViews();
                    c0902Th.A02 = null;
                    c = 3;
                    break;
                case 3:
                    c0902Th = c0902Th;
                    if (c0902Th.A04 == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c0902Th = c0902Th;
                    c0902Th.A04.removeAllViews();
                    c0902Th.A04 = r1;
                    c = 5;
                    break;
                case 5:
                    c0902Th = c0902Th;
                    if (c0902Th.A05 == null) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c0902Th = c0902Th;
                    c0902Th.A05.removeAllViews();
                    c0902Th.A05 = r1;
                    c = 7;
                    break;
                case 7:
                    return;
            }
        }
    }

    private final void A0E(int i, @Nullable Bundle bundle) throws IllegalStateException {
        int iMin;
        int i2;
        int i3;
        C02282y c02282yA00;
        this.A02 = new LinearLayout(getContext());
        if (i == 1) {
            this.A02.setGravity(17);
        } else {
            this.A02.setGravity(48);
        }
        this.A02.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        this.A02.setOrientation(1);
        int i4 = OY.A02.widthPixels;
        int i5 = OY.A02.heightPixels;
        if (i == 1) {
            int height = A0E;
            int width = i4 - (height * 4);
            int height2 = i5 / 2;
            iMin = Math.min(width, height2);
            i2 = (i4 - iMin) / 8;
            i3 = i2 * 4;
        } else {
            int width2 = A0H;
            int childWidth = A0D;
            int width3 = width2 + childWidth;
            int childWidth2 = A0E;
            iMin = i5 - (width3 + (childWidth2 * 2));
            i2 = A0E;
            i3 = i2 * 2;
        }
        this.A07 = new C0919Tz(this);
        this.A08 = new C6K(this, 1, this.A07);
        C6K c6k = this.A08;
        int childWidth3 = this.A00;
        c6k.A0V(childWidth3);
        C6K c6k2 = this.A08;
        int childWidth4 = this.A01;
        c6k2.A0W(childWidth4);
        this.A04 = new PS(getContext());
        this.A04.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
        this.A06 = new UA(this.A04, i, this.A0A, this.A08, bundle);
        PS ps = this.A04;
        List<UB> list = this.A0A;
        KM km = super.A09;
        C0607Ht c0607Ht = this.A03;
        C6K c6k3 = this.A08;
        OP op = this.A0B;
        InterfaceC03688m audienceNetworkListener = getAudienceNetworkListener();
        if (i == 1) {
            c02282yA00 = super.A05.A01();
        } else {
            c02282yA00 = super.A05.A00();
        }
        ps.setAdapter(new U4(list, km, c0607Ht, c6k3, op, audienceNetworkListener, c02282yA00, this.A09, iMin, i2, i3, i, this.A06));
        if (i == 1) {
            A0G(this.A06);
        }
        this.A02.addView(this.A04);
        if (this.A05 != null) {
            this.A02.addView(this.A05);
        }
        A09(this.A02, false, i, true);
    }

    private void A0F(AnonymousClass31 anonymousClass31) {
        C0902Th c0902Th = this;
        c0902Th.A09 = anonymousClass31.A0D();
        c0902Th.A00 = anonymousClass31.A06();
        c0902Th.A01 = anonymousClass31.A07();
        List<AnonymousClass32> listA0H = anonymousClass31.A0H();
        c0902Th.A0A = new ArrayList(listA0H.size());
        int i = 0;
        int i2 = 2;
        while (true) {
            switch (i2) {
                case 2:
                    listA0H = listA0H;
                    int i3 = listA0H.size();
                    if (i >= i3) {
                        i2 = 4;
                        break;
                    } else {
                        i2 = 3;
                        break;
                    }
                case 3:
                    c0902Th = c0902Th;
                    listA0H = listA0H;
                    c0902Th.A0A.add(new UB(i, listA0H.size(), listA0H.get(i)));
                    i++;
                    i2 = 2;
                    break;
                case 4:
                    return;
            }
        }
    }

    private void A0G(UA ua) throws IllegalStateException {
        new C03367f().A0B(this.A04);
        ua.A0c(new C0904Tj(this));
        this.A05 = new C0877Si(getContext(), super.A05.A01(), this.A0A.size());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, A0F);
        layoutParams.setMargins(0, A0G, 0, 0);
        this.A05.setLayoutParams(layoutParams);
    }

    @Override // com.facebook.ads.redexgen.X.PK
    public final void A45(Intent intent, Bundle bundle, C8s c8s) throws IllegalStateException {
        AnonymousClass31 anonymousClass31 = (AnonymousClass31) intent.getSerializableExtra(A0A(0, 14, 55));
        super.A0A(c8s);
        A0F(anonymousClass31);
        A0E(c8s.A0M().getResources().getConfiguration().orientation, bundle);
        c8s.A0N(new C0903Ti(this, c8s));
        int iA03 = super.A08.A0H().get(0).A03().A03();
        if (iA03 > 0) {
            A07(iA03);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0810Pt, com.facebook.ads.redexgen.X.PK
    public final void A5x(boolean z) {
        super.A5x(z);
        if (this.A06 != null) {
            this.A06.A0Z();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0810Pt, com.facebook.ads.redexgen.X.PK
    public final void A67(boolean z) {
        super.A67(z);
        this.A06.A0a();
    }

    @Override // com.facebook.ads.redexgen.X.PK
    public final void A6x(Bundle bundle) {
        if (this.A06 != null) {
            this.A06.A0b(bundle);
        }
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) throws IllegalStateException {
        Bundle bundle = new Bundle();
        A6x(bundle);
        A0D();
        A0E(configuration.orientation, bundle);
        super.onConfigurationChanged(configuration);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0810Pt, com.facebook.ads.redexgen.X.PK
    public final void onDestroy() {
        super.onDestroy();
        if (!TextUtils.isEmpty(this.A09)) {
            super.A09.A4D(this.A09, new SN().A04(this.A08).A03(this.A0B).A07());
        }
        A0D();
        this.A08.A0U();
        this.A08 = null;
        this.A07 = null;
        this.A0A = null;
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        this.A0B.A06(motionEvent, this, this);
        return super.onInterceptTouchEvent(motionEvent);
    }
}
