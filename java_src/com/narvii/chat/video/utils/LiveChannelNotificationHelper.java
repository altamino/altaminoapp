package com.narvii.chat.video.utils;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.SystemClock;
import android.support.v4.app.NotificationCompat;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.chat.video.RtcNotificationClickReceiver;
import com.narvii.notification.channel.NotificationChannelHelper;
import com.narvii.util.PackageUtils;
import kotlin.TypeCastException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LiveChannelNotificationHelper.kt */
/* loaded from: classes2.dex */
public final class LiveChannelNotificationHelper {
    public static final Companion Companion = new Companion(null);
    private static final int LIVE_CHANNEL_NOTIFY_ID = 4610;
    private final Context context;
    private final NVContext nvContext;

    public LiveChannelNotificationHelper(NVContext nvContext) {
        Intrinsics.checkParameterIsNotNull(nvContext, "nvContext");
        this.nvContext = nvContext;
        Context context = this.nvContext.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "nvContext.context");
        this.context = context;
    }

    public final NVContext getNvContext() {
        return this.nvContext;
    }

    public final void showNotification(String str, int i) {
        try {
            NotificationCompat.Builder builder = new NotificationCompat.Builder(this.context);
            NotificationChannelHelper.setNormalChannel(builder);
            builder.setSmallIcon(R.drawable.ic_notify);
            builder.setColor(-16724355);
            PackageUtils packageUtils = new PackageUtils(this.context);
            if (str == null) {
                str = packageUtils.getAppName();
            }
            builder.setContentTitle(str);
            String str2 = this.context.getString(R.string.tap_continue_live_chat) + " 😊";
            builder.setContentText(str2);
            builder.setTicker(str2);
            if (Build.VERSION.SDK_INT >= 16) {
                NotificationCompat.BigTextStyle bigTextStyle = new NotificationCompat.BigTextStyle(builder);
                bigTextStyle.bigText(str2);
                builder.setStyle(bigTextStyle);
            }
            builder.setAutoCancel(true);
            builder.setContentIntent(PendingIntent.getBroadcast(this.context, R.id.ALT | (65535 & ((int) SystemClock.elapsedRealtime())), new Intent(this.context, (Class<?>) RtcNotificationClickReceiver.class), 134217728));
            Object systemService = this.context.getSystemService("notification");
            if (systemService == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.app.NotificationManager");
            }
            ((NotificationManager) systemService).notify(LIVE_CHANNEL_NOTIFY_ID, builder.build());
        } catch (Exception unused) {
        }
    }

    public final void cancelNotification() {
        Object systemService = this.context.getSystemService("notification");
        if (systemService == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.app.NotificationManager");
        }
        ((NotificationManager) systemService).cancel(LIVE_CHANNEL_NOTIFY_ID);
    }

    /* compiled from: LiveChannelNotificationHelper.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int getLIVE_CHANNEL_NOTIFY_ID() {
            return LiveChannelNotificationHelper.LIVE_CHANNEL_NOTIFY_ID;
        }
    }
}
