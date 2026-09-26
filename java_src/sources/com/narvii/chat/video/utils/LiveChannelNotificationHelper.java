package com.narvii.chat.video.utils;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import androidx.core.app.NotificationCompat;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.chat.video.RtcNotificationClickReceiver;
import com.narvii.notification.channel.NotificationChannelHelper;
import com.narvii.util.PackageUtils;
import com.narvii.util.PendingIntentUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class LiveChannelNotificationHelper {

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int LIVE_CHANNEL_NOTIFY_ID = 4610;

    @NotNull
    private final Context context;

    @NotNull
    private final NVContext nvContext;

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }

        public final int getLIVE_CHANNEL_NOTIFY_ID() {
            return LiveChannelNotificationHelper.LIVE_CHANNEL_NOTIFY_ID;
        }
    }

    @NotNull
    public final NVContext getNvContext() {
        return this.nvContext;
    }

    public LiveChannelNotificationHelper(@NotNull NVContext nvContext) {
        kotlin.jvm.internal.t.j(nvContext, "nvContext");
        this.nvContext = nvContext;
        Context context = nvContext.getContext();
        kotlin.jvm.internal.t.i(context, "getContext(...)");
        this.context = context;
    }

    public final void cancelNotification() {
        Object systemService = this.context.getSystemService("notification");
        kotlin.jvm.internal.t.h(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
        ((NotificationManager) systemService).cancel(LIVE_CHANNEL_NOTIFY_ID);
    }

    public final void showNotification(@Nullable String str, int i10) {
        try {
            NotificationCompat.Builder builder = new NotificationCompat.Builder(this.context);
            NotificationChannelHelper.setNormalChannel(builder);
            builder.a0(R.drawable.ic_notify);
            builder.z(-16724355);
            PackageUtils packageUtils = new PackageUtils(this.context);
            if (str == null) {
                str = packageUtils.getAppName();
            }
            builder.E(str);
            String str2 = this.context.getString(R.string.tap_continue_live_chat) + " 😊";
            builder.D(str2);
            builder.h0(str2);
            NotificationCompat.BigTextStyle bigTextStyle = new NotificationCompat.BigTextStyle(builder);
            bigTextStyle.x(str2);
            builder.f0(bigTextStyle);
            builder.t(true);
            builder.C(PendingIntent.getBroadcast(this.context, (((int) SystemClock.elapsedRealtime()) & 65535) | R.id.ALT, new Intent(this.context, (Class<?>) RtcNotificationClickReceiver.class), PendingIntentUtils.INSTANCE.getCurrentImmutableFlag(134217728)));
            Object systemService = this.context.getSystemService("notification");
            kotlin.jvm.internal.t.h(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
            ((NotificationManager) systemService).notify(LIVE_CHANNEL_NOTIFY_ID, builder.g());
        } catch (Exception unused) {
        }
    }
}
