package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public class zzdor {
    private static final zzdno zzhch = zzdno.zzaxd();
    private zzdmr zzhiu;
    private volatile zzdpk zzhiv;
    private volatile zzdmr zzhiw;

    public int hashCode() {
        return 1;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzdor)) {
            return false;
        }
        zzdor zzdorVar = (zzdor) obj;
        zzdpk zzdpkVar = this.zzhiv;
        zzdpk zzdpkVar2 = zzdorVar.zzhiv;
        if (zzdpkVar == null && zzdpkVar2 == null) {
            return zzavf().equals(zzdorVar.zzavf());
        }
        if (zzdpkVar != null && zzdpkVar2 != null) {
            return zzdpkVar.equals(zzdpkVar2);
        }
        if (zzdpkVar != null) {
            return zzdpkVar.equals(zzdorVar.zzp(zzdpkVar.zzaxv()));
        }
        return zzp(zzdpkVar2.zzaxv()).equals(zzdpkVar2);
    }

    private final zzdpk zzp(zzdpk zzdpkVar) {
        if (this.zzhiv == null) {
            synchronized (this) {
                if (this.zzhiv == null) {
                    try {
                        this.zzhiv = zzdpkVar;
                        this.zzhiw = zzdmr.zzhcr;
                    } catch (zzdok unused) {
                        this.zzhiv = zzdpkVar;
                        this.zzhiw = zzdmr.zzhcr;
                    }
                }
            }
        }
        return this.zzhiv;
    }

    public final zzdpk zzq(zzdpk zzdpkVar) {
        zzdpk zzdpkVar2 = this.zzhiv;
        this.zzhiu = null;
        this.zzhiw = null;
        this.zzhiv = zzdpkVar;
        return zzdpkVar2;
    }

    public final int zzaxj() {
        if (this.zzhiw != null) {
            return this.zzhiw.size();
        }
        if (this.zzhiv != null) {
            return this.zzhiv.zzaxj();
        }
        return 0;
    }

    public final zzdmr zzavf() {
        if (this.zzhiw != null) {
            return this.zzhiw;
        }
        synchronized (this) {
            if (this.zzhiw != null) {
                return this.zzhiw;
            }
            if (this.zzhiv == null) {
                this.zzhiw = zzdmr.zzhcr;
            } else {
                this.zzhiw = this.zzhiv.zzavf();
            }
            return this.zzhiw;
        }
    }
}
