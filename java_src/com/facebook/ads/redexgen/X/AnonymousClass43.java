package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.support.annotation.Nullable;
import android.util.Log;
import com.facebook.ads.AdError;
import com.facebook.ads.AdSettings;
import com.facebook.ads.internal.api.BuildConfigApi;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.facebook.ads.internal.settings.AdInternalSettings;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import com.narvii.model.User;
import com.narvii.util.Constants;
import com.tonyodev.fetch.FetchConst;
import java.util.Arrays;
import java.util.Deque;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Locale;
import java.util.UUID;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.43, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public abstract class AnonymousClass43 implements AnonymousClass42 {
    public static int A06;
    public static int A07;
    private static byte[] A08;
    public final Context A00;
    public final InterfaceC02533x A01;
    public final C4O A02;
    public final C4L A03;
    public final String A04 = UUID.randomUUID().toString();
    private final Handler A05;

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A08, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) + FetchConst.ERROR_ILLEGAL_STATE);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A08 = new byte[]{-22, -21, -23, -10, -36, -23, -23, -26, -23, -10, -28, -36, -22, -22, -40, -34, -36, -10, -30, -36, -16, -39, -17, -11, -96, -28, -23, -28, -18, -89, -12, -96, -29, -31, -20, -20, -96, -28, -27, -13, -12, -14, -17, -7, -88, -87, -96, -26, -17, -14, -96, -63, -28, -96, -49, -30, -22, -27, -29, -12, -82, -96, -44, -24, -23, -13, -96, -19, -31, -7, -96, -20, -27, -31, -28, -96, -12, -17, -96, -20, -27, -31, -21, -23, -18, -25, -96, -19, -27, -19, -17, -14, -7, -82, -96, -48, -20, -27, -31, -13, -27, -84, -96, -31, -20, -9, -31, -7, -13, -96, -29, -31, -20, -20, -96, -28, -27, -13, -12, -14, -17, -7, -88, -87, -96, -9, -24, -27, -18, -96, -7, -17, -11, -96, -28, -17, -18, -89, -12, -96, -18, -27, -27, -28, -96, -12, -24, -23, -13, -96, -63, -28, -96, -49, -30, -22, -27, -29, -12, -96, -31, -18, -7, -96, -19, -17, -14, -27, -82, 49, 45, 44, 96, 79, 84, 80, 89, 78, 80, 57, 80, 95, 98, 90, 93, 86, -52, -47, -41, -30, -56, -43, -43, -46, -43, -30, -58, -46, -57, -56, -30, -50, -56, -36, -50, -35, -42, 26, 27, 25, 38, 8, 11, 38, 16, 11, 38, 18, 12, 32, 21, 66, 66, 63, 66, -16, 52, 69, 66, 57, 62, 55, -16, 67, 53, 62, 52, 57, 62, 55, -16, 60, 63, 49, 52, -16, 51, 63, 61, 61, 49, 62, 52, -15, -7, 33, 24, 32, 21, 28, 30, 27, 15, 17, 31, 31, -52, 31, 33, 28, 28, 27, 30, 32, -52, 21, 31, -52, 27, 18, 18, 16, 35, 28, 18, 26, 19, 45, 19, 38, 34, 32, 15, 33, 45, 25, 19, 39, -36, -29, -42, 29, 49, 66, 59, 53, 66, -16, 54, 57, 60, 53, -16, 62, 63, 68, -16, 51, 66, 53, 49, 68, 53, 52, -16, 49, 54, 68, 53, 66, -16, 3, -16, 66, 53, 65, 69, 53, 67, 68, 67, -2, 4, 37, 51, 52, 50, 47, 57, -32, 55, 33, 51, -32, 46, 47, 52, -32, 35, 33, 44, 44, 37, 36, -18};
    }

    public abstract void A09();

    public abstract void A0A();

    static {
        A01();
        A07 = 0;
        A06 = 0;
    }

    public AnonymousClass43(final Context context, C4F c4f) {
        this.A00 = context;
        DynamicLoaderFactory.makeLoader(this.A00).getInitApi().onAdLoadInvoked(this.A00);
        if (K1.A1u(this.A00)) {
            this.A01 = new InterfaceC02533x(context, this) { // from class: com.facebook.ads.redexgen.X.40
                private static byte[] A04;
                private AnonymousClass44 A00 = AnonymousClass44.A02;
                private AnonymousClass44 A01 = AnonymousClass44.A02;
                private final Context A02;
                private final AnonymousClass43 A03;

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
                                bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 10);
                                i4++;
                                c = 2;
                                break;
                            case 4:
                                return new String(bArrCopyOfRange);
                        }
                    }
                }

                private static void A01() {
                    A04 = new byte[]{125, -47, -52, 125, -73, -46, -49, -50, -57, -128, -55, -50, -44, -59, -46, -50, -63, -52, -128, -44, -46, -63, -50, -45, -55, -44, -55, -49, -50, -114, -127, -124, 118, 121, 61, 62, 111, 107, 106, -98, -115, -110, -114, -105, -116, -114, 119, -114, -99, -96, -104, -101, -108, 70, 56, 113, -121, -115, 56, 123, 121, -122, 56, 123, -128, 121, -122, 127, 125, 56, 97, -122, -116, 125, 127, -118, 121, -116, -127, -121, -122, 56, 93, -118, -118, -121, -118, 56, -123, -121, 124, 125, 56, 122, -111, 56, -117, 125, -116, -116, -127, -122, 127, 56, 89, 124, 107, 125, -116, -116, -127, -122, 127, -117, 70, -117, 125, -116, 97, -122, -116, 125, 127, -118, 121, -116, -127, -121, -122, 93, -118, -118, -121, -118, 101, -121, 124, 125, 64, 65, -81, -92, -85, -77, 100, 101, -19, -31, -38, -19, -103, -30, -20, -103, -38, -27, -21, -34, -38, -35, -14, -103, -52, -63, -56, -48, -62, -57, -64, -31, -16, -23, -34, -46, -53, -34, -118, -45, -35, -118, -40, -39, -34, -118, -74, -71, -85, -82, -81, -82, -122, 122, 115, -122, 50, 123, -123, 50, 115, 126, -124, 119, 115, 118, -117, 50, 94, 97, 83, 86, 91, 96, 89, 50, -127, -124, 50, 94, 97, 83, 86, 87, 86, -102, -58, -61, -63, 116};
                }

                {
                    this.A02 = context;
                    this.A03 = this;
                }

                private void A02(AnonymousClass44 anonymousClass44, AnonymousClass44 anonymousClass442) {
                    P7.A07(this.A02, A00(169, 3, 118), P8.A0R, new PA(A00(4, 26, 86), A00(223, 5, 74) + anonymousClass44 + A00(0, 4, 83) + anonymousClass442));
                }

                private void A03(String str, String str2, boolean z) {
                    AnonymousClass40 anonymousClass40 = this;
                    AdSettings.IntegrationErrorMode integrationErrorModeA00 = C02363g.A00(anonymousClass40.A02);
                    String str3 = String.format(Locale.US, AdErrorType.INCORRECT_API_CALL_ERROR.getDefaultErrorMessage(), str, str2);
                    char c = !z ? (char) 2 : (char) 4;
                    while (true) {
                        switch (c) {
                            case 2:
                                anonymousClass40 = anonymousClass40;
                                str3 = str3;
                                Log.e(A00(36, 17, 31), str3);
                                P7.A07(anonymousClass40.A02, A00(169, 3, 118), P8.A0P, new PA(str3));
                                c = 3;
                                break;
                            case 3:
                                return;
                            case 4:
                                integrationErrorModeA00 = integrationErrorModeA00;
                                switch (C02553z.A00[integrationErrorModeA00.ordinal()]) {
                                    case 1:
                                        c = 7;
                                        break;
                                    case 2:
                                        c = 6;
                                        break;
                                    default:
                                        c = 5;
                                        break;
                                }
                            case 5:
                                str3 = str3;
                                Log.e(A00(36, 17, 31), str3);
                                c = 3;
                                break;
                            case 6:
                                anonymousClass40 = anonymousClass40;
                                str3 = str3;
                                anonymousClass40.A03.A09();
                                anonymousClass40.A03.A06(10, AdErrorType.INCORRECT_STATE_ERROR, str3);
                                Log.e(A00(36, 17, 31), str3);
                                P7.A07(anonymousClass40.A02, A00(169, 3, 118), P8.A0P, new PA(str3));
                                c = 5;
                                break;
                            case 7:
                                throw new AnonymousClass45(str3 + A00(53, 87, 14));
                        }
                    }
                }

                @Override // com.facebook.ads.redexgen.X.InterfaceC02533x
                public final boolean A33() {
                    AnonymousClass40 anonymousClass40 = this;
                    boolean z = false;
                    boolean z2 = true;
                    boolean z3 = false;
                    char c = anonymousClass40.A00 != AnonymousClass44.A02 ? (char) 2 : (char) 3;
                    while (true) {
                        switch (c) {
                            case 2:
                                anonymousClass40 = anonymousClass40;
                                if (anonymousClass40.A00 != AnonymousClass44.A04) {
                                    c = '\n';
                                    break;
                                } else {
                                    c = 3;
                                    break;
                                }
                            case 3:
                                z = z2;
                                c = 4;
                                break;
                            case 4:
                                if (!z) {
                                    c = '\t';
                                    break;
                                } else {
                                    c = 5;
                                    break;
                                }
                            case 5:
                                anonymousClass40 = anonymousClass40;
                                anonymousClass40.A00 = AnonymousClass44.A06;
                                c = 6;
                                break;
                            case 6:
                                if (!z) {
                                    c = 7;
                                    break;
                                } else {
                                    c = '\b';
                                    break;
                                }
                            case 7:
                                return z2;
                            case '\b':
                                z2 = z3;
                                c = 7;
                                break;
                            case '\t':
                                anonymousClass40 = anonymousClass40;
                                z3 = false;
                                anonymousClass40.A03(A00(30, 6, 11), A00(190, 33, 8), false);
                                c = 6;
                                break;
                            case '\n':
                                z3 = false;
                                z = false;
                                c = 4;
                                break;
                        }
                    }
                }

                @Override // com.facebook.ads.redexgen.X.InterfaceC02533x
                public final boolean A34() {
                    AnonymousClass40 anonymousClass40 = this;
                    boolean z = false;
                    boolean z2 = true;
                    boolean z3 = false;
                    char c = anonymousClass40.A00 == AnonymousClass44.A05 ? (char) 2 : '\r';
                    while (true) {
                        switch (c) {
                            case 2:
                                anonymousClass40 = anonymousClass40;
                                if (anonymousClass40.A01 != AnonymousClass44.A07) {
                                    c = 4;
                                    break;
                                } else {
                                    c = 3;
                                    break;
                                }
                            case 3:
                                anonymousClass40 = anonymousClass40;
                                if (!K1.A0n(anonymousClass40.A02)) {
                                    c = '\r';
                                    break;
                                } else {
                                    c = 4;
                                    break;
                                }
                            case 4:
                                z = z2;
                                c = 5;
                                break;
                            case 5:
                                if (!z) {
                                    c = '\n';
                                    break;
                                } else {
                                    c = 6;
                                    break;
                                }
                            case 6:
                                anonymousClass40 = anonymousClass40;
                                anonymousClass40.A00 = AnonymousClass44.A02;
                                anonymousClass40.A01 = AnonymousClass44.A07;
                                c = 7;
                                break;
                            case 7:
                                if (!z) {
                                    c = '\b';
                                    break;
                                } else {
                                    c = '\t';
                                    break;
                                }
                            case '\b':
                                return z2;
                            case '\t':
                                z2 = z3;
                                c = '\b';
                                break;
                            case '\n':
                                anonymousClass40 = anonymousClass40;
                                if (anonymousClass40.A00 == AnonymousClass44.A05) {
                                    c = '\f';
                                    break;
                                } else {
                                    c = 11;
                                    break;
                                }
                            case 11:
                                anonymousClass40 = anonymousClass40;
                                anonymousClass40.A03(A00(140, 6, 50), A00(TsExtractor.TS_STREAM_TYPE_AC4, 18, 96), z2);
                                c = 7;
                                break;
                            case '\f':
                                anonymousClass40 = anonymousClass40;
                                z3 = false;
                                anonymousClass40.A03(A00(140, 6, 50), A00(146, 23, 111), false);
                                c = 7;
                                break;
                            case '\r':
                                z3 = false;
                                z = false;
                                c = 5;
                                break;
                        }
                    }
                }

                @Override // com.facebook.ads.redexgen.X.InterfaceC02533x
                public final AnonymousClass44 A3C() {
                    return this.A00;
                }

                @Override // com.facebook.ads.redexgen.X.InterfaceC02533x
                public final void A6y(AnonymousClass44 anonymousClass44) {
                    this.A00 = anonymousClass44;
                    this.A01 = anonymousClass44;
                }

                @Override // com.facebook.ads.redexgen.X.InterfaceC02533x
                public final void A6z(AdError adError) {
                    this.A00 = AnonymousClass44.A04;
                    this.A01 = AnonymousClass44.A04;
                }

                @Override // com.facebook.ads.redexgen.X.InterfaceC02533x
                public final void A71() {
                    if (this.A00 != AnonymousClass44.A06) {
                        A02(this.A00, AnonymousClass44.A05);
                    }
                    this.A00 = AnonymousClass44.A05;
                }

                @Override // com.facebook.ads.redexgen.X.InterfaceC02533x
                public final void A73() {
                    if (this.A01 != AnonymousClass44.A07) {
                        A02(this.A00, AnonymousClass44.A08);
                    }
                    this.A01 = AnonymousClass44.A08;
                }
            };
        } else {
            this.A01 = new InterfaceC02533x(context, this) { // from class: com.facebook.ads.redexgen.X.3y
                private static byte[] A05;
                private static final HashMap<AnonymousClass44, AnonymousClass44> A06;

                @Nullable
                private AdError A00;
                private final Context A02;
                private final AnonymousClass43 A03;
                private AnonymousClass44 A01 = AnonymousClass44.A02;
                private final Deque<AnonymousClass44> A04 = new LinkedList();

                private static String A00(int i, int i2, int i3) {
                    byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
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
                                bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 95);
                                i4++;
                                c = 2;
                                break;
                            case 4:
                                return new String(bArrCopyOfRange);
                        }
                    }
                }

                private static void A04() {
                    A05 = new byte[]{-17, 67, 62, -17, -15, 12, 9, 8, 1, -70, 3, 8, 14, -1, 12, 8, -5, 6, -70, 14, 12, -5, 8, 13, 3, 14, 3, 9, 8, -56, 18, 21, 7, 10, -50, -49, -89, -93, -94, -42, -59, -54, -58, -49, -60, -58, -81, -58, -43, -40, -48, -45, -52, -14, -28, 29, 51, 57, -28, 39, 37, 50, -28, 39, 44, 37, 50, 43, 41, -28, 13, 50, 56, 41, 43, 54, 37, 56, 45, 51, 50, -28, 9, 54, 54, 51, 54, -28, 49, 51, 40, 41, -28, 38, 61, -28, 55, 41, 56, 56, 45, 50, 43, -28, 5, 40, 23, 41, 56, 56, 45, 50, 43, 55, -14, 55, 41, 56, 13, 50, 56, 41, 43, 54, 37, 56, 45, 51, 50, 9, 54, 54, 51, 54, 17, 51, 40, 41, -20, -19, -29, 5, -8, 9, -4, 2, 8, 6, -77, 6, 7, -12, 7, -8, 6, -51, -77, 16, 5, 12, 20, -59, -58, -66, 25, 40, 33, -104, -76, -76, -104, -21, 55, 44, 62, 63, 30, 63, 44, 63, 48, 62, -21, 8, -21, -64, -64, -64, -90, -104, -90, -104, -56, -22, -35, -18, -31, -25, -19, -21, -104, -35, -22, -22, -25, -22, -78, -104, 60, 67, 58, 58, 24, 68, 65, 63, -14};
                }

                static {
                    A04();
                    A06 = new HashMap<>();
                    A06.put(AnonymousClass44.A02, AnonymousClass44.A06);
                    A06.put(AnonymousClass44.A06, AnonymousClass44.A05);
                    A06.put(AnonymousClass44.A05, AnonymousClass44.A07);
                    A06.put(AnonymousClass44.A07, AnonymousClass44.A08);
                    A06.put(AnonymousClass44.A08, AnonymousClass44.A06);
                    A06.put(AnonymousClass44.A03, AnonymousClass44.A06);
                    A06.put(AnonymousClass44.A04, AnonymousClass44.A06);
                }

                {
                    this.A02 = context;
                    this.A03 = this;
                    this.A04.add(this.A01);
                }

                private static String A01(@Nullable AdError adError) {
                    String errorMessage = null;
                    char c = adError != null ? (char) 2 : (char) 6;
                    while (true) {
                        switch (c) {
                            case 2:
                                adError = adError;
                                errorMessage = adError.getErrorMessage();
                                c = 3;
                                break;
                            case 3:
                                errorMessage = errorMessage;
                                if (errorMessage.length() <= 75) {
                                    c = 5;
                                    break;
                                } else {
                                    c = 4;
                                    break;
                                }
                            case 4:
                                errorMessage = errorMessage.substring(0, 75) + A00(185, 3, 51);
                                c = 5;
                                break;
                            case 5:
                                return errorMessage;
                            case 6:
                                errorMessage = A00(208, 4, 111);
                                c = 3;
                                break;
                        }
                    }
                }

                private String A02(AnonymousClass44 anonymousClass44) {
                    C02543y c02543y = this;
                    StringBuilder sb = new StringBuilder();
                    sb.append(A00(140, 17, 52));
                    Iterator<AnonymousClass44> it = c02543y.A04.iterator();
                    int i = 0;
                    char c = 2;
                    while (true) {
                        switch (c) {
                            case 2:
                                it = it;
                                if (!it.hasNext()) {
                                    c = 6;
                                    break;
                                } else {
                                    c = 3;
                                    break;
                                }
                            case 3:
                                c02543y = c02543y;
                                sb = sb;
                                it = it;
                                sb.append(it.next());
                                if (i == c02543y.A04.size() - 1) {
                                    c = 5;
                                    break;
                                } else {
                                    c = 4;
                                    break;
                                }
                            case 4:
                                sb = sb;
                                sb.append(A00(167, 4, 25));
                                c = 5;
                                break;
                            case 5:
                                i++;
                                c = 2;
                                break;
                            case 6:
                                anonymousClass44 = anonymousClass44;
                                if (!AnonymousClass44.A04.equals(anonymousClass44)) {
                                    c = '\b';
                                    break;
                                } else {
                                    c = 7;
                                    break;
                                }
                            case 7:
                                c02543y = c02543y;
                                sb = sb;
                                sb.append(A00(190, 18, 25)).append(A01(c02543y.A00));
                                c = '\b';
                                break;
                            case '\b':
                                return sb.toString();
                        }
                    }
                }

                private void A03() {
                    this.A04.addFirst(this.A01);
                    if (this.A04.size() > 5) {
                        this.A04.removeLast();
                    }
                }

                private void A05(AnonymousClass44 anonymousClass44) {
                    C02543y c02543y = this;
                    char c = !K1.A0y(c02543y.A02) ? (char) 2 : (char) 4;
                    while (true) {
                        switch (c) {
                            case 2:
                                c02543y = c02543y;
                                anonymousClass44 = anonymousClass44;
                                c02543y.A01 = anonymousClass44;
                                c = 3;
                                break;
                            case 3:
                                return;
                            case 4:
                                anonymousClass44 = anonymousClass44;
                                if (!anonymousClass44.equals(AnonymousClass44.A04)) {
                                    c = 6;
                                    break;
                                } else {
                                    c = 5;
                                    break;
                                }
                            case 5:
                                c02543y = c02543y;
                                anonymousClass44 = anonymousClass44;
                                c02543y.A01 = anonymousClass44;
                                c02543y.A03();
                                c = 3;
                                break;
                            case 6:
                                anonymousClass44 = anonymousClass44;
                                if (!anonymousClass44.equals(AnonymousClass44.A03)) {
                                    c = '\b';
                                    break;
                                } else {
                                    c = 7;
                                    break;
                                }
                            case 7:
                                c02543y = c02543y;
                                anonymousClass44 = anonymousClass44;
                                c02543y.A01 = anonymousClass44;
                                c02543y.A03();
                                c = 3;
                                break;
                            case '\b':
                                c02543y = c02543y;
                                anonymousClass44 = anonymousClass44;
                                if (!anonymousClass44.equals(A06.get(c02543y.A01))) {
                                    c = '\t';
                                    break;
                                } else {
                                    c = '\n';
                                    break;
                                }
                            case '\t':
                                c02543y = c02543y;
                                anonymousClass44 = anonymousClass44;
                                P7.A07(c02543y.A02, A00(164, 3, 89), P8.A0R, new PA(A00(4, 26, 59), A00(212, 5, 115) + c02543y.A01 + A00(0, 4, 112) + anonymousClass44 + A00(171, 14, 108) + c02543y.A02(c02543y.A01)));
                                c = '\n';
                                break;
                            case '\n':
                                c02543y = c02543y;
                                anonymousClass44 = anonymousClass44;
                                c02543y.A01 = anonymousClass44;
                                c02543y.A03();
                                c = 3;
                                break;
                        }
                    }
                }

                private boolean A06(AnonymousClass44 anonymousClass44, String str) {
                    C02543y c02543y = this;
                    String multiLineError = null;
                    String strA02 = null;
                    String str2 = null;
                    boolean z = false;
                    char c = !anonymousClass44.equals(A06.get(c02543y.A01)) ? (char) 2 : (char) 7;
                    while (true) {
                        switch (c) {
                            case 2:
                                c02543y = c02543y;
                                if (!K1.A0y(c02543y.A02)) {
                                    c = 3;
                                    break;
                                } else {
                                    c = 4;
                                    break;
                                }
                            case 3:
                                return z;
                            case 4:
                                c02543y = c02543y;
                                str = str;
                                z = false;
                                AdSettings.IntegrationErrorMode integrationErrorModeA00 = C02363g.A00(c02543y.A02);
                                strA02 = c02543y.A02(c02543y.A01);
                                str2 = String.format(Locale.US, AdErrorType.INCORRECT_STATE_ERROR.getDefaultErrorMessage(), str, c02543y.A01);
                                multiLineError = str2 + A00(TsExtractor.TS_PACKET_SIZE, 2, 25) + strA02;
                                switch (C02523w.A00[integrationErrorModeA00.ordinal()]) {
                                    case 1:
                                        c = '\b';
                                        break;
                                    case 2:
                                        c = 6;
                                        break;
                                    default:
                                        c = 5;
                                        break;
                                }
                            case 5:
                                multiLineError = multiLineError;
                                Log.e(A00(36, 17, 2), multiLineError);
                                z = true;
                                c = 3;
                                break;
                            case 6:
                                c02543y = c02543y;
                                strA02 = strA02;
                                str2 = str2;
                                multiLineError = multiLineError;
                                c02543y.A03.A09();
                                c02543y.A03.A06(10, AdErrorType.INCORRECT_STATE_ERROR, multiLineError);
                                Log.e(A00(36, 17, 2), multiLineError);
                                PA pa = new PA(str2 + A00(163, 1, 85) + strA02);
                                pa.A03(1);
                                P7.A07(c02543y.A02, A00(164, 3, 89), P8.A0P, pa);
                                z = true;
                                c = 3;
                                break;
                            case 7:
                                c02543y = c02543y;
                                anonymousClass44 = anonymousClass44;
                                c02543y.A01 = anonymousClass44;
                                c02543y.A03();
                                c = 3;
                                break;
                            case '\b':
                                String lastStates = multiLineError;
                                StringBuilder sbAppend = new StringBuilder().append(lastStates);
                                String singleLineError = A00(53, 87, 101);
                                throw new AnonymousClass45(sbAppend.append(singleLineError).toString());
                        }
                    }
                }

                @Override // com.facebook.ads.redexgen.X.InterfaceC02533x
                public final boolean A33() {
                    return A06(AnonymousClass44.A06, A00(30, 6, 71));
                }

                @Override // com.facebook.ads.redexgen.X.InterfaceC02533x
                public final boolean A34() {
                    return A06(AnonymousClass44.A07, A00(157, 6, 62));
                }

                @Override // com.facebook.ads.redexgen.X.InterfaceC02533x
                public final AnonymousClass44 A3C() {
                    return this.A01;
                }

                @Override // com.facebook.ads.redexgen.X.InterfaceC02533x
                public final void A6y(AnonymousClass44 anonymousClass44) {
                    A05(anonymousClass44);
                }

                @Override // com.facebook.ads.redexgen.X.InterfaceC02533x
                public final void A6z(AdError adError) {
                    this.A00 = adError;
                    A05(AnonymousClass44.A04);
                }

                @Override // com.facebook.ads.redexgen.X.InterfaceC02533x
                public final void A71() {
                    A05(AnonymousClass44.A05);
                }

                @Override // com.facebook.ads.redexgen.X.InterfaceC02533x
                public final void A73() {
                    A05(AnonymousClass44.A08);
                }
            };
        }
        this.A02 = new C4O(context, this);
        this.A05 = new Handler(Looper.getMainLooper());
        this.A03 = c4f.A2t(this.A01, this.A02);
    }

    public final void A03() throws RemoteException {
        try {
            if (this.A02.A00 != null) {
                this.A02.A00.send(this.A03.A2s(this.A04));
            }
        } catch (RemoteException unused) {
            this.A02.A08();
            A0A();
            this.A02.A0A(A00(220, 34, 99));
        }
    }

    public final void A04() {
        AnonymousClass43 anonymousClass43 = this;
        char c = !K1.A0q(anonymousClass43.A00) ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    anonymousClass43 = anonymousClass43;
                    if (anonymousClass43.A01.A3C() == AnonymousClass44.A03) {
                        c = 2;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    if (!BuildConfigApi.isDebug()) {
                        c = 5;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 5:
                    anonymousClass43 = anonymousClass43;
                    P7.A08(anonymousClass43.A00, A00(204, 3, 0), P8.A0M, new PA(A00(342, 23, 83)));
                    c = 6;
                    break;
                case 6:
                    anonymousClass43 = anonymousClass43;
                    Log.e(A00(169, 17, 126), A00(21, 148, 19));
                    anonymousClass43.A09();
                    c = 2;
                    break;
            }
        }
    }

    public final void A05(int i, @Nullable Bundle bundle) {
        this.A02.A09(i, bundle);
    }

    public final void A06(int i, AdErrorType adErrorType, @Nullable String str) {
        Bundle bundle = new Bundle();
        char c = str != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    str = str;
                    bundle = bundle;
                    bundle.putString(A00(0, 21, 42), str);
                    c = 3;
                    break;
                case 3:
                    AnonymousClass43 anonymousClass43 = this;
                    Bundle bundle2 = bundle;
                    bundle2.putInt(A00(186, 18, 22), adErrorType.getErrorCode());
                    anonymousClass43.A5m(i, anonymousClass43.A04, bundle2);
                    return;
                case 4:
                    adErrorType = adErrorType;
                    bundle = bundle;
                    bundle.putString(A00(0, 21, 42), adErrorType.getDefaultErrorMessage());
                    c = 3;
                    break;
            }
        }
    }

    public final void A07(Message message) {
        this.A03.A3q(message);
    }

    public final boolean A08(Context context) {
        AnonymousClass43 anonymousClass43 = this;
        boolean zA03 = true;
        char c = AdInternalSettings.sForceIpc ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return zA03;
                case 3:
                    if (AdInternalSettings.sMultiprocessSupportMode != AdSettings.MultiprocessSupportMode.MULTIPROCESS_SUPPORT_MODE_ON) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    context = context;
                    if (!C02363g.A04(context)) {
                        c = 5;
                        break;
                    } else {
                        c = 2;
                        break;
                    }
                case 5:
                    if (AdInternalSettings.sMultiprocessSupportMode != AdSettings.MultiprocessSupportMode.MULTIPROCESS_SUPPORT_MODE_OFF) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    anonymousClass43 = anonymousClass43;
                    zA03 = false;
                    P7.A08(anonymousClass43.A00, A00(298, 3, 6), P8.A1K, new PA(A00(User.USER_ROLE_SYSTEM, 27, 63)));
                    c = 2;
                    break;
                case 7:
                    context = context;
                    if (!K1.A0t(context)) {
                        c = '\b';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\b':
                    zA03 = false;
                    c = 2;
                    break;
                case '\t':
                    int i = A07;
                    A07 = i + 1;
                    if (i > 0) {
                        c = '\f';
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    context = context;
                    if (!K1.A1H(context)) {
                        c = '\f';
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    zA03 = false;
                    c = 2;
                    break;
                case '\f':
                    anonymousClass43 = anonymousClass43;
                    if (!C0775Ok.A04(anonymousClass43.A00)) {
                        c = '\r';
                        break;
                    } else {
                        c = 17;
                        break;
                    }
                case '\r':
                    int i2 = A06;
                    A06 = i2 + 1;
                    if (i2 <= 0) {
                        c = 17;
                        break;
                    } else {
                        c = 14;
                        break;
                    }
                case 14:
                    if (A06 != 3) {
                        c = 16;
                        break;
                    } else {
                        c = 15;
                        break;
                    }
                case 15:
                    anonymousClass43 = anonymousClass43;
                    P7.A08(anonymousClass43.A00, A00(298, 3, 6), P8.A1J, new PA(A00(301, 41, 99)));
                    c = 16;
                    break;
                case 16:
                    zA03 = false;
                    c = 2;
                    break;
                case 17:
                    anonymousClass43 = anonymousClass43;
                    zA03 = C0646Jg.A03(anonymousClass43.A00);
                    c = 2;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass42
    public final void A5m(int i, String str, @Nullable Bundle bundle) {
        final Message messageObtain = Message.obtain((Handler) null, i);
        messageObtain.getData().putString(A00(Constants.ADMIN_SET_USER_MEMBERSHIP_TITLE, 13, 90), str);
        if (bundle != null) {
            messageObtain.getData().putBundle(A00(281, 17, 97), bundle);
        }
        this.A05.post(new C2M() { // from class: com.facebook.ads.redexgen.X.41
            @Override // com.facebook.ads.redexgen.X.C2M
            public final void A01() {
                this.A01.A03.A3q(messageObtain);
            }
        });
    }
}
