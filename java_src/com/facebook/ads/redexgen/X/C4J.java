package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.util.Log;
import com.facebook.ads.AdError;
import com.facebook.ads.CacheFlag;
import com.facebook.ads.InterstitialAd;
import com.facebook.ads.InterstitialAdExtendedListener;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.facebook.ads.internal.settings.AdInternalSettings;
import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import com.narvii.util.Constants;
import com.narvii.util.http.ApiService;
import com.tonyodev.fetch.FetchService;
import java.util.Arrays;
import java.util.EnumSet;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.4J, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class C4J extends AnonymousClass43 {

    @VisibleForTesting
    public static C4H A02 = new C4H() { // from class: com.facebook.ads.redexgen.X.4I
        @Override // com.facebook.ads.redexgen.X.C4H
        public final C4F A2u(final C4K c4k) {
            return new C4F() { // from class: com.facebook.ads.redexgen.X.4G
                @Override // com.facebook.ads.redexgen.X.C4F
                public final C4L A2t(final InterfaceC02533x interfaceC02533x, final C4O c4o) {
                    final Context context = c4k.A0A;
                    final C4K c4k2 = c4k;
                    return new C4L(context, c4k2, interfaceC02533x, c4o) { // from class: com.facebook.ads.redexgen.X.4M
                        private static byte[] A04;
                        private final Context A00;
                        private final InterfaceC02533x A01;
                        private final C4K A02;
                        private final C4O A03;

                        static {
                            A01();
                        }

                        private static String A00(int i, int i2, int i3) {
                            byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
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
                                        bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 96);
                                        i4++;
                                        c = 2;
                                        break;
                                    case 4:
                                        return new String(bArrCopyOfRange);
                                }
                            }
                        }

                        private static void A01() {
                            A04 = new byte[]{55, 48, 54, 59, 33, 54, 54, 43, 54, 59, 41, 33, 55, 55, 37, 35, 33, 59, 47, 33, 61, 42, 46, 45, 25, 8, 5, 9, 2, 15, 9, 34, 9, 24, 27, 3, 30, 7, 118, 113, 107, 96, 122, 109, 109, 112, 109, 96, 124, 112, 123, 122, 96, 116, 122, 102, 91, 90, 68, 87, 65, 70, 92, 87, 90, 77, 95, 73, 90, 76, 87, 76, 73, 92, 73, 87, 67, 77, 81, 112, 115, 114, 123, 99, 117, 114, 106, 125, 112, 117, 120, 125, 104, 117, 115, 114, 99, 104, 117, 113, 121, 99, 119, 121, 101, 61, 44, 53, 117, 114, 116, 121, 100, 111, 98, 121, 118, 103, 127, 106, 105, 103, 98, 121, 109, 99, 127, 64, 71, 65, 76, 94, 86, 87, 90, 82, 71, 90, 92, 93, 76, 87, 82, 71, 82, 76, 88, 86, 74, 68, 67, 69, 72, 86, 83, 72, 94, 83, 72, 92, 82, 78, 111, 104, 110, 99, 121, 100, 104, 110, 125, 99, 116, 117, 114, 104, 111, 99, 119, 121, 101, 49, 25, 15, 15, 29, 27, 25, 70, 92, 92, 121, 61, 114, 127, 119, 120, 126, 105, 61, 116, 110, 61, 115, 104, 113, 113, 125, 124, 98, 113, 103, 96, 122, 113, 109, 111, 109, 102, 107, 113, 104, 98, 111, 105, 125, 113, 101, 107, 119, 12, 27, 0, 10, 2, 11, 17, 11, 22, 26, 28, 15, 29, 17, 5, 11, 23, 124, 75, 77, 75, 71, 88, 75, 74, 14, 66, 65, 79, 74, 14, 77, 65, 64, 72, 71, 92, 67, 79, 90, 71, 65, 64, 0, 58, 45, 54, 60, 52, 61, 39, 43, 61, 44, 44, 49, 54, 63, 43, 39, 51, 61, 33, 80, 103, 97, 103, 107, 116, 103, 102, 34, 102, 103, 113, 118, 112, 109, 123, 34, 97, 109, 108, 100, 107, 112, 111, 99, 118, 107, 109, 108, 44, 109, 106, 108, 97, 110, 114, 127, 125, 123, 115, 123, 112, 106, 97, 117, 123, 103, 62, 9, 15, 9, 5, 26, 9, 8, 76, 31, 4, 3, 27, 76, 15, 3, 2, 10, 5, 30, 1, 13, 24, 5, 3, 2, 66, 39, 3, 25, 25, 3, 4, 13, 74, 8, 31, 4, 14, 6, 15, 74, 12, 5, 24, 74, 7, 15, 25, 25, 11, 13, 15, 68};
                        }

                        {
                            this.A00 = context;
                            this.A02 = c4k2;
                            this.A01 = interfaceC02533x;
                            this.A03 = c4o;
                        }

                        @Override // com.facebook.ads.redexgen.X.C4L
                        public final Message A2s(String str) {
                            Message messageObtain = Message.obtain((Handler) null, 1010);
                            messageObtain.getData().putString(A00(FetchService.ACTION_ON_UPDATE_INTERVAL, 17, 94), this.A02.A0B);
                            messageObtain.getData().putString(A00(149, 13, 119), str);
                            messageObtain.getData().putString(A00(108, 19, 70), this.A02.A04);
                            messageObtain.getData().putString(A00(162, 19, 92), this.A02.A05);
                            messageObtain.getData().putByteArray(A00(56, 23, 104), O1.A01(this.A02.A02));
                            messageObtain.getData().putString(A00(127, 22, 115), this.A02.A06);
                            messageObtain.getData().putByteArray(A00(Constants.ADMIN_SET_USER_MEMBERSHIP_TITLE, 23, 78), O1.A01(this.A02.A07));
                            messageObtain.getData().putBundle(A00(274, 19, 24), AdInternalSettings.sSettingsBundle.toBundle());
                            return messageObtain;
                        }

                        @Override // com.facebook.ads.redexgen.X.C4L
                        public final void A2w() {
                            this.A03.A09(1012, null);
                            this.A03.A08();
                            this.A02.A01(null);
                        }

                        @Override // com.facebook.ads.redexgen.X.C4L
                        public final void A3q(Message message) {
                            Message message2 = message;
                            C4M c4m = this;
                            Bundle errorBundle = null;
                            String string = null;
                            Bundle bundle = null;
                            AdError adError = null;
                            InterstitialAd interstitialAdA00 = c4m.A02.A00();
                            char c = interstitialAdA00 == null ? (char) 2 : (char) 4;
                            while (true) {
                                switch (c) {
                                    case 2:
                                        c4m = c4m;
                                        Context context2 = c4m.A00;
                                        String strA00 = A00(105, 3, 60);
                                        int i = P8.A09;
                                        String errorMessage = A00(190, 17, 125);
                                        P7.A07(context2, strA00, i, new PA(errorMessage));
                                        c = 3;
                                        break;
                                    case 3:
                                        return;
                                    case 4:
                                        message2 = message2;
                                        switch (message2.what) {
                                            case 10:
                                                c = 28;
                                                break;
                                            case 1015:
                                                c = 19;
                                                break;
                                            case 1016:
                                                c = 18;
                                                break;
                                            case 1017:
                                                c = 17;
                                                break;
                                            case 1020:
                                                c = '\r';
                                                break;
                                            case 1022:
                                                c = 11;
                                                break;
                                            case 1023:
                                                c = 28;
                                                break;
                                            default:
                                                c = 5;
                                                break;
                                        }
                                    case 5:
                                        c4m = c4m;
                                        if (c4m.A02.A01 == null) {
                                            c = 3;
                                            break;
                                        } else {
                                            c = 6;
                                            break;
                                        }
                                    case 6:
                                        message2 = message2;
                                        switch (message2.what) {
                                            case 1020:
                                                c = 27;
                                                break;
                                            case 1021:
                                                c = 26;
                                                break;
                                            case 1022:
                                                c = 25;
                                                break;
                                            case 1023:
                                                c = 7;
                                                break;
                                            case 1024:
                                                c = 24;
                                                break;
                                            case 1025:
                                                c = 23;
                                                break;
                                            case 1026:
                                                c = '\t';
                                                break;
                                            default:
                                                c = 7;
                                                break;
                                        }
                                    case 7:
                                        c4m = c4m;
                                        if (c4m.A02.A03 == null) {
                                            c = 3;
                                            break;
                                        } else {
                                            c = '\b';
                                            break;
                                        }
                                    case '\b':
                                        message2 = message2;
                                        switch (message2.what) {
                                            case 3000:
                                                c = 22;
                                                break;
                                            case AuthApiStatusCodes.AUTH_API_ACCESS_FORBIDDEN /* 3001 */:
                                                c = 21;
                                                break;
                                            case AuthApiStatusCodes.AUTH_API_CLIENT_ERROR /* 3002 */:
                                                c = 20;
                                                break;
                                            default:
                                                c = 3;
                                                break;
                                        }
                                    case '\t':
                                        c4m = c4m;
                                        if (!(c4m.A02.A01 instanceof InterstitialAdExtendedListener)) {
                                            c = 7;
                                            break;
                                        } else {
                                            c = '\n';
                                            break;
                                        }
                                    case '\n':
                                        c4m = c4m;
                                        c4m.A02.A01.onInterstitialActivityDestroyed();
                                        c = 7;
                                        break;
                                    case 11:
                                        c4m = c4m;
                                        c4m.A01.A73();
                                        if (!c4m.A03.A01) {
                                            c = 5;
                                            break;
                                        } else {
                                            c = '\f';
                                            break;
                                        }
                                    case '\f':
                                        c4m = c4m;
                                        c4m.A2w();
                                        c = 5;
                                        break;
                                    case '\r':
                                        c4m = c4m;
                                        message2 = message2;
                                        c4m.A01.A71();
                                        errorBundle = message2.getData().getBundle(A00(ApiService.API_ERR_USER_NOT_IN_COMMUNITY, 17, 46));
                                        if (errorBundle == null) {
                                            c = 16;
                                            break;
                                        } else {
                                            c = 14;
                                            break;
                                        }
                                    case 14:
                                        c4m = c4m;
                                        errorBundle = errorBundle;
                                        C4K c4k3 = c4m.A02;
                                        String errorMessage2 = A00(79, 26, 92);
                                        c4k3.A00 = errorBundle.getLong(errorMessage2);
                                        c = 15;
                                        break;
                                    case 15:
                                        c4m = c4m;
                                        c4m.A02.A01(null);
                                        c = 5;
                                        break;
                                    case 16:
                                        c4m = c4m;
                                        message2 = message2;
                                        P7.A07(c4m.A00, A00(105, 3, 60), P8.A0J, new PA(A00(367, 27, 10), A00(181, 9, 28) + message2));
                                        c = 15;
                                        break;
                                    case 17:
                                        c4m = c4m;
                                        c4m.A03.A0A(A00(293, 30, 98));
                                        c = 5;
                                        break;
                                    case 18:
                                        c4m = c4m;
                                        C4O c4o2 = c4m.A03;
                                        String errorMessage3 = A00(340, 27, 12);
                                        c4o2.A0A(errorMessage3);
                                        c = 5;
                                        break;
                                    case 19:
                                        c4m = c4m;
                                        c4m.A03.A0A(A00(247, 27, 78));
                                        c = 5;
                                        break;
                                    case 20:
                                        c4m = c4m;
                                        c4m.A02.A03.onRewardedAdServerFailed();
                                        c = 3;
                                        break;
                                    case 21:
                                        c4m = c4m;
                                        c4m.A02.A03.onRewardedAdServerSucceeded();
                                        c = 3;
                                        break;
                                    case 22:
                                        c4m = c4m;
                                        c4m.A02.A03.onRewardedAdCompleted();
                                        c = 3;
                                        break;
                                    case 23:
                                        c4m = c4m;
                                        interstitialAdA00 = interstitialAdA00;
                                        c4m.A02.A01.onLoggingImpression(interstitialAdA00);
                                        c = 3;
                                        break;
                                    case 24:
                                        c4m = c4m;
                                        interstitialAdA00 = interstitialAdA00;
                                        c4m.A02.A01.onAdClicked(interstitialAdA00);
                                        c = 3;
                                        break;
                                    case 25:
                                        c4m = c4m;
                                        interstitialAdA00 = interstitialAdA00;
                                        c4m.A02.A01.onInterstitialDismissed(interstitialAdA00);
                                        c = 3;
                                        break;
                                    case 26:
                                        c4m = c4m;
                                        interstitialAdA00 = interstitialAdA00;
                                        c4m.A02.A01.onInterstitialDisplayed(interstitialAdA00);
                                        c = 3;
                                        break;
                                    case 27:
                                        c4m = c4m;
                                        interstitialAdA00 = interstitialAdA00;
                                        c4m.A02.A01.onAdLoaded(interstitialAdA00);
                                        c = 3;
                                        break;
                                    case 28:
                                        c4m = c4m;
                                        if (!c4m.A03.A01) {
                                            c = 30;
                                            break;
                                        } else {
                                            c = 29;
                                            break;
                                        }
                                    case 29:
                                        c4m = c4m;
                                        c4m.A2w();
                                        c = 30;
                                        break;
                                    case 30:
                                        message2 = message2;
                                        bundle = message2.getData().getBundle(A00(ApiService.API_ERR_USER_NOT_IN_COMMUNITY, 17, 46));
                                        if (bundle == null) {
                                            c = '#';
                                            break;
                                        } else {
                                            c = 31;
                                            break;
                                        }
                                    case 31:
                                        c4m = c4m;
                                        bundle = bundle;
                                        int i2 = bundle.getInt(A00(38, 18, 95));
                                        string = bundle.getString(A00(0, 21, 4));
                                        adError = new AdError(i2, string);
                                        c4m.A01.A6z(adError);
                                        if (c4m.A02.A01 == null) {
                                            c = '\"';
                                            break;
                                        } else {
                                            c = ' ';
                                            break;
                                        }
                                    case ' ':
                                        c4m = c4m;
                                        interstitialAdA00 = interstitialAdA00;
                                        adError = adError;
                                        c4m.A02.A01.onError(interstitialAdA00, adError);
                                        c = '!';
                                        break;
                                    case '!':
                                        c4m = c4m;
                                        c4m.A02.A01(null);
                                        c = 3;
                                        break;
                                    case '\"':
                                        string = string;
                                        String errorMessage4 = A00(21, 17, 12);
                                        Log.e(errorMessage4, string);
                                        c = '!';
                                        break;
                                    case '#':
                                        c4m = c4m;
                                        message2 = message2;
                                        c4m.A01.A6y(AnonymousClass44.A04);
                                        P7.A07(c4m.A00, A00(105, 3, 60), P8.A0J, new PA(A00(367, 27, 10), A00(181, 9, 28) + message2));
                                        c = '!';
                                        break;
                                }
                            }
                        }
                    };
                }
            };
        }
    };

    @Nullable
    private C4B A00;
    private final C4K A01;

    public C4J(C4K c4k) {
        super(c4k.A0A.getApplicationContext(), A02.A2u(c4k));
        this.A01 = c4k;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass43
    public final void A09() {
        C4J c4j = this;
        char c = c4j.A02.A01 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c4j = c4j;
                    c4j.A03.A2w();
                    c = 3;
                    break;
                case 3:
                    c4j = c4j;
                    if (c4j.A00 == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c4j = c4j;
                    c4j.A00.destroy();
                    c = 5;
                    break;
                case 5:
                    ((AnonymousClass43) c4j).A01.A6y(AnonymousClass44.A03);
                    return;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass43
    public final void A0A() {
        this.A00 = new C4B(this.A01, this, this.A04);
        this.A00.A09(this.A01.A07, this.A01.A04);
    }

    public final void A0B(InterstitialAd interstitialAd, EnumSet<CacheFlag> enumSet, @Nullable String str) {
        C4J c4j = this;
        LQ lqA01 = C02363g.A01(((AnonymousClass43) c4j).A00, 0, 1);
        char c = lqA01 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c4j = c4j;
                    lqA01 = lqA01;
                    c4j.A06(10, AdErrorType.MISSING_DEPENDENCIES_ERROR, lqA01.A05());
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c4j = c4j;
                    if (!((AnonymousClass43) c4j).A01.A33()) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 5:
                    c4j = c4j;
                    interstitialAd = interstitialAd;
                    c4j.A01.A01(interstitialAd);
                    if (c4j.A00 == null) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c4j = c4j;
                    enumSet = enumSet;
                    str = str;
                    c4j.A00.A09(enumSet, str);
                    c = 3;
                    break;
                case 7:
                    c4j = c4j;
                    enumSet = enumSet;
                    str = str;
                    c4j.A01.A07 = enumSet;
                    c4j.A01.A04 = str;
                    if (!c4j.A08(c4j.A01.A0A)) {
                        c = 11;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    c4j = c4j;
                    if (!c4j.A02.A01) {
                        c = '\n';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    c4j = c4j;
                    c4j.A03();
                    c = 3;
                    break;
                case '\n':
                    c4j = c4j;
                    c4j.A02.A02 = true;
                    c4j.A02.A07();
                    c = 3;
                    break;
                case 11:
                    c4j = c4j;
                    c4j.A0A();
                    c = 3;
                    break;
            }
        }
    }

    public final boolean A0C() {
        C4J c4j = this;
        boolean zA0A = false;
        char c = c4j.A00 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c4j = c4j;
                    zA0A = c4j.A00.A0A();
                    c = 3;
                    break;
                case 3:
                    return zA0A;
                case 4:
                    c4j = c4j;
                    if (c4j.A01.A00 <= 0) {
                        c = 7;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c4j = c4j;
                    if (OO.A00() <= c4j.A01.A00) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    zA0A = true;
                    c = 3;
                    break;
                case 7:
                    zA0A = false;
                    c = 3;
                    break;
            }
        }
    }

    public final boolean A0D() {
        C4J c4j = this;
        boolean zA0B = false;
        char c = c4j.A00 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c4j = c4j;
                    zA0B = c4j.A00.A0B();
                    c = 3;
                    break;
                case 3:
                    return zA0B;
                case 4:
                    c4j = c4j;
                    if (((AnonymousClass43) c4j).A01.A3C() != AnonymousClass44.A05) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    zA0B = true;
                    c = 3;
                    break;
                case 6:
                    zA0B = false;
                    c = 3;
                    break;
            }
        }
    }

    public final boolean A0E(InterstitialAd interstitialAd, InterstitialAd.InterstitialShowAdConfig interstitialShowAdConfig) {
        C4J c4j = this;
        boolean zA0C = false;
        char c = ((AnonymousClass43) c4j).A01.A34() ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return zA0C;
                case 3:
                    c4j = c4j;
                    interstitialAd = interstitialAd;
                    c4j.A01.A01(interstitialAd);
                    if (!c4j.A02.A01) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c4j = c4j;
                    c4j.A05(1011, null);
                    zA0C = true;
                    c = 2;
                    break;
                case 5:
                    c4j = c4j;
                    if (c4j.A00 == null) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c4j = c4j;
                    zA0C = c4j.A00.A0C();
                    c = 2;
                    break;
                case 7:
                    c4j = c4j;
                    c4j.A00 = new C4B(c4j.A01, c4j, c4j.A04);
                    c4j.A00.A0C();
                    c = 2;
                    break;
            }
        }
    }
}
