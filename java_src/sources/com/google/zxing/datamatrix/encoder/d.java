package com.google.zxing.datamatrix.encoder;

import io.agora.rtc.Constants;

/* JADX INFO: loaded from: classes4.dex */
final class d extends k {
    d() {
        super(false, 1558, 620, 22, 22, 36, -1, 62);
    }

    @Override // com.google.zxing.datamatrix.encoder.k
    public int b(int i10) {
        if (i10 <= 8) {
            return Constants.ERR_PUBLISH_STREAM_FORMAT_NOT_SUPPORTED;
        }
        return 155;
    }

    @Override // com.google.zxing.datamatrix.encoder.k
    public int f() {
        return 10;
    }
}
