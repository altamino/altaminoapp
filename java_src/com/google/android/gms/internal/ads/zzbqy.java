package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;

/* loaded from: classes2.dex */
public class zzbqy {
    private final zzcxv zzfjp;
    private final String zzfju;
    private Bundle zzfjv;
    private final Context zzlj;

    public static class zza {
        private zzcxv zzfjp;
        private String zzfju;
        private Bundle zzfjv;
        private Context zzlj;

        public final zza zzbt(Context context) {
            this.zzlj = context;
            return this;
        }

        public final zza zza(zzcxv zzcxvVar) {
            this.zzfjp = zzcxvVar;
            return this;
        }

        public final zza zze(Bundle bundle) {
            this.zzfjv = bundle;
            return this;
        }

        public final zza zzfg(String str) {
            this.zzfju = str;
            return this;
        }

        public final zzbqy zzagh() {
            return new zzbqy(this);
        }
    }

    private zzbqy(zza zzaVar) {
        this.zzlj = zzaVar.zzlj;
        this.zzfjp = zzaVar.zzfjp;
        this.zzfjv = zzaVar.zzfjv;
        this.zzfju = zzaVar.zzfju;
    }

    final zza zzagd() {
        return new zza().zzbt(this.zzlj).zza(this.zzfjp).zzfg(this.zzfju).zze(this.zzfjv);
    }

    final zzcxv zzage() {
        return this.zzfjp;
    }

    final Bundle zzagf() {
        return this.zzfjv;
    }

    final String zzagg() {
        return this.zzfju;
    }

    final Context zzbs(Context context) {
        return this.zzfju != null ? context : this.zzlj;
    }
}
