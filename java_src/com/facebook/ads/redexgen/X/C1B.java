package com.facebook.ads.redexgen.X;

import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.1B, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public abstract class C1B implements AnonymousClass16 {
    private static byte[] A01;
    private static final String A02;
    private final ExecutorService A00 = Executors.newSingleThreadExecutor();

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 35);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A01 = new byte[]{-63, 7, 16, 19, -63, 21, 19, 10, 14, 14, 10, 15, 8, -63, 4, 2, 4, 9, 6, -37, -7, -5, 0, -3, -72, -2, 1, 4, -3, -72, -118, -45, -35, -118, -50, -49, -42, -49, -34, -49, -50, -118, -52, -49, -51, -53, -33, -35, -49, -118, -45, -34, -118, -49, -30, -51, -49, -49, -50, -35, -118, -51, -53, -51, -46, -49, -118, -42, -45, -41, -45, -34, -45, 0, 0, -3, 0, -82, -14, -13, -6, -13, 2, -9, -4, -11, -82, -12, -9, -6, -13, -82};
    }

    public abstract boolean A06(File file, long j, int i);

    static {
        A02();
        A02 = C1B.class.getSimpleName();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A04(File file) throws IOException {
        AnonymousClass19.A03(file);
        A05(AnonymousClass19.A01(file.getParentFile()));
    }

    private void A05(List<File> list) {
        C1B c1b = this;
        File next = null;
        long length = 0;
        long jA00 = c1b.A00(list);
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
                    c1b = c1b;
                    it = it;
                    next = it.next();
                    if (!c1b.A06(next, jA00, size)) {
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
                    String str = A01(19, 11, 117) + next + A01(30, 42, 71);
                    totalCount = 2;
                    break;
                case 6:
                    next = next;
                    Log.e(A02, A01(72, 20, 107) + next + A01(0, 19, 126));
                    totalCount = 2;
                    break;
                case 7:
                    return;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass16
    public void A7B(final File file) throws IOException {
        this.A00.submit(new Callable<Void>(file) { // from class: com.facebook.ads.redexgen.X.1A
            private final File A00;

            {
                this.A00 = file;
            }

            /* JADX INFO: Access modifiers changed from: private */
            @Override // java.util.concurrent.Callable
            /* renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final Void call() throws Exception {
                this.A01.A04(this.A00);
                return null;
            }
        });
    }
}
