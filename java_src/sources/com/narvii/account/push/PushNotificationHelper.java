package com.narvii.account.push;

import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.view.View;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.app.incubator.IncubatorApplication;
import com.narvii.comment.list.CommentListAdapter;
import com.narvii.comment.post.CommentPostActivity;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.notification.channel.NotificationChannelHelper;
import com.narvii.util.NotificationManagerHelper;
import com.narvii.util.Utils;
import com.narvii.widget.ACMAlertDialog;
import com.safedk.android.utils.Logger;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class PushNotificationHelper {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final String PREF_KEY_SUFFIX = "_push_notification_remind";

    @NotNull
    public static final String SCENARIO_CHAT = "scenario_chat";

    @NotNull
    public static final String SCENARIO_COMMENT = "scenario_comment";

    @NotNull
    public static final String SCENARIO_CREATE_POST = "scenario_create_post";

    @NotNull
    public static final String SCENARIO_SUBSCRIBE_TOPIC = "scenario_subscribe_topic";

    @NotNull
    public static final String SCENARIO_SUBSCRIBE_USER = "scenario_subscribe_user";

    @NotNull
    private final NVContext ctx;

    @NotNull
    private final NotificationManagerHelper notificationManagerHelper;

    @NotNull
    private final SharedPreferences prefs;

    @NotNull
    private final PushNotificationHelper$statusListener$1 statusListener;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public static void safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(NVContext p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @NotNull
    public final NVContext getCtx() {
        return this.ctx;
    }

    public final boolean showRemindDialogIfNeeded(@NotNull String scenario) {
        t.j(scenario, "scenario");
        return showRemindDialogIfNeeded(scenario, "");
    }

    /* JADX WARN: Type inference failed for: r3v2, types: [com.narvii.account.push.PushNotificationHelper$statusListener$1] */
    public PushNotificationHelper(@NotNull NVContext ctx) {
        t.j(ctx, "ctx");
        this.ctx = ctx;
        Object service = ctx.getService(IncubatorApplication.PREFS_SERVICE_KEY);
        t.i(service, "getService(...)");
        this.prefs = (SharedPreferences) service;
        this.notificationManagerHelper = new NotificationManagerHelper(ctx.getContext());
        this.statusListener = new CommentPostActivity.StatusListener() { // from class: com.narvii.account.push.PushNotificationHelper$statusListener$1
            @Override // com.narvii.comment.post.CommentPostActivity.StatusListener
            public void onHeightFix(@Nullable CommentPostActivity commentPostActivity) {
            }

            @Override // com.narvii.comment.post.CommentPostActivity.StatusListener
            public void onPostDone(@Nullable CommentPostActivity commentPostActivity, boolean z6) {
                CommentPostActivity.setStatusListener(null);
                if (z6) {
                    this.this$0.showRemindDialogIfNeeded(PushNotificationHelper.SCENARIO_COMMENT);
                }
            }
        };
    }

    private final void showConfirmDialog() {
        ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this.ctx.getContext());
        aCMAlertDialog.setTitle(R.string.push_notification_system_title);
        aCMAlertDialog.setMessage(R.string.push_notification_system_hint);
        aCMAlertDialog.addButton(R.string.go_to_settings, new View.OnClickListener() { // from class: com.narvii.account.push.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PushNotificationHelper.showConfirmDialog$lambda$4(this.f1738a, view);
            }
        });
        try {
            aCMAlertDialog.show();
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showConfirmDialog$lambda$4(PushNotificationHelper this$0, View view) {
        t.j(this$0, "this$0");
        safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(this$0.ctx, this$0.notificationManagerHelper.getNotificationSettingIntent());
    }

    public static /* synthetic */ boolean showRemindDialogIfNeeded$default(PushNotificationHelper pushNotificationHelper, String str, String str2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str2 = "";
        }
        return pushNotificationHelper.showRemindDialogIfNeeded(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showRemindDialogIfNeeded$lambda$2$lambda$0(PushNotificationDialog2 this_apply, View view) {
        t.j(this_apply, "$this_apply");
        LogEvent.clickBuilder(this_apply, ActSemantic.wildcard).area("NoArea").send();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showRemindDialogIfNeeded$lambda$2$lambda$1(PushNotificationDialog2 this_apply, PushNotificationHelper this$0, View view) {
        t.j(this_apply, "$this_apply");
        t.j(this$0, "this$0");
        LogEvent.clickBuilder(this_apply, ActSemantic.wildcard).area("YesArea").send();
        this$0.showConfirmDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showRemindDialogIfNeeded$lambda$3(PushNotificationHelper this$0, String prefsKey, PushNotificationDialog2 dialog) {
        t.j(this$0, "this$0");
        t.j(prefsKey, "$prefsKey");
        t.j(dialog, "$dialog");
        try {
            if (this$0.prefs.getBoolean(prefsKey, false)) {
                return;
            }
            dialog.show();
            this$0.prefs.edit().putBoolean(prefsKey, true).apply();
        } catch (Exception unused) {
        }
    }

    public final void checkRemindDialogWhenPostFinished() {
        CommentPostActivity.setStatusListener(this.statusListener);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final boolean showRemindDialogIfNeeded(@NotNull String scenario, @NotNull String param) {
        String string;
        t.j(scenario, "scenario");
        t.j(param, "param");
        final String str = scenario + PREF_KEY_SUFFIX;
        if (this.prefs.getBoolean(str, false)) {
            return false;
        }
        int iHashCode = scenario.hashCode();
        String str2 = "chat";
        String str3 = NotificationChannelHelper.CHANNEL_ALERT;
        switch (iHashCode) {
            case -1177709913:
                if (scenario.equals(SCENARIO_CHAT)) {
                    str3 = "chat";
                }
                break;
            case -553380021:
                scenario.equals(SCENARIO_SUBSCRIBE_TOPIC);
                break;
            case -433459665:
                scenario.equals(SCENARIO_SUBSCRIBE_USER);
                break;
            case 358868948:
                scenario.equals(SCENARIO_CREATE_POST);
                break;
            case 643201200:
                scenario.equals(SCENARIO_COMMENT);
                break;
        }
        if (this.notificationManagerHelper.areNotificationChannelEnabled(str3) || !this.notificationManagerHelper.isNotificationSettingAvailable()) {
            return false;
        }
        Resources resources = this.ctx.getContext().getResources();
        String string2 = resources.getString(R.string.notification_reminder);
        t.i(string2, "getString(...)");
        switch (scenario) {
            case "scenario_chat":
                string = resources.getString(R.string.push_notification_hint);
                break;
            case "scenario_subscribe_topic":
                string = resources.getString(R.string.topic_push_notification_subscribe_hint, param);
                break;
            case "scenario_subscribe_user":
                string = resources.getString(R.string.push_notification_subscribe_hint, param);
                break;
            case "scenario_create_post":
                string = resources.getString(R.string.push_notification_create_post_hint);
                break;
            case "scenario_comment":
                string = resources.getString(R.string.push_notification_comment_hint);
                break;
            default:
                string = "";
                break;
        }
        t.g(string);
        switch (scenario.hashCode()) {
            case -1177709913:
                if (!scenario.equals(SCENARIO_CHAT)) {
                    str2 = "";
                }
                break;
            case -553380021:
                str2 = !scenario.equals(SCENARIO_SUBSCRIBE_TOPIC) ? "" : "topic";
                break;
            case -433459665:
                str2 = !scenario.equals(SCENARIO_SUBSCRIBE_USER) ? "" : "subscribe";
                break;
            case 358868948:
                str2 = !scenario.equals(SCENARIO_CREATE_POST) ? "" : "createPost";
                break;
            case 643201200:
                str2 = !scenario.equals(SCENARIO_COMMENT) ? "" : CommentListAdapter.COMMENT;
                break;
            default:
                str2 = "";
                break;
        }
        final PushNotificationDialog2 pushNotificationDialog2 = new PushNotificationDialog2(this.ctx, "PushNotificationReminder", str2);
        pushNotificationDialog2.setTitle(string2);
        pushNotificationDialog2.setMessage(string);
        pushNotificationDialog2.addButton(R.string.not_now, new View.OnClickListener() { // from class: com.narvii.account.push.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PushNotificationHelper.showRemindDialogIfNeeded$lambda$2$lambda$0(pushNotificationDialog2, view);
            }
        });
        pushNotificationDialog2.addButton(R.string.yes_notify_me, new View.OnClickListener() { // from class: com.narvii.account.push.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PushNotificationHelper.showRemindDialogIfNeeded$lambda$2$lambda$1(pushNotificationDialog2, this, view);
            }
        });
        Utils.postDelayed(new Runnable() { // from class: com.narvii.account.push.c
            @Override // java.lang.Runnable
            public final void run() {
                PushNotificationHelper.showRemindDialogIfNeeded$lambda$3(this.f1735a, str, pushNotificationDialog2);
            }
        }, 1000L);
        return true;
    }
}
