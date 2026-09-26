package com.android.billingclient.api;

import androidx.annotation.NonNull;
import com.google.android.gms.internal.play_billing.zzb;

/* JADX INFO: loaded from: classes8.dex */
public final class h {
    private int zza;
    private String zzb;

    public static class a {
        private int zza;
        private String zzb = "";

        /* synthetic */ a(o0 o0Var) {
        }

        @NonNull
        public a b(@NonNull String str) {
            this.zzb = str;
            return this;
        }

        @NonNull
        public a c(int i10) {
            this.zza = i10;
            return this;
        }

        @NonNull
        public h a() {
            h hVar = new h();
            hVar.zza = this.zza;
            hVar.zzb = this.zzb;
            return hVar;
        }
    }

    @NonNull
    public static a c() {
        return new a(null);
    }

    @NonNull
    public String a() {
        return this.zzb;
    }

    public int b() {
        return this.zza;
    }

    @NonNull
    public String toString() {
        return "Response Code: " + zzb.zzh(this.zza) + ", Debug Message: " + this.zzb;
    }
}
