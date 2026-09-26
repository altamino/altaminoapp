package com.google.zxing.pdf417.encoder;

/* JADX INFO: loaded from: classes10.dex */
public final class d {
    private final int maxCols;
    private final int maxRows;
    private final int minCols;
    private final int minRows;

    public int a() {
        return this.maxCols;
    }

    public int b() {
        return this.maxRows;
    }

    public int c() {
        return this.minCols;
    }

    public int d() {
        return this.minRows;
    }

    public d(int i10, int i11, int i12, int i13) {
        this.minCols = i10;
        this.maxCols = i11;
        this.minRows = i12;
        this.maxRows = i13;
    }
}
