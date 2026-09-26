package com.google.firebase.sessions;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import com.google.android.gms.common.util.ProcessUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class u {

    @NotNull
    public static final u INSTANCE = new u();

    private final t a(String str, int i10, int i11, boolean z6) {
        return new t(str, i10, i11, z6);
    }

    static /* synthetic */ t b(u uVar, String str, int i10, int i11, boolean z6, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = 0;
        }
        if ((i12 & 8) != 0) {
            z6 = false;
        }
        return uVar.a(str, i10, i11, z6);
    }

    @NotNull
    public final List<t> c(@NotNull Context context) {
        kotlin.jvm.internal.t.j(context, "context");
        int i10 = context.getApplicationInfo().uid;
        String str = context.getApplicationInfo().processName;
        Object systemService = context.getSystemService("activity");
        ActivityManager activityManager = systemService instanceof ActivityManager ? (ActivityManager) systemService : null;
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = activityManager != null ? activityManager.getRunningAppProcesses() : null;
        if (runningAppProcesses == null) {
            runningAppProcesses = kotlin.collections.v.m();
        }
        List listG0 = kotlin.collections.d0.g0(runningAppProcesses);
        ArrayList<ActivityManager.RunningAppProcessInfo> arrayList = new ArrayList();
        for (Object obj : listG0) {
            if (((ActivityManager.RunningAppProcessInfo) obj).uid == i10) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(kotlin.collections.w.x(arrayList, 10));
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : arrayList) {
            String str2 = runningAppProcessInfo.processName;
            kotlin.jvm.internal.t.i(str2, "runningAppProcessInfo.processName");
            arrayList2.add(new t(str2, runningAppProcessInfo.pid, runningAppProcessInfo.importance, kotlin.jvm.internal.t.e(runningAppProcessInfo.processName, str)));
        }
        return arrayList2;
    }

    @NotNull
    public final t d(@NotNull Context context) {
        Object next;
        kotlin.jvm.internal.t.j(context, "context");
        int iMyPid = Process.myPid();
        Iterator<T> it = c(context).iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (((t) next).b() != iMyPid);
        t tVar = (t) next;
        return tVar == null ? b(this, e(), iMyPid, 0, false, 12, null) : tVar;
    }

    @NotNull
    public final String e() throws Throwable {
        String processName;
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 33) {
            String strMyProcessName = Process.myProcessName();
            kotlin.jvm.internal.t.i(strMyProcessName, "myProcessName()");
            return strMyProcessName;
        }
        if (i10 >= 28 && (processName = Application.getProcessName()) != null) {
            return processName;
        }
        String myProcessName = ProcessUtils.getMyProcessName();
        return myProcessName != null ? myProcessName : "";
    }

    private u() {
    }
}
