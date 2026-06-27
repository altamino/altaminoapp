package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.support.annotation.Nullable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.facebook.ads.AdOptionsView;
import com.facebook.ads.NativeAdBase;
import com.facebook.ads.NativeAdLayout;
import com.facebook.ads.internal.api.AdComponentViewApi;
import com.facebook.ads.internal.api.AdOptionsViewApi;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.8f, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C03618f extends C03608e implements AdOptionsViewApi {
    private static final int A03 = (int) (OY.A01 * 23.0f);
    private static final int A04 = (int) (OY.A01 * 4.0f);
    private final ImageView A00;
    private final ImageView A01;
    private final AdOptionsView A02;

    public C03618f(Context context, NativeAdBase nativeAdBase, @Nullable NativeAdLayout nativeAdLayout, AdOptionsView.Orientation orientation, int i, AdOptionsView adOptionsView) {
        this.A02 = adOptionsView;
        LinearLayout linearLayout = new LinearLayout(context);
        this.A02.addView(linearLayout);
        linearLayout.setOrientation(orientation == AdOptionsView.Orientation.HORIZONTAL ? 0 : 1);
        this.A01 = A00(EnumC0768Od.DEFAULT_INFO_ICON);
        this.A00 = A00(EnumC0768Od.AD_CHOICES_ICON);
        linearLayout.addView(this.A01);
        linearLayout.addView(this.A00);
        setIconSizeDp(i);
        setIconColor(-10459280);
        final L8 l8A0H = L8.A0H(nativeAdBase.getInternalNativeAd());
        l8A0H.A1C(nativeAdLayout);
        l8A0H.A1D(this);
        AnonymousClass29 anonymousClass29A0p = l8A0H.A0p();
        if (anonymousClass29A0p != null && anonymousClass29A0p.A0g() && !anonymousClass29A0p.A0e()) {
            linearLayout.setVisibility(8);
        } else {
            linearLayout.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.ads.redexgen.X.8d
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    l8A0H.A14();
                }
            });
            EnumC0759Nu.A04(this.A02, EnumC0759Nu.A0B);
        }
    }

    public C03618f(Context context, NativeAdBase nativeAdBase, @Nullable NativeAdLayout nativeAdLayout, AdOptionsView adOptionsView) {
        this(context, nativeAdBase, nativeAdLayout, AdOptionsView.Orientation.HORIZONTAL, 23, adOptionsView);
    }

    private ImageView A00(EnumC0768Od enumC0768Od) {
        ImageView imageView = new ImageView(this.A02.getContext());
        imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        imageView.setPadding(A04, A04, A04, A04);
        imageView.setImageBitmap(C0769Oe.A01(enumC0768Od));
        return imageView;
    }

    public final void A02(EnumC0768Od enumC0768Od) {
        this.A01.setImageBitmap(C0769Oe.A01(enumC0768Od));
    }

    public final AdComponentViewApi getAdComponentViewApi() {
        return this;
    }

    public final void setIconColor(int i) {
        this.A01.setColorFilter(i);
        this.A00.setColorFilter(i);
    }

    public final void setIconSizeDp(int i) {
        int iMax = Math.max(A03, (int) (OY.A01 * i));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(iMax, iMax);
        this.A01.setLayoutParams(layoutParams);
        this.A00.setLayoutParams(layoutParams);
    }

    @Override // com.facebook.ads.redexgen.X.C03608e
    public final void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
        layoutParams.width = -2;
        layoutParams.height = -2;
        super.setLayoutParams(layoutParams);
    }

    public final void setSingleIcon(boolean z) {
        int i = 0;
        ImageView imageView = this.A01;
        char c = z ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    i = 8;
                    c = 3;
                    break;
                case 3:
                    OY.A0Q(imageView, i);
                    return;
                case 4:
                    i = 0;
                    c = 3;
                    break;
            }
        }
    }
}
