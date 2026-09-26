package com.mixpanel.android.mpmetrics;

import android.annotation.SuppressLint;
import android.content.SharedPreferences;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@SuppressLint({"CommitPrefEdits"})
class i {
    private static final String DELIMITER = ",";
    private static final String LOGTAG = "MixpanelAPI.PIdentity";
    private static Boolean sIsFirstAppLaunch = null;
    private static Integer sPreviousVersionCode = null;
    private static boolean sReferrerPrefsDirty = true;
    private static final Object sReferrerPrefsLock = new Object();
    private String mAnonymousId;
    private String mEventsDistinctId;
    private boolean mEventsUserIdPresent;
    private boolean mHadPersistedDistinctId;
    private Boolean mIsUserOptOut;
    private final Future<SharedPreferences> mLoadReferrerPreferences;
    private final Future<SharedPreferences> mLoadStoredPreferences;
    private final Future<SharedPreferences> mMixpanelPreferences;
    private String mPeopleDistinctId;
    private final Future<SharedPreferences> mTimeEventsPreferences;
    private final Object mSuperPropsLock = new Object();
    private JSONObject mSuperPropertiesCache = null;
    private Map<String, String> mReferrerPropertiesCache = null;
    private boolean mIdentitiesLoaded = false;
    private final SharedPreferences.OnSharedPreferenceChangeListener mReferrerChangeListener = new a();

    class a implements SharedPreferences.OnSharedPreferenceChangeListener {
        a() {
        }

        @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
        public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
            synchronized (i.sReferrerPrefsLock) {
                i.this.x();
                boolean unused = i.sReferrerPrefsDirty = false;
            }
        }
    }

    public synchronized void B(String str) {
        try {
            if (!this.mIdentitiesLoaded) {
                v();
            }
            if (this.mAnonymousId != null) {
                return;
            }
            this.mAnonymousId = str;
            this.mHadPersistedDistinctId = true;
            I();
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void C(String str) {
        try {
            if (!this.mIdentitiesLoaded) {
                v();
            }
            this.mEventsDistinctId = str;
            I();
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void D(String str) {
        try {
            try {
                SharedPreferences.Editor editorEdit = this.mMixpanelPreferences.get().edit();
                editorEdit.putBoolean("has_launched_" + str, true);
                H(editorEdit);
            } catch (ExecutionException e) {
                com.mixpanel.android.util.d.d(LOGTAG, "Couldn't write internal Mixpanel shared preferences.", e.getCause());
            }
        } catch (InterruptedException e2) {
            com.mixpanel.android.util.d.d(LOGTAG, "Couldn't write internal Mixpanel shared preferences.", e2);
        }
    }

    public synchronized void E(boolean z6, String str) {
        this.mIsUserOptOut = Boolean.valueOf(z6);
        J(str);
    }

    public synchronized void F(String str) {
        try {
            if (!this.mIdentitiesLoaded) {
                v();
            }
            this.mPeopleDistinctId = str;
            I();
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void e() {
        try {
            SharedPreferences.Editor editorEdit = this.mLoadStoredPreferences.get().edit();
            editorEdit.clear();
            H(editorEdit);
            y();
            v();
        } catch (InterruptedException e) {
            throw new RuntimeException(e.getCause());
        } catch (ExecutionException e2) {
            throw new RuntimeException(e2.getCause());
        }
    }

    public synchronized String h() {
        try {
            if (!this.mIdentitiesLoaded) {
                v();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.mAnonymousId;
    }

    public synchronized String i() {
        try {
            if (!this.mIdentitiesLoaded) {
                v();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.mEventsDistinctId;
    }

    public synchronized String j() {
        try {
            if (!this.mIdentitiesLoaded) {
                v();
            }
            if (!this.mEventsUserIdPresent) {
                return null;
            }
            return this.mEventsDistinctId;
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized boolean k() {
        try {
            if (!this.mIdentitiesLoaded) {
                v();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.mHadPersistedDistinctId;
    }

    public synchronized boolean l(String str) {
        try {
            if (this.mIsUserOptOut == null) {
                w(str);
                if (this.mIsUserOptOut == null) {
                    this.mIsUserOptOut = Boolean.FALSE;
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.mIsUserOptOut.booleanValue();
    }

    public synchronized String m() {
        try {
            if (!this.mIdentitiesLoaded) {
                v();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.mPeopleDistinctId;
    }

    public synchronized boolean s(boolean z6, String str) {
        try {
            if (sIsFirstAppLaunch == null) {
                try {
                    if (this.mMixpanelPreferences.get().getBoolean("has_launched_" + str, false)) {
                        sIsFirstAppLaunch = Boolean.FALSE;
                    } else {
                        Boolean boolValueOf = Boolean.valueOf(!z6);
                        sIsFirstAppLaunch = boolValueOf;
                        if (!boolValueOf.booleanValue()) {
                            D(str);
                        }
                    }
                } catch (InterruptedException unused) {
                    sIsFirstAppLaunch = Boolean.FALSE;
                } catch (ExecutionException unused2) {
                    sIsFirstAppLaunch = Boolean.FALSE;
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return sIsFirstAppLaunch.booleanValue();
    }

    public synchronized boolean t(String str) {
        if (str == null) {
            return false;
        }
        try {
            Integer numValueOf = Integer.valueOf(str);
            try {
                if (sPreviousVersionCode == null) {
                    Integer numValueOf2 = Integer.valueOf(this.mMixpanelPreferences.get().getInt("latest_version_code", -1));
                    sPreviousVersionCode = numValueOf2;
                    if (numValueOf2.intValue() == -1) {
                        sPreviousVersionCode = numValueOf;
                        SharedPreferences.Editor editorEdit = this.mMixpanelPreferences.get().edit();
                        editorEdit.putInt("latest_version_code", numValueOf.intValue());
                        H(editorEdit);
                    }
                }
                if (sPreviousVersionCode.intValue() < numValueOf.intValue()) {
                    SharedPreferences.Editor editorEdit2 = this.mMixpanelPreferences.get().edit();
                    editorEdit2.putInt("latest_version_code", numValueOf.intValue());
                    H(editorEdit2);
                    return true;
                }
            } catch (InterruptedException e) {
                com.mixpanel.android.util.d.d(LOGTAG, "Couldn't write internal Mixpanel from shared preferences.", e);
            } catch (ExecutionException e2) {
                com.mixpanel.android.util.d.d(LOGTAG, "Couldn't write internal Mixpanel shared preferences.", e2.getCause());
            }
            return false;
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void u() {
        try {
            if (!this.mIdentitiesLoaded) {
                v();
            }
            this.mEventsUserIdPresent = true;
            I();
        } catch (Throwable th) {
            throw th;
        }
    }

    private void G() {
        JSONObject jSONObject = this.mSuperPropertiesCache;
        if (jSONObject == null) {
            com.mixpanel.android.util.d.c(LOGTAG, "storeSuperProperties should not be called with uninitialized superPropertiesCache.");
            return;
        }
        String string = jSONObject.toString();
        com.mixpanel.android.util.d.i(LOGTAG, "Storing Super Properties " + string);
        try {
            SharedPreferences.Editor editorEdit = this.mLoadStoredPreferences.get().edit();
            editorEdit.putString("super_properties", string);
            H(editorEdit);
        } catch (InterruptedException e) {
            com.mixpanel.android.util.d.d(LOGTAG, "Cannot store superProperties in shared preferences.", e);
        } catch (ExecutionException e2) {
            com.mixpanel.android.util.d.d(LOGTAG, "Cannot store superProperties in shared preferences.", e2.getCause());
        }
    }

    private void I() {
        try {
            SharedPreferences.Editor editorEdit = this.mLoadStoredPreferences.get().edit();
            editorEdit.putString("events_distinct_id", this.mEventsDistinctId);
            editorEdit.putBoolean("events_user_id_present", this.mEventsUserIdPresent);
            editorEdit.putString("people_distinct_id", this.mPeopleDistinctId);
            editorEdit.putString("anonymous_id", this.mAnonymousId);
            editorEdit.putBoolean("had_persisted_distinct_id", this.mHadPersistedDistinctId);
            H(editorEdit);
        } catch (InterruptedException e) {
            com.mixpanel.android.util.d.d(LOGTAG, "Can't write distinct ids to shared preferences.", e);
        } catch (ExecutionException e2) {
            com.mixpanel.android.util.d.d(LOGTAG, "Can't write distinct ids to shared preferences.", e2.getCause());
        }
    }

    private void J(String str) {
        try {
            SharedPreferences.Editor editorEdit = this.mMixpanelPreferences.get().edit();
            editorEdit.putBoolean("opt_out_" + str, this.mIsUserOptOut.booleanValue());
            H(editorEdit);
        } catch (InterruptedException e) {
            com.mixpanel.android.util.d.d(LOGTAG, "Can't write opt-out shared preferences.", e);
        } catch (ExecutionException e2) {
            com.mixpanel.android.util.d.d(LOGTAG, "Can't write opt-out shared preferences.", e2.getCause());
        }
    }

    public static String n(SharedPreferences sharedPreferences) {
        return sharedPreferences.getString("people_distinct_id", null);
    }

    private JSONObject p() {
        if (this.mSuperPropertiesCache == null) {
            y();
        }
        return this.mSuperPropertiesCache;
    }

    private void v() {
        SharedPreferences sharedPreferences;
        try {
            sharedPreferences = this.mLoadStoredPreferences.get();
        } catch (InterruptedException e) {
            com.mixpanel.android.util.d.d(LOGTAG, "Cannot read distinct ids from sharedPreferences.", e);
            sharedPreferences = null;
        } catch (ExecutionException e2) {
            com.mixpanel.android.util.d.d(LOGTAG, "Cannot read distinct ids from sharedPreferences.", e2.getCause());
            sharedPreferences = null;
        }
        if (sharedPreferences == null) {
            return;
        }
        this.mEventsDistinctId = sharedPreferences.getString("events_distinct_id", null);
        this.mEventsUserIdPresent = sharedPreferences.getBoolean("events_user_id_present", false);
        this.mPeopleDistinctId = sharedPreferences.getString("people_distinct_id", null);
        this.mAnonymousId = sharedPreferences.getString("anonymous_id", null);
        this.mHadPersistedDistinctId = sharedPreferences.getBoolean("had_persisted_distinct_id", false);
        if (this.mEventsDistinctId == null) {
            this.mAnonymousId = UUID.randomUUID().toString();
            this.mEventsDistinctId = "$device:" + this.mAnonymousId;
            this.mEventsUserIdPresent = false;
            I();
        }
        this.mIdentitiesLoaded = true;
    }

    private void w(String str) {
        SharedPreferences sharedPreferences;
        try {
            sharedPreferences = this.mMixpanelPreferences.get();
        } catch (InterruptedException e) {
            com.mixpanel.android.util.d.d(LOGTAG, "Cannot read opt out flag from sharedPreferences.", e);
            sharedPreferences = null;
        } catch (ExecutionException e2) {
            com.mixpanel.android.util.d.d(LOGTAG, "Cannot read opt out flag from sharedPreferences.", e2.getCause());
            sharedPreferences = null;
        }
        if (sharedPreferences == null) {
            return;
        }
        this.mIsUserOptOut = Boolean.valueOf(sharedPreferences.getBoolean("opt_out_" + str, false));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x() {
        this.mReferrerPropertiesCache = new HashMap();
        try {
            SharedPreferences sharedPreferences = this.mLoadReferrerPreferences.get();
            sharedPreferences.unregisterOnSharedPreferenceChangeListener(this.mReferrerChangeListener);
            sharedPreferences.registerOnSharedPreferenceChangeListener(this.mReferrerChangeListener);
            for (Map.Entry<String, ?> entry : sharedPreferences.getAll().entrySet()) {
                this.mReferrerPropertiesCache.put(entry.getKey(), entry.getValue().toString());
            }
        } catch (InterruptedException e) {
            com.mixpanel.android.util.d.d(LOGTAG, "Cannot load referrer properties from shared preferences.", e);
        } catch (ExecutionException e2) {
            com.mixpanel.android.util.d.d(LOGTAG, "Cannot load referrer properties from shared preferences.", e2.getCause());
        }
    }

    private void y() {
        JSONObject jSONObject;
        try {
            try {
                try {
                    String string = this.mLoadStoredPreferences.get().getString("super_properties", "{}");
                    com.mixpanel.android.util.d.i(LOGTAG, "Loading Super Properties " + string);
                    this.mSuperPropertiesCache = new JSONObject(string);
                } catch (JSONException unused) {
                    com.mixpanel.android.util.d.c(LOGTAG, "Cannot parse stored superProperties");
                    G();
                    if (this.mSuperPropertiesCache == null) {
                        jSONObject = new JSONObject();
                        this.mSuperPropertiesCache = jSONObject;
                    }
                }
            } catch (InterruptedException e) {
                com.mixpanel.android.util.d.d(LOGTAG, "Cannot load superProperties from SharedPreferences.", e);
                if (this.mSuperPropertiesCache == null) {
                    jSONObject = new JSONObject();
                    this.mSuperPropertiesCache = jSONObject;
                }
            } catch (ExecutionException e2) {
                com.mixpanel.android.util.d.d(LOGTAG, "Cannot load superProperties from SharedPreferences.", e2.getCause());
                if (this.mSuperPropertiesCache == null) {
                    jSONObject = new JSONObject();
                    this.mSuperPropertiesCache = jSONObject;
                }
            }
        } catch (Throwable th) {
            if (this.mSuperPropertiesCache == null) {
                this.mSuperPropertiesCache = new JSONObject();
            }
            throw th;
        }
    }

    public void A(String str) {
        try {
            SharedPreferences.Editor editorEdit = this.mTimeEventsPreferences.get().edit();
            editorEdit.remove(str);
            H(editorEdit);
        } catch (InterruptedException e) {
            e.printStackTrace();
        } catch (ExecutionException e2) {
            e2.printStackTrace();
        }
    }

    public void d(JSONObject jSONObject) {
        synchronized (this.mSuperPropsLock) {
            JSONObject jSONObjectP = p();
            Iterator<String> itKeys = jSONObjectP.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                try {
                    jSONObject.put(next, jSONObjectP.get(next));
                } catch (JSONException e) {
                    com.mixpanel.android.util.d.d(LOGTAG, "Object read from one JSON Object cannot be written to another", e);
                }
            }
        }
    }

    public void f() {
        synchronized (sReferrerPrefsLock) {
            try {
                try {
                    SharedPreferences.Editor editorEdit = this.mLoadReferrerPreferences.get().edit();
                    editorEdit.clear();
                    H(editorEdit);
                } catch (ExecutionException e) {
                    com.mixpanel.android.util.d.d(LOGTAG, "Cannot load referrer properties from shared preferences.", e.getCause());
                }
            } catch (InterruptedException e2) {
                com.mixpanel.android.util.d.d(LOGTAG, "Cannot load referrer properties from shared preferences.", e2);
            }
        }
    }

    public void g() {
        try {
            SharedPreferences.Editor editorEdit = this.mTimeEventsPreferences.get().edit();
            editorEdit.clear();
            H(editorEdit);
        } catch (InterruptedException e) {
            e.printStackTrace();
        } catch (ExecutionException e2) {
            e2.printStackTrace();
        }
    }

    public Map<String, String> o() {
        synchronized (sReferrerPrefsLock) {
            try {
                if (sReferrerPrefsDirty || this.mReferrerPropertiesCache == null) {
                    x();
                    sReferrerPrefsDirty = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return this.mReferrerPropertiesCache;
    }

    public Map<String, Long> q() {
        HashMap map = new HashMap();
        try {
            for (Map.Entry<String, ?> entry : this.mTimeEventsPreferences.get().getAll().entrySet()) {
                map.put(entry.getKey(), Long.valueOf(entry.getValue().toString()));
            }
        } catch (InterruptedException e) {
            e.printStackTrace();
        } catch (ExecutionException e2) {
            e2.printStackTrace();
        }
        return map;
    }

    protected boolean r(String str) {
        try {
            return this.mMixpanelPreferences.get().contains("opt_out_" + str);
        } catch (InterruptedException e) {
            com.mixpanel.android.util.d.d(LOGTAG, "Can't read opt-out shared preferences.", e);
            return false;
        } catch (ExecutionException e2) {
            com.mixpanel.android.util.d.d(LOGTAG, "Can't read opt-out shared preferences.", e2.getCause());
            return false;
        }
    }

    public void z(JSONObject jSONObject) {
        synchronized (this.mSuperPropsLock) {
            JSONObject jSONObjectP = p();
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                try {
                    jSONObjectP.put(next, jSONObject.get(next));
                } catch (JSONException e) {
                    com.mixpanel.android.util.d.d(LOGTAG, "Exception registering super property.", e);
                }
            }
            G();
        }
    }

    public i(Future<SharedPreferences> future, Future<SharedPreferences> future2, Future<SharedPreferences> future3, Future<SharedPreferences> future4) {
        this.mLoadReferrerPreferences = future;
        this.mLoadStoredPreferences = future2;
        this.mTimeEventsPreferences = future3;
        this.mMixpanelPreferences = future4;
    }

    private static void H(SharedPreferences.Editor editor) {
        editor.apply();
    }
}
