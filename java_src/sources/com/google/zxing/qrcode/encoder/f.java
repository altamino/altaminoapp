package com.google.zxing.qrcode.encoder;

/* JADX INFO: loaded from: classes6.dex */
public final class f {
    public static final int NUM_MASK_PATTERNS = 8;
    private l5.a ecLevel;
    private int maskPattern = -1;
    private b matrix;
    private l5.b mode;
    private l5.c version;

    public static boolean b(int i10) {
        return i10 >= 0 && i10 < 8;
    }

    public b a() {
        return this.matrix;
    }

    public void c(l5.a aVar) {
        this.ecLevel = aVar;
    }

    public void d(int i10) {
        this.maskPattern = i10;
    }

    public void e(b bVar) {
        this.matrix = bVar;
    }

    public void f(l5.b bVar) {
        this.mode = bVar;
    }

    public void g(l5.c cVar) {
        this.version = cVar;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(200);
        sb.append("<<\n");
        sb.append(" mode: ");
        sb.append(this.mode);
        sb.append("\n ecLevel: ");
        sb.append(this.ecLevel);
        sb.append("\n version: ");
        sb.append(this.version);
        sb.append("\n maskPattern: ");
        sb.append(this.maskPattern);
        if (this.matrix == null) {
            sb.append("\n matrix: null\n");
        } else {
            sb.append("\n matrix:\n");
            sb.append(this.matrix);
        }
        sb.append(">>\n");
        return sb.toString();
    }
}
