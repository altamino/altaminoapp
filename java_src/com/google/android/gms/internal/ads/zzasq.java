package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import com.google.android.exoplayer2.C;
import java.lang.ref.WeakReference;

@zzard
/* loaded from: classes2.dex */
public final class zzasq extends ContextWrapper {
    private Context zzdqn;
    private WeakReference<Activity> zzdqo;

    private zzasq(Context context) {
        super(context);
        this.zzdqo = new WeakReference<>(null);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Context getApplicationContext() {
        return this;
    }

    public final synchronized void setAppPackageName(String str) throws PackageManager.NameNotFoundException {
        this.zzdqn = super.createPackageContext(str, 0);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final synchronized ApplicationInfo getApplicationInfo() {
        if (this.zzdqn != null) {
            return this.zzdqn.getApplicationInfo();
        }
        return super.getApplicationInfo();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final synchronized String getPackageName() {
        if (this.zzdqn != null) {
            return this.zzdqn.getPackageName();
        }
        return super.getPackageName();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final synchronized String getPackageResourcePath() {
        if (this.zzdqn != null) {
            return this.zzdqn.getPackageResourcePath();
        }
        return super.getPackageResourcePath();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final synchronized void startActivity(Intent intent) {
        zze(zzd(intent));
    }

    private final synchronized Intent zzd(Intent intent) {
        if (this.zzdqn != null && intent.getComponent() != null && intent.getComponent().getPackageName().equals(this.zzdqn.getPackageName())) {
            Intent intent2 = (Intent) intent.clone();
            intent2.setClassName(super.getPackageName(), intent.getComponent().getClassName());
            return intent2;
        }
        return intent;
    }

    private final synchronized void zze(Intent intent) {
        Activity activity = this.zzdqo.get();
        if (activity == null) {
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
            super.startActivity(intent);
            return;
        }
        try {
            Intent intent2 = (Intent) intent.clone();
            intent2.setFlags(intent.getFlags() & (-268435457));
            activity.startActivity(intent2);
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.zzk.zzlk().zza(th, "");
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
            super.startActivity(intent);
        }
    }

    public static zzasq zzv(Context context) {
        return new zzasq(zzk(context));
    }

    public static Context zzw(Context context) {
        if (context instanceof zzasq) {
            return ((zzasq) context).getBaseContext();
        }
        return zzk(context);
    }

    private static Context zzk(Context context) {
        Context applicationContext = context.getApplicationContext();
        return applicationContext == null ? context : applicationContext;
    }
}
