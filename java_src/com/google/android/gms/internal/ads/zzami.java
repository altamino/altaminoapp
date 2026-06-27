package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

@zzard
/* loaded from: classes2.dex */
public final class zzami extends zzbjg {
    private static final AtomicBoolean zzded = new AtomicBoolean(false);
    private final AppMeasurementSdk zzdee;

    private zzami(AppMeasurementSdk appMeasurementSdk) {
        this.zzdee = appMeasurementSdk;
    }

    public static void initialize(final Context context, final String str) {
        if (zzded.compareAndSet(false, true)) {
            new Thread(new Runnable(context, str) { // from class: com.google.android.gms.internal.ads.zzamj
                private final String zzdbk;
                private final Context zzdef;

                {
                    this.zzdef = context;
                    this.zzdbk = str;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    zzami.zzc(this.zzdef, this.zzdbk);
                }
            }).start();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbjf
    public final void performAction(Bundle bundle) throws RemoteException {
        this.zzdee.performAction(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbjf
    public final Bundle performActionWithResponse(Bundle bundle) throws RemoteException {
        return this.zzdee.performActionWithResponse(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbjf
    public final void logEvent(String str, String str2, Bundle bundle) throws RemoteException {
        this.zzdee.logEvent(str, str2, bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbjf
    public final void zza(String str, String str2, IObjectWrapper iObjectWrapper) throws RemoteException {
        this.zzdee.setUserProperty(str, str2, iObjectWrapper != null ? ObjectWrapper.unwrap(iObjectWrapper) : null);
    }

    @Override // com.google.android.gms.internal.ads.zzbjf
    public final Map getUserProperties(String str, String str2, boolean z) throws RemoteException {
        return this.zzdee.getUserProperties(str, str2, z);
    }

    @Override // com.google.android.gms.internal.ads.zzbjf
    public final int getMaxUserProperties(String str) throws RemoteException {
        return this.zzdee.getMaxUserProperties(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbjf
    public final void setConditionalUserProperty(Bundle bundle) throws RemoteException {
        this.zzdee.setConditionalUserProperty(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbjf
    public final void clearConditionalUserProperty(String str, String str2, Bundle bundle) throws RemoteException {
        this.zzdee.clearConditionalUserProperty(str, str2, bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbjf
    public final List getConditionalUserProperties(String str, String str2) throws RemoteException {
        return this.zzdee.getConditionalUserProperties(str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzbjf
    public final String getAppInstanceId() throws RemoteException {
        return this.zzdee.getAppInstanceId();
    }

    @Override // com.google.android.gms.internal.ads.zzbjf
    public final String getGmpAppId() throws RemoteException {
        return this.zzdee.getGmpAppId();
    }

    @Override // com.google.android.gms.internal.ads.zzbjf
    public final long generateEventId() throws RemoteException {
        return this.zzdee.generateEventId();
    }

    @Override // com.google.android.gms.internal.ads.zzbjf
    public final void beginAdUnitExposure(String str) throws RemoteException {
        this.zzdee.beginAdUnitExposure(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbjf
    public final void endAdUnitExposure(String str) throws RemoteException {
        this.zzdee.endAdUnitExposure(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbjf
    public final void zzb(IObjectWrapper iObjectWrapper, String str, String str2) throws RemoteException {
        this.zzdee.setCurrentScreen(iObjectWrapper != null ? (Activity) ObjectWrapper.unwrap(iObjectWrapper) : null, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzbjf
    public final String getCurrentScreenName() throws RemoteException {
        return this.zzdee.getCurrentScreenName();
    }

    @Override // com.google.android.gms.internal.ads.zzbjf
    public final String getCurrentScreenClass() throws RemoteException {
        return this.zzdee.getCurrentScreenClass();
    }

    @Override // com.google.android.gms.internal.ads.zzbjf
    public final String getAppIdOrigin() throws RemoteException {
        return this.zzdee.getAppIdOrigin();
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static final /* synthetic */ void zzc(android.content.Context r3, java.lang.String r4) {
        /*
            com.google.android.gms.internal.ads.zzacu.initialize(r3)
            com.google.android.gms.internal.ads.zzacj<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.zzacu.zzcoa
            com.google.android.gms.internal.ads.zzacr r1 = com.google.android.gms.internal.ads.zzyt.zzpe()
            java.lang.Object r0 = r1.zzd(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 != 0) goto L2a
            com.google.android.gms.internal.ads.zzacj<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.zzacu.zzcnz
            com.google.android.gms.internal.ads.zzacr r1 = com.google.android.gms.internal.ads.zzyt.zzpe()
            java.lang.Object r0 = r1.zzd(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L28
            goto L2a
        L28:
            r0 = 0
            goto L2b
        L2a:
            r0 = 1
        L2b:
            android.os.Bundle r1 = new android.os.Bundle
            r1.<init>()
            java.lang.String r2 = "measurementEnabled"
            r1.putBoolean(r2, r0)
            java.lang.String r0 = "Ads"
            java.lang.String r2 = "am"
            com.google.android.gms.measurement.api.AppMeasurementSdk r4 = com.google.android.gms.measurement.api.AppMeasurementSdk.getInstance(r3, r0, r2, r4, r1)
            com.google.android.gms.internal.ads.zzami r0 = new com.google.android.gms.internal.ads.zzami
            r0.<init>(r4)
            java.lang.String r4 = "com.google.android.gms.ads.measurement.DynamiteMeasurementManager"
            com.google.android.gms.internal.ads.zzbaf r1 = com.google.android.gms.internal.ads.zzamk.zzbzd     // Catch: android.os.RemoteException -> L50 java.lang.NullPointerException -> L52 com.google.android.gms.internal.ads.zzbag -> L54
            java.lang.Object r3 = com.google.android.gms.internal.ads.zzbae.zza(r3, r4, r1)     // Catch: android.os.RemoteException -> L50 java.lang.NullPointerException -> L52 com.google.android.gms.internal.ads.zzbag -> L54
            com.google.android.gms.internal.ads.zzbjh r3 = (com.google.android.gms.internal.ads.zzbjh) r3     // Catch: android.os.RemoteException -> L50 java.lang.NullPointerException -> L52 com.google.android.gms.internal.ads.zzbag -> L54
            r3.zzc(r0)     // Catch: android.os.RemoteException -> L50 java.lang.NullPointerException -> L52 com.google.android.gms.internal.ads.zzbag -> L54
            return
        L50:
            r3 = move-exception
            goto L55
        L52:
            r3 = move-exception
            goto L55
        L54:
            r3 = move-exception
        L55:
            java.lang.String r4 = "#007 Could not call remote method."
            com.google.android.gms.internal.ads.zzbad.zze(r4, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzami.zzc(android.content.Context, java.lang.String):void");
    }
}
