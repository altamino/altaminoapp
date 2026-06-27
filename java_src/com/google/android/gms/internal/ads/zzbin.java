package com.google.android.gms.internal.ads;

@zzard
/* loaded from: classes2.dex */
public final class zzbin {
    public final int heightPixels;
    private final int type;
    public final int widthPixels;

    public static zzbin zzb(zzyd zzydVar) {
        return zzydVar.zzchf ? new zzbin(3, 0, 0) : zzydVar.zzchh ? new zzbin(2, 0, 0) : zzydVar.zzbsz ? zzabu() : zzr(zzydVar.widthPixels, zzydVar.heightPixels);
    }

    public static zzbin zzabu() {
        return new zzbin(0, 0, 0);
    }

    public static zzbin zzr(int i, int i2) {
        return new zzbin(1, i, i2);
    }

    public static zzbin zzabv() {
        return new zzbin(4, 0, 0);
    }

    public static zzbin zzabw() {
        return new zzbin(5, 0, 0);
    }

    private zzbin(int i, int i2, int i3) {
        this.type = i;
        this.widthPixels = i2;
        this.heightPixels = i3;
    }

    public final boolean isFluid() {
        return this.type == 2;
    }

    public final boolean zzabx() {
        return this.type == 3;
    }

    public final boolean zzaby() {
        return this.type == 0;
    }

    public final boolean zzabz() {
        return this.type == 4;
    }

    public final boolean zzaca() {
        return this.type == 5;
    }
}
