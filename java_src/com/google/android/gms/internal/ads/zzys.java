package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes2.dex */
abstract class zzys<T> {
    private static final zzzv zzcic = zzox();

    zzys() {
    }

    protected abstract T zza(zzzv zzzvVar) throws RemoteException;

    protected abstract T zzov();

    protected abstract T zzow() throws RemoteException;

    private static zzzv zzox() throws IllegalAccessException, InstantiationException, IllegalArgumentException, InvocationTargetException {
        try {
            Object objNewInstance = zzyh.class.getClassLoader().loadClass("com.google.android.gms.ads.internal.ClientApi2").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            if (!(objNewInstance instanceof IBinder)) {
                zzbad.zzep("ClientApi class is not an instance of IBinder.");
                return null;
            }
            IBinder iBinder = (IBinder) objNewInstance;
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IClientApi");
            return iInterfaceQueryLocalInterface instanceof zzzv ? (zzzv) iInterfaceQueryLocalInterface : new zzzx(iBinder);
        } catch (Exception unused) {
            zzbad.zzep("Failed to instantiate ClientApi class.");
            return null;
        }
    }

    private final T zzoy() {
        zzzv zzzvVar = zzcic;
        if (zzzvVar == null) {
            zzbad.zzep("ClientApi class cannot be loaded.");
            return null;
        }
        try {
            return zza(zzzvVar);
        } catch (RemoteException e) {
            zzbad.zzd("Cannot invoke local loader using ClientApi class.", e);
            return null;
        }
    }

    private final T zzoz() {
        try {
            return zzow();
        } catch (RemoteException e) {
            zzbad.zzd("Cannot invoke remote loader.", e);
            return null;
        }
    }

    public final T zzd(Context context, boolean z) {
        T tZzoy;
        if (!z) {
            zzyt.zzpa();
            if (!zzazt.zzc(context, 12451000)) {
                zzbad.zzdp("Google Play Services is not available.");
                z = true;
            }
        }
        if (DynamiteModule.getLocalVersion(context, ModuleDescriptor.MODULE_ID) > DynamiteModule.getRemoteVersion(context, ModuleDescriptor.MODULE_ID)) {
            z = true;
        }
        zzacu.initialize(context);
        if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcur)).booleanValue()) {
            z = false;
        }
        if (z) {
            tZzoy = zzoy();
            if (tZzoy == null) {
                tZzoy = zzoz();
            }
        } else {
            T tZzoz = zzoz();
            int i = tZzoz == null ? 1 : 0;
            if (i != 0) {
                if (zzyt.zzph().nextInt(((Integer) zzyt.zzpe().zzd(zzacu.zzcwr)).intValue()) == 0) {
                    Bundle bundle = new Bundle();
                    bundle.putString("action", "dynamite_load");
                    bundle.putInt("is_missing", i);
                    zzyt.zzpa().zza(context, zzyt.zzpg().zzbsx, "gmob-apps", bundle, true);
                }
            }
            tZzoy = tZzoz == null ? zzoy() : tZzoz;
        }
        return tZzoy == null ? zzov() : tZzoy;
    }
}
