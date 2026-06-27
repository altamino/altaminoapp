package com.narvii.poweruser;

import android.content.DialogInterface;
import android.content.res.Resources;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
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

/* loaded from: classes3.dex */
public class PowerChatHelper {
    SendBroadcastHelper broadcastHelper;
    ChatThread chatThread;
    NVContext context;

    public PowerChatHelper(NVContext nVContext, ChatThread chatThread) {
        this.context = nVContext;
        this.chatThread = chatThread;
        this.broadcastHelper = new SendBroadcastHelper(nVContext);
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
            public void onClick(DialogInterface dialogInterface, int i) {
                if (i == 0) {
                    PowerChatHelper.this.featureChatForHours(1);
                } else if (i == 1) {
                    PowerChatHelper.this.featureChatForHours(2);
                } else {
                    if (i != 2) {
                        return;
                    }
                    PowerChatHelper.this.featureChatForHours(3);
                }
            }
        });
        actionSheetDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void featureChatForHours(int i) {
        featureChat(5, i * 60 * 60);
    }

    public void unfeatureChat() {
        featureChat(0, 0L);
    }

    public void featureChat(final int i, long j) {
        ApiRequest.Builder builder = new ApiRequest.Builder();
        builder.https().post();
        builder.path(this.chatThread.apiTypeName() + "/" + this.chatThread.id() + "/admin");
        builder.param("adminOpName", 114);
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put("featuredType", i);
        if (j != 0) {
            objectNodeCreateObjectNode.put("featuredDuration", j);
        }
        builder.param("adminOpValue", objectNodeCreateObjectNode);
        ApiRequest apiRequestBuild = builder.build();
        ProgressDialog progressDialog = new ProgressDialog(this.context.getContext());
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.poweruser.PowerChatHelper.2
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) throws Resources.NotFoundException {
                int i2 = i;
                if (i2 == 5) {
                    ObjectNode objectNode = PowerChatHelper.this.chatThread.extensions;
                    if (objectNode != null) {
                        objectNode.put("featuredType", i2);
                    } else {
                        ObjectNode objectNodeCreateObjectNode2 = JacksonUtils.createObjectNode();
                        ChatThread chatThread = PowerChatHelper.this.chatThread;
                        chatThread.extensions = objectNodeCreateObjectNode2;
                        chatThread.extensions.put("featuredType", i);
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
}
