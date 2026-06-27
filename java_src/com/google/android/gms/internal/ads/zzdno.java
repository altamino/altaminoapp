package com.google.android.gms.internal.ads;

import android.support.v4.internal.view.SupportMenu;
import com.google.android.gms.internal.ads.zzdob;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class zzdno {
    private static volatile boolean zzhdz;
    private static volatile zzdno zzheb;
    private final Map<zza, zzdob.zzd<?, ?>> zzhed;
    private static final Class<?> zzhea = zzaxc();
    static final zzdno zzhec = new zzdno(true);

    private static Class<?> zzaxc() {
        try {
            return Class.forName("com.google.protobuf.Extension");
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    static final class zza {
        private final int number;
        private final Object object;

        zza(Object obj, int i) {
            this.object = obj;
            this.number = i;
        }

        public final int hashCode() {
            return (System.identityHashCode(this.object) * SupportMenu.USER_MASK) + this.number;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof zza)) {
                return false;
            }
            zza zzaVar = (zza) obj;
            return this.object == zzaVar.object && this.number == zzaVar.number;
        }
    }

    public static zzdno zzaxd() {
        return zzdnn.zzaxa();
    }

    public static zzdno zzaxe() {
        zzdno zzdnoVarZzaxb = zzheb;
        if (zzdnoVarZzaxb == null) {
            synchronized (zzdno.class) {
                zzdnoVarZzaxb = zzheb;
                if (zzdnoVarZzaxb == null) {
                    zzdnoVarZzaxb = zzdnn.zzaxb();
                    zzheb = zzdnoVarZzaxb;
                }
            }
        }
        return zzdnoVarZzaxb;
    }

    static zzdno zzaxb() {
        return zzdnz.zzb(zzdno.class);
    }

    public final <ContainingType extends zzdpk> zzdob.zzd<ContainingType, ?> zza(ContainingType containingtype, int i) {
        return (zzdob.zzd) this.zzhed.get(new zza(containingtype, i));
    }

    zzdno() {
        this.zzhed = new HashMap();
    }

    private zzdno(boolean z) {
        this.zzhed = Collections.emptyMap();
    }
}
