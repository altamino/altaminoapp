package com.google.android.gms.measurement.api;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.internal.measurement.zzaa;
import com.google.android.gms.measurement.internal.zzda;
import com.google.android.gms.measurement.internal.zzdb;
import java.util.List;
import java.util.Map;

@KeepForSdk
/* loaded from: classes2.dex */
public class AppMeasurementSdk {
    private final zzaa zzq;

    @KeepForSdk
    public static final class ConditionalUserProperty {

        @KeepForSdk
        public static final String ACTIVE = "active";

        @KeepForSdk
        public static final String CREATION_TIMESTAMP = "creation_timestamp";

        @KeepForSdk
        public static final String EXPIRED_EVENT_NAME = "expired_event_name";

        @KeepForSdk
        public static final String EXPIRED_EVENT_PARAMS = "expired_event_params";

        @KeepForSdk
        public static final String NAME = "name";

        @KeepForSdk
        public static final String ORIGIN = "origin";

        @KeepForSdk
        public static final String TIMED_OUT_EVENT_NAME = "timed_out_event_name";

        @KeepForSdk
        public static final String TIMED_OUT_EVENT_PARAMS = "timed_out_event_params";

        @KeepForSdk
        public static final String TIME_TO_LIVE = "time_to_live";

        @KeepForSdk
        public static final String TRIGGERED_EVENT_NAME = "triggered_event_name";

        @KeepForSdk
        public static final String TRIGGERED_EVENT_PARAMS = "triggered_event_params";

        @KeepForSdk
        public static final String TRIGGERED_TIMESTAMP = "triggered_timestamp";

        @KeepForSdk
        public static final String TRIGGER_EVENT_NAME = "trigger_event_name";

        @KeepForSdk
        public static final String TRIGGER_TIMEOUT = "trigger_timeout";

        @KeepForSdk
        public static final String VALUE = "value";

        private ConditionalUserProperty() {
        }
    }

    @ShowFirstParty
    @KeepForSdk
    public interface EventInterceptor extends zzda {
        @Override // com.google.android.gms.measurement.internal.zzda
        @ShowFirstParty
        @KeepForSdk
        void interceptEvent(String str, String str2, Bundle bundle, long j);
    }

    @ShowFirstParty
    @KeepForSdk
    public interface OnEventListener extends zzdb {
        @Override // com.google.android.gms.measurement.internal.zzdb
        @ShowFirstParty
        @KeepForSdk
        void onEvent(String str, String str2, Bundle bundle, long j);
    }

    @KeepForSdk
    public static AppMeasurementSdk getInstance(Context context) {
        return zzaa.zza(context).zzh();
    }

    @KeepForSdk
    public static AppMeasurementSdk getInstance(Context context, String str, String str2, String str3, Bundle bundle) {
        return zzaa.zza(context, str, str2, str3, bundle).zzh();
    }

    public AppMeasurementSdk(zzaa zzaaVar) {
        this.zzq = zzaaVar;
    }

    @KeepForSdk
    public void setMeasurementEnabled(boolean z) {
        this.zzq.setMeasurementEnabled(z);
    }

    @KeepForSdk
    public void logEvent(String str, String str2, Bundle bundle) {
        this.zzq.logEventInternal(str, str2, bundle);
    }

    @KeepForSdk
    public void logEventNoInterceptor(String str, String str2, Bundle bundle, long j) {
        this.zzq.logEventInternalNoInterceptor(str, str2, bundle, j);
    }

    @KeepForSdk
    public void setUserProperty(String str, String str2, Object obj) {
        this.zzq.setUserPropertyInternal(str, str2, obj);
    }

    @KeepForSdk
    public Map<String, Object> getUserProperties(String str, String str2, boolean z) {
        return this.zzq.getUserProperties(str, str2, z);
    }

    @KeepForSdk
    public void setConditionalUserProperty(Bundle bundle) {
        this.zzq.setConditionalUserProperty(bundle);
    }

    @KeepForSdk
    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        this.zzq.clearConditionalUserProperty(str, str2, bundle);
    }

    @KeepForSdk
    public List<Bundle> getConditionalUserProperties(String str, String str2) {
        return this.zzq.getConditionalUserProperties(str, str2);
    }

    @KeepForSdk
    public String getCurrentScreenName() {
        return this.zzq.getCurrentScreenName();
    }

    @KeepForSdk
    public String getCurrentScreenClass() {
        return this.zzq.getCurrentScreenClass();
    }

    @KeepForSdk
    public String getAppInstanceId() {
        return this.zzq.zzj();
    }

    @KeepForSdk
    public String getGmpAppId() {
        return this.zzq.getGmpAppId();
    }

    @KeepForSdk
    public long generateEventId() {
        return this.zzq.generateEventId();
    }

    @KeepForSdk
    public void beginAdUnitExposure(String str) {
        this.zzq.beginAdUnitExposure(str);
    }

    @KeepForSdk
    public void endAdUnitExposure(String str) {
        this.zzq.endAdUnitExposure(str);
    }

    @ShowFirstParty
    @KeepForSdk
    public void setEventInterceptor(EventInterceptor eventInterceptor) {
        this.zzq.zza(eventInterceptor);
    }

    @ShowFirstParty
    @KeepForSdk
    public void registerOnMeasurementEventListener(OnEventListener onEventListener) {
        this.zzq.zza(onEventListener);
    }

    @ShowFirstParty
    @KeepForSdk
    public void unregisterOnMeasurementEventListener(OnEventListener onEventListener) {
        this.zzq.zzb(onEventListener);
    }

    @KeepForSdk
    public Bundle performActionWithResponse(Bundle bundle) {
        return this.zzq.zza(bundle, true);
    }

    @KeepForSdk
    public void performAction(Bundle bundle) {
        this.zzq.zza(bundle, false);
    }

    @KeepForSdk
    public int getMaxUserProperties(String str) {
        return this.zzq.getMaxUserProperties(str);
    }

    @KeepForSdk
    public void setCurrentScreen(Activity activity, String str, String str2) {
        this.zzq.setCurrentScreen(activity, str, str2);
    }

    @KeepForSdk
    public String getAppIdOrigin() {
        return this.zzq.getAppIdOrigin();
    }
}
