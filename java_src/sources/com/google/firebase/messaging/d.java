package com.google.firebase.messaging;

import android.R;
import android.annotation.TargetApi;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Color;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import com.google.android.gms.cloudmessaging.CloudMessagingReceiver;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes7.dex */
public final class d {
    private static final String ACTION_RECEIVER = "com.google.android.c2dm.intent.RECEIVE";
    public static final String FCM_FALLBACK_NOTIFICATION_CHANNEL = "fcm_fallback_notification_channel";
    public static final String FCM_FALLBACK_NOTIFICATION_CHANNEL_LABEL = "fcm_fallback_notification_channel_label";
    private static final String FCM_FALLBACK_NOTIFICATION_CHANNEL_NAME_NO_RESOURCE = "Misc";
    private static final int ILLEGAL_RESOURCE_ID = 0;
    public static final String METADATA_DEFAULT_CHANNEL_ID = "com.google.firebase.messaging.default_notification_channel_id";
    public static final String METADATA_DEFAULT_COLOR = "com.google.firebase.messaging.default_notification_color";
    public static final String METADATA_DEFAULT_ICON = "com.google.firebase.messaging.default_notification_icon";
    private static final AtomicInteger requestCodeProvider = new AtomicInteger((int) SystemClock.elapsedRealtime());

    private static int l(int i10) {
        return i10 | 67108864;
    }

    public static class a {
        public final int id;
        public final NotificationCompat.Builder notificationBuilder;
        public final String tag;

        a(NotificationCompat.Builder builder, String str, int i10) {
            this.notificationBuilder = builder;
            this.tag = str;
            this.id = i10;
        }
    }

    private static Intent f(String str, h0 h0Var, PackageManager packageManager) {
        String strP = h0Var.p("gcm.n.click_action");
        if (!TextUtils.isEmpty(strP)) {
            Intent intent = new Intent(strP);
            intent.setPackage(str);
            intent.setFlags(268435456);
            return intent;
        }
        Uri uriF = h0Var.f();
        if (uriF != null) {
            Intent intent2 = new Intent("android.intent.action.VIEW");
            intent2.setPackage(str);
            intent2.setData(uriF);
            return intent2;
        }
        Intent launchIntentForPackage = packageManager.getLaunchIntentForPackage(str);
        if (launchIntentForPackage == null) {
            Log.w(e.TAG, "No activity found to launch app");
        }
        return launchIntentForPackage;
    }

    private static int g() {
        return requestCodeProvider.incrementAndGet();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [int] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    private static int i(h0 h0Var) {
        boolean zA = h0Var.a("gcm.n.default_sound");
        ?? r1 = zA;
        if (h0Var.a("gcm.n.default_vibrate_timings")) {
            r1 = (zA ? 1 : 0) | 2;
        }
        return h0Var.a("gcm.n.default_light_settings") ? r1 | 4 : r1;
    }

    private static Bundle j(PackageManager packageManager, String str) {
        Bundle bundle;
        try {
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(str, 128);
            if (applicationInfo != null && (bundle = applicationInfo.metaData) != null) {
                return bundle;
            }
        } catch (PackageManager.NameNotFoundException e) {
            Log.w(e.TAG, "Couldn't get own application info: " + e);
        }
        return Bundle.EMPTY;
    }

    @TargetApi(26)
    @VisibleForTesting
    public static String k(Context context, String str, Bundle bundle) {
        String string;
        if (Build.VERSION.SDK_INT < 26) {
            return null;
        }
        try {
            if (context.getPackageManager().getApplicationInfo(context.getPackageName(), 0).targetSdkVersion < 26) {
                return null;
            }
            NotificationManager notificationManager = (NotificationManager) context.getSystemService(NotificationManager.class);
            if (!TextUtils.isEmpty(str)) {
                if (notificationManager.getNotificationChannel(str) != null) {
                    return str;
                }
                Log.w(e.TAG, "Notification Channel requested (" + str + ") has not been created by the app. Manifest configuration, or default, value will be used.");
            }
            String string2 = bundle.getString(METADATA_DEFAULT_CHANNEL_ID);
            if (TextUtils.isEmpty(string2)) {
                Log.w(e.TAG, "Missing Default Notification Channel metadata in AndroidManifest. Default value will be used.");
            } else {
                if (notificationManager.getNotificationChannel(string2) != null) {
                    return string2;
                }
                Log.w(e.TAG, "Notification Channel set in AndroidManifest.xml has not been created by the app. Default value will be used.");
            }
            if (notificationManager.getNotificationChannel(FCM_FALLBACK_NOTIFICATION_CHANNEL) == null) {
                int identifier = context.getResources().getIdentifier(FCM_FALLBACK_NOTIFICATION_CHANNEL_LABEL, TypedValues.Custom.S_STRING, context.getPackageName());
                if (identifier == 0) {
                    Log.e(e.TAG, "String resource \"fcm_fallback_notification_channel_label\" is not found. Using default string channel name.");
                    string = FCM_FALLBACK_NOTIFICATION_CHANNEL_NAME_NO_RESOURCE;
                } else {
                    string = context.getString(identifier);
                }
                notificationManager.createNotificationChannel(androidx.browser.trusted.f.a(FCM_FALLBACK_NOTIFICATION_CHANNEL, string, 3));
            }
            return FCM_FALLBACK_NOTIFICATION_CHANNEL;
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    private static String o(h0 h0Var) {
        String strP = h0Var.p("gcm.n.tag");
        if (!TextUtils.isEmpty(strP)) {
            return strP;
        }
        return "FCM-Notification:" + SystemClock.uptimeMillis();
    }

    @TargetApi(26)
    private static boolean p(Resources resources, int i10) {
        if (Build.VERSION.SDK_INT != 26) {
            return true;
        }
        try {
            if (!c.a(resources.getDrawable(i10, null))) {
                return true;
            }
            Log.e(e.TAG, "Adaptive icons cannot be used in notifications. Ignoring icon id: " + i10);
            return false;
        } catch (Resources.NotFoundException unused) {
            Log.e(e.TAG, "Couldn't find resource " + i10 + ", treating it as an invalid icon");
            return false;
        }
    }

    static boolean q(@NonNull h0 h0Var) {
        return h0Var.a("google.c.a.e");
    }

    @Nullable
    private static PendingIntent a(Context context, h0 h0Var, String str, PackageManager packageManager) {
        Intent intentF = f(str, h0Var, packageManager);
        if (intentF == null) {
            return null;
        }
        intentF.addFlags(67108864);
        intentF.putExtras(h0Var.y());
        if (q(h0Var)) {
            intentF.putExtra("gcm.n.analytics_data", h0Var.x());
        }
        return PendingIntent.getActivity(context, g(), intentF, l(1073741824));
    }

    @Nullable
    private static PendingIntent b(Context context, Context context2, h0 h0Var) {
        if (!q(h0Var)) {
            return null;
        }
        return c(context, context2, new Intent(CloudMessagingReceiver.IntentActionKeys.NOTIFICATION_DISMISS).putExtras(h0Var.x()));
    }

    private static PendingIntent c(Context context, Context context2, Intent intent) {
        return PendingIntent.getBroadcast(context, g(), new Intent(ACTION_RECEIVER).setPackage(context2.getPackageName()).putExtra(CloudMessagingReceiver.IntentKeys.WRAPPED_INTENT, intent), l(1073741824));
    }

    public static a d(Context context, Context context2, h0 h0Var, String str, Bundle bundle) {
        String packageName = context2.getPackageName();
        Resources resources = context2.getResources();
        PackageManager packageManager = context2.getPackageManager();
        NotificationCompat.Builder builder = new NotificationCompat.Builder(context2, str);
        String strN = h0Var.n(resources, packageName, "gcm.n.title");
        if (!TextUtils.isEmpty(strN)) {
            builder.E(strN);
        }
        String strN2 = h0Var.n(resources, packageName, "gcm.n.body");
        if (!TextUtils.isEmpty(strN2)) {
            builder.D(strN2);
            builder.f0(new NotificationCompat.BigTextStyle().x(strN2));
        }
        builder.a0(m(packageManager, resources, packageName, h0Var.p("gcm.n.icon"), bundle));
        Uri uriN = n(packageName, h0Var, resources);
        if (uriN != null) {
            builder.d0(uriN);
        }
        builder.C(a(context, h0Var, packageName, packageManager));
        PendingIntent pendingIntentB = b(context, context2, h0Var);
        if (pendingIntentB != null) {
            builder.H(pendingIntentB);
        }
        Integer numH = h(context2, h0Var.p("gcm.n.color"), bundle);
        if (numH != null) {
            builder.z(numH.intValue());
        }
        builder.t(!h0Var.a("gcm.n.sticky"));
        builder.P(h0Var.a("gcm.n.local_only"));
        String strP = h0Var.p("gcm.n.ticker");
        if (strP != null) {
            builder.h0(strP);
        }
        Integer numM = h0Var.m();
        if (numM != null) {
            builder.U(numM.intValue());
        }
        Integer numR = h0Var.r();
        if (numR != null) {
            builder.l0(numR.intValue());
        }
        Integer numL = h0Var.l();
        if (numL != null) {
            builder.R(numL.intValue());
        }
        Long lJ = h0Var.j("gcm.n.event_time");
        if (lJ != null) {
            builder.Z(true);
            builder.m0(lJ.longValue());
        }
        long[] jArrQ = h0Var.q();
        if (jArrQ != null) {
            builder.k0(jArrQ);
        }
        int[] iArrE = h0Var.e();
        if (iArrE != null) {
            builder.O(iArrE[0], iArrE[1], iArrE[2]);
        }
        builder.G(i(h0Var));
        return new a(builder, o(h0Var), 0);
    }

    static a e(Context context, h0 h0Var) {
        Bundle bundleJ = j(context.getPackageManager(), context.getPackageName());
        return d(context, context, h0Var, k(context, h0Var.k(), bundleJ), bundleJ);
    }

    private static Integer h(Context context, String str, Bundle bundle) {
        if (!TextUtils.isEmpty(str)) {
            try {
                return Integer.valueOf(Color.parseColor(str));
            } catch (IllegalArgumentException unused) {
                Log.w(e.TAG, "Color is invalid: " + str + ". Notification will use default color.");
            }
        }
        int i10 = bundle.getInt(METADATA_DEFAULT_COLOR, 0);
        if (i10 != 0) {
            try {
                return Integer.valueOf(ContextCompat.getColor(context, i10));
            } catch (Resources.NotFoundException unused2) {
                Log.w(e.TAG, "Cannot find the color resource referenced in AndroidManifest.");
                return null;
            }
        }
        return null;
    }

    private static int m(PackageManager packageManager, Resources resources, String str, String str2, Bundle bundle) {
        if (!TextUtils.isEmpty(str2)) {
            int identifier = resources.getIdentifier(str2, "drawable", str);
            if (identifier != 0 && p(resources, identifier)) {
                return identifier;
            }
            int identifier2 = resources.getIdentifier(str2, "mipmap", str);
            if (identifier2 != 0 && p(resources, identifier2)) {
                return identifier2;
            }
            Log.w(e.TAG, "Icon resource " + str2 + " not found. Notification will use default icon.");
        }
        int i10 = bundle.getInt(METADATA_DEFAULT_ICON, 0);
        if (i10 == 0 || !p(resources, i10)) {
            try {
                i10 = packageManager.getApplicationInfo(str, 0).icon;
            } catch (PackageManager.NameNotFoundException e) {
                Log.w(e.TAG, "Couldn't get own application info: " + e);
            }
        }
        if (i10 == 0 || !p(resources, i10)) {
            return R.drawable.sym_def_app_icon;
        }
        return i10;
    }

    private static Uri n(String str, h0 h0Var, Resources resources) {
        String strO = h0Var.o();
        if (TextUtils.isEmpty(strO)) {
            return null;
        }
        if (!"default".equals(strO) && resources.getIdentifier(strO, "raw", str) != 0) {
            return Uri.parse("android.resource://" + str + "/raw/" + strO);
        }
        return RingtoneManager.getDefaultUri(2);
    }
}
