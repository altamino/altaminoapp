package com.narvii.util.statistics;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.narvii.app.NVContext;
import com.narvii.app.incubator.IncubatorApplication;
import com.narvii.services.AutostartServiceProvider;
import com.narvii.util.DateUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class FirebaseLogManager {

    public static class FirebaseTimeTrack implements AutostartServiceProvider<Object> {
        private long lastResumeTime;
        SharedPreferences spendTimePrefs;

        @Override // com.narvii.services.ServiceProvider
        public void destroy(NVContext nVContext, Object obj) {
        }

        @Override // com.narvii.services.ServiceProvider
        public void stop(NVContext nVContext, Object obj) {
        }

        @Override // com.narvii.services.ServiceProvider
        public void pause(NVContext nVContext, Object obj) {
            if (this.lastResumeTime != 0) {
                long jCurrentTimeMillis = System.currentTimeMillis() - this.lastResumeTime;
                Log.d("FirebaseTimeTrack", "time spend in current session " + jCurrentTimeMillis);
                this.spendTimePrefs.edit().putLong("spendTime", this.spendTimePrefs.getLong("spendTime", 0L) + jCurrentTimeMillis).apply();
            }
        }

        @Override // com.narvii.services.ServiceProvider
        public Object create(NVContext nVContext) {
            this.spendTimePrefs = nVContext.getContext().getSharedPreferences("stat_firebase", 0);
            return this;
        }

        @Override // com.narvii.services.ServiceProvider
        public void resume(NVContext nVContext, Object obj) {
            this.lastResumeTime = System.currentTimeMillis();
            long j6 = this.spendTimePrefs.getLong("spendTime", 0L);
            Log.d("FirebaseTimeTrack", "time spend before this session " + j6);
            long j10 = j6 / 60000;
            if (j10 > 30 && !this.spendTimePrefs.contains("spentTime30m")) {
                FirebaseLogManager.logEvent(nVContext, "user spends 30 minutes", null);
                this.spendTimePrefs.edit().putBoolean("spentTime30m", true).apply();
                Log.d("FirebaseTimeTrack", "spentTime30m");
            } else if (j10 > 60 && !this.spendTimePrefs.contains("spentTime1h")) {
                FirebaseLogManager.logEvent(nVContext, "user spends 1 hour", null);
                this.spendTimePrefs.edit().putBoolean("spentTime1h", true).apply();
                Log.d("FirebaseTimeTrack", "spentTime1h");
            } else if (j10 > 180 && !this.spendTimePrefs.contains("spentTime3h")) {
                FirebaseLogManager.logEvent(nVContext, "user spends 3 hour", null);
                Log.d("FirebaseTimeTrack", "spentTime3h");
                this.spendTimePrefs.edit().putBoolean("spentTime3h", true).apply();
            }
        }

        @Override // com.narvii.services.ServiceProvider
        public void start(NVContext nVContext, Object obj) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            SharedPreferences sharedPreferences = (SharedPreferences) nVContext.getService(IncubatorApplication.PREFS_SERVICE_KEY);
            long j6 = sharedPreferences.getLong("firebaseZeroTime", 0L);
            if (!sharedPreferences.contains("firstLaunchNotifyScheduleTime") && j6 == 0) {
                sharedPreferences.edit().putLong("firebaseZeroTime", jCurrentTimeMillis).apply();
                return;
            }
            if (j6 != 0) {
                long j10 = (jCurrentTimeMillis - j6) / DateUtils.ONE_DAY;
                if (j10 == 2 && !sharedPreferences.contains("firebareFired2")) {
                    FirebaseLogManager.logEvent(nVContext, "New Retention 2 Days", null);
                    sharedPreferences.edit().putBoolean("firebareFired2", true).apply();
                }
                if (j10 == 3 && !sharedPreferences.contains("firebareFired3")) {
                    FirebaseLogManager.logEvent(nVContext, "New Retention 3 Days", null);
                    sharedPreferences.edit().putBoolean("firebareFired3", true).apply();
                }
                if (j10 == 7 && !sharedPreferences.contains("firebareFired7")) {
                    FirebaseLogManager.logEvent(nVContext, "New Retention 7 Days", null);
                    sharedPreferences.edit().putBoolean("firebareFired7", true).apply();
                }
                if (j10 == 30 && !sharedPreferences.contains("firebareFired30")) {
                    FirebaseLogManager.logEvent(nVContext, "New Retention 30 Days", null);
                    sharedPreferences.edit().putBoolean("firebareFired30", true).apply();
                }
            }
        }
    }

    public static Object[] createParams(String... strArr) {
        if (strArr.length % 2 == 1) {
            return new Object[0];
        }
        Object[] objArr = new Object[strArr.length];
        int length = strArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            objArr[i10] = strArr[i10];
        }
        return objArr;
    }

    public static void logEvent(NVContext nVContext, StatisticsEventBuilder statisticsEventBuilder) {
        if (statisticsEventBuilder == null || TextUtils.isEmpty(statisticsEventBuilder.eventName)) {
            return;
        }
        Log.v("FirebaseLog", "Firebase event: " + statisticsEventBuilder.eventName);
        try {
            Bundle bundle = new Bundle();
            for (Map.Entry<String, Object> entry : statisticsEventBuilder.params.entrySet()) {
                String strFirebaseName = firebaseName(entry.getKey());
                if (entry.getValue() instanceof Boolean) {
                    bundle.putBoolean(strFirebaseName, ((Boolean) entry.getValue()).booleanValue());
                } else if (entry.getValue() instanceof Double) {
                    bundle.putDouble(strFirebaseName, ((Double) entry.getValue()).doubleValue());
                } else {
                    bundle.putString(strFirebaseName, firebaseValue(entry.getValue()));
                }
            }
            FirebaseAnalytics.getInstance(nVContext.getContext()).a(firebaseName(statisticsEventBuilder.eventName), bundle);
        } catch (Exception unused) {
        }
    }

    private static String firebaseName(Object obj) {
        if (!(obj instanceof String)) {
            return JacksonUtils.writeAsString(obj);
        }
        StringBuilder sb = new StringBuilder();
        String lowerCase = ((String) obj).toLowerCase(Locale.US);
        int length = lowerCase.length();
        for (int i10 = 0; i10 < length; i10++) {
            char cCharAt = lowerCase.charAt(i10);
            if ((cCharAt < '0' || cCharAt > '9') && ((cCharAt < 'a' || cCharAt > 'z') && (cCharAt < 'A' || cCharAt > 'Z'))) {
                sb.append('_');
            } else {
                sb.append(cCharAt);
            }
        }
        return sb.toString();
    }

    private static String firebaseValue(Object obj) {
        if (!(obj instanceof String)) {
            return JacksonUtils.writeAsString(obj);
        }
        StringBuilder sb = new StringBuilder();
        String str = (String) obj;
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            char cCharAt = str.charAt(i10);
            if ((cCharAt < '0' || cCharAt > '9') && ((cCharAt < 'a' || cCharAt > 'z') && (cCharAt < 'A' || cCharAt > 'Z'))) {
                sb.append('_');
            } else {
                sb.append(cCharAt);
            }
        }
        return sb.toString();
    }

    public static void logEvent(NVContext nVContext, String str, Object[] objArr) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Log.v("FirebaseLog", "Firebase event: " + str);
        try {
            Bundle bundle = new Bundle();
            if (objArr != null) {
                for (int i10 = 0; i10 < objArr.length; i10 += 2) {
                    Object obj = objArr[i10];
                    Object obj2 = objArr[i10 + 1];
                    String strFirebaseName = firebaseName(obj);
                    if (obj2 instanceof Boolean) {
                        bundle.putBoolean(strFirebaseName, ((Boolean) obj2).booleanValue());
                    } else if (obj2 instanceof Double) {
                        bundle.putDouble(strFirebaseName, ((Double) obj2).doubleValue());
                    } else {
                        bundle.putString(strFirebaseName, firebaseValue(obj2));
                    }
                }
            }
            FirebaseAnalytics.getInstance(nVContext.getContext()).a(firebaseName(str), bundle);
        } catch (Exception unused) {
        }
    }
}
