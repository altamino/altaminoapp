package com.ss.android.tea.common.applog;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Debug;
import com.bytedance.tea.common.utility.Logger;
import java.io.File;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Set<String> f3135a = new HashSet();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Set<String> f3136b = new HashSet();

    private static boolean d(String str, Throwable th) {
        if (str != null && str.endsWith(":ad")) {
            int i10 = 0;
            while (th != null) {
                try {
                    if (th instanceof NullPointerException) {
                        return true;
                    }
                    if (i10 > 20) {
                        return false;
                    }
                    i10++;
                    th = th.getCause();
                } catch (Throwable unused) {
                }
            }
        }
        return false;
    }

    private static boolean e(Throwable th) {
        if (th == null) {
            return false;
        }
        int i10 = 0;
        while (th != null) {
            try {
                if (th instanceof OutOfMemoryError) {
                    return true;
                }
                if (i10 > 20) {
                    return false;
                }
                i10++;
                th = th.getCause();
            } catch (Throwable unused) {
            }
        }
        return false;
    }

    static {
        f3135a.add("ThreadPlus");
        f3135a.add("ApiDispatcher");
        f3135a.add("ApiLocalDispatcher");
        f3135a.add("AsyncLoader");
        f3135a.add("AsyncTask");
        f3135a.add("Binder");
        f3135a.add("PackageProcessor");
        f3135a.add("SettingsObserver");
        f3135a.add("WifiManager");
        f3135a.add("JavaBridge");
        f3135a.add("Compiler");
        f3135a.add("Signal Catcher");
        f3135a.add("GC");
        f3135a.add("ReferenceQueueDaemon");
        f3135a.add("FinalizerDaemon");
        f3135a.add("FinalizerWatchdogDaemon");
        f3135a.add("CookieSyncManager");
        f3135a.add("RefQueueWorker");
        f3135a.add("CleanupReference");
        f3135a.add("VideoManager");
        f3135a.add("DBHelper-AsyncOp");
        f3135a.add("InstalledAppTracker2");
        f3135a.add("AppData-AsyncOp");
        f3135a.add("IdleConnectionMonitor");
        f3135a.add("LogReaper");
        f3135a.add("ActionReaper");
        f3135a.add("Okio Watchdog");
        f3135a.add("CheckWaitingQueue");
        f3136b.add("com.facebook.imagepipeline.core.PriorityThreadFactory");
        f3136b.add("com.ss.android.common.util.SimpleThreadFactory");
    }

    private static String b(Context context) {
        if (context == null) {
            return "";
        }
        try {
            return c(context.getFilesDir()).toString();
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }

    private static JSONArray c(File file) {
        JSONArray jSONArray = new JSONArray();
        if (file != null && file.exists()) {
            if (file.isFile()) {
                jSONArray.put(file.getName());
                return jSONArray;
            }
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles == null) {
                return jSONArray;
            }
            for (File file2 : fileArrListFiles) {
                if (file2.isFile()) {
                    jSONArray.put(file2.getName());
                } else if (file2.isDirectory()) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put(file2.getName(), c(file2));
                        jSONArray.put(jSONObject);
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
        return jSONArray;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0026 A[Catch: all -> 0x0010, TryCatch #0 {all -> 0x0010, blocks: (B:7:0x000b, B:10:0x0013, B:12:0x0026, B:14:0x002f, B:15:0x0032, B:18:0x003c, B:20:0x004e, B:22:0x005d, B:23:0x0063, B:25:0x006c, B:26:0x006f, B:28:0x0075, B:30:0x007b, B:32:0x0081, B:34:0x008b, B:35:0x00ad, B:40:0x00c6, B:37:0x00b5, B:39:0x00bd), top: B:44:0x000b }] */
    /* JADX WARN: Code duplicated, block: B:14:0x002f A[Catch: all -> 0x0010, TryCatch #0 {all -> 0x0010, blocks: (B:7:0x000b, B:10:0x0013, B:12:0x0026, B:14:0x002f, B:15:0x0032, B:18:0x003c, B:20:0x004e, B:22:0x005d, B:23:0x0063, B:25:0x006c, B:26:0x006f, B:28:0x0075, B:30:0x007b, B:32:0x0081, B:34:0x008b, B:35:0x00ad, B:40:0x00c6, B:37:0x00b5, B:39:0x00bd), top: B:44:0x000b }] */
    /* JADX WARN: Code duplicated, block: B:17:0x003b A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:18:0x003c A[Catch: all -> 0x0010, TryCatch #0 {all -> 0x0010, blocks: (B:7:0x000b, B:10:0x0013, B:12:0x0026, B:14:0x002f, B:15:0x0032, B:18:0x003c, B:20:0x004e, B:22:0x005d, B:23:0x0063, B:25:0x006c, B:26:0x006f, B:28:0x0075, B:30:0x007b, B:32:0x0081, B:34:0x008b, B:35:0x00ad, B:40:0x00c6, B:37:0x00b5, B:39:0x00bd), top: B:44:0x000b }] */
    /* JADX WARN: Code duplicated, block: B:20:0x004e A[Catch: all -> 0x0010, TryCatch #0 {all -> 0x0010, blocks: (B:7:0x000b, B:10:0x0013, B:12:0x0026, B:14:0x002f, B:15:0x0032, B:18:0x003c, B:20:0x004e, B:22:0x005d, B:23:0x0063, B:25:0x006c, B:26:0x006f, B:28:0x0075, B:30:0x007b, B:32:0x0081, B:34:0x008b, B:35:0x00ad, B:40:0x00c6, B:37:0x00b5, B:39:0x00bd), top: B:44:0x000b }] */
    /* JADX WARN: Code duplicated, block: B:22:0x005d A[Catch: all -> 0x0010, TryCatch #0 {all -> 0x0010, blocks: (B:7:0x000b, B:10:0x0013, B:12:0x0026, B:14:0x002f, B:15:0x0032, B:18:0x003c, B:20:0x004e, B:22:0x005d, B:23:0x0063, B:25:0x006c, B:26:0x006f, B:28:0x0075, B:30:0x007b, B:32:0x0081, B:34:0x008b, B:35:0x00ad, B:40:0x00c6, B:37:0x00b5, B:39:0x00bd), top: B:44:0x000b }] */
    /* JADX WARN: Code duplicated, block: B:25:0x006c A[Catch: all -> 0x0010, TryCatch #0 {all -> 0x0010, blocks: (B:7:0x000b, B:10:0x0013, B:12:0x0026, B:14:0x002f, B:15:0x0032, B:18:0x003c, B:20:0x004e, B:22:0x005d, B:23:0x0063, B:25:0x006c, B:26:0x006f, B:28:0x0075, B:30:0x007b, B:32:0x0081, B:34:0x008b, B:35:0x00ad, B:40:0x00c6, B:37:0x00b5, B:39:0x00bd), top: B:44:0x000b }] */
    /* JADX WARN: Code duplicated, block: B:30:0x007b A[Catch: all -> 0x0010, TryCatch #0 {all -> 0x0010, blocks: (B:7:0x000b, B:10:0x0013, B:12:0x0026, B:14:0x002f, B:15:0x0032, B:18:0x003c, B:20:0x004e, B:22:0x005d, B:23:0x0063, B:25:0x006c, B:26:0x006f, B:28:0x0075, B:30:0x007b, B:32:0x0081, B:34:0x008b, B:35:0x00ad, B:40:0x00c6, B:37:0x00b5, B:39:0x00bd), top: B:44:0x000b }] */
    /* JADX WARN: Code duplicated, block: B:32:0x0081 A[Catch: all -> 0x0010, TryCatch #0 {all -> 0x0010, blocks: (B:7:0x000b, B:10:0x0013, B:12:0x0026, B:14:0x002f, B:15:0x0032, B:18:0x003c, B:20:0x004e, B:22:0x005d, B:23:0x0063, B:25:0x006c, B:26:0x006f, B:28:0x0075, B:30:0x007b, B:32:0x0081, B:34:0x008b, B:35:0x00ad, B:40:0x00c6, B:37:0x00b5, B:39:0x00bd), top: B:44:0x000b }] */
    /* JADX WARN: Code duplicated, block: B:34:0x008b A[Catch: all -> 0x0010, TryCatch #0 {all -> 0x0010, blocks: (B:7:0x000b, B:10:0x0013, B:12:0x0026, B:14:0x002f, B:15:0x0032, B:18:0x003c, B:20:0x004e, B:22:0x005d, B:23:0x0063, B:25:0x006c, B:26:0x006f, B:28:0x0075, B:30:0x007b, B:32:0x0081, B:34:0x008b, B:35:0x00ad, B:40:0x00c6, B:37:0x00b5, B:39:0x00bd), top: B:44:0x000b }] */
    /* JADX WARN: Code duplicated, block: B:36:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:37:0x00b5 A[Catch: all -> 0x0010, TryCatch #0 {all -> 0x0010, blocks: (B:7:0x000b, B:10:0x0013, B:12:0x0026, B:14:0x002f, B:15:0x0032, B:18:0x003c, B:20:0x004e, B:22:0x005d, B:23:0x0063, B:25:0x006c, B:26:0x006f, B:28:0x0075, B:30:0x007b, B:32:0x0081, B:34:0x008b, B:35:0x00ad, B:40:0x00c6, B:37:0x00b5, B:39:0x00bd), top: B:44:0x000b }] */
    /* JADX WARN: Instruction removed from duplicated block: B:34:0x008b, please report this as an issue */
    public static JSONObject f(Context context, Thread thread, Throwable th) {
        PrintWriter printWriter;
        Throwable cause;
        String string;
        String strG;
        String strB;
        Throwable cause2;
        if (th == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        if (context != null) {
            try {
                context = context.getApplicationContext();
                StringWriter stringWriter = new StringWriter();
                printWriter = new PrintWriter(stringWriter);
                th.printStackTrace(printWriter);
                cause = th.getCause();
                if (cause != null) {
                    cause.printStackTrace(printWriter);
                    cause2 = cause.getCause();
                    if (cause2 != null) {
                        cause2.printStackTrace(printWriter);
                    }
                }
                string = stringWriter.toString();
                printWriter.close();
                if (string == null) {
                    return jSONObject;
                }
                jSONObject.put("data", string);
                jSONObject.put("crash_time", System.currentTimeMillis());
                strG = "";
                if (context != null) {
                    strG = t6.d.g(context);
                    jSONObject.put("process_name", strG);
                    if (!t6.d.f(context)) {
                        jSONObject.put("remote_process", 1);
                    }
                }
                jSONObject.put("app_count", b.q);
                if (context != null) {
                    g(context, jSONObject);
                }
                if (e(th) || d(strG, th)) {
                    if (t6.d.f(context)) {
                        strB = p6.a.b();
                        if (Logger.debug()) {
                            Logger.d("OOM_Exception", "finishedActivities = " + strB + " ExMsg = " + th.getMessage());
                        }
                        jSONObject.put("finished_activities", strB);
                    } else if (strG != null && strG.endsWith(":ad")) {
                        jSONObject.put("data_files", b(context));
                    }
                    jSONObject.put("all_thread_stacks", a());
                }
            } catch (Throwable th2) {
                Logger.w("CrashUtil", "handle crash exception: " + th2);
            }
        } else {
            StringWriter stringWriter2 = new StringWriter();
            printWriter = new PrintWriter(stringWriter2);
            th.printStackTrace(printWriter);
            cause = th.getCause();
            if (cause != null) {
                cause.printStackTrace(printWriter);
                cause2 = cause.getCause();
                if (cause2 != null) {
                    cause2.printStackTrace(printWriter);
                }
            }
            string = stringWriter2.toString();
            printWriter.close();
            if (string == null) {
                return jSONObject;
            }
            jSONObject.put("data", string);
            jSONObject.put("crash_time", System.currentTimeMillis());
            strG = "";
            if (context != null) {
                strG = t6.d.g(context);
                jSONObject.put("process_name", strG);
                if (!t6.d.f(context)) {
                    jSONObject.put("remote_process", 1);
                }
            }
            jSONObject.put("app_count", b.q);
            if (context != null) {
                g(context, jSONObject);
            }
            if (e(th)) {
                if (t6.d.f(context)) {
                    strB = p6.a.b();
                    if (Logger.debug()) {
                        Logger.d("OOM_Exception", "finishedActivities = " + strB + " ExMsg = " + th.getMessage());
                    }
                    jSONObject.put("finished_activities", strB);
                } else if (strG != null) {
                    jSONObject.put("data_files", b(context));
                }
                jSONObject.put("all_thread_stacks", a());
            } else {
                if (t6.d.f(context)) {
                    strB = p6.a.b();
                    if (Logger.debug()) {
                        Logger.d("OOM_Exception", "finishedActivities = " + strB + " ExMsg = " + th.getMessage());
                    }
                    jSONObject.put("finished_activities", strB);
                } else if (strG != null) {
                    jSONObject.put("data_files", b(context));
                }
                jSONObject.put("all_thread_stacks", a());
            }
        }
        return jSONObject;
    }

    public static void g(Context context, JSONObject jSONObject) {
        ActivityManager activityManager;
        if (jSONObject == null) {
            return;
        }
        if (context != null) {
            try {
                context = context.getApplicationContext();
            } catch (Throwable th) {
                Logger.w("CrashUtil", "get memory info exception: " + th);
                return;
            }
        }
        Debug.MemoryInfo memoryInfo = new Debug.MemoryInfo();
        Debug.getMemoryInfo(memoryInfo);
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("dalvikPrivateDirty", memoryInfo.dalvikPrivateDirty);
        jSONObject2.put("dalvikPss", memoryInfo.dalvikPss);
        jSONObject2.put("dalvikSharedDirty", memoryInfo.dalvikSharedDirty);
        jSONObject2.put("nativePrivateDirty", memoryInfo.nativePrivateDirty);
        jSONObject2.put("nativePss", memoryInfo.nativePss);
        jSONObject2.put("nativeSharedDirty", memoryInfo.nativeSharedDirty);
        jSONObject2.put("otherPrivateDirty", memoryInfo.otherPrivateDirty);
        jSONObject2.put("otherPss", memoryInfo.otherPss);
        jSONObject2.put("otherSharedDirty", memoryInfo.otherSharedDirty);
        jSONObject2.put("totalPrivateClean", n.a(memoryInfo));
        jSONObject2.put("totalPrivateDirty", memoryInfo.getTotalPrivateDirty());
        jSONObject2.put("totalPss", memoryInfo.getTotalPss());
        jSONObject2.put("totalSharedClean", n.b(memoryInfo));
        jSONObject2.put("totalSharedDirty", memoryInfo.getTotalSharedDirty());
        jSONObject2.put("totalSwappablePss", n.c(memoryInfo));
        jSONObject.put("memory_info", jSONObject2);
        if (context != null) {
            JSONObject jSONObject3 = new JSONObject();
            ActivityManager.MemoryInfo memoryInfo2 = new ActivityManager.MemoryInfo();
            activityManager = (ActivityManager) context.getSystemService("activity");
            activityManager.getMemoryInfo(memoryInfo2);
            jSONObject3.put("availMem", memoryInfo2.availMem);
            jSONObject3.put("lowMemory", memoryInfo2.lowMemory);
            jSONObject3.put("threshold", memoryInfo2.threshold);
            jSONObject3.put("totalMem", com.bytedance.tea.common.a.b.a(memoryInfo2));
            jSONObject.put("sys_memory_info", jSONObject3);
        } else {
            activityManager = null;
        }
        JSONObject jSONObject4 = new JSONObject();
        jSONObject4.put("native_heap_size", Debug.getNativeHeapSize());
        jSONObject4.put("native_heap_alloc_size", Debug.getNativeHeapAllocatedSize());
        jSONObject4.put("native_heap_free_size", Debug.getNativeHeapFreeSize());
        Runtime runtime = Runtime.getRuntime();
        jSONObject4.put("max_memory", runtime.maxMemory());
        jSONObject4.put("free_memory", runtime.freeMemory());
        jSONObject4.put("total_memory", runtime.totalMemory());
        if (activityManager != null) {
            jSONObject4.put("memory_class", activityManager.getMemoryClass());
            jSONObject4.put("large_memory_class", com.bytedance.tea.common.a.a.a(activityManager));
        }
        jSONObject.put("app_memory_info", jSONObject4);
    }

    private static String a() {
        boolean z6;
        try {
            Map<Thread, StackTraceElement[]> allStackTraces = Thread.getAllStackTraces();
            JSONObject jSONObject = new JSONObject();
            if (allStackTraces != null) {
                jSONObject.put("tr_all_count", allStackTraces.size());
            }
            JSONArray jSONArray = new JSONArray();
            for (Map.Entry<Thread, StackTraceElement[]> entry : allStackTraces.entrySet()) {
                if (entry != null) {
                    JSONObject jSONObject2 = new JSONObject();
                    Thread key = entry.getKey();
                    String name = key.getName();
                    int i10 = 0;
                    boolean z10 = true;
                    if (f3135a.contains(name)) {
                        z6 = true;
                        break;
                    }
                    Iterator<String> it = f3135a.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            String next = it.next();
                            if (!com.bytedance.tea.common.utility.d.a(name) && name.startsWith(next)) {
                                z6 = true;
                                break;
                            }
                        } else {
                            z6 = false;
                            break;
                        }
                    }
                    if (!z6) {
                        jSONObject2.put("tr_n", key.getName());
                        StackTraceElement[] value = entry.getValue();
                        if (value != null) {
                            JSONArray jSONArray2 = new JSONArray();
                            int length = value.length;
                            while (true) {
                                if (i10 < length) {
                                    StackTraceElement stackTraceElement = value[i10];
                                    String className = stackTraceElement.getClassName();
                                    if (f3136b.contains(className)) {
                                        break;
                                    }
                                    for (String str : f3136b) {
                                        if (!com.bytedance.tea.common.utility.d.a(className) && className.startsWith(str)) {
                                            z6 = true;
                                            break;
                                        }
                                    }
                                    jSONArray2.put(className + "." + stackTraceElement.getMethodName() + "(" + stackTraceElement.getLineNumber() + ")");
                                    i10++;
                                } else {
                                    z10 = z6;
                                    break;
                                }
                            }
                            if (!z10) {
                                jSONObject2.put("tr_st", jSONArray2);
                                z6 = z10;
                            }
                        }
                        if (!z6) {
                            jSONArray.put(jSONObject2);
                        }
                    }
                }
                jSONObject.put("tr_stacks", jSONArray);
            }
            String string = jSONObject.toString();
            if (Logger.debug()) {
                Logger.d("OOM_Exception", "size : " + string.length() + " " + string);
            }
            return string;
        } catch (Throwable unused) {
            return "";
        }
    }
}
