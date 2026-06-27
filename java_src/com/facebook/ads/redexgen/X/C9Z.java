package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.support.annotation.FloatRange;
import android.support.annotation.IntRange;
import android.support.annotation.Nullable;
import android.support.v4.media.MediaDescriptionCompat;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import com.facebook.ads.MediaViewVideoRenderer;
import com.facebook.ads.NativeAd;
import com.facebook.ads.VideoAutoplayBehavior;
import com.facebook.ads.VideoStartReason;
import com.facebook.ads.internal.api.AdComponentViewApi;
import com.facebook.ads.internal.api.AdViewConstructorParams;
import com.facebook.ads.internal.api.MediaViewVideoRendererApi;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.9Z, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class C9Z implements MediaViewVideoRendererApi {
    private static byte[] A0F;
    private static final String A0G;
    private MediaViewVideoRenderer A00;
    private VideoAutoplayBehavior A01;

    @Nullable
    private InterfaceC0676Kl A03;
    private QM A04;
    private boolean A05;
    private boolean A06;

    @Nullable
    public NativeAd A07;
    private final C9L A0C = new C9L() { // from class: com.facebook.ads.redexgen.X.9M
        /* JADX INFO: Access modifiers changed from: private */
        @Override // com.facebook.ads.redexgen.X.AbstractC01971t
        /* renamed from: A00, reason: merged with bridge method [inline-methods] */
        public final void A03(K2 k2) {
            this.A00.A00.onPrepared();
        }
    };
    private final C9N A0B = new C9N() { // from class: com.facebook.ads.redexgen.X.9O
        /* JADX INFO: Access modifiers changed from: private */
        @Override // com.facebook.ads.redexgen.X.AbstractC01971t
        /* renamed from: A00, reason: merged with bridge method [inline-methods] */
        public final void A03(K4 k4) {
            if (this.A00.A07 != null) {
                L8.A0H(this.A00.A07.getInternalNativeAd()).A1L(true, true);
            }
            this.A00.A00.onPlayed();
        }
    };
    private final C9P A0A = new C9P() { // from class: com.facebook.ads.redexgen.X.9Q
        /* JADX INFO: Access modifiers changed from: private */
        @Override // com.facebook.ads.redexgen.X.AbstractC01971t
        /* renamed from: A00, reason: merged with bridge method [inline-methods] */
        public final void A03(KF kf) {
            this.A00.A00.onPaused();
        }
    };
    private final C9R A0D = new C9R() { // from class: com.facebook.ads.redexgen.X.9S
        /* JADX INFO: Access modifiers changed from: private */
        @Override // com.facebook.ads.redexgen.X.AbstractC01971t
        /* renamed from: A00, reason: merged with bridge method [inline-methods] */
        public final void A03(C0662Jx c0662Jx) {
            this.A00.A00.onSeek();
        }
    };
    private final C9T A08 = new C9T() { // from class: com.facebook.ads.redexgen.X.9U
        /* JADX INFO: Access modifiers changed from: private */
        @Override // com.facebook.ads.redexgen.X.AbstractC01971t
        /* renamed from: A00, reason: merged with bridge method [inline-methods] */
        public final void A03(LN ln) {
            this.A00.A00.onCompleted();
        }
    };
    private final C9V A0E = new C9V() { // from class: com.facebook.ads.redexgen.X.9W
        /* JADX INFO: Access modifiers changed from: private */
        @Override // com.facebook.ads.redexgen.X.AbstractC01971t
        /* renamed from: A00, reason: merged with bridge method [inline-methods] */
        public final void A03(JG jg) {
            this.A00.A00.onVolumeChanged();
        }
    };
    private final C9X A09 = new C9X() { // from class: com.facebook.ads.redexgen.X.9Y
        /* JADX INFO: Access modifiers changed from: private */
        @Override // com.facebook.ads.redexgen.X.AbstractC01971t
        /* renamed from: A00, reason: merged with bridge method [inline-methods] */
        public final void A03(C0667Kc c0667Kc) {
            if (this.A00.A07 != null) {
                L8.A0H(this.A00.A07.getInternalNativeAd()).A1L(false, true);
            }
            this.A00.A00.onError();
        }
    };
    private C03608e A02 = new C03608e();

    private static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0F, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 75);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A0F = new byte[]{28, 42, 42, 36, 38, 33, 40, 111, 34, 58, 60, 59, 111, 45, 42, 111, 63, 61, 42, 44, 42, 43, 42, 43, 111, 45, 54, 111, 46, 111, 44, 46, 35, 35, 111, 59, 32, 111, 42, 33, 40, 46, 40, 42, 28, 42, 42, 36, 99, 111, 46, 33, 43, 111, 41, 32, 35, 35, 32, 56, 42, 43, 111, 45, 54, 111, 46, 111, 44, 46, 35, 35, 111, 59, 32, 111, 43, 38, 60, 42, 33, 40, 46, 40, 42, 28, 42, 42, 36, 97, 125, 112, 106, 124, 119, 126, 120, 126, 124, 74, 124, 124, 114, 57, 122, 120, 117, 117, 124, 125, 57, 110, 112, 109, 113, 118, 108, 109, 57, 124, 119, 126, 120, 126, 124, 74, 124, 124, 114, 55, 34, 41, 32, 38, 32, 34, 20, 34, 34, 44, 103, 36, 38, 43, 43, 34, 35, 103, 48, 46, 51, 47, 40, 50, 51, 103, 35, 46, 52, 34, 41, 32, 38, 32, 34, 20, 34, 34, 44, 105, 48, 23, 15, 24, 21, 16, 29, 89, 47, 16, 28, 14, 89, 26, 22, 23, 10, 13, 11, 12, 26, 13, 22, 11, 89, 9, 24, 11, 24, 20, 10, 89, 13, 0, 9, 28, 87};
    }

    static {
        A02();
        A0G = MediaViewVideoRenderer.class.getSimpleName();
    }

    public final void A03() {
        C9Z c9z = this;
        c9z.A00.pause(false);
        c9z.A04.setClientToken(null);
        c9z.A04.setVideoMPD(null);
        c9z.A04.setVideoURI((Uri) null);
        c9z.A04.setVideoCTA(null);
        c9z.A04.setNativeAd(null);
        c9z.A01 = VideoAutoplayBehavior.DEFAULT;
        char c = c9z.A07 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c9z = c9z;
                    L8.A0H(c9z.A07.getInternalNativeAd()).A1L(false, false);
                    c = 3;
                    break;
                case 3:
                    c9z = c9z;
                    c9z.A07 = null;
                    if (c9z.A03 == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c9z = c9z;
                    c9z.A03.A7E();
                    c = 5;
                    break;
                case 5:
                    return;
            }
        }
    }

    public final void A04(NativeAd nativeAd) {
        C9Z c9z = this;
        c9z.A07 = nativeAd;
        C03829b c03829b = (C03829b) nativeAd.getNativeAdApi();
        c9z.A04.setClientToken(L8.A0H(nativeAd.getInternalNativeAd()).A0y());
        c9z.A04.setVideoMPD(c03829b.A01());
        c9z.A04.setVideoURI(c03829b.A02());
        AnonymousClass29 anonymousClass29A0p = L8.A0H(nativeAd.getInternalNativeAd()).A0p();
        char c = anonymousClass29A0p != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c9z = c9z;
                    anonymousClass29A0p = anonymousClass29A0p;
                    c9z.A04.setVideoProgressReportIntervalMs(anonymousClass29A0p.A0E());
                    c = 3;
                    break;
                case 3:
                    c9z = c9z;
                    nativeAd = nativeAd;
                    c03829b = c03829b;
                    c9z.A04.setVideoCTA(nativeAd.getAdCallToAction());
                    c9z.A04.setNativeAd(nativeAd);
                    c9z.A01 = c03829b.getVideoAutoplayBehavior();
                    if (c9z.A03 == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c9z = c9z;
                    nativeAd = nativeAd;
                    c9z.A03.A72(nativeAd);
                    c = 5;
                    break;
                case 5:
                    return;
            }
        }
    }

    public final void A05(KM km) {
        this.A04.setAdEventManager(km);
    }

    public final void A06(@Nullable InterfaceC0676Kl interfaceC0676Kl) {
        this.A03 = interfaceC0676Kl;
    }

    public final void A07(@Nullable C9I c9i) {
        this.A04.setListener(c9i);
    }

    public final void destroy() {
        this.A04.A0J();
    }

    public final void disengageSeek(VideoStartReason videoStartReason) {
        C9Z c9z = this;
        char c = !c9z.A05 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    Log.w(A0G, A01(90, 40, 82));
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c9z = c9z;
                    c9z.A05 = false;
                    if (!c9z.A06) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c9z = c9z;
                    videoStartReason = videoStartReason;
                    c9z.A04.A0P(EnumC0697Lh.A00(videoStartReason));
                    c = 6;
                    break;
                case 6:
                    c9z = c9z;
                    c9z.A00.onSeekDisengaged();
                    c = 3;
                    break;
            }
        }
    }

    public final void engageSeek() {
        C9Z c9z = this;
        char c = c9z.A05 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    Log.w(A0G, A01(130, 40, 12));
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c9z = c9z;
                    c9z.A05 = true;
                    c9z.A06 = EnumC03216q.A0A.equals(c9z.A04.getState());
                    c9z.A04.A0S(false);
                    c9z.A00.onSeekEngaged();
                    c = 3;
                    break;
            }
        }
    }

    public final AdComponentViewApi getAdComponentViewApi() {
        return this.A02;
    }

    @IntRange(from = MediaDescriptionCompat.BT_FOLDER_TYPE_MIXED)
    public final int getCurrentTimeMs() {
        return this.A04.getCurrentPositionInMillis();
    }

    @IntRange(from = MediaDescriptionCompat.BT_FOLDER_TYPE_MIXED)
    public final int getDuration() {
        return this.A04.getDuration();
    }

    public final View getVideoView() {
        return this.A04.getVideoView();
    }

    @FloatRange(from = 0.0d, to = 1.0d)
    public final float getVolume() {
        return this.A04.getVolume();
    }

    public final void initialize(AdViewConstructorParams adViewConstructorParams, MediaViewVideoRenderer mediaViewVideoRenderer) {
        char c;
        C9Z c9z = this;
        c9z.A00 = mediaViewVideoRenderer;
        switch (adViewConstructorParams.getInitializationType()) {
            case 0:
                c = 6;
                break;
            case 1:
                c = 5;
                break;
            case 2:
                c = 4;
                break;
            case 3:
                c = 3;
                break;
            default:
                c = 2;
                break;
        }
        while (true) {
            switch (c) {
                case 2:
                    throw new IllegalArgumentException(A01(170, 37, 50));
                case 3:
                    c9z = c9z;
                    adViewConstructorParams = adViewConstructorParams;
                    c9z.A04 = new QM(adViewConstructorParams.getContext(), adViewConstructorParams.getAttributeSet(), adViewConstructorParams.getDefStyleRes());
                    c = 7;
                    break;
                case 4:
                    c9z = c9z;
                    adViewConstructorParams = adViewConstructorParams;
                    c9z.A04 = new QM(adViewConstructorParams.getContext(), adViewConstructorParams.getAttributeSet(), adViewConstructorParams.getDefStyleAttr());
                    c = 7;
                    break;
                case 5:
                    c9z = c9z;
                    adViewConstructorParams = adViewConstructorParams;
                    c9z.A04 = new QM(adViewConstructorParams.getContext(), adViewConstructorParams.getAttributeSet());
                    c = 7;
                    break;
                case 6:
                    c9z = c9z;
                    adViewConstructorParams = adViewConstructorParams;
                    c9z.A04 = new QM(adViewConstructorParams.getContext());
                    c = 7;
                    break;
                case 7:
                    C9Z c9z2 = c9z;
                    c9z2.A04.setEnableBackgroundVideo(mediaViewVideoRenderer.shouldAllowBackgroundPlayback());
                    ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
                    c9z2.A04.setLayoutParams(layoutParams);
                    c9z2.A02.addView(c9z2.A04, -1, layoutParams);
                    EnumC0759Nu.A04(c9z2.A04, EnumC0759Nu.A0A);
                    c9z2.A04.getEventBus().A03(c9z2.A0C, c9z2.A0B, c9z2.A0A, c9z2.A0D, c9z2.A08, c9z2.A0E, c9z2.A09);
                    return;
            }
        }
    }

    public final void pause(boolean z) {
        this.A04.A0S(z);
    }

    public final void play(VideoStartReason videoStartReason) {
        this.A04.A0P(EnumC0697Lh.A00(videoStartReason));
    }

    public final void seekTo(@IntRange(from = MediaDescriptionCompat.BT_FOLDER_TYPE_MIXED) int i) {
        C9Z c9z = this;
        char c = !c9z.A05 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    Log.w(A0G, A01(0, 90, 4));
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c9z = c9z;
                    c9z.A04.A0O(i);
                    c = 3;
                    break;
            }
        }
    }

    public final void setVolume(@FloatRange(from = 0.0d, to = 1.0d) float f) {
        this.A04.setVolume(f);
    }

    public final boolean shouldAutoplay() {
        C9Z c9z = this;
        boolean z = false;
        char c = c9z.A04 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c9z = c9z;
                    if (c9z.A04.getState() != EnumC03216q.A06) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    return z;
                case 4:
                    c9z = c9z;
                    if (c9z.A01 != VideoAutoplayBehavior.ON) {
                        c = 3;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    z = true;
                    c = 3;
                    break;
            }
        }
    }
}
