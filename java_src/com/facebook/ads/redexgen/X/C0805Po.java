package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Po, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0805Po extends ViewOnTouchListenerC0803Pm implements InterfaceC0804Pn {
    private int A00;
    private int A01;
    private int A02;
    private int A03;
    private InterfaceC0802Pl A04;
    private boolean A05;
    private final C0801Pk A06;

    public C0805Po(Context context) {
        super(context);
        this.A03 = -1;
        this.A02 = -1;
        this.A01 = 0;
        this.A00 = 0;
        this.A05 = false;
        this.A06 = new C0801Pk(context, new U1(), new U0());
        A01();
    }

    public C0805Po(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.A03 = -1;
        this.A02 = -1;
        this.A01 = 0;
        this.A00 = 0;
        this.A05 = false;
        this.A06 = new C0801Pk(context, new U1(), new U0());
        A01();
    }

    public C0805Po(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.A03 = -1;
        this.A02 = -1;
        this.A01 = 0;
        this.A00 = 0;
        this.A05 = false;
        this.A06 = new C0801Pk(context, new U1(), new U0());
        A01();
    }

    private int A00(int itemSize) {
        int i = this.A00 * 2;
        int measuredWidth = getMeasuredWidth();
        int spacing = getPaddingLeft();
        int i2 = (measuredWidth - spacing) - i;
        int iA03 = getAdapter().A03();
        int i3 = 0;
        int i4 = Integer.MAX_VALUE;
        int numFullItems = 2;
        while (true) {
            switch (numFullItems) {
                case 2:
                    if (i4 <= itemSize) {
                        numFullItems = 6;
                        break;
                    } else {
                        numFullItems = 3;
                        break;
                    }
                case 3:
                    i3++;
                    if (i3 < iA03) {
                        numFullItems = 5;
                        break;
                    } else {
                        numFullItems = 4;
                        break;
                    }
                case 4:
                    return itemSize;
                case 5:
                    int numFullItems2 = i3 * i;
                    i4 = (int) ((i2 - numFullItems2) / (i3 + 0.333f));
                    numFullItems = 2;
                    break;
                case 6:
                    itemSize = i4;
                    numFullItems = 4;
                    break;
            }
        }
    }

    private void A01() {
        this.A06.A2J(0);
        setLayoutManager(this.A06);
        setSaveEnabled(false);
        setSnapDelegate(this);
        OY.A0N(this);
    }

    private void A02(int i, int i2) {
        C0805Po c0805Po = this;
        char c = i == c0805Po.A03 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0805Po = c0805Po;
                    if (i2 != c0805Po.A02) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    return;
                case 4:
                    c0805Po = c0805Po;
                    c0805Po.A03 = i;
                    c0805Po.A02 = i2;
                    if (c0805Po.A04 == null) {
                        c = 3;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c0805Po = c0805Po;
                    c0805Po.A04.onPageChanged(c0805Po.A03, c0805Po.A02);
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.ViewOnTouchListenerC0803Pm
    public final void A1v(int i, boolean z) {
        super.A1v(i, z);
        A02(i, 0);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0804Pn
    public final int A3f(int i) {
        C0805Po c0805Po = this;
        int i2 = 0;
        int iAbs = Math.abs(i);
        char c = iAbs <= ((ViewOnTouchListenerC0803Pm) c0805Po).A06 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    i2 = 0;
                    c = 3;
                    break;
                case 3:
                    return i2;
                case 4:
                    c0805Po = c0805Po;
                    if (c0805Po.A01 != 0) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    i2 = 1;
                    c = 3;
                    break;
                case 6:
                    c0805Po = c0805Po;
                    i2 = (iAbs / c0805Po.A01) + 1;
                    c = 3;
                    break;
            }
        }
    }

    public int getChildSpacing() {
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.C8H, android.view.View
    public final void onMeasure(int i, int verticalPadding) {
        C0805Po c0805Po = this;
        int iA0K = 0;
        int i2 = 0;
        int iMin = 0;
        super.onMeasure(i, verticalPadding);
        int paddingTop = c0805Po.getPaddingTop() + c0805Po.getPaddingBottom();
        char c = c0805Po.A05 ? (char) 2 : '\f';
        while (true) {
            switch (c) {
                case 2:
                    c0805Po = c0805Po;
                    iA0K = (((int) OY.A01) * K1.A0K(c0805Po.getContext())) + paddingTop;
                    c = 3;
                    break;
                case 3:
                    switch (View.MeasureSpec.getMode(verticalPadding)) {
                        case Integer.MIN_VALUE:
                            c = 11;
                            break;
                        case 1073741824:
                            c = '\n';
                            break;
                        default:
                            c = 4;
                            break;
                    }
                case 4:
                    c0805Po = c0805Po;
                    i2 = iA0K - paddingTop;
                    if (!c0805Po.A05) {
                        c = '\t';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    iMin = Math.min(PR.A08, i2);
                    c = 6;
                    break;
                case 6:
                    c0805Po = c0805Po;
                    c0805Po.setMeasuredDimension(c0805Po.getMeasuredWidth(), iMin + paddingTop);
                    if (!c0805Po.A05) {
                        c = 7;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case 7:
                    c0805Po = c0805Po;
                    c0805Po.setChildWidth((c0805Po.A00 * 2) + iMin);
                    c = '\b';
                    break;
                case '\b':
                    return;
                case '\t':
                    c0805Po = c0805Po;
                    iMin = c0805Po.A00(i2);
                    c = 6;
                    break;
                case '\n':
                    iA0K = View.MeasureSpec.getSize(verticalPadding);
                    c = 4;
                    break;
                case 11:
                    iA0K = Math.min(View.MeasureSpec.getSize(verticalPadding), iA0K);
                    c = 4;
                    break;
                case '\f':
                    c0805Po = c0805Po;
                    iA0K = Math.round(c0805Po.getMeasuredWidth() / 1.91f);
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.C8H
    public void setAdapter(@Nullable AbstractC02102g abstractC02102g) {
        int iHashCode = 0;
        C0801Pk c0801Pk = this.A06;
        char c = abstractC02102g == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    iHashCode = -1;
                    c = 3;
                    break;
                case 3:
                    c0801Pk.A2Q(iHashCode);
                    super.setAdapter(abstractC02102g);
                    return;
                case 4:
                    abstractC02102g = abstractC02102g;
                    iHashCode = abstractC02102g.hashCode();
                    c = 3;
                    break;
            }
        }
    }

    public void setChildSpacing(int i) {
        this.A00 = i;
    }

    public void setChildWidth(int i) {
        this.A01 = i;
        int measuredWidth = getMeasuredWidth();
        this.A06.A2R((((measuredWidth - getPaddingLeft()) - getPaddingRight()) - this.A01) / 2);
        this.A06.A2P(this.A01 / measuredWidth);
    }

    public void setCurrentPosition(int i) {
        A1v(i, false);
    }

    public void setOnPageChangedListener(InterfaceC0802Pl interfaceC0802Pl) {
        this.A04 = interfaceC0802Pl;
    }

    public void setShowTextInCarousel(boolean z) {
        this.A05 = z;
    }
}
