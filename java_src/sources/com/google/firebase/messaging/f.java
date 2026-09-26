package com.google.firebase.messaging;

import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.app.NotificationManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Process;
import android.os.SystemClock;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.tasks.Tasks;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes8.dex */
class f {
    private static final int IMAGE_DOWNLOAD_TIMEOUT_SECONDS = 5;
    private final Context context;
    private final ExecutorService networkIoExecutor;
    private final h0 params;

    private void c(d.a aVar) {
        if (Log.isLoggable(e.TAG, 3)) {
            Log.d(e.TAG, "Showing notification");
        }
        ((NotificationManager) this.context.getSystemService("notification")).notify(aVar.tag, aVar.id, aVar.notificationBuilder.g());
    }

    private boolean b() {
        if (((KeyguardManager) this.context.getSystemService("keyguard")).inKeyguardRestrictedInputMode()) {
            return false;
        }
        if (!PlatformVersion.isAtLeastLollipop()) {
            SystemClock.sleep(10L);
        }
        int iMyPid = Process.myPid();
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) this.context.getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses == null) {
            return false;
        }
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.pid == iMyPid) {
                return runningAppProcessInfo.importance == 100;
            }
        }
        return false;
    }

    @Nullable
    private d0 d() {
        d0 d0VarI = d0.i(this.params.p("gcm.n.image"));
        if (d0VarI != null) {
            d0VarI.m(this.networkIoExecutor);
        }
        return d0VarI;
    }

    private void e(NotificationCompat.Builder builder, @Nullable d0 d0Var) {
        if (d0Var == null) {
            return;
        }
        try {
            Bitmap bitmap = (Bitmap) Tasks.await(d0Var.k(), 5L, TimeUnit.SECONDS);
            builder.N(bitmap);
            builder.f0(new NotificationCompat.BigPictureStyle().z(bitmap).y(null));
        } catch (InterruptedException unused) {
            Log.w(e.TAG, "Interrupted while downloading image, showing notification without it");
            d0Var.close();
            Thread.currentThread().interrupt();
        } catch (ExecutionException e) {
            Log.w(e.TAG, "Failed to download image: " + e.getCause());
        } catch (TimeoutException unused2) {
            Log.w(e.TAG, "Failed to download image in time, showing notification without it");
            d0Var.close();
        }
    }

    boolean a() {
        if (this.params.a("gcm.n.noui")) {
            return true;
        }
        if (b()) {
            return false;
        }
        d0 d0VarD = d();
        d.a aVarE = d.e(this.context, this.params);
        e(aVarE.notificationBuilder, d0VarD);
        c(aVarE);
        return true;
    }

    public f(Context context, h0 h0Var, ExecutorService executorService) {
        this.networkIoExecutor = executorService;
        this.context = context;
        this.params = h0Var;
    }
}
