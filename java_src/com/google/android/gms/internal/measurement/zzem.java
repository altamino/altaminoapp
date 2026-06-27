package com.google.android.gms.internal.measurement;

import android.support.v4.internal.view.SupportMenu;
import com.google.android.gms.internal.measurement.zzez;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class zzem {
    private static volatile boolean zzadj;
    private static volatile zzem zzadl;
    private final Map<zza, zzez.zzd<?, ?>> zzadn;
    private static final Class<?> zzadk = zzlr();
    static final zzem zzadm = new zzem(true);

    private static Class<?> zzlr() {
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

    public static zzem zzls() {
        return zzel.zzlp();
    }

    public static zzem zzlt() {
        zzem zzemVarZzlq = zzadl;
        if (zzemVarZzlq == null) {
            synchronized (zzem.class) {
                zzemVarZzlq = zzadl;
                if (zzemVarZzlq == null) {
                    zzemVarZzlq = zzel.zzlq();
                    zzadl = zzemVarZzlq;
                }
            }
        }
        return zzemVarZzlq;
    }

    static zzem zzlq() {
        return zzex.zza(zzem.class);
    }

    public final <ContainingType extends zzgh> zzez.zzd<ContainingType, ?> zza(ContainingType containingtype, int i) {
        return (zzez.zzd) this.zzadn.get(new zza(containingtype, i));
    }

    zzem() {
        this.zzadn = new HashMap();
    }

    private zzem(boolean z) {
        this.zzadn = Collections.emptyMap();
    }
}
