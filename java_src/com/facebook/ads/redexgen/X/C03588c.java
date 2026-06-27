package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.Paint;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.ads.AdChoicesView;
import com.facebook.ads.NativeAdBase;
import com.facebook.ads.NativeAdLayout;
import com.facebook.ads.internal.api.AdChoicesViewApi;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.8c, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C03588c implements AdChoicesViewApi {
    private static byte[] A06;
    private TextView A00;
    private String A01;
    private boolean A02 = false;
    private final float A03 = OY.A01;
    private final AdChoicesView A04;
    private final NativeAdBase A05;

    static {
        A07();
    }

    private static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A06, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 10);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A07() {
        A06 = new byte[]{70, 99, 68, 111, 104, 110, 100, 98, 116};
    }

    public C03588c(AdChoicesView adChoicesView, Context context, NativeAdBase nativeAdBase) {
        this.A04 = adChoicesView;
        this.A05 = nativeAdBase;
    }

    private ImageView A00(L9 l9) {
        ImageView imageView = new ImageView(this.A04.getContext());
        this.A04.addView(imageView);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(Math.round(l9.getWidth() * this.A03), Math.round(l9.getHeight() * this.A03));
        layoutParams.addRule(9);
        layoutParams.addRule(15, -1);
        layoutParams.setMargins(Math.round(4.0f * this.A03), Math.round(this.A03 * 2.0f), Math.round(this.A03 * 2.0f), Math.round(this.A03 * 2.0f));
        imageView.setLayoutParams(layoutParams);
        L8.A0Z(l9, imageView);
        return imageView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A05() {
        Paint p = new Paint();
        p.setTextSize(this.A00.getTextSize());
        int iRound = Math.round(p.measureText(this.A01) + (4.0f * this.A03));
        final int width = this.A04.getWidth();
        final int targetWidth = width - iRound;
        Animation animation = new Animation() { // from class: com.facebook.ads.redexgen.X.8a
            @Override // android.view.animation.Animation
            public final void applyTransformation(float f, Transformation transformation) {
                int i = (int) (width + ((targetWidth - width) * f));
                this.A02.A04.getLayoutParams().width = i;
                this.A02.A04.requestLayout();
                this.A02.A00.getLayoutParams().width = i - targetWidth;
                this.A02.A00.requestLayout();
            }

            @Override // android.view.animation.Animation
            public final boolean willChangeBounds() {
                return true;
            }
        };
        animation.setAnimationListener(new Animation.AnimationListener() { // from class: com.facebook.ads.redexgen.X.8b
            @Override // android.view.animation.Animation.AnimationListener
            public final void onAnimationEnd(Animation animation2) {
                this.A00.A02 = false;
            }

            @Override // android.view.animation.Animation.AnimationListener
            public final void onAnimationRepeat(Animation animation2) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public final void onAnimationStart(Animation animation2) {
            }
        });
        animation.setDuration(300L);
        animation.setFillAfter(true);
        this.A04.startAnimation(animation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A06() {
        Paint paint = new Paint();
        paint.setTextSize(this.A00.getTextSize());
        int iRound = Math.round(paint.measureText(this.A01) + (4.0f * this.A03));
        final int startWidth = this.A04.getWidth();
        final int textWidth = startWidth + iRound;
        this.A02 = true;
        Animation animation = new Animation() { // from class: com.facebook.ads.redexgen.X.8X
            @Override // android.view.animation.Animation
            public final void applyTransformation(float f, Transformation transformation) {
                int i = (int) (startWidth + ((textWidth - startWidth) * f));
                this.A02.A04.getLayoutParams().width = i;
                this.A02.A04.requestLayout();
                this.A02.A00.getLayoutParams().width = i - startWidth;
                this.A02.A00.requestLayout();
            }

            @Override // android.view.animation.Animation
            public final boolean willChangeBounds() {
                return true;
            }
        };
        animation.setAnimationListener(new C8Z(this));
        animation.setDuration(300L);
        animation.setFillAfter(true);
        this.A04.startAnimation(animation);
    }

    public final void initialize(boolean z, @Nullable NativeAdLayout nativeAdLayout) {
        final C03588c c03588c = this;
        L9 adChoicesIcon = null;
        RelativeLayout.LayoutParams layoutParams = null;
        RelativeLayout.LayoutParams layoutParams2 = null;
        L8.A0H(c03588c.A05.getInternalNativeAd()).A1C(nativeAdLayout);
        AnonymousClass29 anonymousClass29A0p = L8.A0H(c03588c.A05.getInternalNativeAd()).A0p();
        char c = anonymousClass29A0p != null ? (char) 2 : (char) 6;
        while (true) {
            switch (c) {
                case 2:
                    anonymousClass29A0p = anonymousClass29A0p;
                    if (!anonymousClass29A0p.A0g()) {
                        c = 6;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    anonymousClass29A0p = anonymousClass29A0p;
                    if (!anonymousClass29A0p.A0e()) {
                        c = 4;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 4:
                    c03588c = c03588c;
                    c03588c.A04.setVisibility(8);
                    c = 5;
                    break;
                case 5:
                    return;
                case 6:
                    c03588c = c03588c;
                    c03588c.A01 = c03588c.A05.getAdChoicesText();
                    if (!TextUtils.isEmpty(c03588c.A01)) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c03588c = c03588c;
                    c03588c.A01 = A04(0, 9, 13);
                    c = '\b';
                    break;
                case '\b':
                    c03588c = c03588c;
                    adChoicesIcon = L8.A0H(c03588c.A05.getInternalNativeAd()).getAdChoicesIcon();
                    layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
                    c03588c.A04.setOnTouchListener(new View.OnTouchListener() { // from class: com.facebook.ads.redexgen.X.8W
                        @Override // android.view.View.OnTouchListener
                        public final boolean onTouch(View view, MotionEvent motionEvent) {
                            C8W c8w = this;
                            boolean z2 = false;
                            char c2 = motionEvent.getAction() == 0 ? (char) 2 : (char) 7;
                            while (true) {
                                switch (c2) {
                                    case 2:
                                        c8w = c8w;
                                        if (!c8w.A00.A02) {
                                            c2 = 6;
                                            break;
                                        } else {
                                            c2 = 3;
                                            break;
                                        }
                                    case 3:
                                        c8w = c8w;
                                        L8.A0H(c8w.A00.A05.getInternalNativeAd()).A14();
                                        c2 = 4;
                                        break;
                                    case 4:
                                        z2 = true;
                                        c2 = 5;
                                        break;
                                    case 5:
                                        return z2;
                                    case 6:
                                        c8w = c8w;
                                        c8w.A00.A06();
                                        c2 = 4;
                                        break;
                                    case 7:
                                        z2 = false;
                                        c2 = 5;
                                        break;
                                }
                            }
                        }
                    });
                    c03588c.A00 = new TextView(c03588c.A04.getContext());
                    c03588c.A04.addView(c03588c.A00);
                    layoutParams = new RelativeLayout.LayoutParams(-2, -2);
                    if (!z) {
                        c = '\f';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    adChoicesIcon = adChoicesIcon;
                    if (adChoicesIcon == null) {
                        c = '\f';
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    c03588c = c03588c;
                    adChoicesIcon = adChoicesIcon;
                    layoutParams2 = layoutParams2;
                    layoutParams = layoutParams;
                    layoutParams.addRule(11, c03588c.A00(adChoicesIcon).getId());
                    layoutParams.width = 0;
                    layoutParams2.width = Math.round((adChoicesIcon.getWidth() + 4) * c03588c.A03);
                    layoutParams2.height = Math.round((adChoicesIcon.getHeight() + 2) * c03588c.A03);
                    c03588c.A02 = false;
                    c = 11;
                    break;
                case 11:
                    c03588c = c03588c;
                    layoutParams2 = layoutParams2;
                    layoutParams = layoutParams;
                    c03588c.A04.setLayoutParams(layoutParams2);
                    layoutParams.addRule(15, -1);
                    c03588c.A00.setLayoutParams(layoutParams);
                    c03588c.A00.setSingleLine();
                    c03588c.A00.setText(c03588c.A01);
                    c03588c.A00.setTextSize(10.0f);
                    c03588c.A00.setTextColor(-4341303);
                    EnumC0759Nu.A04(c03588c.A04, EnumC0759Nu.A07);
                    EnumC0759Nu.A04(c03588c.A00, EnumC0759Nu.A07);
                    c = 5;
                    break;
                case '\f':
                    c03588c = c03588c;
                    c03588c.A02 = true;
                    c = 11;
                    break;
            }
        }
    }
}
