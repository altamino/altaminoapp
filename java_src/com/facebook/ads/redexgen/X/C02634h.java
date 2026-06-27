package com.facebook.ads.redexgen.X;

import android.os.Messenger;
import android.os.RemoteException;
import android.support.annotation.Nullable;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.4h, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C02634h implements AnonymousClass42 {
    private static C02634h A01;
    private static byte[] A02;
    private static final String A03;
    private final LinkedHashMap<String, C02624g> A00 = new LinkedHashMap<>();

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
        A02 = new byte[]{40, 47, 41, 36, 58, 63, 36, 50, 63, 36, 48, 62, 34, 93, 74, 81, 91, 83, 90, 64, 90, 71, 75, 77, 94, 76, 64, 84, 90, 70, 63, 8, 0, 2, 27, 8, 9, 77, 44, 9, 77, 66, 99, 117, 114, 116, 105, 127, 99, 98, 38, 71, 98, 38};
    }

    static {
        A02();
        A03 = C02634h.class.getSimpleName();
    }

    private C02634h() {
    }

    public static C02634h A00() {
        if (A01 == null) {
            A01 = new C02634h();
        }
        return A01;
    }

    private static void A03(String str) {
    }

    @Nullable
    public final AnonymousClass46 A04(String str) {
        AnonymousClass46 anonymousClass46 = null;
        C02624g c02624g = this.A00.get(str);
        char c = c02624g != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c02624g = c02624g;
                    anonymousClass46 = c02624g.A00;
                    c = 3;
                    break;
                case 3:
                    return anonymousClass46;
                case 4:
                    anonymousClass46 = null;
                    c = 3;
                    break;
            }
        }
    }

    @Nullable
    public final C02624g A05(String str) {
        return this.A00.get(str);
    }

    public final void A06() {
        AnonymousClass46 anonymousClass46 = null;
        Iterator<Map.Entry<String, C02624g>> it = this.A00.entrySet().iterator();
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
                    it = it;
                    anonymousClass46 = it.next().getValue().A00;
                    if (anonymousClass46 == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    anonymousClass46 = anonymousClass46;
                    anonymousClass46.destroy();
                    c = 5;
                    break;
                case 5:
                    it = it;
                    it.remove();
                    c = 2;
                    break;
                case 6:
                    return;
            }
        }
    }

    public final void A07(int i, String str) throws RemoteException {
        A5m(i, str, null);
    }

    public final void A08(String str) {
        C02634h c02634h = this;
        C02624g c02624g = c02634h.A00.get(str);
        char c = c02624g != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c02624g = c02624g;
                    if (c02624g.A00 == null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c02634h = c02634h;
                    str = str;
                    c02624g = c02624g;
                    A03(A01(41, 13, 77) + str);
                    c02624g.A00.destroy();
                    c02634h.A00.remove(str);
                    c = 4;
                    break;
                case 4:
                    return;
            }
        }
    }

    public final void A09(String str) {
        if (this.A00.get(str) != null) {
            A03(A01(30, 11, 38) + str);
            this.A00.remove(str);
        }
    }

    public final void A0A(String str) {
        this.A00.remove(str);
    }

    public final void A0B(String str, Messenger messenger) {
        this.A00.put(str, new C02624g(str, messenger));
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0012. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:18:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0016 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0027 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0055 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0012 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x007b -> B:5:0x0012). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x007e -> B:5:0x0012). Please report as a decompilation issue!!! */
    @Override // com.facebook.ads.redexgen.X.AnonymousClass42
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void A5m(int r9, java.lang.String r10, @android.support.annotation.Nullable android.os.Bundle r11) throws android.os.RemoteException {
        /*
            r8 = this;
            r0 = 0
            r0 = 0
            r0 = 0
            r5 = 0
            r0 = 0
            r0 = 0
            r0 = 0
            r6 = 0
            r0 = 0
            r2 = 0
            com.facebook.ads.redexgen.X.4g r4 = r8.A05(r10)
            if (r4 == 0) goto L6b
            r0 = 0
            r0 = 3
        L12:
            switch(r0) {
                case 3: goto L27;
                case 16: goto L55;
                case 17: goto L16;
                case 21: goto L81;
                default: goto L15;
            }
        L15:
            goto L12
        L16:
            r0 = 0
            android.os.Message r1 = android.os.Message.obtain(r0, r6)     // Catch: android.os.RemoteException -> L21
            android.os.Messenger r0 = r5.A01     // Catch: android.os.RemoteException -> L21
            r0.send(r1)     // Catch: android.os.RemoteException -> L21
            goto L75
        L21:
            java.lang.String r0 = r5.A02
            r8.A08(r0)
            goto L75
        L27:
            r0 = 0
            android.os.Message r7 = android.os.Message.obtain(r0, r9)     // Catch: android.os.RemoteException -> L68
            android.os.Bundle r3 = r7.getData()     // Catch: android.os.RemoteException -> L68
            r2 = 0
            r1 = 13
            r0 = 48
            java.lang.String r0 = A01(r2, r1, r0)     // Catch: android.os.RemoteException -> L68
            r3.putString(r0, r10)     // Catch: android.os.RemoteException -> L68
            if (r11 == 0) goto L4f
            android.os.Bundle r3 = r7.getData()     // Catch: android.os.RemoteException -> L68
            r2 = 13
            r1 = 17
            r0 = 84
            java.lang.String r0 = A01(r2, r1, r0)     // Catch: android.os.RemoteException -> L68
            r3.putBundle(r0, r11)     // Catch: android.os.RemoteException -> L68
        L4f:
            android.os.Messenger r0 = r4.A01     // Catch: android.os.RemoteException -> L68
            r0.send(r7)     // Catch: android.os.RemoteException -> L68
            goto L6b
        L55:
            java.util.Iterator r2 = (java.util.Iterator) r2
            java.lang.Object r0 = r2.next()
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0
            java.lang.Object r5 = r0.getValue()
            com.facebook.ads.redexgen.X.4g r5 = (com.facebook.ads.redexgen.X.C02624g) r5
            r0 = 0
            r6 = 3
            r0 = 17
            goto L12
        L68:
            r8.A08(r10)
        L6b:
            java.util.LinkedHashMap<java.lang.String, com.facebook.ads.redexgen.X.4g> r0 = r8.A00
            java.util.Set r0 = r0.entrySet()
            java.util.Iterator r2 = r0.iterator()
        L75:
            boolean r0 = r2.hasNext()
            if (r0 == 0) goto L7e
            r0 = 16
            goto L12
        L7e:
            r0 = 21
            goto L12
        L81:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C02634h.A5m(int, java.lang.String, android.os.Bundle):void");
    }
}
