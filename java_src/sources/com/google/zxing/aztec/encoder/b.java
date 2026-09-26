package com.google.zxing.aztec.encoder;

/* JADX INFO: loaded from: classes7.dex */
final class b extends g {
    private final short binaryShiftByteCount;
    private final short binaryShiftStart;

    @Override // com.google.zxing.aztec.encoder.g
    public void c(g5.a aVar, byte[] bArr) {
        int i10 = 0;
        while (true) {
            short s = this.binaryShiftByteCount;
            if (i10 >= s) {
                return;
            }
            if (i10 == 0 || (i10 == 31 && s <= 62)) {
                aVar.d(31, 5);
                short s5 = this.binaryShiftByteCount;
                if (s5 > 62) {
                    aVar.d(s5 - 31, 16);
                } else if (i10 == 0) {
                    aVar.d(Math.min((int) s5, 31), 5);
                } else {
                    aVar.d(s5 - 31, 5);
                }
            }
            aVar.d(bArr[this.binaryShiftStart + i10], 8);
            i10++;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("<");
        sb.append((int) this.binaryShiftStart);
        sb.append("::");
        sb.append((this.binaryShiftStart + this.binaryShiftByteCount) - 1);
        sb.append('>');
        return sb.toString();
    }

    b(g gVar, int i10, int i11) {
        super(gVar);
        this.binaryShiftStart = (short) i10;
        this.binaryShiftByteCount = (short) i11;
    }
}
