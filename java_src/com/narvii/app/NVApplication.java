package com.narvii.app;

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
import android.util.Log;
import android.util.Printer;
import com.android.volley.VolleyLog;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.narvii.amino.BuildConfig;
import com.narvii.lib.R;
import com.narvii.logging.LogUtils;
import com.narvii.navigator.Navigator;
import com.narvii.services.ServiceManager;
import com.narvii.util.DBAminoLightHelper;
import com.narvii.util.NVSharedPreferences;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.crashlytics.CrashlyticsUtils;
import com.narvii.util.http.ApiService;
import java.io.File;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class NVApplication extends Application implements NVContext {
    public static final int CLIENT_TYPE_ACM = 200;
    public static final int CLIENT_TYPE_MASTER = 100;
    public static final int CLIENT_TYPE_STANDALONE = 101;
    public static final int CLIENT_TYPE_STORY_EDITOR = 201;
    public static boolean FIRST_LAUNCH_SESSION;
    private static int activeCounter;
    private static NVApplication instance;
    private static int liveCounter;
    private long cid;
    private long firstFrameTime;
    private ServiceManager serviceManager;
    public static final long START_TIME = SystemClock.elapsedRealtime();
    public static boolean DEBUG = false;
    public static String FAKE_PRODUCTION = null;
    public static int CLIENT_TYPE = 101;
    public static String MAIN_HOST = BuildConfig.MAIN_HOST;
    public static String SERVICE_HOST = null;
    private static Handler handler = new Handler(Looper.getMainLooper()) { // from class: com.narvii.app.NVApplication.3
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 1) {
                sendEmptyMessageDelayed(11, 100L);
            }
            if (message.what == 11 && NVApplication.access$106() <= 0) {
                NVApplication.instance().onApplicationStop();
                int unused = NVApplication.liveCounter = 0;
            }
            if (message.what == 2) {
                sendEmptyMessageDelayed(12, 100L);
            }
            if (message.what != 12 || NVApplication.access$206() > 0) {
                return;
            }
            NVApplication.instance().onApplicationPause();
            int unused2 = NVApplication.activeCounter = 0;
        }
    };
    private final ArrayList<ApplicationLifecycleListener> listeners = new ArrayList<>();
    private HashMap<String, NVSharedPreferences> sharedPrefs = new HashMap<>();
    private final Application.ActivityLifecycleCallbacks lifecycleListener = new Application.ActivityLifecycleCallbacks() { // from class: com.narvii.app.NVApplication.4
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
        public void onActivityStarted(Activity activity) {
            if (activity instanceof NVActivity) {
                return;
            }
            NVApplication.this.activityOnStart(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            if (activity instanceof NVActivity) {
                return;
            }
            NVApplication.this.activityOnResume(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            if (activity instanceof NVActivity) {
                return;
            }
            NVApplication.this.activityOnPause(activity);
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
        return true;
    }

    protected void activityOnStart(Activity activity) {
    }

    protected void activityOnStop(Activity activity) {
    }

    @Override // com.narvii.app.NVContext
    public Context getContext() {
        return this;
    }

    @Override // com.narvii.app.NVContext
    public NVContext getParentContext() {
        return null;
    }

    public abstract void initActivityServices(NVActivity nVActivity, ServiceManager serviceManager);

    protected abstract void initApplicationServices(ServiceManager serviceManager);

    static /* synthetic */ int access$106() {
        int i = liveCounter - 1;
        liveCounter = i;
        return i;
    }

    static /* synthetic */ int access$206() {
        int i = activeCounter - 1;
        activeCounter = i;
        return i;
    }

    public static NVApplication instance() {
        NVApplication nVApplication = instance;
        if (nVApplication != null) {
            return nVApplication;
        }
        Log.w(com.narvii.util.Log.TAG, "Application has not been created, exit");
        Process.killProcess(Process.myPid());
        throw new IllegalStateException("Application has not been created");
    }

    protected NVApplication(boolean z, int i, String str) {
        CLIENT_TYPE = i;
        MAIN_HOST = FAKE_PRODUCTION != null ? BuildConfig.MAIN_HOST : str;
        this.cid = Utils.generateUniqueLongId();
        instance = this;
    }

    @Override // android.app.Application
    public void onCreate() throws IllegalAccessException, NoSuchFieldException, NoSuchMethodException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        super.onCreate();
        DBAminoLightHelper.InitDatabaseAminoLight(getContext());
        DEBUG = DBAminoLightHelper.getBoolean("debug", false);
        if (DEBUG && Build.VERSION.SDK_INT >= 28) {
            try {
                Class<?> cls = Class.forName("android.app.ActivityThread");
                Method declaredMethod = cls.getDeclaredMethod("currentActivityThread", new Class[0]);
                declaredMethod.setAccessible(true);
                Object objInvoke = declaredMethod.invoke(null, new Object[0]);
                Field declaredField = cls.getDeclaredField("mHiddenApiWarningShown");
                declaredField.setAccessible(true);
                declaredField.setBoolean(objInvoke, true);
            } catch (Exception e) {
                com.narvii.util.Log.w("fail to set mHiddenApiWarningShown", e);
            }
        }
        getMainLooper().setMessageLogging(new Printer() { // from class: com.narvii.app.NVApplication.1
            @Override // android.util.Printer
            public void println(String str) {
                LogUtils.resetLogInfo();
            }
        });
        VolleyLog.DEBUG = false;
        FIRST_LAUNCH_SESSION = new File(getFilesDir(), "did").length() == 0;
        if (DEBUG) {
            SharedPreferences sharedPreferences = getContext().getSharedPreferences("__debug", 0);
            boolean z = sharedPreferences.getBoolean("fakeProduction", false);
            String string = sharedPreferences.getString("apiServerHost", null);
            if (z && FAKE_PRODUCTION == null) {
                FAKE_PRODUCTION = getString(R.string._fake_production_id);
                MAIN_HOST = BuildConfig.MAIN_HOST;
                SERVICE_HOST = null;
            } else if (string != null) {
                SERVICE_HOST = string;
                ApiService.FORCE_SCHEME = "http";
            }
            try {
                if (sharedPreferences.getBoolean("leakCanary", false)) {
                    Class.forName("com.squareup.leakcanary.LeakCanary").getDeclaredMethod("install", Application.class).invoke(null, this);
                }
            } catch (Exception e2) {
                com.narvii.util.Log.e("fail to init LeakCanary", e2);
            }
        }
        this.serviceManager = new ServiceManager(this);
        initApplicationServices(this.serviceManager);
        this.serviceManager.create();
        int i = getApplicationInfo().flags;
        registerActivityLifecycleCallbacks(this.lifecycleListener);
    }

    public static boolean isStoryEditorApp() {
        return CLIENT_TYPE == 201;
    }

    public static Drawable getApplicationIcon(Context context) {
        try {
            PackageManager packageManager = context.getApplicationContext().getPackageManager();
            return packageManager.getApplicationIcon(packageManager.getApplicationInfo(context.getPackageName(), 0));
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    @Override // android.app.Application
    public void onTerminate() {
        this.serviceManager.destroy();
        super.onTerminate();
    }

    @Override // android.app.Application, android.content.ComponentCallbacks
    public void onLowMemory() {
        super.onLowMemory();
        CrashlyticsUtils.states.put("lowMemory", IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
    }

    protected void setupCrashlytics() {
        CrashlyticsUtils.init(this, DEBUG, null);
    }

    public <T> T getService(int i, String str) {
        return (T) getService(str);
    }

    public <T> T peekService(int i, String str) {
        ServiceManager serviceManager = this.serviceManager;
        if (serviceManager == null) {
            return null;
        }
        return (T) serviceManager.peekService(str);
    }

    @Override // com.narvii.app.NVContext
    public <T> T getService(String str) {
        return (T) getService(this, str);
    }

    public <T> T getService(NVContext nVContext, String str) {
        ServiceManager serviceManager = this.serviceManager;
        if (serviceManager == null) {
            return null;
        }
        return (T) serviceManager.getService(str);
    }

    @Override // com.narvii.app.NVContext
    public long getContextId() {
        return this.cid;
    }

    @Override // android.content.ContextWrapper, android.content.Context, com.narvii.app.NVContext
    public void startActivity(Intent intent) {
        Navigator navigator;
        if (intent == null) {
            return;
        }
        if (!NVActivity.justStartActivity(intent) && (navigator = (Navigator) getService("navigator")) != null) {
            intent = navigator.intentMapping(intent);
        }
        NVActivity.trackStartActivity(intent);
        super.startActivity(intent);
    }

    SharedPreferences _getSharedPreferences(String str, int i) {
        return super.getSharedPreferences(str, i);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public SharedPreferences getSharedPreferences(String str, int i) {
        synchronized (this.sharedPrefs) {
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
        }
    }

    public void addLifecycleListener(ApplicationLifecycleListener applicationLifecycleListener) {
        if (this.listeners.contains(applicationLifecycleListener)) {
            return;
        }
        this.listeners.add(applicationLifecycleListener);
    }

    public void removeLifecycleListener(ApplicationLifecycleListener applicationLifecycleListener) {
        this.listeners.remove(applicationLifecycleListener);
    }

    protected void onApplicationStart() {
        CrashlyticsUtils.foreground = true;
        com.narvii.util.Log.i("application start");
        this.serviceManager.start();
        Iterator<ApplicationLifecycleListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onApplicationStart(this);
        }
    }

    protected void onApplicationStop() {
        Iterator<ApplicationLifecycleListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onApplicationStop(this);
        }
        this.serviceManager.stop();
        com.narvii.util.Log.i("application stop");
        CrashlyticsUtils.foreground = false;
        FIRST_LAUNCH_SESSION = false;
    }

    protected void onApplicationResume() {
        CrashlyticsUtils.foreground = true;
        com.narvii.util.Log.i("application resume");
        this.serviceManager.resume();
        Iterator<ApplicationLifecycleListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onApplicationResume(this);
        }
        if (this.firstFrameTime == 0) {
            Utils.post(new Runnable() { // from class: com.narvii.app.NVApplication.2
                int i;

                @Override // java.lang.Runnable
                public void run() {
                    int i = this.i;
                    this.i = i + 1;
                    if (i < 4) {
                        Utils.post(this);
                        return;
                    }
                    NVApplication.this.firstFrameTime = SystemClock.elapsedRealtime();
                    com.narvii.util.Log.i("first frame loaded in " + (NVApplication.this.firstFrameTime - NVApplication.START_TIME) + "ms");
                }
            });
        }
    }

    protected void onApplicationPause() {
        Iterator<ApplicationLifecycleListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onApplicationPause(this);
        }
        this.serviceManager.pause();
        com.narvii.util.Log.i("application pause");
        CrashlyticsUtils.foreground = false;
        NVToast.dismiss(false);
    }

    protected boolean activityOnCreate(Activity activity) {
        int i = liveCounter;
        liveCounter = i + 1;
        if (i != 0) {
            return false;
        }
        onApplicationStart();
        return true;
    }

    protected void activityOnDestory(Activity activity) {
        handler.sendEmptyMessage(1);
    }

    protected boolean activityOnResume(Activity activity) {
        int i = activeCounter;
        activeCounter = i + 1;
        if (i != 0) {
            return false;
        }
        onApplicationResume();
        return true;
    }

    public boolean isAppInForeground() {
        return activeCounter > 0;
    }

    protected void activityOnPause(Activity activity) {
        handler.sendEmptyMessage(2);
    }
}
