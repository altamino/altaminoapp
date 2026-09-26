package com.narvii.util.crashlytics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.os.Process;
import android.util.Log;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import androidx.media3.exoplayer.offline.DownloadService;
import com.narvii.account.AccountService;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.ActType;
import com.narvii.logging.LogEvent;
import com.narvii.logging.LogUtils;
import com.narvii.util.StringUtils;
import com.narvii.util.Utils;
import com.narvii.util.debug.DebugService;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintStream;
import java.lang.ref.WeakReference;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
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
                boolean z6 = CrashlyticsUtils.ENABLED;
            } catch (Exception unused) {
            }
        }
    };
    private static final BroadcastReceiver accountChangedReceiver = new BroadcastReceiver() { // from class: com.narvii.util.crashlytics.CrashlyticsUtils.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (CrashlyticsUtils.ENABLED) {
                Utils.post(CrashlyticsUtils.updateCrashlyticsUserInfo);
            }
        }
    };

    public static class Collector {
        public final int capacity;
        public final AtomicInteger count = new AtomicInteger();
        public final String[] list;

        public void add(String str) {
            this.list[this.count.getAndIncrement() % this.capacity] = str;
        }

        public Collector(int i10) {
            this.capacity = i10;
            this.list = new String[i10];
        }
    }

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

    private static class IgnoreBackgroundCrashHandler implements Thread.UncaughtExceptionHandler {
        private Thread.UncaughtExceptionHandler parent = Thread.getDefaultUncaughtExceptionHandler();

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public void uncaughtException(Thread thread, Throwable th) {
            if (CrashlyticsUtils.foreground) {
                this.parent.uncaughtException(thread, th);
            } else {
                Log.e(com.narvii.util.Log.TAG, "background crash, kill process!");
                Process.killProcess(Process.myPid());
            }
        }
    }

    private static class PreFilterCrashHandler implements Thread.UncaughtExceptionHandler {
        private Thread.UncaughtExceptionHandler ignore;
        private Thread.UncaughtExceptionHandler parent = Thread.getDefaultUncaughtExceptionHandler();

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public void uncaughtException(Thread thread, Throwable th) {
            try {
                if (!CrashlyticsUtils.foreground && th.getClass().getName().contains("android.app.RemoteServiceException") && th.getMessage() != null && th.getMessage().contains("Bad notification posted")) {
                    this.ignore.uncaughtException(thread, th);
                    return;
                }
            } catch (Throwable unused) {
            }
            this.parent.uncaughtException(thread, th);
        }

        public PreFilterCrashHandler(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
            this.ignore = uncaughtExceptionHandler;
        }
    }

    public static void init(Context context, boolean z6, String str) {
        init(context, z6, str, false);
    }

    private static void writeString(String str, OutputStream outputStream) throws IOException {
        int length = str == null ? 0 : str.length();
        for (int i10 = 0; i10 < length; i10++) {
            char cCharAt = str.charAt(i10);
            if (cCharAt == '\n') {
                outputStream.write(32);
            } else {
                outputStream.write(cCharAt);
            }
        }
    }

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
                printStream.println("foreground: " + (CrashlyticsUtils.foreground ? 1 : 0));
                printStream.println("oom: " + OomHelper.oomCount);
                printStream.println();
                printStream.println(thread);
                th.printStackTrace(printStream);
                printStream.println();
                if (CrashlyticsUtils.devLogger != null) {
                    StringBuilder sb = new StringBuilder();
                    CrashlyticsUtils.devLogger.appendTo(sb);
                    printStream.println(sb.toString());
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

    public static NVActivity getActiveActivity() {
        WeakReference<NVActivity> weakReference = active;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    public static NVActivity getInitializingActivity() {
        WeakReference<NVActivity> weakReference = initializing;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    public static void init(Context context, boolean z6, String str, boolean z10) {
        if (inited) {
            return;
        }
        inited = true;
        if (z6) {
            Thread.setDefaultUncaughtExceptionHandler(new DevExceptionHandler(context));
            devLogger = new DevLogger(80);
            com.narvii.util.Log.loggers.add(devLogger);
            if (z10) {
                ENABLED = true;
                Utils.postDelayed(updateCrashlyticsUserInfo, 400L);
                LocalBroadcastManager.b(context).c(accountChangedReceiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
            }
        } else {
            ENABLED = true;
            IgnoreBackgroundCrashHandler ignoreBackgroundCrashHandler = new IgnoreBackgroundCrashHandler();
            Thread.setDefaultUncaughtExceptionHandler(ignoreBackgroundCrashHandler);
            Thread.setDefaultUncaughtExceptionHandler(new PreFilterCrashHandler(ignoreBackgroundCrashHandler));
            Utils.postDelayed(updateCrashlyticsUserInfo, 400L);
            LocalBroadcastManager.b(context).c(accountChangedReceiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
        }
        com.narvii.util.Log.loggers.add(new OomHelper.OomCountLogger());
        File file = new File(context.getFilesDir(), "crash.log");
        crashLogFile = file;
        if (file.length() > 0) {
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

    public static void setActiveActivity(NVActivity nVActivity) {
        active = new WeakReference<>(nVActivity);
        activities.add(nVActivity.getCrashlyticsKey());
    }

    public static void setInitializingActivity(NVActivity nVActivity) {
        initializing = nVActivity == null ? null : new WeakReference<>(nVActivity);
    }

    public static void removeActiveActivity(NVActivity nVActivity) {
        if (getActiveActivity() == nVActivity) {
            active = null;
        }
    }
}
