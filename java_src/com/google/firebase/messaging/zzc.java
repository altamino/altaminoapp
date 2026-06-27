package com.google.firebase.messaging;

import android.content.Context;
import android.os.Bundle;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
final class zzc {
    private final Context zzag;
    private final Bundle zzcm;
    private final Executor zzdy;
    private final zzb zzdz;

    public zzc(Context context, Bundle bundle, Executor executor) {
        this.zzdy = executor;
        this.zzag = context;
        this.zzcm = bundle;
        this.zzdz = new zzb(context, context.getPackageName());
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x005e A[EDGE_INSN: B:41:0x005e->B:20:0x005e BREAK  A[LOOP:0: B:13:0x0046->B:42:?]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final boolean zzas() throws java.io.IOException {
        /*
            r10 = this;
            android.os.Bundle r0 = r10.zzcm
            java.lang.String r1 = "gcm.n.noui"
            java.lang.String r0 = com.google.firebase.messaging.zzb.zza(r0, r1)
            java.lang.String r1 = "1"
            boolean r0 = r1.equals(r0)
            r1 = 1
            if (r0 == 0) goto L12
            return r1
        L12:
            android.content.Context r0 = r10.zzag
            java.lang.String r2 = "keyguard"
            java.lang.Object r0 = r0.getSystemService(r2)
            android.app.KeyguardManager r0 = (android.app.KeyguardManager) r0
            boolean r0 = r0.inKeyguardRestrictedInputMode()
            r2 = 0
            if (r0 != 0) goto L5e
            boolean r0 = com.google.android.gms.common.util.PlatformVersion.isAtLeastLollipop()
            if (r0 != 0) goto L2e
            r3 = 10
            android.os.SystemClock.sleep(r3)
        L2e:
            int r0 = android.os.Process.myPid()
            android.content.Context r3 = r10.zzag
            java.lang.String r4 = "activity"
            java.lang.Object r3 = r3.getSystemService(r4)
            android.app.ActivityManager r3 = (android.app.ActivityManager) r3
            java.util.List r3 = r3.getRunningAppProcesses()
            if (r3 == 0) goto L5e
            java.util.Iterator r3 = r3.iterator()
        L46:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L5e
            java.lang.Object r4 = r3.next()
            android.app.ActivityManager$RunningAppProcessInfo r4 = (android.app.ActivityManager.RunningAppProcessInfo) r4
            int r5 = r4.pid
            if (r5 != r0) goto L46
            int r0 = r4.importance
            r3 = 100
            if (r0 != r3) goto L5e
            r0 = 1
            goto L5f
        L5e:
            r0 = 0
        L5f:
            if (r0 == 0) goto L62
            return r2
        L62:
            android.os.Bundle r0 = r10.zzcm
            java.lang.String r3 = "gcm.n.image"
            java.lang.String r0 = com.google.firebase.messaging.zzb.zza(r0, r3)
            com.google.firebase.messaging.zzd r0 = com.google.firebase.messaging.zzd.zzo(r0)
            if (r0 == 0) goto L75
            java.util.concurrent.Executor r3 = r10.zzdy
            r0.zza(r3)
        L75:
            com.google.firebase.messaging.zzb r3 = r10.zzdz
            android.os.Bundle r4 = r10.zzcm
            com.google.firebase.messaging.zza r3 = r3.zzf(r4)
            android.support.v4.app.NotificationCompat$Builder r4 = r3.zzds
            java.lang.String r5 = "FirebaseMessaging"
            if (r0 == 0) goto Lc0
            com.google.android.gms.tasks.Task r6 = r0.getTask()     // Catch: java.util.concurrent.TimeoutException -> La6 java.lang.InterruptedException -> Laf java.util.concurrent.ExecutionException -> Lbf
            r7 = 5
            java.util.concurrent.TimeUnit r9 = java.util.concurrent.TimeUnit.SECONDS     // Catch: java.util.concurrent.TimeoutException -> La6 java.lang.InterruptedException -> Laf java.util.concurrent.ExecutionException -> Lbf
            java.lang.Object r6 = com.google.android.gms.tasks.Tasks.await(r6, r7, r9)     // Catch: java.util.concurrent.TimeoutException -> La6 java.lang.InterruptedException -> Laf java.util.concurrent.ExecutionException -> Lbf
            android.graphics.Bitmap r6 = (android.graphics.Bitmap) r6     // Catch: java.util.concurrent.TimeoutException -> La6 java.lang.InterruptedException -> Laf java.util.concurrent.ExecutionException -> Lbf
            r4.setLargeIcon(r6)     // Catch: java.util.concurrent.TimeoutException -> La6 java.lang.InterruptedException -> Laf java.util.concurrent.ExecutionException -> Lbf
            android.support.v4.app.NotificationCompat$BigPictureStyle r7 = new android.support.v4.app.NotificationCompat$BigPictureStyle     // Catch: java.util.concurrent.TimeoutException -> La6 java.lang.InterruptedException -> Laf java.util.concurrent.ExecutionException -> Lbf
            r7.<init>()     // Catch: java.util.concurrent.TimeoutException -> La6 java.lang.InterruptedException -> Laf java.util.concurrent.ExecutionException -> Lbf
            android.support.v4.app.NotificationCompat$BigPictureStyle r6 = r7.bigPicture(r6)     // Catch: java.util.concurrent.TimeoutException -> La6 java.lang.InterruptedException -> Laf java.util.concurrent.ExecutionException -> Lbf
            r7 = 0
            android.support.v4.app.NotificationCompat$BigPictureStyle r6 = r6.bigLargeIcon(r7)     // Catch: java.util.concurrent.TimeoutException -> La6 java.lang.InterruptedException -> Laf java.util.concurrent.ExecutionException -> Lbf
            r4.setStyle(r6)     // Catch: java.util.concurrent.TimeoutException -> La6 java.lang.InterruptedException -> Laf java.util.concurrent.ExecutionException -> Lbf
            goto Lc0
        La6:
            java.lang.String r4 = "Failed to download image in time, showing notification without it"
            android.util.Log.w(r5, r4)
            r0.close()
            goto Lc0
        Laf:
            java.lang.String r4 = "Interrupted while downloading image, showing notification without it"
            android.util.Log.w(r5, r4)
            r0.close()
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            r0.interrupt()
            goto Lc0
        Lbf:
        Lc0:
            r0 = 3
            boolean r0 = android.util.Log.isLoggable(r5, r0)
            if (r0 == 0) goto Lcc
            java.lang.String r0 = "Showing notification"
            android.util.Log.d(r5, r0)
        Lcc:
            android.content.Context r0 = r10.zzag
            java.lang.String r4 = "notification"
            java.lang.Object r0 = r0.getSystemService(r4)
            android.app.NotificationManager r0 = (android.app.NotificationManager) r0
            java.lang.String r4 = r3.tag
            android.support.v4.app.NotificationCompat$Builder r3 = r3.zzds
            android.app.Notification r3 = r3.build()
            r0.notify(r4, r2, r3)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.messaging.zzc.zzas():boolean");
    }
}
