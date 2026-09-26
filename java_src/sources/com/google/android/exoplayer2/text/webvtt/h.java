package com.google.android.exoplayer2.text.webvtt;

import android.text.TextUtils;
import com.google.android.exoplayer2.util.c0;
import com.google.android.exoplayer2.v2;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes10.dex */
public final class h extends com.google.android.exoplayer2.text.h {
    private static final String COMMENT_START = "NOTE";
    private static final int EVENT_COMMENT = 1;
    private static final int EVENT_CUE = 3;
    private static final int EVENT_END_OF_FILE = 0;
    private static final int EVENT_NONE = -1;
    private static final int EVENT_STYLE_BLOCK = 2;
    private static final String STYLE_START = "STYLE";
    private final c cssParser;
    private final c0 parsableWebvttData;

    private static int x(c0 c0Var) {
        int i10 = -1;
        int iE = 0;
        while (i10 == -1) {
            iE = c0Var.e();
            String strP = c0Var.p();
            if (strP == null) {
                i10 = 0;
            } else if (STYLE_START.equals(strP)) {
                i10 = 2;
            } else {
                i10 = strP.startsWith(COMMENT_START) ? 1 : 3;
            }
        }
        c0Var.P(iE);
        return i10;
    }

    public h() {
        super("WebvttDecoder");
        this.parsableWebvttData = new c0();
        this.cssParser = new c();
    }

    @Override // com.google.android.exoplayer2.text.h
    protected com.google.android.exoplayer2.text.i v(byte[] bArr, int i10, boolean z6) throws com.google.android.exoplayer2.text.k {
        e eVarM;
        this.parsableWebvttData.N(bArr, i10);
        ArrayList arrayList = new ArrayList();
        try {
            i.d(this.parsableWebvttData);
            while (!TextUtils.isEmpty(this.parsableWebvttData.p())) {
            }
            ArrayList arrayList2 = new ArrayList();
            while (true) {
                int iX = x(this.parsableWebvttData);
                if (iX == 0) {
                    return new k(arrayList2);
                }
                if (iX == 1) {
                    y(this.parsableWebvttData);
                } else if (iX == 2) {
                    if (!arrayList2.isEmpty()) {
                        throw new com.google.android.exoplayer2.text.k("A style block was found after the first cue.");
                    }
                    this.parsableWebvttData.p();
                    arrayList.addAll(this.cssParser.d(this.parsableWebvttData));
                } else if (iX == 3 && (eVarM = f.m(this.parsableWebvttData, arrayList)) != null) {
                    arrayList2.add(eVarM);
                }
            }
        } catch (v2 e) {
            throw new com.google.android.exoplayer2.text.k(e);
        }
    }

    private static void y(c0 c0Var) {
        while (!TextUtils.isEmpty(c0Var.p())) {
        }
    }
}
