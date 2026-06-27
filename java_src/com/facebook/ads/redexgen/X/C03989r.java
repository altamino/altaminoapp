package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.support.annotation.Nullable;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import com.facebook.ads.MediaView;
import com.facebook.ads.internal.api.NativeAdBaseApi;
import com.facebook.ads.internal.api.NativeBannerAdApi;
import com.facebook.ads.internal.protocol.AdErrorType;
import java.util.Arrays;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.9r, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C03989r implements NativeBannerAdApi {
    private static byte[] A01;
    private final L8 A00;

    static {
        A03();
    }

    private static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 36);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A03() {
        A01 = new byte[]{-47, -51, -52, 0, -17, -12, -16, -7, -18, -16, -39, -16, -1, 2, -6, -3, -10};
    }

    public C03989r(NativeAdBaseApi nativeAdBaseApi) {
        this.A00 = L8.A0H(nativeAdBaseApi);
        this.A00.A1H(LW.A05);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Drawable A00(Context context, Bitmap bitmap, boolean z, @Nullable String str) {
        BitmapDrawable bitmapDrawableA00 = null;
        Object bitmapDrawable = new BitmapDrawable(context.getResources(), bitmap);
        char c = z ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    context = context;
                    str = str;
                    bitmapDrawableA00 = SA.A00(context, str);
                    if (bitmapDrawableA00 == null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    bitmapDrawableA00 = bitmapDrawableA00;
                    bitmapDrawable = new LayerDrawable(new Drawable[]{(BitmapDrawable) bitmapDrawable, bitmapDrawableA00});
                    c = 4;
                    break;
                case 4:
                    return (Drawable) bitmapDrawable;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void A04(@Nullable Drawable drawable, ImageView imageView) {
        char c = drawable != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    if (Build.VERSION.SDK_INT < 16) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    drawable = drawable;
                    imageView = imageView;
                    imageView.setBackground(drawable);
                    c = 4;
                    break;
                case 4:
                    return;
                case 5:
                    drawable = drawable;
                    imageView = imageView;
                    imageView.setBackgroundDrawable(drawable);
                    c = 4;
                    break;
            }
        }
    }

    private void A06(final ImageView imageView, NativeAdBaseApi nativeAdBaseApi) {
        final C03989r c03989r = this;
        Bitmap bitmapA0M = null;
        Context contextA00 = null;
        LA laA0u = null;
        final L8 l8A0H = L8.A0H(nativeAdBaseApi);
        InterfaceC03939m interfaceC03939m = new InterfaceC03939m() { // from class: com.facebook.ads.redexgen.X.9n
            @Override // com.facebook.ads.redexgen.X.InterfaceC03939m
            public final void A5Q(@Nullable Drawable drawable) {
                C03989r.A04(drawable, imageView);
                l8A0H.A15(drawable);
            }
        };
        L9 adIcon = l8A0H.getAdIcon();
        char c = adIcon != null ? (char) 2 : (char) 7;
        while (true) {
            switch (c) {
                case 2:
                    l8A0H = l8A0H;
                    adIcon = adIcon;
                    bitmapA0M = l8A0H.A0q().A0M(adIcon.getUrl());
                    if (bitmapA0M == null) {
                        c = 6;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    contextA00 = IF.A00();
                    if (contextA00 != null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    return;
                case 5:
                    c03989r = c03989r;
                    imageView = imageView;
                    l8A0H = l8A0H;
                    bitmapA0M = bitmapA0M;
                    contextA00 = contextA00;
                    final Drawable drawableA00 = A00(contextA00, bitmapA0M, l8A0H.A1M(), l8A0H.A0z());
                    A04(drawableA00, imageView);
                    imageView.post(new AnonymousClass27() { // from class: com.facebook.ads.redexgen.X.9o
                        @Override // com.facebook.ads.redexgen.X.AnonymousClass27
                        public final void A03() {
                            l8A0H.A15(drawableA00);
                        }
                    });
                    c = 4;
                    break;
                case 6:
                    l8A0H = l8A0H;
                    interfaceC03939m = (C03949n) interfaceC03939m;
                    adIcon = adIcon;
                    new AsyncTaskC03969p(interfaceC03939m, l8A0H.A1M()).execute(new C03979q(adIcon.getUrl(), l8A0H.A0z()));
                    c = 4;
                    break;
                case 7:
                    l8A0H = l8A0H;
                    laA0u = l8A0H.A0u();
                    if (laA0u == null) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    laA0u = laA0u;
                    laA0u.A5G(LQ.A01(AdErrorType.NATIVE_AD_IS_NOT_LOADED));
                    c = '\t';
                    break;
                case '\t':
                    Log.e(A02(0, 17, 103), AdErrorType.NATIVE_AD_IS_NOT_LOADED.getDefaultErrorMessage());
                    c = 4;
                    break;
            }
        }
    }

    public final void registerViewForInteraction(View view, ImageView imageView) {
        registerViewForInteraction(view, imageView, (List<View>) null);
    }

    public final void registerViewForInteraction(View view, ImageView imageView, @Nullable List<View> list) {
        C03989r c03989r = this;
        char c = imageView != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c03989r = c03989r;
                    imageView = imageView;
                    c03989r.A06(imageView, c03989r.A00);
                    c = 3;
                    break;
                case 3:
                    list = list;
                    if (list == null) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c03989r = c03989r;
                    view = view;
                    imageView = imageView;
                    list = list;
                    c03989r.A00.A17(view, imageView, list);
                    c = 5;
                    break;
                case 5:
                    return;
                case 6:
                    c03989r = c03989r;
                    view = view;
                    imageView = imageView;
                    c03989r.A00.A16(view, imageView);
                    c = 5;
                    break;
            }
        }
    }

    public final void registerViewForInteraction(View view, MediaView mediaView) {
        registerViewForInteraction(view, mediaView, (List<View>) null);
    }

    public final void registerViewForInteraction(View view, MediaView mediaView, @Nullable List<View> list) {
        C03989r c03989r = this;
        char c = mediaView != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c03989r = c03989r;
                    mediaView = mediaView;
                    ((C9K) mediaView.getMediaViewApi()).A0I(c03989r.A00, true);
                    c = 3;
                    break;
                case 3:
                    list = list;
                    if (list == null) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c03989r = c03989r;
                    view = view;
                    mediaView = mediaView;
                    list = list;
                    c03989r.A00.A19(view, mediaView, list);
                    c = 5;
                    break;
                case 5:
                    return;
                case 6:
                    c03989r = c03989r;
                    view = view;
                    mediaView = mediaView;
                    c03989r.A00.A18(view, mediaView);
                    c = 5;
                    break;
            }
        }
    }
}
