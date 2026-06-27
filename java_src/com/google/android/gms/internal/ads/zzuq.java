package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import com.google.android.gms.common.util.PlatformVersion;

@zzard
/* loaded from: classes2.dex */
public final class zzuq {
    private final Object zzbuq = new Object();
    private zzur zzbur = null;
    private boolean zzbus = false;

    public final void initialize(Context context) {
        synchronized (this.zzbuq) {
            if (!this.zzbus) {
                if (!PlatformVersion.isAtLeastIceCreamSandwich()) {
                    return;
                }
                Context applicationContext = context.getApplicationContext();
                if (applicationContext == null) {
                    applicationContext = context;
                }
                Application application = applicationContext instanceof Application ? (Application) applicationContext : null;
                if (application == null) {
                    zzbad.zzep("Can not cast Context to Application");
                    return;
                }
                if (this.zzbur == null) {
                    this.zzbur = new zzur();
                }
                this.zzbur.zza(application, context);
                this.zzbus = true;
            }
        }
    }

    public final void zza(zzut zzutVar) {
        synchronized (this.zzbuq) {
            if (PlatformVersion.isAtLeastIceCreamSandwich()) {
                if (this.zzbur == null) {
                    this.zzbur = new zzur();
                }
                this.zzbur.zza(zzutVar);
            }
        }
    }

    public final Activity getActivity() {
        synchronized (this.zzbuq) {
            if (!PlatformVersion.isAtLeastIceCreamSandwich()) {
                return null;
            }
            if (this.zzbur == null) {
                return null;
            }
            return this.zzbur.getActivity();
        }
    }

    public final Context getContext() {
        synchronized (this.zzbuq) {
            if (!PlatformVersion.isAtLeastIceCreamSandwich()) {
                return null;
            }
            if (this.zzbur == null) {
                return null;
            }
            return this.zzbur.getContext();
        }
    }
}
