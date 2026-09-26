package com.android.billingclient.api;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.AnyThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes6.dex */
public abstract class BillingClient {

    @AnyThread
    public static final class Builder {
        private volatile String zza;
        private volatile z0 zzb;
        private final Context zzc;
        private volatile p zzd;
        private volatile v0 zze;
        private volatile n0 zzf;
        private volatile d zzg;
        private volatile u zzh;

        @Nullable
        private volatile ExecutorService zzi;
        private volatile boolean zzj;

        /* synthetic */ Builder(Context context, u1 u1Var) {
            this.zzc = context;
        }

        @NonNull
        public Builder c(@NonNull p pVar) {
            this.zzd = pVar;
            return this;
        }

        @NonNull
        public BillingClient a() {
            if (this.zzc == null) {
                throw new IllegalArgumentException("Please provide a valid Context.");
            }
            if (this.zzd == null) {
                if (this.zzj) {
                    return new e(null, this.zzc, null, null);
                }
                throw new IllegalArgumentException("Please provide a valid listener for purchases updates.");
            }
            if (this.zzb != null) {
                return this.zzd != null ? new e(null, this.zzb, this.zzc, this.zzd, null, null, null) : new e(null, this.zzb, this.zzc, null, null, null);
            }
            throw new IllegalArgumentException("Pending purchases for one-time products must be supported.");
        }

        @NonNull
        public Builder b() {
            x0 x0Var = new x0(null);
            x0Var.a();
            this.zzb = x0Var.b();
            return this;
        }
    }

    @NonNull
    @AnyThread
    public static Builder f(@NonNull Context context) {
        return new Builder(context, null);
    }

    @AnyThread
    public abstract void a(@NonNull b bVar, @NonNull c cVar);

    @AnyThread
    public abstract void b(@NonNull i iVar, @NonNull j jVar);

    @AnyThread
    public abstract void c();

    @AnyThread
    public abstract boolean d();

    @NonNull
    @UiThread
    public abstract h e(@NonNull Activity activity, @NonNull g gVar);

    @AnyThread
    public abstract void g(@NonNull q qVar, @NonNull m mVar);

    @AnyThread
    public abstract void h(@NonNull r rVar, @NonNull o oVar);

    @AnyThread
    @Deprecated
    public abstract void i(@NonNull s sVar, @NonNull t tVar);

    @AnyThread
    public abstract void j(@NonNull f fVar);
}
