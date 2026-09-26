package com.google.android.exoplayer2.text.webvtt;

import com.google.android.exoplayer2.util.c0;
import com.google.android.exoplayer2.util.o0;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: loaded from: classes10.dex */
public final class a extends com.google.android.exoplayer2.text.h {
    private static final int BOX_HEADER_SIZE = 8;
    private static final int TYPE_payl = 1885436268;
    private static final int TYPE_sttg = 1937011815;
    private static final int TYPE_vttc = 1987343459;
    private final c0 sampleData;

    private static com.google.android.exoplayer2.text.b x(c0 c0Var, int i10) throws com.google.android.exoplayer2.text.k {
        CharSequence charSequenceQ = null;
        com.google.android.exoplayer2.text.b.C0178b c0178bO = null;
        while (i10 > 0) {
            if (i10 < 8) {
                throw new com.google.android.exoplayer2.text.k("Incomplete vtt cue box header found.");
            }
            int iN = c0Var.n();
            int iN2 = c0Var.n();
            int i11 = iN - 8;
            String strB = o0.B(c0Var.d(), c0Var.e(), i11);
            c0Var.Q(i11);
            i10 = (i10 - 8) - i11;
            if (iN2 == TYPE_sttg) {
                c0178bO = f.o(strB);
            } else if (iN2 == TYPE_payl) {
                charSequenceQ = f.q(null, strB.trim(), Collections.emptyList());
            }
        }
        if (charSequenceQ == null) {
            charSequenceQ = "";
        }
        return c0178bO != null ? c0178bO.o(charSequenceQ).a() : f.l(charSequenceQ);
    }

    public a() {
        super("Mp4WebvttDecoder");
        this.sampleData = new c0();
    }

    @Override // com.google.android.exoplayer2.text.h
    protected com.google.android.exoplayer2.text.i v(byte[] bArr, int i10, boolean z6) throws com.google.android.exoplayer2.text.k {
        this.sampleData.N(bArr, i10);
        ArrayList arrayList = new ArrayList();
        while (this.sampleData.a() > 0) {
            if (this.sampleData.a() < 8) {
                throw new com.google.android.exoplayer2.text.k("Incomplete Mp4Webvtt Top Level box header found.");
            }
            int iN = this.sampleData.n();
            if (this.sampleData.n() == TYPE_vttc) {
                arrayList.add(x(this.sampleData, iN - 8));
            } else {
                this.sampleData.Q(iN - 8);
            }
        }
        return new b(arrayList);
    }
}
