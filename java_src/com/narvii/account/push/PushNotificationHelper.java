package com.narvii.account.push;

import android.content.SharedPreferences;
import android.view.View;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.comment.post.CommentPostActivity;
import com.narvii.util.NotificationManagerHelper;
import com.narvii.widget.ACMAlertDialog;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PushNotificationHelper.kt */
/* loaded from: classes2.dex */
public final class PushNotificationHelper {
    public static final Companion Companion = new Companion(null);
    private static final String PREF_KEY_SUFFIX = "_push_notification_remind";
    public static final String SCENARIO_CHAT = "scenario_chat";
    public static final String SCENARIO_COMMENT = "scenario_comment";
    public static final String SCENARIO_CREATE_POST = "scenario_create_post";
    public static final String SCENARIO_SUBSCRIBE_TOPIC = "scenario_subscribe_topic";
    public static final String SCENARIO_SUBSCRIBE_USER = "scenario_subscribe_user";
    private final NVContext ctx;
    private final NotificationManagerHelper notificationManagerHelper;
    private final SharedPreferences prefs;
    private final PushNotificationHelper$statusListener$1 statusListener;

    /* JADX WARN: Type inference failed for: r2v5, types: [com.narvii.account.push.PushNotificationHelper$statusListener$1] */
    public PushNotificationHelper(NVContext ctx) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        this.ctx = ctx;
        Object service = this.ctx.getService("prefs");
        Intrinsics.checkExpressionValueIsNotNull(service, "ctx.getService(\"prefs\")");
        this.prefs = (SharedPreferences) service;
        this.notificationManagerHelper = new NotificationManagerHelper(this.ctx.getContext());
        this.statusListener = new CommentPostActivity.StatusListener() { // from class: com.narvii.account.push.PushNotificationHelper$statusListener$1
            @Override // com.narvii.comment.post.CommentPostActivity.StatusListener
            public void onHeightFix(CommentPostActivity commentPostActivity) {
            }

            @Override // com.narvii.comment.post.CommentPostActivity.StatusListener
            public void onPostDone(CommentPostActivity commentPostActivity, boolean z) {
                CommentPostActivity.setStatusListener(null);
                if (z) {
                    this.this$0.showRemindDialogIfNeeded(PushNotificationHelper.SCENARIO_COMMENT);
                }
            }
        };
    }

    public final NVContext getCtx() {
        return this.ctx;
    }

    /* compiled from: PushNotificationHelper.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public final boolean showRemindDialogIfNeeded(String scenario) {
        Intrinsics.checkParameterIsNotNull(scenario, "scenario");
        return showRemindDialogIfNeeded(scenario, "");
    }

    public static /* synthetic */ boolean showRemindDialogIfNeeded$default(PushNotificationHelper pushNotificationHelper, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = "";
        }
        return pushNotificationHelper.showRemindDialogIfNeeded(str, str2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
    java.lang.NullPointerException: Cannot invoke "java.util.List.iterator()" because the return value of "jadx.core.dex.visitors.regions.SwitchOverStringVisitor$SwitchData.getNewCases()" is null
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:109)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:66)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
     */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00ea A[PHI: r16
  0x00ea: PHI (r16v5 java.lang.String) = (r16v0 java.lang.String), (r16v1 java.lang.String), (r16v6 java.lang.String) binds: [B:36:0x00e0, B:33:0x00cc, B:21:0x0091] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0126  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean showRemindDialogIfNeeded(java.lang.String r18, java.lang.String r19) throws android.content.res.Resources.NotFoundException {
        /*
            Method dump skipped, instructions count: 410
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.account.push.PushNotificationHelper.showRemindDialogIfNeeded(java.lang.String, java.lang.String):boolean");
    }

    public final void checkRemindDialogWhenPostFinished() {
        CommentPostActivity.setStatusListener(this.statusListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showConfirmDialog() {
        ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this.ctx.getContext());
        aCMAlertDialog.setTitle(R.string.push_notification_system_title);
        aCMAlertDialog.setMessage(R.string.push_notification_system_hint);
        aCMAlertDialog.addButton(R.string.go_to_settings, new View.OnClickListener() { // from class: com.narvii.account.push.PushNotificationHelper.showConfirmDialog.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PushNotificationHelper.this.getCtx().startActivity(PushNotificationHelper.this.notificationManagerHelper.getNotificationSettingIntent());
            }
        });
        try {
            aCMAlertDialog.show();
        } catch (Exception unused) {
        }
    }
}
