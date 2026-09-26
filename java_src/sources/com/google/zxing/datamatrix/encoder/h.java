package com.google.zxing.datamatrix.encoder;

import java.nio.charset.StandardCharsets;

/* JADX INFO: loaded from: classes4.dex */
final class h {
    private final StringBuilder codewords;
    private com.google.zxing.b maxSize;
    private com.google.zxing.b minSize;
    private final String msg;
    private int newEncoding;
    int pos;
    private l shape;
    private int skipAtEnd;
    private k symbolInfo;

    public StringBuilder b() {
        return this.codewords;
    }

    public String d() {
        return this.msg;
    }

    public int e() {
        return this.newEncoding;
    }

    public k g() {
        return this.symbolInfo;
    }

    public void j() {
        this.newEncoding = -1;
    }

    public void k() {
        this.symbolInfo = null;
    }

    public void l(com.google.zxing.b bVar, com.google.zxing.b bVar2) {
        this.minSize = bVar;
        this.maxSize = bVar2;
    }

    public void m(int i10) {
        this.skipAtEnd = i10;
    }

    public void n(l lVar) {
        this.shape = lVar;
    }

    public void o(int i10) {
        this.newEncoding = i10;
    }

    private int h() {
        return this.msg.length() - this.skipAtEnd;
    }

    public int a() {
        return this.codewords.length();
    }

    public char c() {
        return this.msg.charAt(this.pos);
    }

    public boolean i() {
        return this.pos < h();
    }

    public void q(int i10) {
        k kVar = this.symbolInfo;
        if (kVar == null || i10 > kVar.a()) {
            this.symbolInfo = k.l(i10, this.shape, this.minSize, this.maxSize, true);
        }
    }

    public void r(char c7) {
        this.codewords.append(c7);
    }

    public void s(String str) {
        this.codewords.append(str);
    }

    h(String str) {
        byte[] bytes = str.getBytes(StandardCharsets.ISO_8859_1);
        StringBuilder sb = new StringBuilder(bytes.length);
        int length = bytes.length;
        for (int i10 = 0; i10 < length; i10++) {
            char c7 = (char) (bytes[i10] & 255);
            if (c7 == '?' && str.charAt(i10) != '?') {
                throw new IllegalArgumentException("Message contains characters outside ISO-8859-1 encoding.");
            }
            sb.append(c7);
        }
        this.msg = sb.toString();
        this.shape = l.FORCE_NONE;
        this.codewords = new StringBuilder(str.length());
        this.newEncoding = -1;
    }

    public int f() {
        return h() - this.pos;
    }

    public void p() {
        q(a());
    }
}
