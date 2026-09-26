package com.narvii.chat.util;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.narvii.account.AccountService;
import com.narvii.account.push.PushNotificationHelper;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.chat.ChatFragment;
import com.narvii.chat.ChatMessageItemDetailFragment;
import com.narvii.chat.ThreadResponse;
import com.narvii.chat.core.ChatService;
import com.narvii.chat.core.MarkAsReadResponse;
import com.narvii.chat.core.ThreadUpdateObject;
import com.narvii.chat.global.GlobalChatThread;
import com.narvii.chat.invite.JoinThreadFragment;
import com.narvii.chat.video.ChatLogEventHelper;
import com.narvii.comment.post.CommentPostActivity;
import com.narvii.config.ConfigService;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.model.ChatMessage;
import com.narvii.model.ChatThread;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.util.Callback;
import com.narvii.util.DateTimeFormatter;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.NotificationUtils;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiJsonResponseListener;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.safedk.android.utils.Logger;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class ChatRequestHelper {

    @NotNull
    private final ApiService apiService;

    @NotNull
    private final NVContext ctx;

    @NotNull
    private final PushNotificationHelper pushNotificationHelper;

    public static /* synthetic */ void sendDeleteThreadRequest$default(ChatRequestHelper chatRequestHelper, String str, String str2, ChatThread chatThread, Callback callback, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            chatThread = null;
        }
        chatRequestHelper.sendDeleteThreadRequest(str, str2, chatThread, callback);
    }

    @NotNull
    public final ApiService getApiService() {
        return this.apiService;
    }

    @NotNull
    public final NVContext getCtx() {
        return this.ctx;
    }

    public final void sendDeleteThreadRequest(@Nullable String str, @Nullable String str2, @Nullable ChatThread chatThread, @Nullable Callback<Object> callback) {
        sendDeleteThreadRequest(0, str, str2, chatThread, callback);
    }

    public final void sendMarkAsReadRequest(int i10, @Nullable String str, @Nullable ChatMessage chatMessage) {
        sendMarkAsReadRequest$default(this, i10, str, chatMessage, null, 8, null);
    }

    public final void sendMarkAsUnreadRequest(int i10, @Nullable ChatThread chatThread) {
        sendMarkAsUnreadRequest$default(this, i10, chatThread, null, 4, null);
    }

    public ChatRequestHelper(@NotNull NVContext ctx) {
        t.j(ctx, "ctx");
        this.ctx = ctx;
        this.pushNotificationHelper = new PushNotificationHelper(ctx);
        Object service = ctx.getService("api");
        t.i(service, "getService(...)");
        this.apiService = (ApiService) service;
    }

    public static /* synthetic */ void delete$default(ChatRequestHelper chatRequestHelper, int i10, ChatThread chatThread, FragmentManager fragmentManager, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 0;
        }
        chatRequestHelper.delete(i10, chatThread, fragmentManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void markAsread$lambda$3(ProgressDialog dlg, Context context, Object obj) {
        t.j(dlg, "$dlg");
        dlg.dismiss();
        if (obj instanceof String) {
            NVToast.makeText(context, (CharSequence) obj, 1).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void markUnread$lambda$2(ProgressDialog dlg, Context context, Object obj) {
        t.j(dlg, "$dlg");
        dlg.dismiss();
        if (obj instanceof String) {
            NVToast.makeText(context, (CharSequence) obj, 1).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void processPin$lambda$4(Context context, ProgressDialog dlg, Object obj) {
        t.j(dlg, "$dlg");
        if (obj instanceof String) {
            NVToast.makeText(context, (CharSequence) obj, 0).show();
        }
        dlg.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void sendDeleteChatMessageRequest$lambda$1$lambda$0(ChatMessage chatMessage, ChatRequestHelper this$0, ApiResponse apiResponse) {
        t.j(this$0, "this$0");
        NotificationUtils.sendNotificationIncludeGlobal((NotificationCenter) this$0.ctx.getService("notification"), new Notification("delete", chatMessage));
    }

    public static /* synthetic */ void sendDeleteThreadRequest$default(ChatRequestHelper chatRequestHelper, int i10, String str, String str2, ChatThread chatThread, Callback callback, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 0;
        }
        int i12 = i10;
        if ((i11 & 8) != 0) {
            chatThread = null;
        }
        chatRequestHelper.sendDeleteThreadRequest(i12, str, str2, chatThread, callback);
    }

    public static /* synthetic */ void sendKickUserRequest$default(ChatRequestHelper chatRequestHelper, String str, String str2, boolean z6, boolean z10, ChatThread chatThread, Callback callback, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z6 = false;
        }
        boolean z11 = z6;
        if ((i10 & 8) != 0) {
            z10 = true;
        }
        boolean z12 = z10;
        if ((i10 & 16) != 0) {
            chatThread = null;
        }
        chatRequestHelper.sendKickUserRequest(str, str2, z11, z12, chatThread, callback);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void sendMarkAsReadRequest$default(ChatRequestHelper chatRequestHelper, int i10, String str, ChatMessage chatMessage, Callback callback, int i11, Object obj) {
        if ((i11 & 8) != 0) {
            callback = null;
        }
        chatRequestHelper.sendMarkAsReadRequest(i10, str, chatMessage, callback);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void sendMarkAsUnreadRequest$default(ChatRequestHelper chatRequestHelper, int i10, ChatThread chatThread, Callback callback, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            callback = null;
        }
        chatRequestHelper.sendMarkAsUnreadRequest(i10, chatThread, callback);
    }

    public final void delete(int i10, @Nullable ChatThread chatThread, @Nullable FragmentManager fragmentManager) {
        if (chatThread == null || fragmentManager == null) {
            return;
        }
        Fragment fragmentM0 = fragmentManager.m0("joinThread");
        if (fragmentM0 != null) {
            fragmentManager.q().t(fragmentM0).j();
        }
        JoinThreadFragment joinThreadFragment = new JoinThreadFragment();
        Bundle bundle = new Bundle();
        bundle.putString("id", chatThread.id());
        bundle.putString("thread", JacksonUtils.writeAsString(chatThread.getBriefContent()));
        bundle.putInt(CommentPostActivity.COMMENT_POST_KEY_NDC_ID, i10);
        joinThreadFragment.setArguments(bundle);
        fragmentManager.q().e(joinThreadFragment, "joinThread").j();
        fragmentManager.i0();
        joinThreadFragment.leaveConversation();
    }

    public final void handleDeleteUserResponse(@Nullable String str, @Nullable String str2, @Nullable ChatThread chatThread) {
        boolean z6;
        boolean zIsEqualsNotNull = Utils.isEqualsNotNull(((AccountService) this.ctx.getService("account")).getUserId(), str);
        if (zIsEqualsNotNull) {
            ConfigService configService = (ConfigService) this.ctx.getService("config");
            Object service = this.ctx.getService("chat");
            t.i(service, "getService(...)");
            ((ChatService) service).removeThread(configService.getCommunityId(), str2);
        }
        if (chatThread != null) {
            NVObject nVObjectM1622clone = chatThread.m1622clone();
            t.h(nVObjectM1622clone, "null cannot be cast to non-null type com.narvii.model.ChatThread");
            ChatThread chatThread2 = (ChatThread) nVObjectM1622clone;
            List<User> list = chatThread2.membersSummary;
            if (list != null) {
                Iterator<User> it = list.iterator();
                loop0: while (true) {
                    z6 = false;
                    while (true) {
                        if (!it.hasNext()) {
                            break loop0;
                        }
                        User next = it.next();
                        if (Utils.isEquals(next.uid, str)) {
                            it.remove();
                            if (next.membershipStatus == 1) {
                                z6 = true;
                            }
                        }
                    }
                }
                if (z6) {
                    chatThread2.membersCount--;
                }
            }
            Object service2 = this.ctx.getService("notification");
            t.i(service2, "getService(...)");
            NotificationCenter notificationCenter = (NotificationCenter) service2;
            if (!zIsEqualsNotNull) {
                notificationCenter.sendNotification(new Notification("update", chatThread2));
                return;
            }
            chatThread2.membershipStatus = 0;
            NotificationUtils.sendNotificationIncludeGlobal((NotificationCenter) this.ctx.getService("notification"), new Notification("delete", chatThread2));
        }
    }

    public final void markAsread(int i10, @Nullable final Context context, @Nullable ChatThread chatThread) {
        if (chatThread == null || context == null) {
            return;
        }
        final ProgressDialog progressDialog = new ProgressDialog(context, ThreadResponse.class);
        progressDialog.show();
        sendMarkAsReadRequest(i10, chatThread.threadId, chatThread.lastMessageSummary, new Callback() { // from class: com.narvii.chat.util.l
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                ChatRequestHelper.markAsread$lambda$3(progressDialog, context, obj);
            }
        });
    }

    public final void markUnread(int i10, @Nullable final Context context, @Nullable ChatThread chatThread) {
        if (chatThread == null || context == null) {
            return;
        }
        final ProgressDialog progressDialog = new ProgressDialog(context, ThreadResponse.class);
        progressDialog.show();
        sendMarkAsUnreadRequest(i10, chatThread, new Callback() { // from class: com.narvii.chat.util.k
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                ChatRequestHelper.markUnread$lambda$2(progressDialog, context, obj);
            }
        });
    }

    public final void processPin(int i10, @Nullable final Context context, @Nullable ChatThread chatThread) {
        if (context == null || chatThread == null) {
            return;
        }
        final ProgressDialog progressDialog = new ProgressDialog(context);
        progressDialog.show();
        sendTogglePinRequest(i10, chatThread, new Callback() { // from class: com.narvii.chat.util.j
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                ChatRequestHelper.processPin$lambda$4(context, progressDialog, obj);
            }
        });
    }

    public final void sendDeleteChatMessageRequest(@Nullable String str, @Nullable final ChatMessage chatMessage) {
        if (str == null || str.length() == 0 || chatMessage == null) {
            return;
        }
        ChatService chatService = (ChatService) this.ctx.getService("chat");
        String str2 = chatMessage.messageId;
        if (str2 == null || str2.length() == 0) {
            chatService.recallMessage(chatMessage.getClientRefIdTmp());
            return;
        }
        ProgressDialog progressDialog = new ProgressDialog(this.ctx.getContext());
        progressDialog.successListener = new Callback() { // from class: com.narvii.chat.util.i
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                ChatRequestHelper.sendDeleteChatMessageRequest$lambda$1$lambda$0(chatMessage, this, (ApiResponse) obj);
            }
        };
        progressDialog.show();
        this.apiService.exec(ApiRequest.builder().chatServer().delete().path("chat/thread/" + str + "/message/" + chatMessage.id()).build(), progressDialog.dismissListener);
    }

    public final void sendDeleteThreadRequest(int i10, @Nullable final String str, @Nullable final String str2, @Nullable final ChatThread chatThread, @Nullable final Callback<Object> callback) {
        StringBuilder sb;
        if (str == null || str.length() == 0 || str2 == null || str2.length() == 0) {
            return;
        }
        Context context = this.ctx.getContext();
        t.i(context, "getContext(...)");
        ChatHelper chatHelper = new ChatHelper(context);
        String str3 = chatThread != null ? chatThread.uid : null;
        if (str3 == null) {
            str3 = "";
        }
        if (chatHelper.isHost(str3, str)) {
            sb = new StringBuilder();
            sb.append("/chat/thread/");
            sb.append(str2);
        } else {
            sb = new StringBuilder();
            sb.append("/chat/thread/");
            sb.append(str2);
            sb.append("/member/");
            sb.append(str);
        }
        String string = sb.toString();
        final String currentChatType = ChatLogEventHelper.getCurrentChatType(this.ctx);
        ApiRequest.Builder builderPath = ApiRequest.builder().chatServer().delete().path(string);
        if (i10 != 0) {
            builderPath.communityId(i10);
        }
        this.apiService.exec(builderPath.build(), new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.chat.util.ChatRequestHelper.sendDeleteThreadRequest.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(@Nullable ApiRequest apiRequest, int i11, @Nullable List<NameValuePair> list, @Nullable String str4, @Nullable ApiResponse apiResponse, @Nullable Throwable th) {
                super.onFail(apiRequest, i11, list, str4, apiResponse, th);
                Callback<Object> callback2 = callback;
                if (callback2 != null) {
                    callback2.call(str4);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(@Nullable ApiRequest apiRequest, @Nullable ApiResponse apiResponse) throws Exception {
                super.onFinish(apiRequest, apiResponse);
                LogEvent.clickBuilder(ChatRequestHelper.this.getCtx(), ActSemantic.leaveChat).extraParamIfNotNull("chatType", currentChatType).send();
                ChatRequestHelper.this.handleDeleteUserResponse(str, str2, chatThread);
                Callback<Object> callback2 = callback;
                if (callback2 != null) {
                    callback2.call(Boolean.TRUE);
                }
            }
        });
    }

    public final void sendInviteMemberToExistedChatRequest(@Nullable String str, @Nullable final Callback<Object> callback) {
        if (str == null || str.length() == 0) {
            return;
        }
        final ProgressDialog progressDialog = new ProgressDialog(this.ctx.getContext());
        progressDialog.show();
        ApiRequest.Builder builderParam = ApiRequest.builder().chatServer().path("/chat/thread").post().param("type", 0).param("q", str);
        t.i(builderParam, "param(...)");
        ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
        arrayNodeCreateArrayNode.add(str);
        builderParam.param("inviteeUids", arrayNodeCreateArrayNode);
        this.apiService.exec(builderParam.build(), new ApiResponseListener<ThreadResponse>(ThreadResponse.class) { // from class: com.narvii.chat.util.ChatRequestHelper.sendInviteMemberToExistedChatRequest.1
            public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(@Nullable ApiRequest apiRequest, @Nullable ThreadResponse threadResponse) throws Exception {
                super.onFinish(apiRequest, threadResponse);
                progressDialog.dismiss();
                ChatThread chatThread = threadResponse != null ? threadResponse.thread : null;
                if (chatThread == null) {
                    return;
                }
                ((GlobalChatService) this.getCtx().getService("globalChat")).addRecentChat(GlobalChatThread.newGlobalChatThread(chatThread, ((ConfigService) this.getCtx().getService("config")).getCommunityId(), this.getCtx().getContext()));
                Intent intent = FragmentWrapperActivity.intent(ChatFragment.class);
                intent.putExtra("id", chatThread.threadId);
                intent.putExtra("thread", JacksonUtils.writeAsString(chatThread));
                safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(this.getCtx().getContext(), intent);
                Callback<Object> callback2 = callback;
                if (callback2 != null) {
                    callback2.call(Boolean.TRUE);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(@Nullable ApiRequest apiRequest, int i10, @Nullable List<NameValuePair> list, @Nullable String str2, @Nullable ApiResponse apiResponse, @Nullable Throwable th) {
                super.onFail(apiRequest, i10, list, str2, apiResponse, th);
                progressDialog.dismiss();
                NVToast.makeText(this.getCtx().getContext(), str2, 1).show();
                Callback<Object> callback2 = callback;
                if (callback2 != null) {
                    callback2.call(str2);
                }
            }
        });
    }

    public final void sendJoinChatThreadRequest(@Nullable final String str, @Nullable final String str2, @Nullable final ChatThread chatThread, @Nullable final Callback<Boolean> callback) {
        if (str == null || str.length() == 0 || str2 == null || str2.length() == 0) {
            if (callback != null) {
                callback.call(Boolean.FALSE);
                return;
            }
            return;
        }
        final ProgressDialog progressDialog = new ProgressDialog(this.ctx.getContext());
        progressDialog.show();
        this.apiService.exec(ApiRequest.builder().chatServer().post().path("/chat/thread/" + str + "/member/" + str2).build(), new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.chat.util.ChatRequestHelper.sendJoinChatThreadRequest.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(@Nullable ApiRequest apiRequest, int i10, @Nullable List<NameValuePair> list, @Nullable String str3, @Nullable ApiResponse apiResponse, @Nullable Throwable th) {
                super.onFail(apiRequest, i10, list, str3, apiResponse, th);
                NVToast.makeText(this.getCtx().getContext(), str3, 1).show();
                Callback<Boolean> callback2 = callback;
                if (callback2 != null) {
                    callback2.call(Boolean.FALSE);
                }
                progressDialog.dismiss();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(@Nullable ApiRequest apiRequest, @Nullable ApiResponse apiResponse) throws Exception {
                super.onFinish(apiRequest, apiResponse);
                progressDialog.dismiss();
                ChatThread chatThread2 = chatThread;
                if (chatThread2 != null) {
                    ChatRequestHelper chatRequestHelper = this;
                    String str3 = str;
                    String str4 = str2;
                    Callback<Boolean> callback2 = callback;
                    ((ChatService) chatRequestHelper.getCtx().getService("chat")).removeGuestThreadId(str3);
                    NVObject nVObjectM1622clone = chatThread2.m1622clone();
                    t.h(nVObjectM1622clone, "null cannot be cast to non-null type com.narvii.model.ChatThread");
                    ChatThread chatThread3 = (ChatThread) nVObjectM1622clone;
                    chatThread3.membershipStatus = 1;
                    if (Utils.isEqualsNotNull(chatThread3.uid, str4)) {
                        chatThread3.condition = 1;
                    }
                    ((NotificationCenter) chatRequestHelper.getCtx().getService("notification")).sendNotification(new Notification("update", chatThread3));
                    if (callback2 != null) {
                        callback2.call(Boolean.TRUE);
                    }
                    LogEvent.clickBuilder(chatRequestHelper.getCtx(), ActSemantic.joinChat).send();
                    chatRequestHelper.pushNotificationHelper.showRemindDialogIfNeeded(PushNotificationHelper.SCENARIO_CHAT);
                }
            }
        });
    }

    public final void sendKickUserRequest(@Nullable final String str, @Nullable final String str2, boolean z6, boolean z10, @Nullable final ChatThread chatThread, @Nullable final Callback<Object> callback) {
        if (str == null || str.length() == 0 || str2 == null || str2.length() == 0) {
            return;
        }
        ApiRequest.Builder builderPath = ApiRequest.builder().chatServer().delete().path("/chat/thread/" + str2 + "/member/" + str);
        if (z6) {
            builderPath.param("allowRejoin", Integer.valueOf(!z10 ? 1 : 0));
        }
        this.apiService.exec(builderPath.build(), new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.chat.util.ChatRequestHelper.sendKickUserRequest.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(@Nullable ApiRequest apiRequest, int i10, @Nullable List<NameValuePair> list, @Nullable String str3, @Nullable ApiResponse apiResponse, @Nullable Throwable th) {
                super.onFail(apiRequest, i10, list, str3, apiResponse, th);
                Callback<Object> callback2 = callback;
                if (callback2 != null) {
                    callback2.call(str3);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(@Nullable ApiRequest apiRequest, @Nullable ApiResponse apiResponse) throws Exception {
                super.onFinish(apiRequest, apiResponse);
                ChatRequestHelper.this.handleDeleteUserResponse(str, str2, chatThread);
                Callback<Object> callback2 = callback;
                if (callback2 != null) {
                    callback2.call(Boolean.TRUE);
                }
            }
        });
    }

    public final void sendMarkAsReadRequest(@Nullable String str, @Nullable ChatMessage chatMessage, @Nullable Callback<Object> callback) {
        sendMarkAsReadRequest(((ConfigService) this.ctx.getService("config")).getCommunityId(), str, chatMessage, callback);
    }

    public final void sendMarkAsUnReadRequest(@Nullable ChatThread chatThread, @Nullable Callback<Object> callback) {
        sendMarkAsUnreadRequest(((ConfigService) this.ctx.getService("config")).getCommunityId(), chatThread, callback);
    }

    public final void sendMarkAsUnreadRequest(final int i10, @Nullable final ChatThread chatThread, @Nullable final Callback<Object> callback) {
        if (i10 >= 0) {
            if ((chatThread != null ? chatThread.threadId : null) == null) {
                return;
            }
            this.apiService.exec(ApiRequest.builder().path("/chat/thread/" + chatThread.threadId + "/mark-as-unread").communityId(i10).post().build(), new ApiResponseListener<ThreadResponse>(ThreadResponse.class) { // from class: com.narvii.chat.util.ChatRequestHelper.sendMarkAsUnreadRequest.1
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(@Nullable ApiRequest apiRequest, @Nullable ThreadResponse threadResponse) throws Exception {
                    super.onFinish(apiRequest, threadResponse);
                    if (threadResponse != null) {
                        ChatRequestHelper chatRequestHelper = this;
                        int i11 = i10;
                        ChatThread chatThread2 = chatThread;
                        ChatService chatService = (ChatService) chatRequestHelper.getCtx().getService("chat");
                        String str = chatThread2.threadId;
                        ChatThread chatThread3 = threadResponse.thread;
                        chatService.updateReadTime(i11, str, chatThread3.lastReadTime, true, chatThread3);
                        NotificationUtils.sendNotificationIncludeGlobal((NotificationCenter) chatRequestHelper.getCtx().getService("notification"), new Notification("update", threadResponse.thread));
                    }
                    Callback<Object> callback2 = callback;
                    if (callback2 != null) {
                        callback2.call(Boolean.TRUE);
                    }
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(@Nullable ApiRequest apiRequest, int i11, @Nullable List<NameValuePair> list, @Nullable String str, @Nullable ApiResponse apiResponse, @Nullable Throwable th) {
                    super.onFail(apiRequest, i11, list, str, apiResponse, th);
                    Callback<Object> callback2 = callback;
                    if (callback2 != null) {
                        callback2.call(str);
                    }
                }
            });
        }
    }

    public final void sendThreadDetailRequest(@Nullable String str, @Nullable final Callback<ChatThread> callback) {
        if (str == null || str.length() == 0) {
            return;
        }
        this.apiService.exec(new ApiRequest.Builder().chatServer().path("/chat/thread/" + str).build(), new ApiResponseListener<ThreadResponse>(ThreadResponse.class) { // from class: com.narvii.chat.util.ChatRequestHelper.sendThreadDetailRequest.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(@Nullable ApiRequest apiRequest, @Nullable ThreadResponse threadResponse) throws Exception {
                super.onFinish(apiRequest, threadResponse);
                Callback<ChatThread> callback2 = callback;
                if (callback2 != null) {
                    callback2.call(threadResponse != null ? threadResponse.thread : null);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(@Nullable ApiRequest apiRequest, int i10, @Nullable List<NameValuePair> list, @Nullable String str2, @Nullable ApiResponse apiResponse, @Nullable Throwable th) {
                super.onFail(apiRequest, i10, list, str2, apiResponse, th);
                Callback<ChatThread> callback2 = callback;
                if (callback2 != null) {
                    callback2.call(null);
                }
            }
        });
    }

    public final void sendTogglePinRequest(final int i10, @Nullable ChatThread chatThread, @Nullable final Callback<Object> callback) {
        if (chatThread == null) {
            return;
        }
        ApiRequest.Builder builderPath = ApiRequest.builder().chatServer().post().path("/chat/thread/" + chatThread.threadId + com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING + (chatThread.isPinned ? "unpin" : "pin"));
        if (i10 != 0) {
            builderPath.communityId(i10);
        }
        this.apiService.exec(builderPath.build(), new ApiResponseListener<ThreadResponse>(ThreadResponse.class) { // from class: com.narvii.chat.util.ChatRequestHelper.sendTogglePinRequest.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(@Nullable ApiRequest apiRequest, @Nullable ThreadResponse threadResponse) throws Exception {
                super.onFinish(apiRequest, threadResponse);
                if (threadResponse != null) {
                    int i11 = i10;
                    ChatRequestHelper chatRequestHelper = this;
                    Callback<Object> callback2 = callback;
                    ChatThread chatThread2 = threadResponse.thread;
                    Notification notification = new Notification("update", chatThread2);
                    if (chatThread2.ndcId == 0) {
                        chatThread2.ndcId = i11;
                    }
                    NotificationUtils.sendNotificationIncludeGlobal((NotificationCenter) chatRequestHelper.getCtx().getService("notification"), notification);
                    if (callback2 != null) {
                        callback2.call(Boolean.TRUE);
                    }
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(@Nullable ApiRequest apiRequest, int i11, @Nullable List<NameValuePair> list, @Nullable String str, @Nullable ApiResponse apiResponse, @Nullable Throwable th) {
                super.onFail(apiRequest, i11, list, str, apiResponse, th);
                Callback<Object> callback2 = callback;
                if (callback2 != null) {
                    callback2.call(str);
                }
            }
        });
    }

    public final void sendVVChatPermissionRequest(@Nullable String str, int i10) {
        this.apiService.exec(new ApiRequest.Builder().post().path("/chat/thread/" + str + "/vvchat-permission").param("vvChatJoinType", Integer.valueOf(i10)).build(), new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.chat.util.ChatRequestHelper.sendVVChatPermissionRequest.1
        });
    }

    public final void sendMarkAsReadRequest(final int i10, @Nullable String str, @Nullable final ChatMessage chatMessage, @Nullable final Callback<Object> callback) {
        if (chatMessage == null) {
            return;
        }
        if (str == null || str.length() == 0) {
            str = chatMessage.threadId;
        }
        final String str2 = str;
        if (str2 == null || str2.length() == 0) {
            return;
        }
        final ChatService chatService = (ChatService) this.ctx.getService("chat");
        ApiRequest.Builder builderParam = ApiRequest.builder().chatServer().path("/chat/thread/" + str2 + "/mark-as-read").post().param(ChatMessageItemDetailFragment.KEY_MESSAGE_ID, chatMessage.id()).param("createdTime", DateTimeFormatter.formatISO8601(chatMessage.createdTime));
        if (i10 != 0) {
            builderParam.communityId(i10);
        }
        this.apiService.exec(builderParam.build(), new ApiJsonResponseListener<MarkAsReadResponse>(MarkAsReadResponse.class) { // from class: com.narvii.chat.util.ChatRequestHelper.sendMarkAsReadRequest.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(@Nullable ApiRequest apiRequest, @Nullable MarkAsReadResponse markAsReadResponse) throws Exception {
                super.onFinish(apiRequest, markAsReadResponse);
                if (markAsReadResponse == null) {
                    return;
                }
                Date lastReadTime = ChatHelperKt.isNewer(chatMessage.createdTime, markAsReadResponse.getLastReadTime()) ? chatMessage.createdTime : markAsReadResponse.getLastReadTime();
                ChatService chatService2 = chatService;
                t.i(chatService2, "$chatService");
                ChatService.updateReadTime$default(chatService2, i10, str2, lastReadTime, false, null, 24, null);
                NotificationCenter notificationCenter = (NotificationCenter) this.getCtx().getService("notification");
                ThreadUpdateObject threadUpdateObject = new ThreadUpdateObject();
                ChatThread chatThread = new ChatThread();
                chatThread.threadId = str2;
                chatThread.lastReadTime = lastReadTime;
                threadUpdateObject.chatThread = chatThread;
                threadUpdateObject.action = 0;
                if (chatThread.ndcId == 0) {
                    chatThread.ndcId = i10;
                }
                NotificationUtils.sendNotificationIncludeGlobal(notificationCenter, new Notification("update", threadUpdateObject));
                Callback<Object> callback2 = callback;
                if (callback2 != null) {
                    callback2.call(Boolean.TRUE);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(@Nullable ApiRequest apiRequest, int i11, @Nullable List<NameValuePair> list, @Nullable String str3, @Nullable ApiResponse apiResponse, @Nullable Throwable th) {
                super.onFail(apiRequest, i11, list, str3, apiResponse, th);
                Callback<Object> callback2 = callback;
                if (callback2 != null) {
                    callback2.call(str3);
                }
            }
        });
    }
}
