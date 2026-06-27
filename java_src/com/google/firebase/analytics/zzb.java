package com.google.firebase.analytics;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzaa;
import com.google.android.gms.measurement.internal.zzda;
import com.google.android.gms.measurement.internal.zzdb;
import com.google.android.gms.measurement.internal.zzdy;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
final class zzb implements zzdy {
    private final /* synthetic */ zzaa zzaas;

    zzb(zzaa zzaaVar) {
        this.zzaas = zzaaVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzdy
    public final void logEventInternal(String str, String str2, Bundle bundle) {
        this.zzaas.logEventInternal(str, str2, bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzdy
    public final void logEventInternalNoInterceptor(String str, String str2, Bundle bundle, long j) {
        this.zzaas.logEventInternalNoInterceptor(str, str2, bundle, j);
    }

    @Override // com.google.android.gms.measurement.internal.zzdy
    public final void setUserPropertyInternal(String str, String str2, Object obj) {
        this.zzaas.setUserPropertyInternal(str, str2, obj);
    }

    @Override // com.google.android.gms.measurement.internal.zzdy
    public final void setMeasurementEnabled(boolean z) {
        this.zzaas.setMeasurementEnabled(z);
    }

    @Override // com.google.android.gms.measurement.internal.zzdy
    public final void setDataCollectionEnabled(boolean z) {
        this.zzaas.setDataCollectionEnabled(z);
    }

    @Override // com.google.android.gms.measurement.internal.zzdy
    public final Map<String, Object> getUserProperties(String str, String str2, boolean z) {
        return this.zzaas.getUserProperties(str, str2, z);
    }

    @Override // com.google.android.gms.measurement.internal.zzdy
    public final void zza(zzda zzdaVar) {
        this.zzaas.zza(zzdaVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzdy
    public final void zza(zzdb zzdbVar) {
        this.zzaas.zza(zzdbVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzdy
    public final void zzb(zzdb zzdbVar) {
        this.zzaas.zzb(zzdbVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzdy
    public final String getCurrentScreenName() {
        return this.zzaas.getCurrentScreenName();
    }

    @Override // com.google.android.gms.measurement.internal.zzdy
    public final String getCurrentScreenClass() {
        return this.zzaas.getCurrentScreenClass();
    }

    @Override // com.google.android.gms.measurement.internal.zzdy
    public final String zzj() {
        return this.zzaas.zzj();
    }

    @Override // com.google.android.gms.measurement.internal.zzdy
    public final String getGmpAppId() {
        return this.zzaas.getGmpAppId();
    }

    @Override // com.google.android.gms.measurement.internal.zzdy
    public final long generateEventId() {
        return this.zzaas.generateEventId();
    }

    @Override // com.google.android.gms.measurement.internal.zzdy
    public final void beginAdUnitExposure(String str) {
        this.zzaas.beginAdUnitExposure(str);
    }

    @Override // com.google.android.gms.measurement.internal.zzdy
    public final void endAdUnitExposure(String str) {
        this.zzaas.endAdUnitExposure(str);
    }

    @Override // com.google.android.gms.measurement.internal.zzdy
    public final void setConditionalUserProperty(Bundle bundle) {
        this.zzaas.setConditionalUserProperty(bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzdy
    public final void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        this.zzaas.clearConditionalUserProperty(str, str2, bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzdy
    public final List<Bundle> getConditionalUserProperties(String str, String str2) {
        return this.zzaas.getConditionalUserProperties(str, str2);
    }

    @Override // com.google.android.gms.measurement.internal.zzdy
    public final int getMaxUserProperties(String str) {
        return this.zzaas.getMaxUserProperties(str);
    }

    @Override // com.google.android.gms.measurement.internal.zzdy
    public final Object zzb(int i) {
        return this.zzaas.zzb(i);
    }
}
