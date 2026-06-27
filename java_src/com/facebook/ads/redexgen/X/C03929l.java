package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.text.TextUtils;
import com.facebook.ads.NativeAdBase;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.9l, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C03929l implements InterfaceC02443o {
    private static byte[] A03;
    private Context A00;
    private C03889h A01;
    private final NativeAdBase.MediaCacheFlag A02;

    static {
        A03();
    }

    private static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 93);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A03() {
        A03 = new byte[]{3, 24, 29, 24, 25, 1, 24, 36, 43, 62, 35, 60, 47};
    }

    public C03929l(C03889h c03889h, Context context, NativeAdBase.MediaCacheFlag mediaCacheFlag) {
        this.A01 = c03889h;
        this.A00 = context;
        this.A02 = mediaCacheFlag;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC02443o
    public final void A5G(final LQ lq) {
        MD.A00(new C2M() { // from class: com.facebook.ads.redexgen.X.9i
            @Override // com.facebook.ads.redexgen.X.C2M
            public final void A01() {
                if (this.A00.A01.A02() != null) {
                    this.A00.A01.A02().onAdError(LQ.A00(lq));
                }
            }
        });
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC02443o
    public final void A5q(List<AnonymousClass29> list) {
        C03929l c03929l = this;
        AnonymousClass29 next = null;
        C0607Ht c0607Ht = new C0607Ht(c03929l.A00);
        String strA02 = A02(0, 7, 43);
        Iterator<AnonymousClass29> it = list.iterator();
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    it = it;
                    if (!it.hasNext()) {
                        c = '\f';
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    strA02 = strA02;
                    it = it;
                    next = it.next();
                    if (!A02(0, 7, 43).equals(strA02)) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    next = next;
                    strA02 = next.A0P();
                    c = 5;
                    break;
                case 5:
                    c03929l = c03929l;
                    if (!c03929l.A02.equals(NativeAdBase.MediaCacheFlag.ALL)) {
                        c = 2;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    next = next;
                    if (next.A0J() == null) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c0607Ht = c0607Ht;
                    next = next;
                    c0607Ht.A0W(new C0603Hp(next.A0J().getUrl(), next.A0J().getHeight(), next.A0J().getWidth(), next.A0P(), A02(7, 6, 23)));
                    c = '\b';
                    break;
                case '\b':
                    next = next;
                    if (next.A0I() == null) {
                        c = '\n';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    c0607Ht = c0607Ht;
                    next = next;
                    c0607Ht.A0W(new C0603Hp(next.A0I().getUrl(), next.A0I().getHeight(), next.A0I().getWidth(), next.A0P(), A02(7, 6, 23)));
                    c = '\n';
                    break;
                case '\n':
                    next = next;
                    if (!TextUtils.isEmpty(next.A0R())) {
                        c = 11;
                        break;
                    } else {
                        c = 2;
                        break;
                    }
                case 11:
                    c0607Ht = c0607Ht;
                    next = next;
                    c0607Ht.A0a(new C0605Hr(next.A0R(), next.A0P(), A02(7, 6, 23)));
                    c = 2;
                    break;
                case '\f':
                    C03919k c03919k = new C03919k(c03929l, list);
                    String firstRequestId = A02(7, 6, 23);
                    c0607Ht.A0V(c03919k, new C0600Hm(strA02, firstRequestId));
                    return;
            }
        }
    }
}
