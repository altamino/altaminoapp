package com.google.android.gms.internal.ads;

import java.math.BigInteger;

@zzard
/* loaded from: classes2.dex */
public final class zzawt {
    private BigInteger zzdun = BigInteger.ONE;
    private String zzdlo = "0";

    public final synchronized String zzvg() {
        String string;
        string = this.zzdun.toString();
        this.zzdun = this.zzdun.add(BigInteger.ONE);
        this.zzdlo = string;
        return string;
    }

    public final synchronized String zzvh() {
        return this.zzdlo;
    }
}
