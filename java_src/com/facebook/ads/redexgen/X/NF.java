package com.facebook.ads.redexgen.X;

import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public abstract class NF implements N8 {
    private static byte[] A01;
    private final ExecutorService A00 = Executors.newSingleThreadExecutor();

    static {
        A02();
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 7 out of bounds for length 7
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:638)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    private long A00(List<File> list) {
        long length = 0;
        Iterator<File> it = list.iterator();
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    it = it;
                    if (!it.hasNext()) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    it = it;
                    length += it.next().length();
                    c = 2;
                    break;
                case 4:
                    return length;
            }
        }
    }

    private static String A01(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 10);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A01 = new byte[]{120, 62, 55, 42, 120, 44, 42, 49, 53, 53, 49, 54, 63, 120, 59, 57, 59, 48, 61, 64, 98, 96, 107, 102, 35, 101, 106, 111, 102, 35, 125, 95, 66, 85, 84, 110, 76, 78, 69, 72, 89, 16, 10, 89, 29, 28, 21, 28, 13, 28, 29, 89, 27, 28, 26, 24, 12, 10, 28, 89, 16, 13, 89, 28, 1, 26, 28, 28, 29, 10, 89, 26, 24, 26, 17, 28, 89, 21, 16, 20, 16, 13, 123, 76, 76, 81, 76, 30, 90, 91, 82, 91, 74, 87, 80, 89, 30, 88, 87, 82, 91, 30};
    }

    public abstract boolean A06(File file, long j, int i);

    /* JADX INFO: Access modifiers changed from: private */
    public void A04(File file) throws IOException {
        ND.A04(file);
        A05(ND.A01(file.getParentFile()));
    }

    private void A05(List<File> list) {
        NF nf = this;
        File next = null;
        long length = 0;
        long jA00 = nf.A00(list);
        int size = list.size();
        Iterator<File> it = list.iterator();
        int totalCount = 2;
        while (true) {
            switch (totalCount) {
                case 2:
                    it = it;
                    if (!it.hasNext()) {
                        totalCount = 7;
                        break;
                    } else {
                        totalCount = 3;
                        break;
                    }
                case 3:
                    nf = nf;
                    it = it;
                    next = it.next();
                    if (!nf.A06(next, jA00, size)) {
                        totalCount = 4;
                        break;
                    } else {
                        totalCount = 2;
                        break;
                    }
                case 4:
                    next = next;
                    length = next.length();
                    if (!next.delete()) {
                        totalCount = 6;
                        break;
                    } else {
                        totalCount = 5;
                        break;
                    }
                case 5:
                    next = next;
                    size--;
                    jA00 -= length;
                    String str = A01(19, 11, 9) + next + A01(40, 42, 115);
                    totalCount = 2;
                    break;
                case 6:
                    next = next;
                    Log.e(A01(30, 10, 39), A01(82, 20, 52) + next + A01(0, 19, 82));
                    totalCount = 2;
                    break;
                case 7:
                    return;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.N8
    public void A7B(File file) throws IOException {
        this.A00.submit(new NE(this, file));
    }
}
