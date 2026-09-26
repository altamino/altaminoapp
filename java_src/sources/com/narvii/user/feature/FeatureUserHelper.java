package com.narvii.user.feature;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.google.firebase.sessions.settings.c;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.invite.InviteMembersFragment;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.dialog.CheckDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;

/* JADX INFO: loaded from: classes.dex */
public class FeatureUserHelper {
    public static final String ACTION_FEATURE_USER_CHANGED = "com.narvii.action.FEATURE_USER_CHANGED";
    NVContext context;
    User user;

    public void featureUser(final int i10, long j6, final Callback<ApiResponse> callback) {
        ApiRequest.Builder builder = new ApiRequest.Builder();
        builder.https().post();
        builder.path(this.user.apiTypeName() + c.FORWARD_SLASH_STRING + this.user.id() + "/admin");
        builder.param("adminOpName", 114);
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put("featuredType", i10);
        if (j6 != 0) {
            objectNodeCreateObjectNode.put("featuredDuration", j6);
        }
        builder.param("adminOpValue", objectNodeCreateObjectNode);
        ApiRequest apiRequestBuild = builder.build();
        ProgressDialog progressDialog = new ProgressDialog(this.context.getContext());
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.user.feature.FeatureUserHelper.2
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                int i11 = i10;
                if (i11 == 4) {
                    ObjectNode objectNode = FeatureUserHelper.this.user.extensions;
                    if (objectNode != null) {
                        objectNode.put("featuredType", i11);
                    } else {
                        ObjectNode objectNodeCreateObjectNode2 = JacksonUtils.createObjectNode();
                        FeatureUserHelper.this.user.extensions = objectNodeCreateObjectNode2;
                        objectNodeCreateObjectNode2.put("featuredType", i10);
                    }
                } else {
                    if (FeatureUserHelper.this.user.extensions == null) {
                        FeatureUserHelper.this.user.extensions = JacksonUtils.createObjectNode();
                    }
                    FeatureUserHelper.this.user.extensions.put("featuredType", 0);
                }
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(apiResponse);
                }
                Notification notification = new Notification("update", FeatureUserHelper.this.user);
                Bundle bundle = new Bundle();
                bundle.putBoolean("featureChanged", true);
                notification.bundle = bundle;
                ((NotificationCenter) FeatureUserHelper.this.context.getService("notification")).sendNotification(notification);
                LocalBroadcastManager localBroadcastManagerB = LocalBroadcastManager.b(FeatureUserHelper.this.context.getContext());
                Intent intent = new Intent(FeatureUserHelper.ACTION_FEATURE_USER_CHANGED);
                intent.putExtra("id", ((ConfigService) FeatureUserHelper.this.context.getService("config")).getCommunityId());
                localBroadcastManagerB.d(intent);
                CheckDialog checkDialog = new CheckDialog(FeatureUserHelper.this.context.getContext());
                checkDialog.setText(FeatureUserHelper.this.context.getContext().getString(R.string.success));
                checkDialog.show();
            }
        };
        progressDialog.show();
        ((ApiService) this.context.getService("api")).exec(apiRequestBuild, progressDialog.dismissListener);
    }

    public void showFeatureDialog(final Callback callback) {
        if (this.user == null) {
            return;
        }
        ActionSheetDialog actionSheetDialog = new ActionSheetDialog(this.context.getContext());
        actionSheetDialog.setTitle(this.context.getContext().getString(R.string.feature_user_time_hint));
        actionSheetDialog.addItem(this.context.getContext().getString(R.string.feature_time_1_day), 0);
        actionSheetDialog.addItem(this.context.getContext().getString(R.string.feature_time_2_days), 0);
        actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.user.feature.FeatureUserHelper.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i10) {
                if (i10 == 0) {
                    FeatureUserHelper.this.featureUserForDays(1, callback);
                } else {
                    if (i10 != 1) {
                        return;
                    }
                    FeatureUserHelper.this.featureUserForDays(2, callback);
                }
            }
        });
        actionSheetDialog.show();
    }

    public FeatureUserHelper(NVContext nVContext, User user) {
        this.context = nVContext;
        this.user = user;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void featureUserForDays(int i10, Callback<ApiResponse> callback) {
        featureUser(4, i10 * InviteMembersFragment.SECOND_DAY, callback);
    }
}
