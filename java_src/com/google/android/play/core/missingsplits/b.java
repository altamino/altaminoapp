package com.google.android.play.core.missingsplits;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import com.google.android.play.core.internal.ae;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
final class b implements MissingSplitsManager {
    private static final ae a = new ae("MissingSplitsManagerImpl");
    private final Context b;
    private final Runtime c;
    private final a d;
    private final AtomicReference<Boolean> e;

    b(Context context, Runtime runtime, a aVar, AtomicReference<Boolean> atomicReference) {
        this.b = context;
        this.c = runtime;
        this.d = aVar;
        this.e = atomicReference;
    }

    private final boolean a() throws PackageManager.NameNotFoundException {
        try {
            ApplicationInfo applicationInfo = this.b.getPackageManager().getApplicationInfo(this.b.getPackageName(), 128);
            if (applicationInfo.metaData != null) {
                if (Boolean.TRUE.equals(applicationInfo.metaData.get("com.android.vending.splits.required"))) {
                    return true;
                }
            }
            return false;
        } catch (PackageManager.NameNotFoundException unused) {
            a.c("App '%s' is not found in the PackageManager", this.b.getPackageName());
            return false;
        }
    }

    private final boolean a(ComponentName componentName) throws ClassNotFoundException {
        String className = componentName.getClassName();
        try {
            Class<?> cls = Class.forName(className);
            while (cls != null) {
                if (cls.equals(Activity.class)) {
                    return true;
                }
                Class<? super Object> superclass = cls.getSuperclass();
                cls = superclass != cls ? superclass : null;
            }
            return false;
        } catch (ClassNotFoundException unused) {
            a.c("ClassNotFoundException when scanning class hierarchy of '%s'", className);
            return this.b.getPackageManager().getActivityInfo(componentName, 0) != null;
        }
    }

    private final Set<String> b() throws PackageManager.NameNotFoundException {
        if (Build.VERSION.SDK_INT < 21) {
            return Collections.emptySet();
        }
        try {
            PackageInfo packageInfo = this.b.getPackageManager().getPackageInfo(this.b.getPackageName(), 0);
            HashSet hashSet = new HashSet();
            if (packageInfo.splitNames != null) {
                Collections.addAll(hashSet, packageInfo.splitNames);
            }
            return hashSet;
        } catch (PackageManager.NameNotFoundException unused) {
            a.c("App '%s' is not found in PackageManager", this.b.getPackageName());
            return Collections.emptySet();
        }
    }

    private final List<ActivityManager.AppTask> c() {
        List<ActivityManager.AppTask> appTasks = ((ActivityManager) this.b.getSystemService("activity")).getAppTasks();
        return appTasks != null ? appTasks : Collections.emptyList();
    }

    @Override // com.google.android.play.core.missingsplits.MissingSplitsManager
    public final boolean disableAppIfMissingRequiredSplits() {
        boolean z;
        boolean z2;
        if (Build.VERSION.SDK_INT < 21) {
            return false;
        }
        if (!isMissingRequiredSplits()) {
            if (this.d.a()) {
                this.d.c();
                this.c.exit(0);
            }
            return false;
        }
        Iterator<ActivityManager.AppTask> it = c().iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            }
            ActivityManager.AppTask next = it.next();
            if (next.getTaskInfo() != null && next.getTaskInfo().baseIntent != null && next.getTaskInfo().baseIntent.getComponent() != null) {
                if (PlayCoreMissingSplitsActivity.class.getName().equals(next.getTaskInfo().baseIntent.getComponent().getClassName())) {
                    z = true;
                    break;
                }
            }
        }
        if (!z) {
            Iterator<ActivityManager.AppTask> it2 = c().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    z2 = false;
                    break;
                }
                ActivityManager.RecentTaskInfo taskInfo = it2.next().getTaskInfo();
                if ((taskInfo == null || taskInfo.baseIntent == null || taskInfo.baseIntent.getComponent() == null || !a(taskInfo.baseIntent.getComponent())) ? false : true) {
                    z2 = true;
                    break;
                }
            }
            this.d.b();
            Iterator<ActivityManager.AppTask> it3 = c().iterator();
            while (it3.hasNext()) {
                it3.next().finishAndRemoveTask();
            }
            if (z2) {
                this.b.getPackageManager().setComponentEnabledSetting(new ComponentName(this.b, (Class<?>) PlayCoreMissingSplitsActivity.class), 1, 1);
                this.b.startActivity(new Intent(this.b, (Class<?>) PlayCoreMissingSplitsActivity.class).addFlags(884998144));
            }
            this.c.exit(0);
        }
        return true;
    }

    public final boolean isMissingRequiredSplits() {
        boolean zBooleanValue;
        synchronized (this.e) {
            if (this.e.get() == null) {
                AtomicReference<Boolean> atomicReference = this.e;
                boolean z = false;
                if (Build.VERSION.SDK_INT >= 21 && a()) {
                    Set<String> setB = b();
                    if (setB.isEmpty() || (setB.size() == 1 && setB.contains(""))) {
                        z = true;
                    }
                }
                atomicReference.set(Boolean.valueOf(z));
            }
            zBooleanValue = this.e.get().booleanValue();
        }
        return zBooleanValue;
    }
}
