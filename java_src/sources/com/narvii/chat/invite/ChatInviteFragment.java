package com.narvii.chat.invite;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import androidx.fragment.app.Fragment;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVFragment;
import com.narvii.chat.ChatFragment;
import com.narvii.chat.ThreadResponse;
import com.narvii.chat.global.GlobalChatThread;
import com.narvii.chat.thread.ThreadListResponse;
import com.narvii.chat.util.GlobalChatService;
import com.narvii.config.ConfigService;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.model.ChatThread;
import com.narvii.model.api.ApiResponse;
import com.narvii.notification.Notification;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.util.statistics.constants.EventConstants;
import com.safedk.android.utils.Logger;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes6.dex */
public class ChatInviteFragment extends NVFragment {
    private ConfigService configService;
    private GlobalChatService globalChatService;
    private String ndcSubmitToken = null;
    public Callback<ChatThread> onStartListener;
    public String source;

    public void askInvite(String[] strArr) {
        askInvite(strArr, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public boolean isValidPage() {
        return false;
    }

    public void startChat(String str) {
        startChat(str, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendInvite(final String[] strArr, String str, final boolean z6) {
        ProgressDialog progressDialog = new ProgressDialog(getContext(), ThreadResponse.class);
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.chat.invite.ChatInviteFragment.4
            public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                ChatInviteFragment.this.ndcSubmitToken = null;
                ChatThread chatThread = ((ThreadResponse) apiResponse).thread;
                ChatInviteFragment.this.sendNotification(new Notification("new", chatThread));
                ChatInviteFragment chatInviteFragment = ChatInviteFragment.this;
                String string = chatInviteFragment.source;
                if (string == null) {
                    string = chatInviteFragment.getArguments() == null ? null : ChatInviteFragment.this.getArguments().getString(ExternalPostPreviewFragment.SOURCE);
                }
                Intent intent = FragmentWrapperActivity.intent(ChatFragment.class);
                intent.putExtra("id", chatThread.threadId);
                intent.putExtra("justCreated", true);
                intent.putExtra("thread", JacksonUtils.writeAsString(chatThread));
                intent.putExtra(ExternalPostPreviewFragment.SOURCE, string);
                String stringParam = ChatInviteFragment.this.getStringParam("stickerCollectionId");
                if (stringParam != null) {
                    intent.putExtra("stickerCollectionId", stringParam);
                }
                intent.putExtra("showKeyboard", z6);
                if (ChatInviteFragment.this.isAdded() && ChatInviteFragment.this.getActivity() != null) {
                    safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(ChatInviteFragment.this, intent);
                }
                Callback<ChatThread> callback = ChatInviteFragment.this.onStartListener;
                if (callback != null) {
                    callback.call(chatThread);
                }
                ChatInviteFragment.this.globalChatService.addRecentChat(GlobalChatThread.newGlobalChatThread(chatThread, ChatInviteFragment.this.configService.getCommunityId(), ChatInviteFragment.this.getContext()));
                String str2 = strArr.length > 1 ? "Group Chat" : "1-1";
                StatisticsService statisticsService = (StatisticsService) ChatInviteFragment.this.getService("statistics");
                statisticsService.event("User Creates a Chat").param(EventConstants.CommentPost.TYPE, str2).source(string).userPropInc("User Creates a Chat Total");
                statisticsService.event(null).userPropInc("User Creates a " + str2 + " Chat Total");
            }
        };
        progressDialog.show();
        if (this.ndcSubmitToken == null) {
            this.ndcSubmitToken = UUID.randomUUID().toString();
        }
        ApiRequest.Builder builder = ApiRequest.builder();
        builder.post().chatServer();
        builder.addHeaderField("ndc-submit-token", this.ndcSubmitToken);
        builder.path("/chat/thread");
        builder.param("type", Integer.valueOf(strArr.length <= 1 ? 0 : 1));
        ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
        for (String str2 : strArr) {
            arrayNodeCreateArrayNode.add(str2);
        }
        builder.param("inviteeUids", arrayNodeCreateArrayNode);
        if (!TextUtils.isEmpty(str)) {
            builder.param("initialMessageContent", str);
        }
        ((ApiService) getService("api")).exec(builder.build(), progressDialog.dismissListener);
    }

    public void askInvite(final String[] strArr, final boolean z6) {
        final AlertDialog alertDialog = new AlertDialog(this, "SendChatInvite");
        alertDialog.setTitle(R.string.chat_invite_title);
        alertDialog.setEditText().setHint(R.string.chat_invite_hint);
        alertDialog.addButton(android.R.string.cancel, 0, (View.OnClickListener) null);
        alertDialog.addButton(R.string.chat_send, 4, new View.OnClickListener() { // from class: com.narvii.chat.invite.ChatInviteFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                LogEvent.clickBuilder(alertDialog, ActSemantic.invite).area("SendButton").send();
                ChatInviteFragment.this.sendInvite(strArr, alertDialog.getEditText().trim(), z6);
            }
        });
        alertDialog.show();
    }

    public void startChat(final String str, final boolean z6) {
        final ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.show();
        final ApiRequest apiRequestBuild = ApiRequest.builder().chatServer().path("/chat/thread?type=exist-single&cv=1.2&q=" + str).userInteraction().build();
        ((ApiService) getService("api")).exec(apiRequestBuild, new ApiResponseListener<ThreadListResponse>(ThreadListResponse.class) { // from class: com.narvii.chat.invite.ChatInviteFragment.1
            public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str2, ApiResponse apiResponse, Throwable th) {
                progressDialog.dismiss();
                if (i10 == 1600) {
                    ChatInviteFragment.this.askInvite(new String[]{str}, z6);
                } else {
                    NVToast.makeText(ChatInviteFragment.this.getContext(), str2, 0).show();
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ThreadListResponse threadListResponse) throws Exception {
                progressDialog.dismiss();
                if (threadListResponse.threadList.size() > 0) {
                    ChatThread chatThread = threadListResponse.threadList.get(0);
                    ChatInviteFragment.this.globalChatService.addRecentChat(GlobalChatThread.newGlobalChatThread(chatThread, ChatInviteFragment.this.configService.getCommunityId(), ChatInviteFragment.this.getContext()));
                    Intent intent = FragmentWrapperActivity.intent(ChatFragment.class);
                    intent.putExtra("id", chatThread.threadId);
                    intent.putExtra("thread", JacksonUtils.writeAsString(chatThread));
                    intent.putExtra("showKeyboard", z6);
                    ChatInviteFragment chatInviteFragment = ChatInviteFragment.this;
                    String str2 = chatInviteFragment.source;
                    if (str2 != null) {
                        intent.putExtra(ExternalPostPreviewFragment.SOURCE, str2);
                    } else if (chatInviteFragment.getArguments() != null) {
                        intent.putExtra(ExternalPostPreviewFragment.SOURCE, ChatInviteFragment.this.getArguments().getString(ExternalPostPreviewFragment.SOURCE));
                    }
                    String stringParam = ChatInviteFragment.this.getStringParam("stickerCollectionId");
                    if (stringParam != null) {
                        intent.putExtra("stickerCollectionId", stringParam);
                    }
                    safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(ChatInviteFragment.this, intent);
                    Callback<ChatThread> callback = ChatInviteFragment.this.onStartListener;
                    if (callback != null) {
                        callback.call(chatThread);
                    }
                }
            }
        });
        progressDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.narvii.chat.invite.ChatInviteFragment.2
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                ((ApiService) ChatInviteFragment.this.getService("api")).abort(apiRequestBuild);
            }
        });
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        String string;
        super.onCreate(bundle);
        this.configService = (ConfigService) getService("config");
        this.globalChatService = (GlobalChatService) getService("globalChat");
        if (bundle == null) {
            string = null;
        } else {
            string = bundle.getString("ndcSubmitToken");
        }
        this.ndcSubmitToken = string;
    }
}
