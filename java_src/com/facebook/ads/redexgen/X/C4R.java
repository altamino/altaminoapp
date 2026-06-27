package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.annotation.Nullable;
import android.util.Log;
import com.facebook.ads.AdError;
import com.facebook.ads.RewardData;
import com.facebook.ads.RewardedVideoAd;
import com.facebook.ads.RewardedVideoAdExtendedListener;
import com.facebook.ads.S2SRewardedVideoAdListener;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.facebook.ads.internal.settings.AdInternalSettings;
import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import com.narvii.account.ThirdPartyAccountBaseFragment;
import com.narvii.util.Constants;
import com.narvii.util.ws.WsMessage;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.4R, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class C4R extends AnonymousClass43 {
    private static byte[] A02;

    @Nullable
    private C4E A00;
    private final C4S A01;

    static {
        A02();
    }

    private static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 110);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A02 = new byte[]{14, 9, 19, 24, 21, 17, 24, 6, 23, 23, 24, 8, 21, 14, 2, 9, 19, 6, 19, 14, 8, 9, 24, 12, 2, 30, 81, 80, 78, 93, 80, 84, 93, 80, 71, 85, 67, 80, 70, 93, 70, 67, 86, 67, 93, 73, 71, 91};
    }

    public C4R(C4S c4s) {
        super(c4s.A0B, A00(c4s));
        this.A01 = c4s;
    }

    private static C4F A00(final C4S c4s) {
        return new C4F() { // from class: com.facebook.ads.redexgen.X.4Q
            @Override // com.facebook.ads.redexgen.X.C4F
            public final C4L A2t(InterfaceC02533x interfaceC02533x, C4O c4o) {
                return new C4L(c4s.A0B, c4s, interfaceC02533x, c4o) { // from class: com.facebook.ads.redexgen.X.4P
                    private static byte[] A04;
                    private final Context A00;
                    private final InterfaceC02533x A01;
                    private final C4O A02;
                    private final C4S A03;

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
                                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 70);
                                    i4++;
                                    c = 2;
                                    break;
                                case 4:
                                    return new String(bArrCopyOfRange);
                            }
                        }
                    }

                    private static void A01() {
                        A04 = new byte[]{17, 22, 16, 29, 7, 16, 16, 13, 16, 29, 15, 7, 17, 17, 3, 5, 7, 29, 9, 7, 27, 15, 11, 8, 60, 45, 32, 44, 39, 42, 44, 7, 44, 61, 62, 38, 59, 34, 4, 5, 27, 8, 5, 1, 8, 5, 18, 0, 22, 5, 19, 8, 19, 22, 3, 22, 8, 28, 18, 14, 15, 8, 18, 25, 3, 20, 20, 9, 20, 25, 5, 9, 2, 3, 25, 13, 3, 31, 10, 7, 7, 4, 23, 26, 30, 23, 14, 9, 1, 4, 23, 7, 6, 23, 11, 9, 11, 0, 13, 23, 14, 9, 1, 4, 29, 26, 13, 23, 3, 13, 17, 96, 99, 98, 107, 115, 101, 98, 122, 109, 96, 101, 104, 109, 120, 101, 99, 98, 115, 120, 101, 97, 105, 115, 103, 105, 117, 25, 8, 17, 94, 89, 95, 82, 79, 68, 73, 82, 93, 76, 84, 65, 66, 76, 73, 82, 70, 72, 84, 125, 122, 124, 113, 99, 107, 106, 103, 111, 122, 103, 97, 96, 113, 106, 111, 122, 111, 113, 101, 107, 119, 32, 39, 33, 44, 50, 55, 44, 58, 55, 44, 56, 54, 42, 111, 104, 110, 99, 121, 100, 104, 110, 125, 99, 116, 117, 114, 104, 111, 99, 119, 121, 101, 69, 109, 123, 123, 105, 111, 109, 50, 40, 116, 81, 21, 90, 87, 95, 80, 86, 65, 21, 92, 70, 21, 91, 64, 89, 89, 17, 6, 29, 23, 31, 22, 12, 22, 11, 7, 1, 18, 0, 12, 24, 22, 10, 40, 47, 53, 62, 51, 55, 62, 55, 40, 37, 36, 46, 62, 37, 52, 51, 32, 53, 40, 46, 47, 62, 42, 36, 56, 57, 29, 7, 7, 29, 26, 19, 84, 22, 1, 26, 16, 24, 17, 84, 18, 27, 6, 84, 25, 17, 7, 7, 21, 19, 17, 6, 49, 55, 49, 61, 34, 49, 48, 116, 56, 59, 53, 48, 116, 55, 59, 58, 50, 61, 38, 57, 53, 32, 61, 59, 58, 122, 48, 39, 60, 54, 62, 55, 45, 33, 55, 38, 38, 59, 60, 53, 33, 45, 57, 55, 43, 28, 27, 29, 16, 31, 3, 14, 12, 10, 2, 10, 1, 27, 16, 4, 10, 22, 21, 34, 36, 34, 46, 49, 34, 35, 103, 52, 47, 40, 48, 103, 36, 40, 41, 33, 46, 53, 42, 38, 51, 46, 40, 41, 105, 125, 89, 67, 67, 89, 94, 87, 16, 82, 69, 94, 84, 92, 85, 16, 86, 95, 66, 16, 93, 85, 67, 67, 81, 87, 85, 30};
                    }

                    {
                        this.A00 = context;
                        this.A03 = c4s;
                        this.A01 = interfaceC02533x;
                        this.A02 = c4o;
                    }

                    @Override // com.facebook.ads.redexgen.X.C4L
                    public final Message A2s(String str) {
                        Message messageObtain = Message.obtain((Handler) null, 2000);
                        messageObtain.getData().putString(A00(353, 17, 9), this.A03.A0C);
                        messageObtain.getData().putString(A00(181, 13, 53), str);
                        messageObtain.getData().putString(A00(140, 19, 75), this.A03.A04);
                        messageObtain.getData().putString(A00(194, 19, 122), this.A03.A05);
                        messageObtain.getData().putString(A00(159, 22, 104), this.A03.A06);
                        messageObtain.getData().putBoolean(A00(78, 33, 14), this.A03.A08);
                        messageObtain.getData().putByteArray(A00(38, 22, 17), O1.A01(this.A03.A02));
                        messageObtain.getData().putBundle(A00(334, 19, 52), AdInternalSettings.sSettingsBundle.toBundle());
                        return messageObtain;
                    }

                    @Override // com.facebook.ads.redexgen.X.C4L
                    public final void A2w() {
                        this.A02.A09(2002, null);
                        this.A02.A08();
                        this.A03.A01(null);
                    }

                    @Override // com.facebook.ads.redexgen.X.C4L
                    public final void A3q(Message message) {
                        Message message2 = message;
                        C4P c4p = this;
                        Bundle bundle = null;
                        Bundle bundle2 = null;
                        AdError adError = null;
                        String string = null;
                        RewardedVideoAd rewardedVideoAdA00 = c4p.A03.A00();
                        char c = rewardedVideoAdA00 == null ? (char) 2 : (char) 4;
                        while (true) {
                            switch (c) {
                                case 2:
                                    c4p = c4p;
                                    P7.A07(c4p.A00, A00(WsMessage.THREAD_WAIT_LIST_JOIN_CANCEL_RESPENSE, 3, 62), P8.A09, new PA(A00(222, 17, 115)));
                                    c = 3;
                                    break;
                                case 3:
                                    return;
                                case 4:
                                    message2 = message2;
                                    switch (message2.what) {
                                        case 10:
                                            c = 27;
                                            break;
                                        case 2010:
                                            c = 15;
                                            break;
                                        case 2011:
                                            c = 14;
                                            break;
                                        case 2100:
                                            c = '\n';
                                            break;
                                        case 2103:
                                            c = 27;
                                            break;
                                        case 2106:
                                            c = 7;
                                            break;
                                        default:
                                            c = 5;
                                            break;
                                    }
                                case 5:
                                    c4p = c4p;
                                    if (c4p.A03.A03 == null) {
                                        c = 3;
                                        break;
                                    } else {
                                        c = 6;
                                        break;
                                    }
                                case 6:
                                    message2 = message2;
                                    switch (message2.what) {
                                        case 2100:
                                            c = 26;
                                            break;
                                        case 2104:
                                            c = 25;
                                            break;
                                        case 2105:
                                            c = 18;
                                            break;
                                        case 2106:
                                            c = 23;
                                            break;
                                        case 2110:
                                            c = 17;
                                            break;
                                        case 3000:
                                            c = 16;
                                            break;
                                        case AuthApiStatusCodes.AUTH_API_ACCESS_FORBIDDEN /* 3001 */:
                                            c = 21;
                                            break;
                                        case AuthApiStatusCodes.AUTH_API_CLIENT_ERROR /* 3002 */:
                                            c = 19;
                                            break;
                                        default:
                                            c = 3;
                                            break;
                                    }
                                case 7:
                                    c4p = c4p;
                                    c4p.A01.A73();
                                    if (!c4p.A02.A01) {
                                        c = '\t';
                                        break;
                                    } else {
                                        c = '\b';
                                        break;
                                    }
                                case '\b':
                                    c4p = c4p;
                                    c4p.A2w();
                                    c = '\t';
                                    break;
                                case '\t':
                                    c4p = c4p;
                                    c4p.A03.A01(null);
                                    c = 5;
                                    break;
                                case '\n':
                                    c4p = c4p;
                                    message2 = message2;
                                    c4p.A01.A71();
                                    bundle = message2.getData().getBundle(A00(239, 17, 21));
                                    if (bundle == null) {
                                        c = '\r';
                                        break;
                                    } else {
                                        c = 11;
                                        break;
                                    }
                                case 11:
                                    c4p = c4p;
                                    bundle = bundle;
                                    c4p.A03.A01 = bundle.getLong(A00(111, 26, 106));
                                    c4p.A03.A00 = bundle.getInt(A00(256, 25, 39));
                                    c = '\f';
                                    break;
                                case '\f':
                                    c4p = c4p;
                                    c4p.A03.A01(null);
                                    c = 5;
                                    break;
                                case '\r':
                                    c4p = c4p;
                                    message2 = message2;
                                    P7.A07(c4p.A00, A00(WsMessage.THREAD_WAIT_LIST_JOIN_CANCEL_RESPENSE, 3, 62), P8.A0J, new PA(A00(281, 26, 50), A00(ThirdPartyAccountBaseFragment.API_ERR_EMAIL, 9, 78) + message2));
                                    c = '\f';
                                    break;
                                case 14:
                                    c4p = c4p;
                                    c4p.A02.A0A(A00(370, 27, 1));
                                    c = 5;
                                    break;
                                case 15:
                                    c4p = c4p;
                                    c4p.A02.A0A(A00(307, 27, 18));
                                    c = 5;
                                    break;
                                case 16:
                                    c4p = c4p;
                                    c4p.A03.A03.onRewardedVideoCompleted();
                                    c = 3;
                                    break;
                                case 17:
                                    c4p = c4p;
                                    c4p.A03.A03.onRewardedVideoClosed();
                                    c = 3;
                                    break;
                                case 18:
                                    c4p = c4p;
                                    rewardedVideoAdA00 = rewardedVideoAdA00;
                                    c4p.A03.A03.onLoggingImpression(rewardedVideoAdA00);
                                    c = 3;
                                    break;
                                case 19:
                                    c4p = c4p;
                                    if (!(c4p.A03.A03 instanceof S2SRewardedVideoAdListener)) {
                                        c = 3;
                                        break;
                                    } else {
                                        c = 20;
                                        break;
                                    }
                                case 20:
                                    c4p = c4p;
                                    c4p.A03.A03.onRewardServerFailed();
                                    c = 3;
                                    break;
                                case 21:
                                    c4p = c4p;
                                    if (!(c4p.A03.A03 instanceof S2SRewardedVideoAdListener)) {
                                        c = 3;
                                        break;
                                    } else {
                                        c = 22;
                                        break;
                                    }
                                case 22:
                                    c4p = c4p;
                                    c4p.A03.A03.onRewardServerSuccess();
                                    c = 3;
                                    break;
                                case 23:
                                    c4p = c4p;
                                    if (!(c4p.A03.A03 instanceof RewardedVideoAdExtendedListener)) {
                                        c = 3;
                                        break;
                                    } else {
                                        c = 24;
                                        break;
                                    }
                                case 24:
                                    c4p = c4p;
                                    c4p.A03.A03.onRewardedVideoActivityDestroyed();
                                    c = 3;
                                    break;
                                case 25:
                                    c4p = c4p;
                                    rewardedVideoAdA00 = rewardedVideoAdA00;
                                    c4p.A03.A03.onAdClicked(rewardedVideoAdA00);
                                    c = 3;
                                    break;
                                case 26:
                                    c4p = c4p;
                                    rewardedVideoAdA00 = rewardedVideoAdA00;
                                    c4p.A03.A03.onAdLoaded(rewardedVideoAdA00);
                                    c = 3;
                                    break;
                                case 27:
                                    c4p = c4p;
                                    if (!c4p.A02.A01) {
                                        c = 29;
                                        break;
                                    } else {
                                        c = 28;
                                        break;
                                    }
                                case 28:
                                    c4p = c4p;
                                    c4p.A2w();
                                    c = 29;
                                    break;
                                case 29:
                                    message2 = message2;
                                    Bundle data = message2.getData();
                                    String errorMessage = A00(239, 17, 21);
                                    bundle2 = data.getBundle(errorMessage);
                                    if (bundle2 == null) {
                                        c = '\"';
                                        break;
                                    } else {
                                        c = 30;
                                        break;
                                    }
                                case 30:
                                    c4p = c4p;
                                    bundle2 = bundle2;
                                    int i = bundle2.getInt(A00(60, 18, 0));
                                    string = bundle2.getString(A00(0, 21, 4));
                                    adError = new AdError(i, string);
                                    c4p.A01.A6z(adError);
                                    if (c4p.A03.A03 == null) {
                                        c = '!';
                                        break;
                                    } else {
                                        c = 31;
                                        break;
                                    }
                                case 31:
                                    c4p = c4p;
                                    rewardedVideoAdA00 = rewardedVideoAdA00;
                                    adError = adError;
                                    c4p.A03.A03.onError(rewardedVideoAdA00, adError);
                                    c = ' ';
                                    break;
                                case ' ':
                                    c4p = c4p;
                                    c4p.A03.A01(null);
                                    c = 3;
                                    break;
                                case '!':
                                    string = string;
                                    Log.e(A00(21, 17, 15), string);
                                    c = ' ';
                                    break;
                                case '\"':
                                    c4p = c4p;
                                    message2 = message2;
                                    c4p.A01.A6y(AnonymousClass44.A04);
                                    P7.A07(c4p.A00, A00(WsMessage.THREAD_WAIT_LIST_JOIN_CANCEL_RESPENSE, 3, 62), P8.A0J, new PA(A00(397, 27, 118), A00(ThirdPartyAccountBaseFragment.API_ERR_EMAIL, 9, 78) + message2));
                                    c = ' ';
                                    break;
                            }
                        }
                    }
                };
            }
        };
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass43
    public final void A09() {
        C4R c4r = this;
        char c = c4r.A02.A01 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c4r = c4r;
                    c4r.A03.A2w();
                    c = 3;
                    break;
                case 3:
                    c4r = c4r;
                    if (c4r.A00 == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c4r = c4r;
                    c4r.A00.destroy();
                    c = 5;
                    break;
                case 5:
                    ((AnonymousClass43) c4r).A01.A6y(AnonymousClass44.A03);
                    return;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass43
    public final void A0A() {
        this.A00 = new C4E(this.A01, this, this.A04);
        this.A00.A0E(this.A01.A04, this.A01.A08, this.A01.A07);
    }

    public final void A0B(RewardData rewardData) {
        C4R c4r = this;
        c4r.A01.A02 = rewardData;
        char c = c4r.A02.A01 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c4r = c4r;
                    rewardData = rewardData;
                    Bundle bundle = new Bundle();
                    bundle.putByteArray(A01(26, 22, 108), O1.A01(rewardData));
                    c4r.A05(2003, bundle);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c4r = c4r;
                    if (c4r.A00 == null) {
                        c = 3;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c4r = c4r;
                    rewardData = rewardData;
                    c4r.A00.A0C(rewardData);
                    c = 3;
                    break;
            }
        }
    }

    public final void A0C(RewardedVideoAd rewardedVideoAd, @Nullable String str, boolean z, boolean z2) {
        C4R c4r = this;
        LQ lqA01 = C02363g.A01(((AnonymousClass43) c4r).A00, 0, 1);
        char c = lqA01 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c4r = c4r;
                    lqA01 = lqA01;
                    c4r.A06(10, AdErrorType.MISSING_DEPENDENCIES_ERROR, lqA01.A05());
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c4r = c4r;
                    if (!((AnonymousClass43) c4r).A01.A33()) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 5:
                    c4r = c4r;
                    rewardedVideoAd = rewardedVideoAd;
                    c4r.A01.A01(rewardedVideoAd);
                    if (c4r.A00 == null) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c4r = c4r;
                    str = str;
                    c4r.A00.A0E(str, z, z2);
                    c = 3;
                    break;
                case 7:
                    c4r = c4r;
                    str = str;
                    c4r.A01.A04 = str;
                    c4r.A01.A08 = z;
                    c4r.A01.A07 = z2;
                    if (!c4r.A08(c4r.A01.A0B)) {
                        c = 11;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    c4r = c4r;
                    if (!c4r.A02.A01) {
                        c = '\n';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    c4r = c4r;
                    c4r.A03();
                    c = 3;
                    break;
                case '\n':
                    c4r = c4r;
                    c4r.A02.A02 = true;
                    c4r.A02.A07();
                    c = 3;
                    break;
                case 11:
                    c4r = c4r;
                    c4r.A0A();
                    c = 3;
                    break;
            }
        }
    }

    public final boolean A0D() {
        C4R c4r = this;
        boolean zA0F = false;
        char c = c4r.A00 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c4r = c4r;
                    zA0F = c4r.A00.A0F();
                    c = 3;
                    break;
                case 3:
                    return zA0F;
                case 4:
                    c4r = c4r;
                    if (c4r.A01.A01 <= 0) {
                        c = 7;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c4r = c4r;
                    if (OO.A00() <= c4r.A01.A01) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    zA0F = true;
                    c = 3;
                    break;
                case 7:
                    zA0F = false;
                    c = 3;
                    break;
            }
        }
    }

    public final boolean A0E() {
        C4R c4r = this;
        boolean zA0G = false;
        char c = c4r.A00 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c4r = c4r;
                    zA0G = c4r.A00.A0G();
                    c = 3;
                    break;
                case 3:
                    return zA0G;
                case 4:
                    c4r = c4r;
                    if (((AnonymousClass43) c4r).A01.A3C() != AnonymousClass44.A05) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    zA0G = true;
                    c = 3;
                    break;
                case 6:
                    zA0G = false;
                    c = 3;
                    break;
            }
        }
    }

    public final boolean A0F(RewardedVideoAd rewardedVideoAd, RewardedVideoAd.RewardedVideoShowAdConfig rewardedVideoShowAdConfig) {
        C4R c4r = this;
        boolean zA0H = false;
        int iA00 = ((A2) rewardedVideoShowAdConfig).A00();
        char c = ((AnonymousClass43) c4r).A01.A34() ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return zA0H;
                case 3:
                    c4r = c4r;
                    rewardedVideoAd = rewardedVideoAd;
                    c4r.A01.A01(rewardedVideoAd);
                    if (!c4r.A02.A01) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c4r = c4r;
                    Bundle bundle = new Bundle();
                    bundle.putInt(A01(0, 26, 41), iA00);
                    c4r.A05(Constants.COMMUNITY_MEMBERSHIP_REQUEST_SUBMITTED, bundle);
                    zA0H = true;
                    c = 2;
                    break;
                case 5:
                    c4r = c4r;
                    if (c4r.A00 == null) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c4r = c4r;
                    zA0H = c4r.A00.A0H(iA00);
                    c = 2;
                    break;
                case 7:
                    c4r = c4r;
                    c4r.A00 = new C4E(c4r.A01, c4r, c4r.A04);
                    c4r.A00.A0H(iA00);
                    c = 2;
                    break;
            }
        }
    }
}
