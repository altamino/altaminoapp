package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzor implements zzoo {
    private int zzamy;
    private final int zzand;
    private final zzst zzbea;
    private final int zzber;
    private int zzbes;

    public zzor(zzol zzolVar) {
        this.zzbea = zzolVar.zzbea;
        this.zzbea.setPosition(12);
        this.zzber = this.zzbea.zzgg() & 255;
        this.zzand = this.zzbea.zzgg();
    }

    @Override // com.google.android.gms.internal.ads.zzoo
    public final boolean zzio() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzoo
    public final int zzim() {
        return this.zzand;
    }

    @Override // com.google.android.gms.internal.ads.zzoo
    public final int zzin() {
        int i = this.zzber;
        if (i == 8) {
            return this.zzbea.readUnsignedByte();
        }
        if (i == 16) {
            return this.zzbea.readUnsignedShort();
        }
        int i2 = this.zzamy;
        this.zzamy = i2 + 1;
        if (i2 % 2 == 0) {
            this.zzbes = this.zzbea.readUnsignedByte();
            return (this.zzbes & 240) >> 4;
        }
        return this.zzbes & 15;
    }
}
