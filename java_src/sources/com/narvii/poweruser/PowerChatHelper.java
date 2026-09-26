package com.narvii.poweruser;

import android.content.DialogInterface;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.google.firebase.sessions.settings.c;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.invite.InviteMembersFragment;
import com.narvii.model.ChatThread;
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

/* JADX INFO: loaded from: classes6.dex */
public class PowerChatHelper {
    SendBroadcastHelper broadcastHelper;
    ChatThread chatThread;
    NVContext context;

    public void unfeatureChat() {
        featureChat(0, 0L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void featureChatForHours(int i10) {
        featureChat(5, i10 * InviteMembersFragment.SECOND_HOUR);
    }

    public void featureChat(final int i10, long j6) {
        ApiRequest.Builder builder = new ApiRequest.Builder();
        builder.https().post();
        builder.path(this.chatThread.apiTypeName() + c.FORWARD_SLASH_STRING + this.chatThread.id() + "/admin");
        builder.param("adminOpName", 114);
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put("featuredType", i10);
        if (j6 != 0) {
            objectNodeCreateObjectNode.put("featuredDuration", j6);
        }
        builder.param("adminOpValue", objectNodeCreateObjectNode);
        ApiRequest apiRequestBuild = builder.build();
        ProgressDialog progressDialog = new ProgressDialog(this.context.getContext());
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.poweruser.PowerChatHelper.2
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                int i11 = i10;
                if (i11 == 5) {
                    ObjectNode objectNode = PowerChatHelper.this.chatThread.extensions;
                    if (objectNode != null) {
                        objectNode.put("featuredType", i11);
                    } else {
                        ObjectNode objectNodeCreateObjectNode2 = JacksonUtils.createObjectNode();
                        PowerChatHelper.this.chatThread.extensions = objectNodeCreateObjectNode2;
                        objectNodeCreateObjectNode2.put("featuredType", i10);
                    }
                } else {
                    if (PowerChatHelper.this.chatThread.extensions == null) {
                        PowerChatHelper.this.chatThread.extensions = JacksonUtils.createObjectNode();
                    }
                    PowerChatHelper.this.chatThread.extensions.put("featuredType", 0);
                }
                ((NotificationCenter) PowerChatHelper.this.context.getService("notification")).sendNotification(new Notification("update", PowerChatHelper.this.chatThread));
                CheckDialog checkDialog = new CheckDialog(PowerChatHelper.this.context.getContext());
                checkDialog.setText(PowerChatHelper.this.context.getContext().getString(R.string.success));
                checkDialog.show();
            }
        };
        progressDialog.show();
        ((ApiService) this.context.getService("api")).exec(apiRequestBuild, progressDialog.dismissListener);
    }

    public void sendBroadCast() {
        ChatThread chatThread = this.chatThread;
        if (chatThread == null) {
            return;
        }
        this.broadcastHelper.sendBroadcast(chatThread);
    }

    public void showFeatureDialog() {
        if (this.chatThread == null) {
            return;
        }
        ActionSheetDialog actionSheetDialog = new ActionSheetDialog(this.context.getContext());
        actionSheetDialog.setTitle(this.context.getContext().getString(R.string.feature_chat_time_hint));
        actionSheetDialog.addItem(this.context.getContext().getString(R.string.feature_time_1_hour), 0);
        actionSheetDialog.addItem(this.context.getContext().getString(R.string.feature_time_2_hours), 0);
        actionSheetDialog.addItem(this.context.getContext().getString(R.string.feature_time_3_hours), 0);
        actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.poweruser.PowerChatHelper.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i10) {
                if (i10 == 0) {
                    PowerChatHelper.this.featureChatForHours(1);
                } else if (i10 == 1) {
                    PowerChatHelper.this.featureChatForHours(2);
                } else {
                    if (i10 != 2) {
                        return;
                    }
                    PowerChatHelper.this.featureChatForHours(3);
                }
            }
        });
        actionSheetDialog.show();
    }

    public PowerChatHelper(NVContext nVContext, ChatThread chatThread) {
        this.context = nVContext;
        this.chatThread = chatThread;
        this.broadcastHelper = new SendBroadcastHelper(nVContext);
    }
}
