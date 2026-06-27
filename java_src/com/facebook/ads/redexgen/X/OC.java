package com.facebook.ads.redexgen.X;

import java.io.IOException;
import java.io.Writer;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class OC extends Writer {
    public int A00;
    public char[] A01 = new char[1024];
    public final O7 A02;

    public OC(O7 o7) {
        this.A02 = o7;
    }

    private void A00() {
        this.A02.A6c(new String(this.A01, 0, this.A00));
        this.A00 = 0;
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        flush();
    }

    @Override // java.io.Writer, java.io.Flushable
    public final void flush() {
        if (this.A00 > 0) {
            A00();
        }
    }

    @Override // java.io.Writer
    public final void write(char[] cArr, int i, int i2) throws IOException {
        OC oc = this;
        int i3 = i;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    if (i3 >= i + i2) {
                        c = '\b';
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    cArr = cArr;
                    if (cArr[i3] == '\n') {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    oc = oc;
                    if (oc.A00 != oc.A01.length) {
                        c = 7;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    oc = oc;
                    oc.A00();
                    c = 6;
                    break;
                case 6:
                    i3++;
                    c = 2;
                    break;
                case 7:
                    oc = oc;
                    cArr = cArr;
                    oc.A01[oc.A00] = cArr[i3];
                    oc.A00++;
                    c = 6;
                    break;
                case '\b':
                    return;
            }
        }
    }
}
