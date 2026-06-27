package com.narvii.util.crashlytics;

import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.os.Debug;
import android.os.Process;
import android.support.v4.content.LocalBroadcastManager;
import android.util.DisplayMetrics;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.android.exoplayer2.offline.DownloadService;
import com.narvii.account.AccountService;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.ActType;
import com.narvii.logging.LogEvent;
import com.narvii.logging.LogUtils;
import com.narvii.model.ExternalSourceOrigin;
import com.narvii.util.Log;
import com.narvii.util.StringUtils;
import com.narvii.util.Utils;
import com.narvii.util.crashlytics.OomHelper;
import com.narvii.util.debug.DebugService;
import com.tencent.bugly.crashreport.BuglyLog;
import com.tencent.bugly.crashreport.CrashReport;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintStream;
import java.lang.Thread;
import java.lang.ref.WeakReference;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class CrashlyticsUtils {
    private static final int CRASHTYPE_ANR = 4;
    private static final int CRASHTYPE_COCOS2DX_JS = 5;
    private static final int CRASHTYPE_COCOS2DX_LUA = 6;
    private static final int CRASHTYPE_JAVA_CATCH = 1;
    private static final int CRASHTYPE_JAVA_CRASH = 0;
    private static final int CRASHTYPE_NATIVE = 2;
    private static final int CRASHTYPE_U3D = 3;
    public static boolean ENABLED;
    private static WeakReference<NVActivity> active;
    private static File crashLogFile;
    public static DevLogger devLogger;
    public static boolean foreground;
    private static boolean inited;
    private static WeakReference<NVActivity> initializing;
    public static CrashLog prevCrashLog;
    public static final HashMap<String, String> states = new HashMap<>();
    public static final Collector activities = new Collector(8);
    public static final Collector images = new Collector(64);
    private static final Runnable updateCrashlyticsUserInfo = new Runnable() { // from class: com.narvii.util.crashlytics.CrashlyticsUtils.1
        @Override // java.lang.Runnable
        public void run() {
            try {
                AccountService accountService = (AccountService) NVApplication.instance().getService("account");
                if (CrashlyticsUtils.ENABLED) {
                    if (accountService.hasAccount()) {
                        CrashReport.setUserId(accountService.getUserId().substring(0, 8));
                    } else {
                        CrashReport.setUserId((String) null);
                    }
                }
            } catch (Exception unused) {
            }
        }
    };
    private static final BroadcastReceiver accountChangedReceiver = new BroadcastReceiver() { // from class: com.narvii.util.crashlytics.CrashlyticsUtils.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (CrashlyticsUtils.ENABLED) {
                BuglyLog.d(Log.TAG, "account changed");
                Utils.post(CrashlyticsUtils.updateCrashlyticsUserInfo);
            }
        }
    };

    /* loaded from: classes3.dex */
    public static class CrashLog {
        public int crashType;
        public String el1Active;
        public String el2Activities;
        public String el3Images;
        public String errorMessage;
        public String errorStack;
        public String errorType;
        public String states;
    }

    /* loaded from: classes3.dex */
    public static class Collector {
        public final int capacity;
        public final AtomicInteger count = new AtomicInteger();
        public final String[] list;

        public Collector(int i) {
            this.capacity = i;
            this.list = new String[i];
        }

        public void add(String str) {
            this.list[this.count.getAndIncrement() % this.capacity] = str;
        }
    }

    public static NVActivity getInitializingActivity() {
        WeakReference<NVActivity> weakReference = initializing;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    public static void setInitializingActivity(NVActivity nVActivity) {
        initializing = nVActivity == null ? null : new WeakReference<>(nVActivity);
    }

    public static NVActivity getActiveActivity() {
        WeakReference<NVActivity> weakReference = active;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    public static void setActiveActivity(NVActivity nVActivity) {
        active = new WeakReference<>(nVActivity);
        activities.add(nVActivity.getCrashlyticsKey());
    }

    public static void removeActiveActivity(NVActivity nVActivity) {
        if (getActiveActivity() == nVActivity) {
            active = null;
        }
    }

    public static void init(Context context, boolean z, String str) {
        init(context, z, str, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void init(Context context, boolean z, String str, boolean z2) {
        if (inited) {
            return;
        }
        inited = true;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        if (z) {
            Thread.setDefaultUncaughtExceptionHandler(new DevExceptionHandler(context));
            devLogger = new DevLogger(80);
            Log.loggers.add(devLogger);
            if (z2) {
                ENABLED = true;
                CrashReport.UserStrategy userStrategy = new CrashReport.UserStrategy(context);
                userStrategy.setCrashHandleCallback(new ProdCrashHandler());
                CrashReport.initCrashReport(context, userStrategy);
                Utils.postDelayed(updateCrashlyticsUserInfo, 400L);
                LocalBroadcastManager.getInstance(context).registerReceiver(accountChangedReceiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
            }
        } else {
            ENABLED = true;
            IgnoreBackgroundCrashHandler ignoreBackgroundCrashHandler = new IgnoreBackgroundCrashHandler();
            Thread.setDefaultUncaughtExceptionHandler(ignoreBackgroundCrashHandler);
            CrashReport.UserStrategy userStrategy2 = new CrashReport.UserStrategy(context);
            userStrategy2.setCrashHandleCallback(new ProdCrashHandler());
            CrashReport.initCrashReport(context, userStrategy2);
            Thread.setDefaultUncaughtExceptionHandler(new PreFilterCrashHandler(ignoreBackgroundCrashHandler));
            Utils.postDelayed(updateCrashlyticsUserInfo, 400L);
            LocalBroadcastManager.getInstance(context).registerReceiver(accountChangedReceiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
            Log.loggers.add(new BuglyLogger(4, new HashSet(Arrays.asList(Log.TAG, "narvii_push", "api", "statistics", "nh", ExternalSourceOrigin.EXTERNAL_SOURCE_ORIGIN_YOUTUBE, "onSaveInstanceState"))));
        }
        Log.loggers.add(new OomHelper.OomCountLogger());
        crashLogFile = new File(context.getFilesDir(), "crash.log");
        if (crashLogFile.length() > 0) {
            if (System.currentTimeMillis() - crashLogFile.lastModified() < 300000) {
                try {
                    ArrayList<String> arrayListSplit = StringUtils.split(Utils.readStringFromFile(crashLogFile), "\n", true);
                    CrashLog crashLog = new CrashLog();
                    crashLog.crashType = Integer.parseInt(arrayListSplit.get(0));
                    crashLog.errorType = arrayListSplit.get(1);
                    crashLog.errorMessage = arrayListSplit.get(2);
                    crashLog.errorStack = arrayListSplit.get(3);
                    crashLog.states = arrayListSplit.get(4);
                    crashLog.el1Active = arrayListSplit.size() > 5 ? arrayListSplit.get(5) : null;
                    crashLog.el2Activities = arrayListSplit.size() > 6 ? arrayListSplit.get(6) : null;
                    crashLog.el3Images = arrayListSplit.size() > 7 ? arrayListSplit.get(7) : null;
                    prevCrashLog = crashLog;
                } catch (Exception unused) {
                }
            }
            crashLogFile.delete();
        }
    }

    /* loaded from: classes3.dex */
    private static class PreFilterCrashHandler implements Thread.UncaughtExceptionHandler {
        private Thread.UncaughtExceptionHandler ignore;
        private Thread.UncaughtExceptionHandler parent = Thread.getDefaultUncaughtExceptionHandler();

        public PreFilterCrashHandler(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
            this.ignore = uncaughtExceptionHandler;
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public void uncaughtException(Thread thread, Throwable th) {
            boolean z = false;
            try {
                if (!CrashlyticsUtils.foreground && th.getClass().getName().contains("android.app.RemoteServiceException") && th.getMessage() != null) {
                    if (th.getMessage().contains("Bad notification posted")) {
                        z = true;
                    }
                }
            } catch (Throwable unused) {
            }
            if (z) {
                BuglyLog.e(Log.TAG, "filtered crash in " + thread.getName() + ", foreground=" + CrashlyticsUtils.foreground, th);
                this.ignore.uncaughtException(thread, th);
                return;
            }
            this.parent.uncaughtException(thread, th);
        }
    }

    /* loaded from: classes3.dex */
    private static class IgnoreBackgroundCrashHandler implements Thread.UncaughtExceptionHandler {
        private Thread.UncaughtExceptionHandler parent = Thread.getDefaultUncaughtExceptionHandler();

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public void uncaughtException(Thread thread, Throwable th) {
            if (CrashlyticsUtils.foreground) {
                this.parent.uncaughtException(thread, th);
            } else {
                android.util.Log.e(Log.TAG, "background crash, kill process!");
                Process.killProcess(Process.myPid());
            }
        }
    }

    /* loaded from: classes3.dex */
    private static class ProdCrashHandler extends CrashReport.CrashHandleCallback {
        private ProdCrashHandler() {
        }

        public synchronized Map<String, String> onCrashHandleStart(int i, String str, String str2, String str3) {
            HashMap map;
            boolean z;
            String string;
            map = new HashMap(CrashlyticsUtils.states);
            String crashlyticsKey = "";
            int i2 = 1;
            try {
                NVActivity initializingActivity = CrashlyticsUtils.getInitializingActivity();
                if (initializingActivity != null) {
                    DisplayMetrics displayMetrics = initializingActivity.getResources().getDisplayMetrics();
                    map.put("resolution:", displayMetrics.widthPixels + "*" + displayMetrics.heightPixels);
                    map.put("density", String.valueOf(Utils.dpToPx(initializingActivity, 1.0f)));
                    ActivityManager activityManager = (ActivityManager) initializingActivity.getSystemService("activity");
                    if (activityManager != null) {
                        map.put("memoryClass", activityManager.getMemoryClass() + "-" + activityManager.getLargeMemoryClass());
                    }
                }
                if (initializingActivity == null) {
                    initializingActivity = CrashlyticsUtils.getActiveActivity();
                    z = false;
                } else {
                    z = true;
                }
                if (initializingActivity == null) {
                    string = "no active activity";
                } else {
                    StringBuilder sb = new StringBuilder();
                    sb.append(z ? "initializing " : "active ");
                    sb.append(initializingActivity.getCrashlyticsFootprint());
                    string = sb.toString();
                }
                map.put("activity", string);
                if (initializingActivity != null) {
                    crashlyticsKey = initializingActivity.getCrashlyticsKey();
                }
            } catch (Throwable unused) {
            }
            map.put(DownloadService.KEY_FOREGROUND, String.valueOf(CrashlyticsUtils.foreground));
            Runtime runtime = Runtime.getRuntime();
            map.put("heapUsed", String.valueOf(runtime.totalMemory() - runtime.freeMemory()));
            map.put("heapMax", String.valueOf(runtime.maxMemory()));
            long nativeHeapSize = Debug.getNativeHeapSize();
            map.put("nativeUsed", String.valueOf(nativeHeapSize - Debug.getNativeHeapFreeSize()));
            map.put("nativeSize", String.valueOf(nativeHeapSize));
            int iOptinAdsFlags = ((AccountService) NVApplication.instance().getService("account")).optinAdsFlags();
            map.put("optinAdsFlags", String.valueOf(iOptinAdsFlags));
            try {
                String string2 = UUID.randomUUID().toString();
                NVContext validResumingPage = LogUtils.getValidResumingPage();
                if (validResumingPage == null) {
                    validResumingPage = NVApplication.instance();
                }
                LogEvent.Builder builderExtraParam = LogEvent.builder(validResumingPage).appEvent().onlyInternalLogging().actType(ActType.auto).actSemantic(ActSemantic.crash).extraParam("crashType", Integer.valueOf(i));
                if (!CrashlyticsUtils.foreground) {
                    i2 = 0;
                }
                LogEvent.Builder builderExtraParam2 = builderExtraParam.extraParam(DownloadService.KEY_FOREGROUND, Integer.valueOf(i2)).extraParam("crashId", string2);
                for (Map.Entry<String, String> entry : CrashlyticsUtils.states.entrySet()) {
                    builderExtraParam2.extraParam(entry.getKey(), entry.getValue());
                }
                builderExtraParam2.send();
            } catch (Throwable unused2) {
                android.util.Log.e(Log.TAG, "fail to log crash event");
            }
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(CrashlyticsUtils.crashLogFile);
                CrashlyticsUtils.writeString(String.valueOf(i), fileOutputStream);
                fileOutputStream.write(10);
                CrashlyticsUtils.writeString(str, fileOutputStream);
                fileOutputStream.write(10);
                CrashlyticsUtils.writeString(str2, fileOutputStream);
                fileOutputStream.write(10);
                CrashlyticsUtils.writeString(str3, fileOutputStream);
                fileOutputStream.write(10);
                CrashlyticsUtils.writeString(";foreground=", fileOutputStream);
                CrashlyticsUtils.writeString(CrashlyticsUtils.foreground ? IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE : "0", fileOutputStream);
                CrashlyticsUtils.writeString(";optinAds=", fileOutputStream);
                CrashlyticsUtils.writeString(String.valueOf(iOptinAdsFlags), fileOutputStream);
                fileOutputStream.write(59);
                for (Map.Entry<String, String> entry2 : CrashlyticsUtils.states.entrySet()) {
                    CrashlyticsUtils.writeString(entry2.getKey(), fileOutputStream);
                    fileOutputStream.write(61);
                    CrashlyticsUtils.writeString(entry2.getValue(), fileOutputStream);
                    fileOutputStream.write(59);
                }
                fileOutputStream.write(10);
                CrashlyticsUtils.writeString(crashlyticsKey, fileOutputStream);
                fileOutputStream.write(10);
                int i3 = CrashlyticsUtils.activities.count.get();
                int i4 = CrashlyticsUtils.activities.capacity;
                for (int i5 = 0; i5 < i4; i5++) {
                    String str4 = CrashlyticsUtils.activities.list[(i3 + i5) % i4];
                    if (str4 != null) {
                        CrashlyticsUtils.writeString(str4, fileOutputStream);
                        fileOutputStream.write(59);
                    }
                }
                fileOutputStream.write(10);
                int i6 = CrashlyticsUtils.images.count.get();
                int i7 = CrashlyticsUtils.images.capacity;
                for (int i8 = 0; i8 < i7; i8++) {
                    String str5 = CrashlyticsUtils.images.list[(i6 + i8) % i7];
                    if (str5 != null) {
                        CrashlyticsUtils.writeString(str5, fileOutputStream);
                        fileOutputStream.write(59);
                    }
                }
                fileOutputStream.write(10);
                fileOutputStream.close();
            } catch (Throwable unused3) {
            }
            return map;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void writeString(String str, OutputStream outputStream) throws IOException {
        int length = str == null ? 0 : str.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '\n') {
                outputStream.write(32);
            } else {
                outputStream.write(cCharAt);
            }
        }
    }

    /* loaded from: classes3.dex */
    private static class DevExceptionHandler implements Thread.UncaughtExceptionHandler {
        Context context;
        private Thread.UncaughtExceptionHandler parent = Thread.getDefaultUncaughtExceptionHandler();

        public DevExceptionHandler(Context context) {
            this.context = context;
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public void uncaughtException(Thread thread, Throwable th) {
            try {
                String string = UUID.randomUUID().toString();
                NVContext validResumingPage = LogUtils.getValidResumingPage();
                if (validResumingPage == null) {
                    validResumingPage = NVApplication.instance();
                }
                LogEvent.builder(validResumingPage).appEvent().onlyInternalLogging().actType(ActType.auto).actSemantic(ActSemantic.crash).extraParam("crashType", 0).extraParam(DownloadService.KEY_FOREGROUND, Integer.valueOf(CrashlyticsUtils.foreground ? 1 : 0)).extraParam("crashId", string).send();
                File file = new File(Utils.getAvailableFileDir(this.context), "CrashReport");
                file.mkdirs();
                String str = new SimpleDateFormat("yyyyMMdd-HHmmss", Locale.US).format(new Date());
                PrintStream printStream = new PrintStream(new File(file, str + ".log"));
                printStream.println(new Date());
                printStream.println();
                printStream.println(DevLogger.summary(NVApplication.instance()));
                StringBuilder sb = new StringBuilder();
                sb.append("foreground: ");
                sb.append(CrashlyticsUtils.foreground ? 1 : 0);
                printStream.println(sb.toString());
                printStream.println("oom: " + OomHelper.oomCount);
                printStream.println();
                printStream.println(thread);
                th.printStackTrace(printStream);
                printStream.println();
                if (CrashlyticsUtils.devLogger != null) {
                    StringBuilder sb2 = new StringBuilder();
                    CrashlyticsUtils.devLogger.appendTo(sb2);
                    printStream.println(sb2.toString());
                }
                printStream.close();
                Bitmap bitmapTakeScreenshot = ((DebugService) NVApplication.instance().getService("_debug")).takeScreenshot();
                if (bitmapTakeScreenshot != null) {
                    FileOutputStream fileOutputStream = new FileOutputStream(new File(file, str + ".jpg"));
                    bitmapTakeScreenshot.compress(Bitmap.CompressFormat.JPEG, 80, fileOutputStream);
                    fileOutputStream.close();
                }
            } catch (Throwable unused) {
            }
            this.parent.uncaughtException(thread, th);
        }
    }
}
