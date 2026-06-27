package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.support.annotation.Nullable;
import android.view.View;
import android.widget.RelativeLayout;
import java.lang.ref.WeakReference;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class M4 extends RelativeLayout {

    @Nullable
    private HW A00;
    private WeakReference<InterfaceC0674Kj> A01;
    private final InterfaceC03236s A02;

    public M4(Context context, InterfaceC03236s interfaceC03236s) {
        super(context);
        this.A02 = interfaceC03236s;
        OY.A0L((View) this.A02);
        addView(this.A02.getView(), new RelativeLayout.LayoutParams(-1, -1));
    }

    public final void A00(AbstractC0692Lc abstractC0692Lc) {
        addView(abstractC0692Lc, new RelativeLayout.LayoutParams(-1, -1));
        this.A00 = (HW) abstractC0692Lc;
    }

    public final void A01(AbstractC0692Lc abstractC0692Lc) {
        OY.A0L(abstractC0692Lc);
        this.A00 = null;
    }

    public final boolean A02(int i) {
        boolean z = false;
        char c = this.A02.getCurrentPosition() > i ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    z = true;
                    c = 3;
                    break;
                case 3:
                    return z;
                case 4:
                    z = false;
                    c = 3;
                    break;
            }
        }
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        ((View) this.A02).layout(0, 0, getWidth(), getHeight());
        if (this.A00 != null) {
            this.A00.layout(0, 0, getWidth(), getHeight());
        }
    }

    @Override // android.widget.RelativeLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        M4 m4 = this;
        int mVideoHeight = 0;
        int width = 0;
        int widthSpecSize = 0;
        int mode = 0;
        boolean z = false;
        int videoWidth = m4.A02.getVideoWidth();
        int videoHeight = m4.A02.getVideoHeight();
        int mVideoWidth = getDefaultSize(videoWidth, i);
        int defaultSize = getDefaultSize(videoHeight, i2);
        char c = videoWidth > 0 ? (char) 2 : (char) 7;
        while (true) {
            switch (c) {
                case 2:
                    if (videoHeight <= 0) {
                        c = 7;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    z = true;
                    mode = View.MeasureSpec.getMode(i);
                    mVideoHeight = View.MeasureSpec.getSize(i);
                    width = View.MeasureSpec.getMode(i2);
                    widthSpecSize = View.MeasureSpec.getSize(i2);
                    if (mode != 1073741824) {
                        c = 14;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    if (width != 1073741824) {
                        c = 14;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    mVideoWidth = mVideoHeight;
                    defaultSize = widthSpecSize;
                    if (videoWidth * defaultSize >= mVideoWidth * videoHeight) {
                        c = '\f';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    mVideoWidth = (defaultSize * videoWidth) / videoHeight;
                    c = 7;
                    break;
                case 7:
                    m4 = m4;
                    m4.setMeasuredDimension(mVideoWidth, defaultSize);
                    if (!z) {
                        c = 11;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    m4 = m4;
                    if (m4.A01 == null) {
                        c = 11;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    m4 = m4;
                    if (m4.A01.get() == null) {
                        c = 11;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    m4 = m4;
                    m4.A01.get().A6J();
                    c = 11;
                    break;
                case 11:
                    return;
                case '\f':
                    if (videoWidth * defaultSize <= mVideoWidth * videoHeight) {
                        c = 7;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\r':
                    defaultSize = (mVideoWidth * videoHeight) / videoWidth;
                    c = 7;
                    break;
                case 14:
                    if (mode != 1073741824) {
                        c = 18;
                        break;
                    } else {
                        c = 15;
                        break;
                    }
                case 15:
                    mVideoWidth = mVideoHeight;
                    defaultSize = (mVideoWidth * videoHeight) / videoWidth;
                    if (width != Integer.MIN_VALUE) {
                        c = 7;
                        break;
                    } else {
                        c = 16;
                        break;
                    }
                case 16:
                    if (defaultSize <= widthSpecSize) {
                        c = 7;
                        break;
                    } else {
                        c = 17;
                        break;
                    }
                case 17:
                    defaultSize = widthSpecSize;
                    c = 7;
                    break;
                case 18:
                    if (width != 1073741824) {
                        c = 22;
                        break;
                    } else {
                        c = 19;
                        break;
                    }
                case 19:
                    defaultSize = widthSpecSize;
                    mVideoWidth = (defaultSize * videoWidth) / videoHeight;
                    if (mode != Integer.MIN_VALUE) {
                        c = 7;
                        break;
                    } else {
                        c = 20;
                        break;
                    }
                case 20:
                    if (mVideoWidth <= mVideoHeight) {
                        c = 7;
                        break;
                    } else {
                        c = 21;
                        break;
                    }
                case 21:
                    mVideoWidth = mVideoHeight;
                    c = 7;
                    break;
                case 22:
                    mVideoWidth = videoWidth;
                    defaultSize = videoHeight;
                    if (width != Integer.MIN_VALUE) {
                        c = 25;
                        break;
                    } else {
                        c = 23;
                        break;
                    }
                case 23:
                    if (defaultSize <= widthSpecSize) {
                        c = 25;
                        break;
                    } else {
                        c = 24;
                        break;
                    }
                case 24:
                    defaultSize = widthSpecSize;
                    int mVideoWidth2 = defaultSize * videoWidth;
                    mVideoWidth = mVideoWidth2 / videoHeight;
                    c = 25;
                    break;
                case 25:
                    if (mode != Integer.MIN_VALUE) {
                        c = 7;
                        break;
                    } else {
                        c = 26;
                        break;
                    }
                case 26:
                    if (mVideoWidth <= mVideoHeight) {
                        c = 7;
                        break;
                    } else {
                        c = 27;
                        break;
                    }
                case 27:
                    mVideoWidth = mVideoHeight;
                    defaultSize = (mVideoWidth * videoHeight) / videoWidth;
                    c = 7;
                    break;
            }
        }
    }

    public void setViewImplInflationListener(InterfaceC0674Kj interfaceC0674Kj) {
        this.A01 = new WeakReference<>(interfaceC0674Kj);
    }
}
