package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Pm, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class ViewOnTouchListenerC0803Pm extends C8H implements View.OnTouchListener {
    private static byte[] A07;
    private int A00;
    private C7P A01;
    private InterfaceC0804Pn A02;
    private boolean A03;
    private boolean A04;
    public int A05;
    public final int A06;

    static {
        A06();
    }

    private static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A07, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 77);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A06() {
        A07 = new byte[]{2, 63, 48, 33, 3, 52, 50, 40, 50, 61, 52, 35, 7, 56, 52, 38, 113, 62, 63, 61, 40, 113, 34, 36, 33, 33, 62, 35, 37, 34, 113, 29, 56, 63, 52, 48, 35, 29, 48, 40, 62, 36, 37, 28, 48, 63, 48, 54, 52, 35};
    }

    public ViewOnTouchListenerC0803Pm(Context context) {
        super(context);
        this.A05 = 0;
        this.A00 = 0;
        this.A03 = true;
        this.A04 = false;
        this.A06 = A00();
        setOnTouchListener(this);
    }

    public ViewOnTouchListenerC0803Pm(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.A05 = 0;
        this.A00 = 0;
        this.A03 = true;
        this.A04 = false;
        this.A06 = A00();
        setOnTouchListener(this);
    }

    public ViewOnTouchListenerC0803Pm(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.A05 = 0;
        this.A00 = 0;
        this.A03 = true;
        this.A04 = false;
        this.A06 = A00();
        setOnTouchListener(this);
    }

    private int A00() {
        return ((int) getContext().getResources().getDisplayMetrics().density) * 10;
    }

    private int A01(int i) {
        ViewOnTouchListenerC0803Pm viewOnTouchListenerC0803Pm = this;
        int iA03 = 0;
        int i2 = viewOnTouchListenerC0803Pm.A00 - i;
        int iA3f = viewOnTouchListenerC0803Pm.A02.A3f(i2);
        char c = i2 > viewOnTouchListenerC0803Pm.A06 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    viewOnTouchListenerC0803Pm = viewOnTouchListenerC0803Pm;
                    iA03 = viewOnTouchListenerC0803Pm.A03(viewOnTouchListenerC0803Pm.A05, iA3f);
                    c = 3;
                    break;
                case 3:
                    return iA03;
                case 4:
                    viewOnTouchListenerC0803Pm = viewOnTouchListenerC0803Pm;
                    if (i2 >= (-viewOnTouchListenerC0803Pm.A06)) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    viewOnTouchListenerC0803Pm = viewOnTouchListenerC0803Pm;
                    iA03 = viewOnTouchListenerC0803Pm.A02(viewOnTouchListenerC0803Pm.A05, iA3f);
                    c = 3;
                    break;
                case 6:
                    viewOnTouchListenerC0803Pm = viewOnTouchListenerC0803Pm;
                    iA03 = viewOnTouchListenerC0803Pm.A05;
                    c = 3;
                    break;
            }
        }
    }

    private int A02(int i, int i2) {
        return Math.max(i - i2, 0);
    }

    private int A03(int i, int i2) {
        return Math.min(i + i2, getItemCount() - 1);
    }

    public void A1v(int i, boolean z) {
        ViewOnTouchListenerC0803Pm viewOnTouchListenerC0803Pm = this;
        char c = viewOnTouchListenerC0803Pm.getAdapter() == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    viewOnTouchListenerC0803Pm = viewOnTouchListenerC0803Pm;
                    viewOnTouchListenerC0803Pm.A05 = i;
                    if (!z) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    viewOnTouchListenerC0803Pm = viewOnTouchListenerC0803Pm;
                    viewOnTouchListenerC0803Pm.A1P(i);
                    c = 2;
                    break;
                case 5:
                    viewOnTouchListenerC0803Pm = viewOnTouchListenerC0803Pm;
                    viewOnTouchListenerC0803Pm.A1O(i);
                    c = 2;
                    break;
            }
        }
    }

    public int getCurrentPosition() {
        return this.A05;
    }

    private int getItemCount() {
        ViewOnTouchListenerC0803Pm viewOnTouchListenerC0803Pm = this;
        int iA03 = 0;
        char c = viewOnTouchListenerC0803Pm.getAdapter() == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    iA03 = 0;
                    c = 3;
                    break;
                case 3:
                    return iA03;
                case 4:
                    viewOnTouchListenerC0803Pm = viewOnTouchListenerC0803Pm;
                    iA03 = viewOnTouchListenerC0803Pm.getAdapter().A03();
                    c = 3;
                    break;
            }
        }
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        ViewOnTouchListenerC0803Pm viewOnTouchListenerC0803Pm = this;
        boolean z = false;
        int rawX = (int) motionEvent.getRawX();
        int actionMasked = motionEvent.getActionMasked();
        char c = actionMasked != 1 ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    if (actionMasked == 6) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    if (actionMasked == 3) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    if (actionMasked != 4) {
                        c = '\t';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    viewOnTouchListenerC0803Pm = viewOnTouchListenerC0803Pm;
                    if (!viewOnTouchListenerC0803Pm.A04) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    viewOnTouchListenerC0803Pm = viewOnTouchListenerC0803Pm;
                    viewOnTouchListenerC0803Pm.A1v(viewOnTouchListenerC0803Pm.A01(rawX), true);
                    c = 7;
                    break;
                case 7:
                    viewOnTouchListenerC0803Pm = viewOnTouchListenerC0803Pm;
                    viewOnTouchListenerC0803Pm.A03 = true;
                    viewOnTouchListenerC0803Pm.A04 = false;
                    z = true;
                    c = '\b';
                    break;
                case '\b':
                    return z;
                case '\t':
                    if (actionMasked == 0) {
                        c = '\r';
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    if (actionMasked == 5) {
                        c = '\r';
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    viewOnTouchListenerC0803Pm = viewOnTouchListenerC0803Pm;
                    if (!viewOnTouchListenerC0803Pm.A03) {
                        c = '\b';
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    if (actionMasked != 2) {
                        c = '\b';
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\r':
                    viewOnTouchListenerC0803Pm = viewOnTouchListenerC0803Pm;
                    viewOnTouchListenerC0803Pm.A00 = rawX;
                    if (!viewOnTouchListenerC0803Pm.A03) {
                        c = 15;
                        break;
                    } else {
                        c = 14;
                        break;
                    }
                case 14:
                    viewOnTouchListenerC0803Pm = viewOnTouchListenerC0803Pm;
                    z = false;
                    viewOnTouchListenerC0803Pm.A03 = false;
                    c = 15;
                    break;
                case 15:
                    viewOnTouchListenerC0803Pm = viewOnTouchListenerC0803Pm;
                    viewOnTouchListenerC0803Pm.A04 = true;
                    c = '\b';
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.C8H
    public void setLayoutManager(C7N c7n) {
        if (!(c7n instanceof C7P)) {
            throw new IllegalArgumentException(A04(0, 50, 28));
        }
        super.setLayoutManager(c7n);
        this.A01 = (C7P) c7n;
    }

    public void setSnapDelegate(InterfaceC0804Pn interfaceC0804Pn) {
        this.A02 = interfaceC0804Pn;
    }
}
