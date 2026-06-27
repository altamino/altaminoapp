package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Hg, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0594Hg {
    private char A00;
    private char A01;
    private char A02;
    private char[] A03 = Arrays.copyOf(C0595Hh.A05, C0595Hh.A05.length);
    public final /* synthetic */ C0595Hh A04;

    public C0594Hg(C0595Hh c0595Hh) {
        this.A04 = c0595Hh;
        this.A00 = '_';
        this.A01 = '_';
        do {
            char[] cArr = C0595Hh.A06;
            char c = this.A01;
            char[] cArr2 = this.A03;
            char c2 = (char) (this.A00 - 1);
            this.A00 = c2;
            this.A01 = cArr[c + cArr2[c2] + c0595Hh.A02[this.A00 % c0595Hh.A01]];
            this.A02 = this.A03[this.A00];
            this.A03[this.A00] = this.A03[this.A01];
            this.A03[this.A01] = this.A02;
            char[] cArr3 = C0595Hh.A06;
            char c3 = this.A01;
            char[] cArr4 = this.A03;
            char c4 = (char) (this.A00 - 1);
            this.A00 = c4;
            this.A01 = cArr3[c3 + cArr4[c4] + c0595Hh.A02[this.A00 % c0595Hh.A01]];
            this.A02 = this.A03[this.A00];
            this.A03[this.A00] = this.A03[this.A01];
            this.A03[this.A01] = this.A02;
            char[] cArr5 = C0595Hh.A06;
            char c5 = this.A01;
            char[] cArr6 = this.A03;
            char c6 = (char) (this.A00 - 1);
            this.A00 = c6;
            this.A01 = cArr5[c5 + cArr6[c6] + c0595Hh.A02[this.A00 % c0595Hh.A01]];
            this.A02 = this.A03[this.A00];
            this.A03[this.A00] = this.A03[this.A01];
            this.A03[this.A01] = this.A02;
            char[] cArr7 = C0595Hh.A06;
            char c7 = this.A01;
            char[] cArr8 = this.A03;
            char c8 = (char) (this.A00 - 1);
            this.A00 = c8;
            this.A01 = cArr7[c7 + cArr8[c8] + c0595Hh.A02[this.A00 % c0595Hh.A01]];
            this.A02 = this.A03[this.A00];
            this.A03[this.A00] = this.A03[this.A01];
            this.A03[this.A01] = this.A02;
            char[] cArr9 = C0595Hh.A06;
            char c9 = this.A01;
            char[] cArr10 = this.A03;
            char c10 = (char) (this.A00 - 1);
            this.A00 = c10;
            this.A01 = cArr9[c9 + cArr10[c10] + c0595Hh.A02[this.A00 % c0595Hh.A01]];
            this.A02 = this.A03[this.A00];
            this.A03[this.A00] = this.A03[this.A01];
            this.A03[this.A01] = this.A02;
        } while (this.A00 > 0);
        this.A01 = (char) 0;
    }

    public final byte A00(byte b) {
        try {
            this.A00 = C0595Hh.A06[this.A00 + 1];
            this.A01 = C0595Hh.A06[this.A01 + this.A03[this.A00]];
            this.A02 = this.A03[this.A00];
            this.A03[this.A00] = this.A03[this.A01];
            this.A03[this.A01] = this.A02;
            return C0595Hh.A04[(char) (this.A03[C0595Hh.A06[this.A03[this.A00] + this.A03[this.A01]]] + b)];
        } catch (ArrayIndexOutOfBoundsException unused) {
            return b;
        }
    }
}
