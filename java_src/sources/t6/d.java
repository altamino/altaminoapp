package t6;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import com.bytedance.tea.common.utility.Logger;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f3351a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static boolean f3352b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static String f3353c = null;
    private static boolean d = true;

    public static boolean a() {
        try {
            String str = Build.BRAND;
            if (com.bytedance.tea.common.utility.d.a(str) || !str.toLowerCase().startsWith("huawei")) {
                String str2 = Build.MANUFACTURER;
                if (com.bytedance.tea.common.utility.d.a(str2) || !str2.toLowerCase().startsWith("huawei")) {
                    return false;
                }
            }
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    private static String k() {
        BufferedReader bufferedReader;
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream("/proc/" + Process.myPid() + "/cmdline"), "iso-8859-1"));
            try {
                StringBuilder sb = new StringBuilder();
                while (true) {
                    int i10 = bufferedReader.read();
                    if (i10 <= 0) {
                        break;
                    }
                    sb.append((char) i10);
                }
                if (Logger.debug()) {
                    Logger.d("Process", "get processName = " + sb.toString());
                }
                String string = sb.toString();
                try {
                    bufferedReader.close();
                } catch (Exception unused) {
                }
                return string;
            } catch (Throwable unused2) {
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (Exception unused3) {
                    }
                }
                return null;
            }
        } catch (Throwable unused4) {
            bufferedReader = null;
        }
    }

    public static String d() {
        return e("ro.build.version.emui");
    }

    private static String e(String str) {
        Throwable th;
        String str2;
        BufferedReader bufferedReader = null;
        String line = null;
        try {
            BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("getprop " + str).getInputStream()), 1024);
            try {
                line = bufferedReader2.readLine();
                bufferedReader2.close();
                try {
                    bufferedReader2.close();
                } catch (IOException e) {
                    Logger.e("ToolUtils", "Exception while closing InputStream", e);
                }
                return line;
            } catch (Throwable th2) {
                str2 = line;
                bufferedReader = bufferedReader2;
                th = th2;
                try {
                    Logger.e("ToolUtils", "Unable to read sysprop " + str, th);
                    return str2;
                } finally {
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException e2) {
                            Logger.e("ToolUtils", "Exception while closing InputStream", e2);
                        }
                    }
                }
            }
        } catch (Throwable th3) {
            th = th3;
            str2 = null;
        }
    }

    public static String g(Context context) {
        String str = f3353c;
        if (!com.bytedance.tea.common.utility.d.a(str)) {
            return str;
        }
        try {
            int iMyPid = Process.myPid();
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses()) {
                if (runningAppProcessInfo.pid == iMyPid) {
                    if (Logger.debug()) {
                        Logger.d("Process", "processName = " + runningAppProcessInfo.processName);
                    }
                    String str2 = runningAppProcessInfo.processName;
                    f3353c = str2;
                    return str2;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        String strK = k();
        f3353c = strK;
        return strK;
    }

    public static boolean h() {
        if (!f3352b) {
            try {
                Class.forName("miui.os.Build");
                f3351a = true;
                f3352b = true;
                return true;
            } catch (Exception unused) {
                f3352b = true;
            }
        }
        return f3351a;
    }

    public static String i(Context context) {
        if (context == null) {
            return "";
        }
        try {
            List<ActivityManager.RunningTaskInfo> runningTasks = ((ActivityManager) context.getSystemService("activity")).getRunningTasks(5);
            if (runningTasks == null) {
                return "";
            }
            String packageName = context.getPackageName();
            StringBuilder sb = new StringBuilder();
            for (ActivityManager.RunningTaskInfo runningTaskInfo : runningTasks) {
                if (runningTaskInfo != null && runningTaskInfo.baseActivity != null && packageName.equals(runningTaskInfo.baseActivity.getPackageName())) {
                    sb.append("id = ");
                    sb.append(runningTaskInfo.id);
                    sb.append(" ");
                    sb.append("description = ");
                    sb.append(runningTaskInfo.description);
                    sb.append(" ");
                    sb.append("number_of_activities = ");
                    sb.append(runningTaskInfo.numActivities);
                    sb.append(" ");
                    sb.append("number_of_running_activities = ");
                    sb.append(runningTaskInfo.numRunning);
                    sb.append(" ");
                    sb.append("topActivity = ");
                    sb.append(runningTaskInfo.topActivity.toString());
                    sb.append(" ");
                    sb.append("baseActivity = ");
                    sb.append(runningTaskInfo.baseActivity.toString());
                    return sb.toString();
                }
            }
        } catch (Throwable unused) {
        }
        return "";
    }

    public static boolean j() {
        String str = Build.DISPLAY;
        if (!com.bytedance.tea.common.utility.d.a(str) && str.indexOf("Flyme") >= 0) {
            return true;
        }
        String str2 = Build.USER;
        return !com.bytedance.tea.common.utility.d.a(str2) && str2.equals("flyme");
    }

    public static String l(Context context) throws NullPointerException {
        if (context == null) {
            throw new NullPointerException("Context is NUll");
        }
        String path = null;
        try {
            if (context.getCacheDir() != null) {
                path = context.getCacheDir().getPath();
            } else {
                File dir = context.getDir("/data/data/" + context.getPackageName() + "/cache/", 0);
                if (dir != null) {
                    path = dir.getPath();
                }
            }
        } catch (Throwable unused) {
        }
        if (com.bytedance.tea.common.utility.d.a(path)) {
            throw new NullPointerException("Cannot Create Cache Dir");
        }
        return path;
    }

    public static boolean b(Context context) {
        String strG = g(context);
        if (strG != null && strG.endsWith(":push")) {
            return true;
        }
        return false;
    }

    public static boolean c(String str) {
        if (TextUtils.isEmpty(str)) {
            str = d();
        }
        if ((!TextUtils.isEmpty(str) && str.toLowerCase().startsWith("emotionui")) || a()) {
            return true;
        }
        return false;
    }

    public static boolean f(Context context) {
        String strG = g(context);
        if ((strG != null && strG.contains(":")) || strG == null || !strG.equals(context.getPackageName())) {
            return false;
        }
        return true;
    }
}
