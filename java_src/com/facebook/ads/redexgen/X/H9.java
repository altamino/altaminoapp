package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class H9 implements InterfaceC0552Fq {
    private static byte[] A01;
    public final /* synthetic */ HK A00;

    static {
        A01();
    }

    private static String A00(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 95);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{60, 57, 50, 127, 60, 57, 50, 51, 126, 35, 63, 114, 101, 101, 120, 101, 12, 101, 105, 107, 118, 115, 114, 99, 116, 89, 103, 116, 101, 110, 111, 114, 99, 101, 114, 115, 116, 99, 7, 2, 9, 68, 7, 2, 9, 8, 93, 95, 69, 24, 4};
    }

    public H9(HK hk) {
        this.A00 = hk;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:14:0x008d
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1178)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws java.lang.Throwable {
        /*
            r5 = this;
            java.io.File r4 = new java.io.File
            java.io.File r3 = android.os.Environment.getRootDirectory()
            r2 = 0
            r1 = 11
            r0 = 15
            java.lang.String r0 = A00(r2, r1, r0)
            r4.<init>(r3, r0)
            boolean r0 = r4.exists()
            if (r0 != 0) goto L32
            java.io.File r4 = new java.io.File
            java.io.File r3 = android.os.Environment.getRootDirectory()
            r2 = 38
            r1 = 13
            r0 = 52
            java.lang.String r0 = A00(r2, r1, r0)
            r4.<init>(r3, r0)
            boolean r0 = r4.exists()
            if (r0 != 0) goto L32
        L31:
            return
        L32:
            java.io.RandomAccessFile r3 = new java.io.RandomAccessFile     // Catch: java.lang.Throwable -> L8d
            r2 = 16
            r1 = 1
            r0 = 33
            java.lang.String r0 = A00(r2, r1, r0)     // Catch: java.lang.Throwable -> L8d
            r3.<init>(r4, r0)     // Catch: java.lang.Throwable -> L8d
            r0 = 18
            r3.seek(r0)     // Catch: java.lang.Throwable -> L8d
            r0 = 2
            byte[] r2 = new byte[r0]     // Catch: java.lang.Throwable -> L8d
            r3.readFully(r2)     // Catch: java.lang.Throwable -> L8d
            r0 = 0
            r0 = r2[r0]     // Catch: java.lang.Throwable -> L8d
            r1 = r0 & 255(0xff, float:3.57E-43)
            r0 = 1
            r0 = r2[r0]     // Catch: java.lang.Throwable -> L8d
            r0 = r0 & 255(0xff, float:3.57E-43)
            int r0 = r0 << 8
            r1 = r1 | r0
            r3.close()     // Catch: java.lang.Throwable -> L8d
            r0 = 3
            if (r1 == r0) goto L78
            r0 = 62
            if (r1 != r0) goto L63
            goto L78
        L63:
            com.facebook.ads.redexgen.X.HK r3 = r5.A00     // Catch: java.lang.Throwable -> L8d
            r2 = 17
            r1 = 21
            r0 = 89
            java.lang.String r1 = A00(r2, r1, r0)     // Catch: java.lang.Throwable -> L8d
            r0 = 0
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)     // Catch: java.lang.Throwable -> L8d
            r3.A03(r1, r0)     // Catch: java.lang.Throwable -> L8d
            goto L31
        L78:
            com.facebook.ads.redexgen.X.HK r3 = r5.A00     // Catch: java.lang.Throwable -> L8d
            r2 = 17
            r1 = 21
            r0 = 89
            java.lang.String r1 = A00(r2, r1, r0)     // Catch: java.lang.Throwable -> L8d
            r0 = 1
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)     // Catch: java.lang.Throwable -> L8d
            r3.A03(r1, r0)     // Catch: java.lang.Throwable -> L8d
            goto L31
        L8d:
            com.facebook.ads.redexgen.X.HK r4 = r5.A00
            r2 = 17
            r1 = 21
            r0 = 89
            java.lang.String r3 = A00(r2, r1, r0)
            r2 = 11
            r1 = 5
            r0 = 72
            java.lang.String r0 = A00(r2, r1, r0)
            r4.A02(r3, r0)
            goto L31
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.H9.A32():void");
    }
}
