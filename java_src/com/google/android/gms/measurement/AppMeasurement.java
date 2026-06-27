package com.google.android.gms.measurement;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Keep;
import android.support.v4.util.ArrayMap;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.android.gms.measurement.internal.zzby;
import com.google.android.gms.measurement.internal.zzcw;
import com.google.android.gms.measurement.internal.zzcx;
import com.google.android.gms.measurement.internal.zzcy;
import com.google.android.gms.measurement.internal.zzcz;
import com.google.android.gms.measurement.internal.zzda;
import com.google.android.gms.measurement.internal.zzdb;
import com.google.android.gms.measurement.internal.zzdy;
import com.google.android.gms.measurement.internal.zzeb;
import com.google.android.gms.measurement.internal.zzga;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

@ShowFirstParty
@Deprecated
/* loaded from: classes2.dex */
public class AppMeasurement {

    @ShowFirstParty
    @KeepForSdk
    public static final String CRASH_ORIGIN = "crash";

    @ShowFirstParty
    @KeepForSdk
    public static final String FCM_ORIGIN = "fcm";

    @ShowFirstParty
    @KeepForSdk
    public static final String FIAM_ORIGIN = "fiam";
    private static volatile AppMeasurement zzk;
    private final zzby zzl;
    private final zzdy zzm;
    private final boolean zzn;

    @ShowFirstParty
    @KeepForSdk
    public static class ConditionalUserProperty {

        @Keep
        @ShowFirstParty
        @KeepForSdk
        public boolean mActive;

        @Keep
        @ShowFirstParty
        @KeepForSdk
        public String mAppId;

        @Keep
        @ShowFirstParty
        @KeepForSdk
        public long mCreationTimestamp;

        @Keep
        public String mExpiredEventName;

        @Keep
        public Bundle mExpiredEventParams;

        @Keep
        @ShowFirstParty
        @KeepForSdk
        public String mName;

        @Keep
        @ShowFirstParty
        @KeepForSdk
        public String mOrigin;

        @Keep
        @ShowFirstParty
        @KeepForSdk
        public long mTimeToLive;

        @Keep
        public String mTimedOutEventName;

        @Keep
        public Bundle mTimedOutEventParams;

        @Keep
        @ShowFirstParty
        @KeepForSdk
        public String mTriggerEventName;

        @Keep
        @ShowFirstParty
        @KeepForSdk
        public long mTriggerTimeout;

        @Keep
        public String mTriggeredEventName;

        @Keep
        public Bundle mTriggeredEventParams;

        @Keep
        @ShowFirstParty
        @KeepForSdk
        public long mTriggeredTimestamp;

        @Keep
        @ShowFirstParty
        @KeepForSdk
        public Object mValue;

        @KeepForSdk
        public ConditionalUserProperty() {
        }

        @KeepForSdk
        public ConditionalUserProperty(ConditionalUserProperty conditionalUserProperty) {
            Preconditions.checkNotNull(conditionalUserProperty);
            this.mAppId = conditionalUserProperty.mAppId;
            this.mOrigin = conditionalUserProperty.mOrigin;
            this.mCreationTimestamp = conditionalUserProperty.mCreationTimestamp;
            this.mName = conditionalUserProperty.mName;
            Object obj = conditionalUserProperty.mValue;
            if (obj != null) {
                this.mValue = zzeb.zza(obj);
                if (this.mValue == null) {
                    this.mValue = conditionalUserProperty.mValue;
                }
            }
            this.mActive = conditionalUserProperty.mActive;
            this.mTriggerEventName = conditionalUserProperty.mTriggerEventName;
            this.mTriggerTimeout = conditionalUserProperty.mTriggerTimeout;
            this.mTimedOutEventName = conditionalUserProperty.mTimedOutEventName;
            Bundle bundle = conditionalUserProperty.mTimedOutEventParams;
            if (bundle != null) {
                this.mTimedOutEventParams = new Bundle(bundle);
            }
            this.mTriggeredEventName = conditionalUserProperty.mTriggeredEventName;
            Bundle bundle2 = conditionalUserProperty.mTriggeredEventParams;
            if (bundle2 != null) {
                this.mTriggeredEventParams = new Bundle(bundle2);
            }
            this.mTriggeredTimestamp = conditionalUserProperty.mTriggeredTimestamp;
            this.mTimeToLive = conditionalUserProperty.mTimeToLive;
            this.mExpiredEventName = conditionalUserProperty.mExpiredEventName;
            Bundle bundle3 = conditionalUserProperty.mExpiredEventParams;
            if (bundle3 != null) {
                this.mExpiredEventParams = new Bundle(bundle3);
            }
        }

        private ConditionalUserProperty(Bundle bundle) {
            Preconditions.checkNotNull(bundle);
            this.mAppId = (String) zzcw.zza(bundle, "app_id", String.class, null);
            this.mOrigin = (String) zzcw.zza(bundle, "origin", String.class, null);
            this.mName = (String) zzcw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.NAME, String.class, null);
            this.mValue = zzcw.zza(bundle, "value", Object.class, null);
            this.mTriggerEventName = (String) zzcw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME, String.class, null);
            this.mTriggerTimeout = ((Long) zzcw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT, Long.class, 0L)).longValue();
            this.mTimedOutEventName = (String) zzcw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_NAME, String.class, null);
            this.mTimedOutEventParams = (Bundle) zzcw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_PARAMS, Bundle.class, null);
            this.mTriggeredEventName = (String) zzcw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_NAME, String.class, null);
            this.mTriggeredEventParams = (Bundle) zzcw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_PARAMS, Bundle.class, null);
            this.mTimeToLive = ((Long) zzcw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE, Long.class, 0L)).longValue();
            this.mExpiredEventName = (String) zzcw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME, String.class, null);
            this.mExpiredEventParams = (Bundle) zzcw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS, Bundle.class, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Bundle zzf() {
            Bundle bundle = new Bundle();
            String str = this.mAppId;
            if (str != null) {
                bundle.putString("app_id", str);
            }
            String str2 = this.mOrigin;
            if (str2 != null) {
                bundle.putString("origin", str2);
            }
            String str3 = this.mName;
            if (str3 != null) {
                bundle.putString(AppMeasurementSdk.ConditionalUserProperty.NAME, str3);
            }
            Object obj = this.mValue;
            if (obj != null) {
                zzcw.zza(bundle, obj);
            }
            String str4 = this.mTriggerEventName;
            if (str4 != null) {
                bundle.putString(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME, str4);
            }
            bundle.putLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT, this.mTriggerTimeout);
            String str5 = this.mTimedOutEventName;
            if (str5 != null) {
                bundle.putString(AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_NAME, str5);
            }
            Bundle bundle2 = this.mTimedOutEventParams;
            if (bundle2 != null) {
                bundle.putBundle(AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_PARAMS, bundle2);
            }
            String str6 = this.mTriggeredEventName;
            if (str6 != null) {
                bundle.putString(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_NAME, str6);
            }
            Bundle bundle3 = this.mTriggeredEventParams;
            if (bundle3 != null) {
                bundle.putBundle(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_PARAMS, bundle3);
            }
            bundle.putLong(AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE, this.mTimeToLive);
            String str7 = this.mExpiredEventName;
            if (str7 != null) {
                bundle.putString(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME, str7);
            }
            Bundle bundle4 = this.mExpiredEventParams;
            if (bundle4 != null) {
                bundle.putBundle(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS, bundle4);
            }
            bundle.putLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, this.mCreationTimestamp);
            bundle.putBoolean(AppMeasurementSdk.ConditionalUserProperty.ACTIVE, this.mActive);
            bundle.putLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_TIMESTAMP, this.mTriggeredTimestamp);
            return bundle;
        }
    }

    @ShowFirstParty
    @KeepForSdk
    public static final class Event extends zzcx {

        @ShowFirstParty
        @KeepForSdk
        public static final String AD_REWARD = "_ar";

        @ShowFirstParty
        @KeepForSdk
        public static final String APP_EXCEPTION = "_ae";

        private Event() {
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

    @ShowFirstParty
    @KeepForSdk
    public static final class Param extends zzcy {

        @ShowFirstParty
        @KeepForSdk
        public static final String FATAL = "fatal";

        @ShowFirstParty
        @KeepForSdk
        public static final String TIMESTAMP = "timestamp";

        @ShowFirstParty
        @KeepForSdk
        public static final String TYPE = "type";

        private Param() {
        }
    }

    @ShowFirstParty
    @KeepForSdk
    public static final class UserProperty extends zzcz {

        @ShowFirstParty
        @KeepForSdk
        public static final String FIREBASE_LAST_NOTIFICATION = "_ln";

        private UserProperty() {
        }
    }

    @Keep
    @ShowFirstParty
    @Deprecated
    public static AppMeasurement getInstance(Context context) {
        return zza(context, null, null);
    }

    @VisibleForTesting
    private static AppMeasurement zza(Context context, String str, String str2) {
        if (zzk == null) {
            synchronized (AppMeasurement.class) {
                if (zzk == null) {
                    zzdy zzdyVarZzb = zzb(context, null);
                    if (zzdyVarZzb != null) {
                        zzk = new AppMeasurement(zzdyVarZzb);
                    } else {
                        zzk = new AppMeasurement(zzby.zza(context, null, null, null));
                    }
                }
            }
        }
        return zzk;
    }

    public static AppMeasurement zza(Context context, Bundle bundle) {
        if (zzk == null) {
            synchronized (AppMeasurement.class) {
                if (zzk == null) {
                    zzdy zzdyVarZzb = zzb(context, bundle);
                    if (zzdyVarZzb != null) {
                        zzk = new AppMeasurement(zzdyVarZzb);
                    } else {
                        zzk = new AppMeasurement(zzby.zza(context, null, null, bundle));
                    }
                }
            }
        }
        return zzk;
    }

    private static zzdy zzb(Context context, Bundle bundle) {
        try {
            return (zzdy) Class.forName("com.google.firebase.analytics.FirebaseAnalytics").getDeclaredMethod("getScionFrontendApiImplementation", Context.class, Bundle.class).invoke(null, context, bundle);
        } catch (ClassNotFoundException | Exception unused) {
            return null;
        }
    }

    @KeepForSdk
    @Deprecated
    public void setMeasurementEnabled(boolean z) {
        if (this.zzn) {
            this.zzm.setMeasurementEnabled(z);
        } else {
            this.zzl.zzs().setMeasurementEnabled(z);
        }
    }

    public final void zza(boolean z) {
        if (this.zzn) {
            this.zzm.setDataCollectionEnabled(z);
        } else {
            this.zzl.zzs().zza(z);
        }
    }

    private AppMeasurement(zzby zzbyVar) {
        Preconditions.checkNotNull(zzbyVar);
        this.zzl = zzbyVar;
        this.zzm = null;
        this.zzn = false;
    }

    private AppMeasurement(zzdy zzdyVar) {
        Preconditions.checkNotNull(zzdyVar);
        this.zzm = zzdyVar;
        this.zzl = null;
        this.zzn = true;
    }

    @Keep
    @ShowFirstParty
    public void logEventInternal(String str, String str2, Bundle bundle) {
        if (this.zzn) {
            this.zzm.logEventInternal(str, str2, bundle);
        } else {
            this.zzl.zzs().logEvent(str, str2, bundle);
        }
    }

    @ShowFirstParty
    @KeepForSdk
    public void logEventInternalNoInterceptor(String str, String str2, Bundle bundle, long j) {
        if (this.zzn) {
            this.zzm.logEventInternalNoInterceptor(str, str2, bundle, j);
        } else {
            this.zzl.zzs().logEvent(str, str2, bundle, true, false, j);
        }
    }

    @ShowFirstParty
    @KeepForSdk
    public void setUserPropertyInternal(String str, String str2, Object obj) {
        Preconditions.checkNotEmpty(str);
        if (this.zzn) {
            this.zzm.setUserPropertyInternal(str, str2, obj);
        } else {
            this.zzl.zzs().zzb(str, str2, obj, true);
        }
    }

    @ShowFirstParty
    @KeepForSdk
    public Map<String, Object> getUserProperties(boolean z) {
        if (this.zzn) {
            return this.zzm.getUserProperties(null, null, z);
        }
        List<zzga> listZzh = this.zzl.zzs().zzh(z);
        ArrayMap arrayMap = new ArrayMap(listZzh.size());
        for (zzga zzgaVar : listZzh) {
            arrayMap.put(zzgaVar.name, zzgaVar.getValue());
        }
        return arrayMap;
    }

    @ShowFirstParty
    @KeepForSdk
    public void setEventInterceptor(EventInterceptor eventInterceptor) {
        if (this.zzn) {
            this.zzm.zza(eventInterceptor);
        } else {
            this.zzl.zzs().zza(eventInterceptor);
        }
    }

    @ShowFirstParty
    @KeepForSdk
    public void registerOnMeasurementEventListener(OnEventListener onEventListener) {
        if (this.zzn) {
            this.zzm.zza(onEventListener);
        } else {
            this.zzl.zzs().zza(onEventListener);
        }
    }

    @ShowFirstParty
    @KeepForSdk
    public void unregisterOnMeasurementEventListener(OnEventListener onEventListener) {
        if (this.zzn) {
            this.zzm.zzb(onEventListener);
        } else {
            this.zzl.zzs().zzb(onEventListener);
        }
    }

    @Keep
    public String getCurrentScreenName() {
        if (this.zzn) {
            return this.zzm.getCurrentScreenName();
        }
        return this.zzl.zzs().getCurrentScreenName();
    }

    @Keep
    public String getCurrentScreenClass() {
        if (this.zzn) {
            return this.zzm.getCurrentScreenClass();
        }
        return this.zzl.zzs().getCurrentScreenClass();
    }

    @Keep
    public String getAppInstanceId() {
        if (this.zzn) {
            return this.zzm.zzj();
        }
        return this.zzl.zzs().zzj();
    }

    @Keep
    public String getGmpAppId() {
        if (this.zzn) {
            return this.zzm.getGmpAppId();
        }
        return this.zzl.zzs().getGmpAppId();
    }

    @Keep
    public long generateEventId() {
        if (this.zzn) {
            return this.zzm.generateEventId();
        }
        return this.zzl.zzab().zzgk();
    }

    @Keep
    public void beginAdUnitExposure(String str) {
        if (this.zzn) {
            this.zzm.beginAdUnitExposure(str);
        } else {
            this.zzl.zzr().beginAdUnitExposure(str, this.zzl.zzz().elapsedRealtime());
        }
    }

    @Keep
    public void endAdUnitExposure(String str) {
        if (this.zzn) {
            this.zzm.endAdUnitExposure(str);
        } else {
            this.zzl.zzr().endAdUnitExposure(str, this.zzl.zzz().elapsedRealtime());
        }
    }

    @Keep
    @ShowFirstParty
    @KeepForSdk
    public void setConditionalUserProperty(ConditionalUserProperty conditionalUserProperty) {
        Preconditions.checkNotNull(conditionalUserProperty);
        if (this.zzn) {
            this.zzm.setConditionalUserProperty(conditionalUserProperty.zzf());
        } else {
            this.zzl.zzs().setConditionalUserProperty(conditionalUserProperty.zzf());
        }
    }

    @Keep
    @VisibleForTesting
    protected void setConditionalUserPropertyAs(ConditionalUserProperty conditionalUserProperty) {
        Preconditions.checkNotNull(conditionalUserProperty);
        if (!this.zzn) {
            this.zzl.zzs().zzd(conditionalUserProperty.zzf());
            return;
        }
        throw new IllegalStateException("Unexpected call on client side");
    }

    @Keep
    @ShowFirstParty
    @KeepForSdk
    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        if (this.zzn) {
            this.zzm.clearConditionalUserProperty(str, str2, bundle);
        } else {
            this.zzl.zzs().clearConditionalUserProperty(str, str2, bundle);
        }
    }

    @Keep
    @VisibleForTesting
    protected void clearConditionalUserPropertyAs(String str, String str2, String str3, Bundle bundle) {
        if (this.zzn) {
            throw new IllegalStateException("Unexpected call on client side");
        }
        this.zzl.zzs().clearConditionalUserPropertyAs(str, str2, str3, bundle);
    }

    @Keep
    @VisibleForTesting
    protected Map<String, Object> getUserProperties(String str, String str2, boolean z) {
        if (this.zzn) {
            return this.zzm.getUserProperties(str, str2, z);
        }
        return this.zzl.zzs().getUserProperties(str, str2, z);
    }

    @Keep
    @VisibleForTesting
    protected Map<String, Object> getUserPropertiesAs(String str, String str2, String str3, boolean z) {
        if (this.zzn) {
            throw new IllegalStateException("Unexpected call on client side");
        }
        return this.zzl.zzs().getUserPropertiesAs(str, str2, str3, z);
    }

    @Keep
    @ShowFirstParty
    @KeepForSdk
    public List<ConditionalUserProperty> getConditionalUserProperties(String str, String str2) {
        List<Bundle> listZzn;
        if (this.zzn) {
            listZzn = this.zzm.getConditionalUserProperties(str, str2);
        } else {
            listZzn = this.zzl.zzs().zzn(str, str2);
        }
        ArrayList arrayList = new ArrayList(listZzn == null ? 0 : listZzn.size());
        Iterator<Bundle> it = listZzn.iterator();
        while (it.hasNext()) {
            arrayList.add(new ConditionalUserProperty(it.next()));
        }
        return arrayList;
    }

    @Keep
    @VisibleForTesting
    protected List<ConditionalUserProperty> getConditionalUserPropertiesAs(String str, String str2, String str3) {
        if (this.zzn) {
            throw new IllegalStateException("Unexpected call on client side");
        }
        ArrayList<Bundle> arrayListZze = this.zzl.zzs().zze(str, str2, str3);
        int i = 0;
        ArrayList arrayList = new ArrayList(arrayListZze == null ? 0 : arrayListZze.size());
        int size = arrayListZze.size();
        while (i < size) {
            Bundle bundle = arrayListZze.get(i);
            i++;
            arrayList.add(new ConditionalUserProperty(bundle));
        }
        return arrayList;
    }

    @Keep
    @ShowFirstParty
    @KeepForSdk
    public int getMaxUserProperties(String str) {
        if (this.zzn) {
            return this.zzm.getMaxUserProperties(str);
        }
        this.zzl.zzs();
        Preconditions.checkNotEmpty(str);
        return 25;
    }

    @KeepForSdk
    public Boolean getBoolean() {
        if (this.zzn) {
            return (Boolean) this.zzm.zzb(4);
        }
        return this.zzl.zzs().zzev();
    }

    @KeepForSdk
    public String getString() {
        if (this.zzn) {
            return (String) this.zzm.zzb(0);
        }
        return this.zzl.zzs().zzew();
    }

    @KeepForSdk
    public Long getLong() {
        if (this.zzn) {
            return (Long) this.zzm.zzb(1);
        }
        return this.zzl.zzs().zzex();
    }

    @KeepForSdk
    public Integer getInteger() {
        if (this.zzn) {
            return (Integer) this.zzm.zzb(3);
        }
        return this.zzl.zzs().zzey();
    }

    @KeepForSdk
    public Double getDouble() {
        if (this.zzn) {
            return (Double) this.zzm.zzb(2);
        }
        return this.zzl.zzs().zzez();
    }
}
