package com.narvii.chat;

import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import android.widget.CheckBox;
import android.widget.TextView;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.chat.rtc.RtcService;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.chat.util.ChatHelper;
import com.narvii.chat.util.ChatRequestHelper;
import com.narvii.chat.video.ChatLogEventHelper;
import com.narvii.chat.video.utils.LiveChannelInviteHistoryHelper;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.model.ChatThread;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import com.narvii.widget.ACMAlertDialog;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class ChatThreadUserOperationHelper {
    AccountService accountService;
    ChatThread chatThread;
    NVContext context;
    private String ownerId;
    RtcService rtcService;
    private String threadId;
    private int threadType;

    public ChatThreadUserOperationHelper(NVContext nVContext, ChatThread chatThread) {
        this(nVContext, chatThread == null ? null : chatThread.threadId, chatThread == null ? 2 : chatThread.type, chatThread != null ? chatThread.uid() : null);
        this.chatThread = chatThread;
    }

    public ChatThreadUserOperationHelper(NVContext nVContext, String str, int i, String str2) {
        this.context = nVContext;
        this.accountService = (AccountService) nVContext.getService("account");
        this.rtcService = (RtcService) nVContext.getService("rtc");
        this.threadId = str;
        this.threadType = i;
        this.ownerId = str2;
    }

    public void sendLeaveThreadRequest(final ChatThread chatThread, final String str, final Callback<Boolean> callback) {
        String str2;
        String strId = chatThread.id();
        boolean zIsHost = new ChatHelper(this.context.getContext()).isHost(chatThread.uid, str);
        final String currentChatType = ChatLogEventHelper.getCurrentChatType(this.context);
        ProgressDialog progressDialog = new ProgressDialog(this.context.getContext());
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.chat.ChatThreadUserOperationHelper.1
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(true);
                }
                if (chatThread != null) {
                    LogEvent.clickBuilder(ChatThreadUserOperationHelper.this.context, ActSemantic.leaveChat).extraParamIfNotNull("chatType", currentChatType).send();
                    ChatThread chatThread2 = (ChatThread) chatThread.m46clone();
                    chatThread2.membershipStatus = 0;
                    List<User> list = chatThread2.membersSummary;
                    if (list != null) {
                        Iterator<User> it = list.iterator();
                        while (it.hasNext()) {
                            if (Utils.isEquals(str, it.next().uid)) {
                                it.remove();
                            }
                        }
                    }
                    ((NotificationCenter) ChatThreadUserOperationHelper.this.context.getService("notification")).sendNotification(new Notification("delete", chatThread2));
                }
            }
        };
        progressDialog.show();
        if (zIsHost) {
            str2 = "/chat/thread/" + strId;
        } else {
            str2 = "/chat/thread/" + strId + "/member/" + str;
        }
        ((ApiService) this.context.getService("api")).exec(ApiRequest.builder().chatServer().delete().path(str2).build(), progressDialog.dismissListener);
    }

    private void showOrganizerLeaveVVChatConfirm(SignallingChannel signallingChannel, final Callback callback) {
        ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this.context.getContext());
        aCMAlertDialog.setMessage(R.string.rtc_organizer_quit_live);
        aCMAlertDialog.addButton(R.string.no, new View.OnClickListener() { // from class: com.narvii.chat.ChatThreadUserOperationHelper.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(false);
                }
            }
        });
        aCMAlertDialog.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.chat.ChatThreadUserOperationHelper.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(true);
                }
            }
        });
        aCMAlertDialog.show();
    }

    public void kickUserFromChat(String str, Callback<Boolean> callback) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        int i = this.threadType;
        if (i == 2 || i == 1) {
            showRemoveFromChatThreadConfirmDialog(str, true, callback);
        } else {
            sendDeleteUserRequest(str, false, false, callback);
        }
    }

    public void showRemoveFromChatThreadConfirmDialog(final String str, final boolean z, final Callback<Boolean> callback) {
        showRemoveFromChatConfirmDialog(false, false, new Callback<Boolean>() { // from class: com.narvii.chat.ChatThreadUserOperationHelper.4
            @Override // com.narvii.util.Callback
            public void call(Boolean bool) {
                ChatThreadUserOperationHelper.this.sendDeleteUserRequest(str, z, bool.booleanValue(), callback);
            }
        });
    }

    public void showRemoveFromChatConfirmDialog(boolean z, boolean z2, final Callback<Boolean> callback) {
        final AlertDialog alertDialog = new AlertDialog(this.context.getContext());
        alertDialog.setContentView(R.layout.dialog_remove_user);
        TextView textView = (TextView) alertDialog.findViewById(R.id.content);
        if (z) {
            textView.setText(R.string.remove_the_host);
        } else if (z2) {
            textView.setText(R.string.remove_the_video_player);
        } else {
            textView.setText(R.string.remove_user_confirm);
        }
        final CheckBox checkBox = (CheckBox) alertDialog.findViewById(R.id.prevent_join);
        View viewFindViewById = alertDialog.findViewById(R.id.prevent_join_container);
        checkBox.setChecked(true);
        if (z) {
            viewFindViewById.setVisibility(8);
        } else {
            viewFindViewById.setVisibility(0);
        }
        alertDialog.findViewById(R.id.prev_join_hint).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.ChatThreadUserOperationHelper.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                checkBox.toggle();
            }
        });
        alertDialog.findViewById(R.id.no).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.ChatThreadUserOperationHelper.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                alertDialog.dismiss();
            }
        });
        alertDialog.findViewById(R.id.yes).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.ChatThreadUserOperationHelper.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                alertDialog.dismiss();
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(Boolean.valueOf(checkBox.isChecked()));
                }
            }
        });
        alertDialog.show();
    }

    public void sendDeleteUserRequest(String str, boolean z, boolean z2, final Callback callback) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(this.threadId)) {
            return;
        }
        final ProgressDialog progressDialog = new ProgressDialog(this.context.getContext());
        new ChatRequestHelper(this.context).sendKickUserRequest(str, this.threadId, z, z2, this.chatThread, new Callback<Object>() { // from class: com.narvii.chat.ChatThreadUserOperationHelper.8
            @Override // com.narvii.util.Callback
            public void call(Object obj) {
                progressDialog.dismiss();
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(obj);
                }
            }
        });
        progressDialog.show();
    }

    public void inviteAsSpeaker(final String str, final Callback<Boolean> callback) {
        if (this.chatThread == null || str == null) {
            return;
        }
        ProgressDialog progressDialog = new ProgressDialog(this.context.getContext());
        progressDialog.successListener = new Callback() { // from class: com.narvii.chat.-$$Lambda$ChatThreadUserOperationHelper$Iz5KS0i66_LuX3Hb1j1kiw4iNl8
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                this.f$0.lambda$inviteAsSpeaker$0$ChatThreadUserOperationHelper(callback, str, (ApiResponse) obj);
            }
        };
        progressDialog.show();
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put("uid", str);
        ((ApiService) this.context.getService("api")).exec(ApiRequest.builder().post().body(objectNodeCreateObjectNode).path("/chat/thread/" + this.threadId + "/vvchat-presenter/invite").communityId(this.chatThread.ndcId).build(), progressDialog.dismissListener);
    }

    public /* synthetic */ void lambda$inviteAsSpeaker$0$ChatThreadUserOperationHelper(Callback callback, String str, ApiResponse apiResponse) {
        if (callback != null) {
            LiveChannelInviteHistoryHelper.Companion.getInstance().addInviteAsSpeakerLog(this.chatThread.id(), str, SystemClock.elapsedRealtime());
            callback.call(true);
            SpeakerInviteNotificationWrapper speakerInviteNotificationWrapper = new SpeakerInviteNotificationWrapper();
            speakerInviteNotificationWrapper.setUserId(str);
            speakerInviteNotificationWrapper.setInvited(true);
            ((NotificationCenter) this.context.getService("notification")).sendNotification(new Notification("new", speakerInviteNotificationWrapper));
        }
    }
}
