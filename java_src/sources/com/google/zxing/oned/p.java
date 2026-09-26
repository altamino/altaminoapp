package com.google.zxing.oned;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class p implements com.google.zxing.g {
    private final j subWriter = new j();

    @Override // com.google.zxing.g
    public g5.b a(String str, com.google.zxing.a aVar, int i10, int i11, Map<com.google.zxing.c, ?> map) throws com.google.zxing.h {
        if (aVar == com.google.zxing.a.UPC_A) {
            return this.subWriter.a("0".concat(String.valueOf(str)), com.google.zxing.a.EAN_13, i10, i11, map);
        }
        throw new IllegalArgumentException("Can only encode UPC-A, but got ".concat(String.valueOf(aVar)));
    }
}
