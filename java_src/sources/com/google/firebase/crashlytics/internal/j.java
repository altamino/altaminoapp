package com.google.firebase.crashlytics.internal;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import com.google.firebase.crashlytics.internal.model.f0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.d0;
import kotlin.collections.v;
import kotlin.collections.w;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class j {

    @NotNull
    public static final j INSTANCE = new j();

    @NotNull
    public final f0.e.d.a.c a(@NotNull String processName, int i10, int i11) {
        t.j(processName, "processName");
        return c(this, processName, i10, i11, false, 8, null);
    }

    public static /* synthetic */ f0.e.d.a.c c(j jVar, String str, int i10, int i11, boolean z6, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = 0;
        }
        if ((i12 & 8) != 0) {
            z6 = false;
        }
        return jVar.b(str, i10, i11, z6);
    }

    private final String f() {
        String processName;
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 33) {
            return (i10 < 28 || (processName = Application.getProcessName()) == null) ? "" : processName;
        }
        String strMyProcessName = Process.myProcessName();
        t.i(strMyProcessName, "{\n      Process.myProcessName()\n    }");
        return strMyProcessName;
    }

    @NotNull
    public final f0.e.d.a.c b(@NotNull String processName, int i10, int i11, boolean z6) {
        t.j(processName, "processName");
        f0.e.d.a.c cVarA = f0.e.d.a.c.a().e(processName).d(i10).c(i11).b(z6).a();
        t.i(cVarA, "builder()\n      .setProc…ltProcess)\n      .build()");
        return cVarA;
    }

    @NotNull
    public final List<f0.e.d.a.c> d(@NotNull Context context) {
        t.j(context, "context");
        int i10 = context.getApplicationInfo().uid;
        String str = context.getApplicationInfo().processName;
        Object systemService = context.getSystemService("activity");
        ActivityManager activityManager = systemService instanceof ActivityManager ? (ActivityManager) systemService : null;
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = activityManager != null ? activityManager.getRunningAppProcesses() : null;
        if (runningAppProcesses == null) {
            runningAppProcesses = v.m();
        }
        List listG0 = d0.g0(runningAppProcesses);
        ArrayList<ActivityManager.RunningAppProcessInfo> arrayList = new ArrayList();
        for (Object obj : listG0) {
            if (((ActivityManager.RunningAppProcessInfo) obj).uid == i10) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(w.x(arrayList, 10));
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : arrayList) {
            arrayList2.add(f0.e.d.a.c.a().e(runningAppProcessInfo.processName).d(runningAppProcessInfo.pid).c(runningAppProcessInfo.importance).b(t.e(runningAppProcessInfo.processName, str)).a());
        }
        return arrayList2;
    }

    @NotNull
    public final f0.e.d.a.c e(@NotNull Context context) {
        Object next;
        t.j(context, "context");
        int iMyPid = Process.myPid();
        Iterator<T> it = d(context).iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (((f0.e.d.a.c) next).c() != iMyPid);
        f0.e.d.a.c cVar = (f0.e.d.a.c) next;
        return cVar == null ? c(this, f(), iMyPid, 0, false, 12, null) : cVar;
    }

    private j() {
    }
}
