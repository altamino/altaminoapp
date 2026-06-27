package com.google.android.gms.internal.measurement;

/* loaded from: classes2.dex */
public class zzfo {
    private static final zzem zzabo = zzem.zzls();
    private zzdp zzaie;
    private volatile zzgh zzaif;
    private volatile zzdp zzaig;

    public int hashCode() {
        return 1;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzfo)) {
            return false;
        }
        zzfo zzfoVar = (zzfo) obj;
        zzgh zzghVar = this.zzaif;
        zzgh zzghVar2 = zzfoVar.zzaif;
        if (zzghVar == null && zzghVar2 == null) {
            return zzjv().equals(zzfoVar.zzjv());
        }
        if (zzghVar != null && zzghVar2 != null) {
            return zzghVar.equals(zzghVar2);
        }
        if (zzghVar != null) {
            return zzghVar.equals(zzfoVar.zzh(zzghVar.zzmm()));
        }
        return zzh(zzghVar2.zzmm()).equals(zzghVar2);
    }

    private final zzgh zzh(zzgh zzghVar) {
        if (this.zzaif == null) {
            synchronized (this) {
                if (this.zzaif == null) {
                    try {
                        this.zzaif = zzghVar;
                        this.zzaig = zzdp.zzaby;
                    } catch (zzfh unused) {
                        this.zzaif = zzghVar;
                        this.zzaig = zzdp.zzaby;
                    }
                }
            }
        }
        return this.zzaif;
    }

    public final zzgh zzi(zzgh zzghVar) {
        zzgh zzghVar2 = this.zzaif;
        this.zzaie = null;
        this.zzaig = null;
        this.zzaif = zzghVar;
        return zzghVar2;
    }

    public final int zzly() {
        if (this.zzaig != null) {
            return this.zzaig.size();
        }
        if (this.zzaif != null) {
            return this.zzaif.zzly();
        }
        return 0;
    }

    public final zzdp zzjv() {
        if (this.zzaig != null) {
            return this.zzaig;
        }
        synchronized (this) {
            if (this.zzaig != null) {
                return this.zzaig;
            }
            if (this.zzaif == null) {
                this.zzaig = zzdp.zzaby;
            } else {
                this.zzaig = this.zzaif.zzjv();
            }
            return this.zzaig;
        }
    }
}
