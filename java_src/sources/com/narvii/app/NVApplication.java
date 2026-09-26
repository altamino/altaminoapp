package com.narvii.app;

import ai.medialab.medialabads2.maliciousadblockers.RedirectBlockingApplication;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.os.SystemClock;
import android.util.Printer;
import androidx.webkit.ProxyConfig;
import com.android.volley.VolleyLog;
import com.comscore.Analytics;
import com.comscore.PublisherConfiguration;
import com.narvii.lib.BuildConfig;
import com.narvii.lib.R;
import com.narvii.logging.LogUtils;
import com.narvii.navigator.Navigator;
import com.narvii.services.ServiceManager;
import com.narvii.util.Log;
import com.narvii.util.NVSharedPreferences;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.crashlytics.CrashlyticsUtils;
import com.narvii.util.http.ApiService;
import com.safedk.android.utils.Logger;
import java.io.File;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public abstract class NVApplication extends RedirectBlockingApplication implements NVContext {
    public static final int CLIENT_TYPE_ACM = 200;
    public static final int CLIENT_TYPE_MASTER = 100;
    public static final String DEFAULT_MAIN_HOST = ".altamino.top";
    public static boolean FIRST_LAUNCH_SESSION;
    private static int activeCounter;
    private static NVApplication instance;
    private static int liveCounter;
    private long cid;
    private long firstFrameTime;
    private ServiceManager serviceManager;
    public static final long START_TIME = SystemClock.elapsedRealtime();
    public static boolean DEBUG = false;
    public static String FPR = null;
    public static int CLIENT_TYPE = 100;
    public static String mainHost = ".altamino.top";
    public static String SERVICE_HOST = null;
    private static Handler handler = new Handler(Looper.getMainLooper()) { // from class: com.narvii.app.NVApplication.2
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 1) {
                sendEmptyMessageDelayed(11, 100L);
            }
            if (message.what == 11) {
                int i10 = NVApplication.liveCounter - 1;
                NVApplication.liveCounter = i10;
                if (i10 <= 0) {
                    NVApplication.instance().onApplicationStop();
                    NVApplication.liveCounter = 0;
                }
            }
            if (message.what == 2) {
                sendEmptyMessageDelayed(12, 100L);
            }
            if (message.what == 12) {
                int i11 = NVApplication.activeCounter - 1;
                NVApplication.activeCounter = i11;
                if (i11 <= 0) {
                    NVApplication.instance().onApplicationPause();
                    NVApplication.activeCounter = 0;
                }
            }
        }
    };
    private final ArrayList<ApplicationLifecycleListener> listeners = new ArrayList<>();
    private HashMap<String, NVSharedPreferences> sharedPrefs = new HashMap<>();
    private final Application.ActivityLifecycleCallbacks lifecycleListener = new Application.ActivityLifecycleCallbacks() { // from class: com.narvii.app.NVApplication.3
        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            if (activity instanceof NVActivity) {
                return;
            }
            NVApplication.this.activityOnCreate(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            if (activity instanceof NVActivity) {
                return;
            }
            NVApplication.this.activityOnPause(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            if (activity instanceof NVActivity) {
                return;
            }
            NVApplication.this.activityOnResume(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            if (activity instanceof NVActivity) {
                return;
            }
            NVApplication.this.activityOnStart(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            if (activity instanceof NVActivity) {
                return;
            }
            NVApplication.this.activityOnStop(activity);
        }
    };

    public interface ApplicationLifecycleListener {
        void onApplicationPause(Application application);

        void onApplicationResume(Application application);

        void onApplicationStart(Application application);

        void onApplicationStop(Application application);
    }

    public static boolean isBasedOnMeishe() {
        return false;
    }

    public static void safedk_RedirectBlockingApplication_startActivity_3be0b6d71cb8c962ce03bf5f0efc2635(RedirectBlockingApplication p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingApplication;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        super.startActivity(p1);
    }

    protected void activityOnStart(Activity activity) {
    }

    protected void activityOnStop(Activity activity) {
    }

    protected void beforeServiceManagerCreated() {
    }

    @Override // com.narvii.app.NVContext
    public Context getContext() {
        return this;
    }

    @Override // com.narvii.app.NVContext
    public long getContextId() {
        return this.cid;
    }

    @Override // com.narvii.app.NVContext
    public NVContext getParentContext() {
        return null;
    }

    public <T> T getService(int i10, String str) {
        return (T) getService(str);
    }

    public abstract void initActivityServices(NVActivity nVActivity, ServiceManager serviceManager);

    protected abstract void initApplicationServices(ServiceManager serviceManager);

    public boolean isAppInForeground() {
        return activeCounter > 0;
    }

    protected void onApplicationResume() {
        CrashlyticsUtils.foreground = true;
        Log.i("application resume");
        this.serviceManager.resume();
        Iterator<ApplicationLifecycleListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onApplicationResume(this);
        }
        if (this.firstFrameTime == 0) {
            Utils.post(new Runnable() { // from class: com.narvii.app.NVApplication.1

                /* JADX INFO: renamed from: i, reason: collision with root package name */
                int f1820i;

                @Override // java.lang.Runnable
                public void run() {
                    int i10 = this.f1820i;
                    this.f1820i = i10 + 1;
                    if (i10 < 4) {
                        Utils.post(this);
                        return;
                    }
                    NVApplication.this.firstFrameTime = SystemClock.elapsedRealtime();
                    Log.i("first frame loaded in " + (NVApplication.this.firstFrameTime - NVApplication.START_TIME) + "ms");
                }
            });
        }
    }

    protected void onApplicationStart() {
        CrashlyticsUtils.foreground = true;
        Log.i("application start");
        this.serviceManager.start();
        Iterator<ApplicationLifecycleListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onApplicationStart(this);
        }
    }

    public static NVApplication instance() {
        NVApplication nVApplication = instance;
        if (nVApplication != null) {
            return nVApplication;
        }
        android.util.Log.w(Log.TAG, "Application has not been created, exit");
        Process.killProcess(Process.myPid());
        throw new IllegalStateException("Application has not been created");
    }

    private void setupComScoreLib() {
        Analytics.getConfiguration().addClient(new PublisherConfiguration.Builder().publisherId(BuildConfig.COMSCORE_PUBLISHER_ID).build());
        if (DEBUG) {
            Analytics.getConfiguration().enableImplementationValidationMode();
        }
        Analytics.start(getApplicationContext());
    }

    protected boolean activityOnCreate(Activity activity) {
        int i10 = liveCounter;
        liveCounter = i10 + 1;
        if (i10 != 0) {
            return false;
        }
        onApplicationStart();
        return true;
    }

    protected void activityOnDestroy(Activity activity) {
        handler.sendEmptyMessage(1);
    }

    protected void activityOnPause(Activity activity) {
        handler.sendEmptyMessage(2);
    }

    protected boolean activityOnResume(Activity activity) {
        int i10 = activeCounter;
        activeCounter = i10 + 1;
        if (i10 != 0) {
            return false;
        }
        onApplicationResume();
        return true;
    }

    public void addLifecycleListener(ApplicationLifecycleListener applicationLifecycleListener) {
        if (this.listeners.contains(applicationLifecycleListener)) {
            return;
        }
        this.listeners.add(applicationLifecycleListener);
    }

    @Override // com.narvii.app.NVContext
    public <T> T getService(String str) {
        return (T) getService(this, str);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public SharedPreferences getSharedPreferences(String str, int i10) {
        synchronized (this.sharedPrefs) {
            try {
                NVSharedPreferences nVSharedPreferences = this.sharedPrefs.get(str);
                if (nVSharedPreferences == null) {
                    SharedPreferences sharedPreferences_getSharedPreferences = _getSharedPreferences(str, 0);
                    if (sharedPreferences_getSharedPreferences == null) {
                        return null;
                    }
                    NVSharedPreferences nVSharedPreferences2 = new NVSharedPreferences(sharedPreferences_getSharedPreferences);
                    this.sharedPrefs.put(str, nVSharedPreferences2);
                    nVSharedPreferences = nVSharedPreferences2;
                }
                return nVSharedPreferences;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    protected void onApplicationPause() {
        Iterator<ApplicationLifecycleListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onApplicationPause(this);
        }
        this.serviceManager.pause();
        Log.i("application pause");
        CrashlyticsUtils.foreground = false;
        NVToast.dismiss(false);
    }

    protected void onApplicationStop() {
        Iterator<ApplicationLifecycleListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onApplicationStop(this);
        }
        this.serviceManager.stop();
        Log.i("application stop");
        CrashlyticsUtils.foreground = false;
        FIRST_LAUNCH_SESSION = false;
    }

    @Override // android.app.Application
    public void onTerminate() {
        this.serviceManager.destroy();
        super.onTerminate();
    }

    public <T> T peekService(int i10, String str) {
        ServiceManager serviceManager = this.serviceManager;
        if (serviceManager == null) {
            return null;
        }
        return (T) serviceManager.peekService(str);
    }

    public void removeLifecycleListener(ApplicationLifecycleListener applicationLifecycleListener) {
        this.listeners.remove(applicationLifecycleListener);
    }

    protected void setupCrashlytics() {
        CrashlyticsUtils.init(this, DEBUG, null);
    }

    @Override // ai.medialab.medialabads2.maliciousadblockers.RedirectBlockingApplication, android.content.ContextWrapper, android.content.Context
    public void startActivity(Intent intent) {
        Navigator navigator;
        if (intent == null) {
            return;
        }
        if (!NVActivity.justStartActivity(intent) && (navigator = (Navigator) getService("navigator")) != null) {
            intent = navigator.intentMapping(intent);
        }
        NVActivity.trackStartActivity(intent);
        safedk_RedirectBlockingApplication_startActivity_3be0b6d71cb8c962ce03bf5f0efc2635(this, intent);
    }

    protected NVApplication(boolean z6, int i10, String str) {
        DEBUG = true;
        CLIENT_TYPE = i10;
        mainHost = FPR != null ? ".altamino.top" : str;
        this.cid = Utils.generateUniqueLongId();
        instance = this;
    }

    public static Drawable getApplicationIcon(@NotNull Context context) {
        try {
            PackageManager packageManager = context.getApplicationContext().getPackageManager();
            return packageManager.getApplicationIcon(packageManager.getApplicationInfo(context.getPackageName(), 0));
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    SharedPreferences _getSharedPreferences(String str, int i10) {
        return super.getSharedPreferences(str, i10);
    }

    public <T> T getService(NVContext nVContext, String str) {
        ServiceManager serviceManager = this.serviceManager;
        if (serviceManager == null) {
            return null;
        }
        return (T) serviceManager.getService(str);
    }

    @Override // android.app.Application
    public void onCreate() {
        boolean z6;
        super.onCreate();
        if (DEBUG && Build.VERSION.SDK_INT == 28) {
            try {
                Class<?> cls = Class.forName("android.app.ActivityThread");
                Method declaredMethod = cls.getDeclaredMethod("currentActivityThread", new Class[0]);
                declaredMethod.setAccessible(true);
                Object objInvoke = declaredMethod.invoke(null, new Object[0]);
                Field declaredField = cls.getDeclaredField("mHiddenApiWarningShown");
                declaredField.setAccessible(true);
                declaredField.setBoolean(objInvoke, true);
            } catch (Exception e) {
                Log.w("fail to set mHiddenApiWarningShown", e);
            }
        }
        getMainLooper().setMessageLogging(new Printer() { // from class: com.narvii.app.h
            @Override // android.util.Printer
            public final void println(String str) {
                LogUtils.resetLogInfo();
            }
        });
        VolleyLog.DEBUG = false;
        if (new File(getFilesDir(), "did").length() == 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        FIRST_LAUNCH_SESSION = z6;
        if (DEBUG) {
            SharedPreferences sharedPreferences = getContext().getSharedPreferences("__debug", 0);
            boolean z10 = sharedPreferences.getBoolean("fakeProduction", false);
            String string = sharedPreferences.getString("apiServerHost", null);
            if (z10 && FPR == null) {
                FPR = getString(R.string._fake_production_id);
                mainHost = ".altamino.top";
                SERVICE_HOST = null;
            } else if (string != null) {
                SERVICE_HOST = string;
                ApiService.FORCE_SCHEME = ProxyConfig.MATCH_HTTPS;
            }
            try {
                if (sharedPreferences.getBoolean("leakCanary", false)) {
                    Class.forName("com.squareup.leakcanary.LeakCanary").getDeclaredMethod("install", Application.class).invoke(null, this);
                }
            } catch (Exception e2) {
                Log.e("fail to init LeakCanary", e2);
            }
        }
        setupCrashlytics();
        setupComScoreLib();
        beforeServiceManagerCreated();
        ServiceManager serviceManager = new ServiceManager(this);
        this.serviceManager = serviceManager;
        initApplicationServices(serviceManager);
        this.serviceManager.create();
        int i10 = getApplicationInfo().flags;
        registerActivityLifecycleCallbacks(this.lifecycleListener);
    }

    @Override // android.app.Application, android.content.ComponentCallbacks
    public void onLowMemory() {
        super.onLowMemory();
        CrashlyticsUtils.states.put("lowMemory", "1");
    }
}
