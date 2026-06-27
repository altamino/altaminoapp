package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.os.Message;
import android.os.RemoteException;
import com.facebook.ads.CacheFlag;
import com.facebook.ads.RewardData;
import com.facebook.ads.internal.settings.AdInternalSettings;
import com.narvii.permisson.NVPermission;
import com.narvii.util.Constants;
import java.io.Serializable;
import java.util.Arrays;
import java.util.EnumSet;
import org.apache.commons.compress.compressors.bzip2.BZip2Constants;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class K3 {
    private static byte[] A02;
    public static final String A03;
    private final Context A00;
    private final C02634h A01 = C02634h.A00();

    private static String A02(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 21);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A03() {
        A02 = new byte[]{98, 126, -120, -120, 126, -125, 124, 53, 118, 121, 79, 53, -103, -98, -92, -81, -94, -90, -81, -111, -96, -96, -81, -97, -94, -103, -107, -98, -92, -111, -92, -103, -97, -98, -81, -101, -107, -87, -49, -50, -56, -37, -50, -46, -37, -50, -63, -45, -67, -50, -64, -37, -64, -67, -48, -67, -37, -57, -63, -43, -51, -52, -58, -39, -61, -56, -50, -39, -52, -65, -47, -69, -52, -66, -39, -66, -69, -50, -69, -39, -59, -65, -45, 105, 118, 118, 115, -122, 121, 125, -122, 109, 104, 112, 115, -122, 118, 117, -122, 106, 104, 106, 111, 108, -122, 109, 104, 112, 115, 124, 121, 108, -122, 114, 108, -128, -94, -66, -56, -56, -66, -61, -68, 117, -74, -71, -125, -119, -118, -120, -107, 120, 127, 122, -107, -122, 119, -113, -126, -123, 119, 122, -107, -127, 123, -113, 119, -122, 127, 110, 111, 109, 122, 104, 96, 95, 100, 92, 111, 100, 106, 105, 122, 95, 92, 111, 92, 122, 102, 96, 116, -106, -105, -107, -94, -124, -121, -94, -116, -121, -94, -114, -120, -100, -78, -77, -79, -66, -92, -73, -77, -79, -96, -66, -89, -88, -83, -77, -78, -66, -86, -92, -72, -40, -41, -47, -28, -50, -45, -39, -28, -56, -58, -56, -51, -54, -28, -53, -47, -58, -52, -40, -28, -48, -54, -34, -86, -62, -48, -48, -66, -60, -62, -105, 125, 120, -101, -128, -101, -87, -68, -75, -85, -77, -84, -58, -70, -84, -69, -69, -80, -75, -82, -70, -58, -78, -84, -64, 110, 111, 109, 122, 107, 103, 92, 94, 96, 104, 96, 105, 111, 122, 102, 96, 116, -115, -87, -77, -77, -87, -82, -89, 96, -94, -75, -82, -92, -84, -91, 96, -90, -81, -78, 96, -83, -91, -77, -77, -95, -89, -91, 110, -125, -90, -117, -90, 124, 98};
    }

    static {
        A03();
        A03 = K3.class.getSimpleName();
    }

    public K3(Context context) {
        this.A00 = context;
    }

    private C4B A00(C4K c4k, String str) {
        C4B c4b = new C4B(c4k, this.A01, str);
        c4b.A09(c4k.A07, c4k.A04);
        return c4b;
    }

    private C4E A01(C4S c4s, String str) {
        C4E c4e = new C4E(c4s, this.A01, str);
        c4e.A0E(c4s.A04, c4s.A08, c4s.A07);
        return c4e;
    }

    public final boolean A04(Message message) throws RemoteException {
        char c;
        Message message2 = message;
        K3 k3 = this;
        AnonymousClass46 ad = null;
        Serializable serializableA00 = null;
        C4E c4e = null;
        boolean z = false;
        AnonymousClass46 anonymousClass46A04 = null;
        C02624g c02624gA05 = null;
        C4S rewardedVideoAdModel = null;
        AnonymousClass46 anonymousClass46A042 = null;
        Serializable serializableA002 = null;
        C02624g c02624gA052 = null;
        C4K c4k = null;
        Serializable serializableA003 = null;
        String string = message2.getData().getString(A02(171, 13, 46));
        switch (message2.what) {
            case 1010:
                c = 31;
                break;
            case 1011:
                c = 16;
                break;
            case 1012:
                c = '\n';
                break;
            case 2000:
                c = 21;
                break;
            case Constants.COMMUNITY_MEMBERSHIP_REQUEST_SUBMITTED /* 2001 */:
                c = 11;
                break;
            case 2002:
                c = '\t';
                break;
            case 2003:
                c = 4;
                break;
            default:
                c = 2;
                break;
        }
        while (true) {
            switch (c) {
                case 2:
                    z = false;
                    c = 3;
                    break;
                case 3:
                    return z;
                case 4:
                    string = string;
                    ad = C02634h.A00().A04(string);
                    if (!(ad instanceof C4E)) {
                        c = '\b';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    message2 = message2;
                    ad = ad;
                    c4e = (C4E) ad;
                    serializableA00 = O1.A00(message2.getData().getByteArray(A02(38, 22, 103)));
                    if (!(serializableA00 instanceof RewardData)) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c4e = c4e;
                    serializableA00 = serializableA00;
                    c4e.A0C((RewardData) serializableA00);
                    c = 7;
                    break;
                case 7:
                    z = true;
                    c = 3;
                    break;
                case '\b':
                    k3 = k3;
                    string = string;
                    P7.A07(k3.A00, A02(146, 3, 1), P8.A0J, new PA(A02(116, 11, 64), A02(235, 4, 34) + string));
                    c = 7;
                    break;
                case '\t':
                    k3 = k3;
                    string = string;
                    C02634h.A00().A08(string);
                    k3.A01.A07(2012, string);
                    z = true;
                    c = 3;
                    break;
                case '\n':
                    k3 = k3;
                    string = string;
                    C02634h.A00().A08(string);
                    k3.A01.A07(1017, string);
                    z = true;
                    c = 3;
                    break;
                case 11:
                    string = string;
                    anonymousClass46A042 = C02634h.A00().A04(string);
                    if (anonymousClass46A042 == null) {
                        c = 15;
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    anonymousClass46A042 = anonymousClass46A042;
                    if (!(anonymousClass46A042 instanceof C4E)) {
                        c = 15;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\r':
                    k3 = k3;
                    message2 = message2;
                    string = string;
                    anonymousClass46A042 = anonymousClass46A042;
                    ((C4E) anonymousClass46A042).A0H(message2.getData().getInt(A02(12, 26, 59), 0));
                    k3.A01.A07(2011, string);
                    c = 14;
                    break;
                case 14:
                    z = true;
                    c = 3;
                    break;
                case 15:
                    k3 = k3;
                    string = string;
                    P7.A07(k3.A00, A02(146, 3, 1), P8.A0J, new PA(A02(0, 12, 0), A02(302, 6, 45) + string));
                    c = 14;
                    break;
                case 16:
                    string = string;
                    anonymousClass46A04 = C02634h.A00().A04(string);
                    if (anonymousClass46A04 == null) {
                        c = 20;
                        break;
                    } else {
                        c = 17;
                        break;
                    }
                case 17:
                    anonymousClass46A04 = anonymousClass46A04;
                    if (!(anonymousClass46A04 instanceof C4B)) {
                        c = 20;
                        break;
                    } else {
                        c = 18;
                        break;
                    }
                case 18:
                    k3 = k3;
                    string = string;
                    anonymousClass46A04 = anonymousClass46A04;
                    ((C4B) anonymousClass46A04).A0C();
                    k3.A01.A07(1016, string);
                    c = 19;
                    break;
                case 19:
                    z = true;
                    c = 3;
                    break;
                case 20:
                    k3 = k3;
                    message2 = message2;
                    P7.A07(k3.A00, A02(146, 3, 1), P8.A0J, new PA(A02(275, 27, 43), A02(226, 9, 72) + message2));
                    c = 19;
                    break;
                case 21:
                    k3 = k3;
                    message2 = message2;
                    String rvMediationData = message2.getData().getString(A02(BZip2Constants.MAX_ALPHA_SIZE, 17, 6));
                    String string2 = message2.getData().getString(A02(127, 19, 33));
                    Boolean boolValueOf = Boolean.valueOf(message2.getData().getBoolean(A02(83, 33, 18)));
                    String string3 = message2.getData().getString(A02(184, 19, 74));
                    String string4 = message2.getData().getString(A02(149, 22, 6));
                    AdInternalSettings.sSettingsBundle.reset(message2.getData().getBundle(A02(239, 19, 82)));
                    rewardedVideoAdModel = new C4S(k3.A00, rvMediationData, null);
                    rewardedVideoAdModel.A05 = string3;
                    rewardedVideoAdModel.A06 = string4;
                    rewardedVideoAdModel.A04 = string2;
                    rewardedVideoAdModel.A08 = boolValueOf.booleanValue();
                    serializableA002 = O1.A00(message2.getData().getByteArray(A02(38, 22, 103)));
                    if (!(serializableA002 instanceof RewardData)) {
                        c = 23;
                        break;
                    } else {
                        c = 22;
                        break;
                    }
                case 22:
                    rewardedVideoAdModel = rewardedVideoAdModel;
                    serializableA002 = serializableA002;
                    rewardedVideoAdModel.A02 = (RewardData) serializableA002;
                    c = 23;
                    break;
                case 23:
                    string = string;
                    c02624gA052 = C02634h.A00().A05(string);
                    if (c02624gA052 == null) {
                        c = 30;
                        break;
                    } else {
                        c = 24;
                        break;
                    }
                case 24:
                    c02624gA052 = c02624gA052;
                    if (c02624gA052.A00 != null) {
                        c = 28;
                        break;
                    } else {
                        c = 25;
                        break;
                    }
                case 25:
                    k3 = k3;
                    string = string;
                    rewardedVideoAdModel = rewardedVideoAdModel;
                    c02624gA052 = c02624gA052;
                    c02624gA052.A00 = k3.A01(rewardedVideoAdModel, string);
                    c = 26;
                    break;
                case 26:
                    k3 = k3;
                    string = string;
                    k3.A01.A07(2010, string);
                    c = 27;
                    break;
                case 27:
                    z = true;
                    c = 3;
                    break;
                case 28:
                    c02624gA052 = c02624gA052;
                    if (!(c02624gA052.A00 instanceof C4E)) {
                        c = 26;
                        break;
                    } else {
                        c = 29;
                        break;
                    }
                case 29:
                    rewardedVideoAdModel = rewardedVideoAdModel;
                    c02624gA052 = c02624gA052;
                    ((C4E) c02624gA052.A00).A0E(rewardedVideoAdModel.A04, rewardedVideoAdModel.A08, rewardedVideoAdModel.A07);
                    c = 26;
                    break;
                case 30:
                    k3 = k3;
                    string = string;
                    P7.A07(k3.A00, A02(146, 3, 1), P8.A0J, new PA(A02(116, 11, 64), A02(235, 4, 34) + string));
                    c = 27;
                    break;
                case 31:
                    k3 = k3;
                    message2 = message2;
                    String string5 = message2.getData().getString(A02(BZip2Constants.MAX_ALPHA_SIZE, 17, 6));
                    String string6 = message2.getData().getString(A02(127, 19, 33));
                    EnumSet<CacheFlag> enumSet = (EnumSet) O1.A00(message2.getData().getByteArray(A02(NVPermission.REQ_SHARE_BUTTON_SAVE_STORY, 23, 112)));
                    String string7 = message2.getData().getString(A02(184, 19, 74));
                    String string8 = message2.getData().getString(A02(149, 22, 6));
                    AdInternalSettings.sSettingsBundle.reset(message2.getData().getBundle(A02(239, 19, 82)));
                    c4k = new C4K(k3.A00, null, string5);
                    c4k.A05 = string7;
                    c4k.A06 = string8;
                    c4k.A04 = string6;
                    c4k.A07 = enumSet;
                    serializableA003 = O1.A00(message2.getData().getByteArray(A02(60, 23, 101)));
                    if (!(serializableA003 instanceof RewardData)) {
                        c = '!';
                        break;
                    } else {
                        c = ' ';
                        break;
                    }
                case ' ':
                    c4k = c4k;
                    serializableA003 = serializableA003;
                    c4k.A02 = (RewardData) serializableA003;
                    c = '!';
                    break;
                case '!':
                    string = string;
                    c02624gA05 = C02634h.A00().A05(string);
                    if (c02624gA05 == null) {
                        c = '(';
                        break;
                    } else {
                        c = '\"';
                        break;
                    }
                case '\"':
                    c02624gA05 = c02624gA05;
                    if (c02624gA05.A00 != null) {
                        c = '&';
                        break;
                    } else {
                        c = '#';
                        break;
                    }
                case '#':
                    k3 = k3;
                    string = string;
                    c4k = c4k;
                    c02624gA05 = c02624gA05;
                    c02624gA05.A00 = k3.A00(c4k, string);
                    c = '$';
                    break;
                case '$':
                    k3 = k3;
                    string = string;
                    k3.A01.A07(1015, string);
                    c = '%';
                    break;
                case '%':
                    z = true;
                    c = 3;
                    break;
                case '&':
                    c02624gA05 = c02624gA05;
                    if (!(c02624gA05.A00 instanceof C4B)) {
                        c = '$';
                        break;
                    } else {
                        c = '\'';
                        break;
                    }
                case '\'':
                    c4k = c4k;
                    c02624gA05 = c02624gA05;
                    C4B c4b = (C4B) c02624gA05.A00;
                    EnumSet<CacheFlag> enumSet2 = c4k.A07;
                    String adId = c4k.A04;
                    c4b.A09(enumSet2, adId);
                    c = '$';
                    break;
                case '(':
                    k3 = k3;
                    string = string;
                    P7.A07(k3.A00, A02(146, 3, 1), P8.A0J, new PA(A02(116, 11, 64), A02(235, 4, 34) + string));
                    c = '%';
                    break;
            }
        }
    }
}
