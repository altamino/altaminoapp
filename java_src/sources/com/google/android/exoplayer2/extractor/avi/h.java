package com.google.android.exoplayer2.extractor.avi;

import com.google.android.exoplayer2.util.c0;

/* JADX INFO: loaded from: classes6.dex */
final class h implements a {
    public final String name;

    @Override // com.google.android.exoplayer2.extractor.avi.a
    public int getType() {
        return 1852994675;
    }

    public static h a(c0 c0Var) {
        return new h(c0Var.A(c0Var.a()));
    }

    private h(String str) {
        this.name = str;
    }
}
