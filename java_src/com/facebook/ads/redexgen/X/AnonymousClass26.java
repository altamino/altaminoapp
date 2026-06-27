package com.facebook.ads.redexgen.X;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.support.annotation.Nullable;
import android.util.Log;
import android.view.WindowManager;
import com.facebook.ads.AdError;
import com.facebook.ads.CacheFlag;
import com.facebook.ads.RewardData;
import com.facebook.ads.internal.protocol.AdPlacementType;
import com.google.android.exoplayer2.C;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.Map;
import java.util.UUID;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.26, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class AnonymousClass26 implements InterfaceC01851h, AnonymousClass25 {
    private static byte[] A0B;
    private long A00;
    private Context A01;
    private RewardData A02;
    private C2S A03;
    private C2T A04;
    private C3K A05;
    private String A06;

    @Nullable
    private String A07;
    private String A08;
    private boolean A09;
    private final String A0A = UUID.randomUUID().toString();

    static {
        A05();
    }

    private static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0B, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 9);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A05() {
        A0B = new byte[]{-90, -103, -107, -89, -124, -87, -96, -107, -113, -117, -128, -126, -124, -116, -124, -115, -109, 104, -125, 114, 110, 109, -95, -112, -107, -111, -102, -113, -111, 122, -111, -96, -93, -101, -98, -105, -74, -82, -83, -78, -86, -67, -78, -72, -73, -115, -86, -67, -86, -36, -50, -45, -55, -44, -36, -58, -117, -87, -74, 111, -68, 104, -69, -68, -87, -70, -68, 104, -119, -67, -84, -79, -83, -74, -85, -83, -106, -83, -68, -65, -73, -70, -77, -119, -85, -68, -79, -66, -79, -68, -63, 118, 104, -107, -87, -77, -83, 104, -69, -67, -70, -83, 104, -68, -80, -87, -68, 104, -79, -68, 111, -69, 104, -79, -74, 104, -63, -73, -67, -70, 104, -119, -74, -84, -70, -73, -79, -84, -107, -87, -74, -79, -82, -83, -69, -68, 118, -64, -75, -76, 104, -82, -79, -76, -83, 118, -31, -22, -25, -29, -20, -14, -46, -19, -23, -29, -20, -102, -109, -114, -106, -102, -118, 110, -119, -41, -54, -42, -38, -54, -40, -39, -71, -50, -46, -54, -111, -109, -122, -123, -122, -121, -118, -113, -122, -123, 112, -109, -118, -122, -113, -107, -126, -107, -118, -112, -113, 108, -122, -102, -85, -72, -87, -85, -83, -66, -77, -64, -77, -66, -61};
    }

    private int A00() {
        int rotation = 0;
        WindowManager windowManager = (WindowManager) this.A01.getSystemService(A03(49, 6, 92));
        int rotation2 = windowManager.getDefaultDisplay().getRotation();
        SO soA02 = A02();
        char c = soA02 == SO.A05 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    rotation = -1;
                    c = 3;
                    break;
                case 3:
                    return rotation;
                case 4:
                    soA02 = soA02;
                    if (soA02 != SO.A03) {
                        c = '\b';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    switch (rotation2) {
                        case 2:
                            c = 7;
                            break;
                        case 3:
                            c = 7;
                            break;
                        default:
                            c = 6;
                            break;
                    }
                case 6:
                    rotation = 0;
                    c = 3;
                    break;
                case 7:
                    rotation = 8;
                    c = 3;
                    break;
                case '\b':
                    switch (rotation2) {
                        case 2:
                            c = '\n';
                            break;
                        default:
                            c = '\t';
                            break;
                    }
                case '\t':
                    rotation = 1;
                    c = 3;
                    break;
                case '\n':
                    rotation = 9;
                    c = 3;
                    break;
            }
        }
    }

    private final M6 A01() {
        return this.A05.A09();
    }

    private SO A02() {
        return this.A05.A0A();
    }

    private void A04() {
        this.A09 = true;
    }

    private final void A06(Context context, C2S c2s, Map<String, Object> map, EnumSet<CacheFlag> enumSet, @Nullable String str) {
        this.A05 = new C3K(context, map, this, str);
        this.A05.A0D(context, enumSet);
    }

    private void A07(Intent intent) {
        this.A05.A0E(intent, this.A02, OQ.A03(this.A02, this.A0A, this.A06));
    }

    public final void A08(Context context, C2S c2s, Map<String, Object> map, EnumSet<CacheFlag> enumSet, @Nullable String str, @Nullable String str2, @Nullable RewardData rewardData) {
        AnonymousClass26 anonymousClass26 = this;
        String strA03 = null;
        anonymousClass26.A01 = context;
        anonymousClass26.A03 = c2s;
        anonymousClass26.A08 = (String) map.get(A03(8, 11, 22));
        char c = anonymousClass26.A08 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    anonymousClass26 = anonymousClass26;
                    strA03 = anonymousClass26.A08.split(A03(55, 1, 94))[0];
                    c = 3;
                    break;
                case 3:
                    AnonymousClass26 anonymousClass262 = anonymousClass26;
                    Map<String, Object> map2 = map;
                    anonymousClass262.A06 = strA03;
                    anonymousClass262.A00 = ((Long) map2.get(A03(165, 11, 92))).longValue();
                    anonymousClass262.A07 = str2;
                    anonymousClass262.A02 = rewardData;
                    anonymousClass262.A06(context, c2s, map2, enumSet, str);
                    return;
                case 4:
                    strA03 = A03(146, 0, 59);
                    c = 3;
                    break;
            }
        }
    }

    public final boolean A09() {
        AnonymousClass26 anonymousClass26 = this;
        Intent intent = null;
        boolean z = false;
        char c = !anonymousClass26.A09 ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    anonymousClass26 = anonymousClass26;
                    if (anonymousClass26.A03 == null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    anonymousClass26 = anonymousClass26;
                    anonymousClass26.A03.A5c(anonymousClass26, AdError.SHOW_CALLED_BEFORE_LOAD_ERROR);
                    c = 4;
                    break;
                case 4:
                    return z;
                case 5:
                    anonymousClass26 = anonymousClass26;
                    intent = new Intent(anonymousClass26.A01, (Class<?>) NQ.A03());
                    intent.putExtra(A03(176, 24, 24), anonymousClass26.A00());
                    intent.putExtra(A03(157, 8, 28), anonymousClass26.A0A);
                    intent.putExtra(A03(8, 11, 22), anonymousClass26.A08);
                    intent.putExtra(A03(165, 11, 92), anonymousClass26.A00);
                    intent.putExtra(A03(0, 8, 39), anonymousClass26.A01());
                    intent.putExtra(A03(36, 13, 64), anonymousClass26.A07);
                    anonymousClass26.A07(intent);
                    intent.addFlags(C.ENCODING_PCM_MU_LAW);
                    intent.putExtra(A03(146, 11, 117), anonymousClass26.A05.A0B());
                    c = 6;
                    break;
                case 6:
                    try {
                        anonymousClass26 = anonymousClass26;
                        NQ.A06(anonymousClass26.A01, intent);
                        z = true;
                        c = 4;
                        break;
                    } catch (ActivityNotFoundException e) {
                        P7.A07(anonymousClass26.A01, A03(200, 11, 65), P8.A04, new PA(e));
                        Log.e(A03(19, 17, 35), A03(56, 90, 63), e);
                        c = 4;
                        break;
                    }
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC01851h
    @Nullable
    public final String A3P() {
        return this.A05.A0B();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC01851h
    public final AdPlacementType A3d() {
        return AdPlacementType.INTERSTITIAL;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass25
    public final void A4k(AdError adError) {
        if (this.A03 != null) {
            this.A03.A5c(this, adError);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass25
    public final void A4l() {
        A04();
        this.A03.A5b(this);
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass25
    public final void A6o() {
        this.A04 = new C2T(this.A01, this.A0A, this, this.A03);
        this.A04.A02();
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass25
    public final void A7D() {
        if (this.A04 != null) {
            this.A04.A03();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC01851h
    public final void onDestroy() {
        if (this.A05 != null) {
            this.A05.A0C();
        }
    }
}
