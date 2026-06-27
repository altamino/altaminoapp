package com.narvii.chat.util;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
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
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ChatRequestHelper.kt */
/* loaded from: classes2.dex */
public final class ChatRequestHelper {
    private final ApiService apiService;
    private final NVContext ctx;
    private final PushNotificationHelper pushNotificationHelper;

    public final void sendMarkAsReadRequest(int i, String str, ChatMessage chatMessage) {
        sendMarkAsReadRequest$default(this, i, str, chatMessage, null, 8, null);
    }

    public final void sendMarkAsUnreadRequest(int i, ChatThread chatThread) {
        sendMarkAsUnreadRequest$default(this, i, chatThread, null, 4, null);
    }

    public ChatRequestHelper(NVContext ctx) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        this.ctx = ctx;
        this.pushNotificationHelper = new PushNotificationHelper(this.ctx);
        Object service = this.ctx.getService("api");
        Intrinsics.checkExpressionValueIsNotNull(service, "ctx.getService(\"api\")");
        this.apiService = (ApiService) service;
    }

    public final NVContext getCtx() {
        return this.ctx;
    }

    public final ApiService getApiService() {
        return this.apiService;
    }

    public final void sendThreadDetailRequest(String str, final Callback<ChatThread> callback) {
        if (str == null || str.length() == 0) {
            return;
        }
        this.apiService.exec(new ApiRequest.Builder().chatServer().path("/chat/thread/" + str).build(), new ApiResponseListener<ThreadResponse>(ThreadResponse.class) { // from class: com.narvii.chat.util.ChatRequestHelper.sendThreadDetailRequest.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ThreadResponse threadResponse) throws Exception {
                super.onFinish(apiRequest, (ApiRequest) threadResponse);
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(threadResponse != null ? threadResponse.thread : null);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str2, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str2, apiResponse, th);
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(null);
                }
            }
        });
    }

    public final void sendJoinChatThreadRequest(final String str, final String str2, final ChatThread chatThread, final Callback<Boolean> callback) {
        boolean z = true;
        if (!(str == null || str.length() == 0)) {
            if (str2 != null && str2.length() != 0) {
                z = false;
            }
            if (!z) {
                final ProgressDialog progressDialog = new ProgressDialog(this.ctx.getContext());
                progressDialog.show();
                this.apiService.exec(ApiRequest.builder().chatServer().post().path("/chat/thread/" + str + "/member/" + str2).build(), new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.chat.util.ChatRequestHelper.sendJoinChatThreadRequest.1
                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                        super.onFinish(apiRequest, apiResponse);
                        progressDialog.dismiss();
                        if (chatThread != null) {
                            ((ChatService) ChatRequestHelper.this.getCtx().getService("chat")).removeGuestThreadId(str);
                            NVObject nVObjectM46clone = chatThread.m46clone();
                            if (nVObjectM46clone == null) {
                                throw new TypeCastException("null cannot be cast to non-null type com.narvii.model.ChatThread");
                            }
                            ChatThread chatThread2 = (ChatThread) nVObjectM46clone;
                            chatThread2.membershipStatus = 1;
                            if (Utils.isEqualsNotNull(chatThread2.uid, str2)) {
                                chatThread2.condition = 1;
                            }
                            ((NotificationCenter) ChatRequestHelper.this.getCtx().getService("notification")).sendNotification(new Notification("update", chatThread2));
                            Callback callback2 = callback;
                            if (callback2 != null) {
                                callback2.call(true);
                            }
                            LogEvent.clickBuilder(ChatRequestHelper.this.getCtx(), ActSemantic.joinChat).send();
                            ChatRequestHelper.this.pushNotificationHelper.showRemindDialogIfNeeded(PushNotificationHelper.SCENARIO_CHAT);
                        }
                    }

                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str3, ApiResponse apiResponse, Throwable th) {
                        super.onFail(apiRequest, i, list, str3, apiResponse, th);
                        NVToast.makeText(ChatRequestHelper.this.getCtx().getContext(), str3, 1).show();
                        Callback callback2 = callback;
                        if (callback2 != null) {
                            callback2.call(false);
                        }
                        progressDialog.dismiss();
                    }
                });
                return;
            }
        }
        if (callback != null) {
            callback.call(false);
        }
    }

    public final void sendDeleteChatMessageRequest(final String str, final ChatMessage chatMessage) {
        if ((str == null || str.length() == 0) || chatMessage == null) {
            return;
        }
        ChatService chatService = (ChatService) this.ctx.getService("chat");
        String str2 = chatMessage.messageId;
        if (str2 == null || str2.length() == 0) {
            chatService.recallMessage(chatMessage.clientRefId);
            return;
        }
        ProgressDialog progressDialog = new ProgressDialog(this.ctx.getContext());
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.chat.util.ChatRequestHelper$sendDeleteChatMessageRequest$$inlined$let$lambda$1
            @Override // com.narvii.util.Callback
            public final void call(ApiResponse apiResponse) {
                NotificationUtils.sendNotificationIncludeGlobal((NotificationCenter) this.this$0.getCtx().getService("notification"), new Notification("delete", chatMessage));
            }
        };
        progressDialog.show();
        this.apiService.exec(ApiRequest.builder().chatServer().delete().path("chat/thread/" + str + "/message/" + chatMessage.id()).build(), progressDialog.dismissListener);
    }

    public final void sendMarkAsReadRequest(String str, ChatMessage chatMessage, Callback<Object> callback) {
        ConfigService configService = (ConfigService) this.ctx.getService("config");
        Intrinsics.checkExpressionValueIsNotNull(configService, "configService");
        sendMarkAsReadRequest(configService.getCommunityId(), str, chatMessage, callback);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void sendMarkAsReadRequest$default(ChatRequestHelper chatRequestHelper, int i, String str, ChatMessage chatMessage, Callback callback, int i2, Object obj) {
        if ((i2 & 8) != 0) {
            callback = null;
        }
        chatRequestHelper.sendMarkAsReadRequest(i, str, chatMessage, callback);
    }

    public final void sendMarkAsReadRequest(final int i, String str, final ChatMessage chatMessage, final Callback<Object> callback) {
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
        if (i != 0) {
            builderParam.communityId(i);
        }
        this.apiService.exec(builderParam.build(), new ApiJsonResponseListener<MarkAsReadResponse>(MarkAsReadResponse.class) { // from class: com.narvii.chat.util.ChatRequestHelper.sendMarkAsReadRequest.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, MarkAsReadResponse markAsReadResponse) throws Exception {
                super.onFinish(apiRequest, (ApiRequest) markAsReadResponse);
                if (markAsReadResponse == null) {
                    return;
                }
                Date lastReadTime = ChatHelperKt.isNewer(chatMessage.createdTime, markAsReadResponse.getLastReadTime()) ? chatMessage.createdTime : markAsReadResponse.getLastReadTime();
                ChatService.updateReadTime$default(chatService, i, str2, lastReadTime, false, null, 24, null);
                NotificationCenter notificationCenter = (NotificationCenter) ChatRequestHelper.this.getCtx().getService("notification");
                ThreadUpdateObject threadUpdateObject = new ThreadUpdateObject();
                ChatThread chatThread = new ChatThread();
                chatThread.threadId = str2;
                chatThread.lastReadTime = lastReadTime;
                threadUpdateObject.chatThread = chatThread;
                threadUpdateObject.action = 0;
                if (chatThread.ndcId == 0) {
                    chatThread.ndcId = i;
                }
                NotificationUtils.sendNotificationIncludeGlobal(notificationCenter, new Notification("update", threadUpdateObject));
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(true);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i2, List<NameValuePair> list, String str3, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i2, list, str3, apiResponse, th);
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(str3);
                }
            }
        });
    }

    public final void sendMarkAsUnReadRequest(ChatThread chatThread, Callback<Object> callback) {
        ConfigService configService = (ConfigService) this.ctx.getService("config");
        Intrinsics.checkExpressionValueIsNotNull(configService, "configService");
        sendMarkAsUnreadRequest(configService.getCommunityId(), chatThread, callback);
    }

    public final void markUnread(int i, final Context context, ChatThread chatThread) {
        if (chatThread == null || context == null) {
            return;
        }
        final ProgressDialog progressDialog = new ProgressDialog(context, ThreadResponse.class);
        progressDialog.show();
        sendMarkAsUnreadRequest(i, chatThread, new Callback<Object>() { // from class: com.narvii.chat.util.ChatRequestHelper.markUnread.1
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                progressDialog.dismiss();
                if (obj instanceof String) {
                    NVToast.makeText(context, (CharSequence) obj, 1).show();
                }
            }
        });
    }

    public final void markAsread(int i, final Context context, ChatThread chatThread) {
        if (chatThread == null || context == null) {
            return;
        }
        final ProgressDialog progressDialog = new ProgressDialog(context, ThreadResponse.class);
        progressDialog.show();
        sendMarkAsReadRequest(i, chatThread.threadId, chatThread.lastMessageSummary, new Callback<Object>() { // from class: com.narvii.chat.util.ChatRequestHelper.markAsread.1
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                progressDialog.dismiss();
                if (obj instanceof String) {
                    NVToast.makeText(context, (CharSequence) obj, 1).show();
                }
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void sendMarkAsUnreadRequest$default(ChatRequestHelper chatRequestHelper, int i, ChatThread chatThread, Callback callback, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            callback = null;
        }
        chatRequestHelper.sendMarkAsUnreadRequest(i, chatThread, callback);
    }

    public final void sendMarkAsUnreadRequest(final int i, final ChatThread chatThread, final Callback<Object> callback) {
        if (i >= 0) {
            if ((chatThread != null ? chatThread.threadId : null) == null) {
                return;
            }
            this.apiService.exec(ApiRequest.builder().path("/chat/thread/" + chatThread.threadId + "/mark-as-unread").communityId(i).post().build(), new ApiResponseListener<ThreadResponse>(ThreadResponse.class) { // from class: com.narvii.chat.util.ChatRequestHelper.sendMarkAsUnreadRequest.1
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, ThreadResponse threadResponse) throws Exception {
                    super.onFinish(apiRequest, (ApiRequest) threadResponse);
                    if (threadResponse != null) {
                        ChatService chatService = (ChatService) ChatRequestHelper.this.getCtx().getService("chat");
                        int i2 = i;
                        String str = chatThread.threadId;
                        ChatThread chatThread2 = threadResponse.thread;
                        chatService.updateReadTime(i2, str, chatThread2.lastReadTime, true, chatThread2);
                        NotificationUtils.sendNotificationIncludeGlobal((NotificationCenter) ChatRequestHelper.this.getCtx().getService("notification"), new Notification("update", threadResponse.thread));
                    }
                    Callback callback2 = callback;
                    if (callback2 != null) {
                        callback2.call(true);
                    }
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i2, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    super.onFail(apiRequest, i2, list, str, apiResponse, th);
                    Callback callback2 = callback;
                    if (callback2 != null) {
                        callback2.call(str);
                    }
                }
            });
        }
    }

    public final void sendTogglePinRequest(final int i, ChatThread chatThread, final Callback<Object> callback) {
        if (chatThread == null) {
            return;
        }
        ApiRequest.Builder builderPost = ApiRequest.builder().chatServer().post();
        StringBuilder sb = new StringBuilder();
        sb.append("/chat/thread/");
        sb.append(chatThread.threadId);
        sb.append('/');
        sb.append(chatThread.isPinned ? "unpin" : "pin");
        ApiRequest.Builder builderPath = builderPost.path(sb.toString());
        if (i != 0) {
            builderPath.communityId(i);
        }
        this.apiService.exec(builderPath.build(), new ApiResponseListener<ThreadResponse>(ThreadResponse.class) { // from class: com.narvii.chat.util.ChatRequestHelper.sendTogglePinRequest.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ThreadResponse threadResponse) throws Exception {
                super.onFinish(apiRequest, (ApiRequest) threadResponse);
                if (threadResponse != null) {
                    ChatThread chatThread2 = threadResponse.thread;
                    Notification notification = new Notification("update", chatThread2);
                    if (chatThread2.ndcId == 0) {
                        chatThread2.ndcId = i;
                    }
                    NotificationUtils.sendNotificationIncludeGlobal((NotificationCenter) ChatRequestHelper.this.getCtx().getService("notification"), notification);
                    Callback callback2 = callback;
                    if (callback2 != null) {
                        callback2.call(true);
                    }
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i2, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i2, list, str, apiResponse, th);
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(str);
                }
            }
        });
    }

    public static /* synthetic */ void sendKickUserRequest$default(ChatRequestHelper chatRequestHelper, String str, String str2, boolean z, boolean z2, ChatThread chatThread, Callback callback, int i, Object obj) {
        boolean z3 = (i & 4) != 0 ? false : z;
        boolean z4 = (i & 8) != 0 ? true : z2;
        if ((i & 16) != 0) {
            chatThread = null;
        }
        chatRequestHelper.sendKickUserRequest(str, str2, z3, z4, chatThread, callback);
    }

    public final void sendKickUserRequest(final String str, final String str2, boolean z, boolean z2, final ChatThread chatThread, final Callback<Object> callback) {
        if (str == null || str.length() == 0) {
            return;
        }
        if (str2 == null || str2.length() == 0) {
            return;
        }
        ApiRequest.Builder builderPath = ApiRequest.builder().chatServer().delete().path("/chat/thread/" + str2 + "/member/" + str);
        if (z) {
            builderPath.param("allowRejoin", Integer.valueOf(!z2 ? 1 : 0));
        }
        this.apiService.exec(builderPath.build(), new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.chat.util.ChatRequestHelper.sendKickUserRequest.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                super.onFinish(apiRequest, apiResponse);
                ChatRequestHelper.this.handleDeleteUserResponse(str, str2, chatThread);
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(true);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str3, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str3, apiResponse, th);
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(str3);
                }
            }
        });
    }

    public static /* synthetic */ void sendDeleteThreadRequest$default(ChatRequestHelper chatRequestHelper, String str, String str2, ChatThread chatThread, Callback callback, int i, Object obj) {
        if ((i & 4) != 0) {
            chatThread = null;
        }
        chatRequestHelper.sendDeleteThreadRequest(str, str2, chatThread, callback);
    }

    public final void sendDeleteThreadRequest(String str, String str2, ChatThread chatThread, Callback<Object> callback) {
        sendDeleteThreadRequest(0, str, str2, chatThread, callback);
    }

    public static /* synthetic */ void sendDeleteThreadRequest$default(ChatRequestHelper chatRequestHelper, int i, String str, String str2, ChatThread chatThread, Callback callback, int i2, Object obj) {
        int i3 = (i2 & 1) != 0 ? 0 : i;
        if ((i2 & 8) != 0) {
            chatThread = null;
        }
        chatRequestHelper.sendDeleteThreadRequest(i3, str, str2, chatThread, callback);
    }

    public final void sendDeleteThreadRequest(int i, final String str, final String str2, final ChatThread chatThread, final Callback<Object> callback) {
        String str3;
        StringBuilder sb;
        if (str == null || str.length() == 0) {
            return;
        }
        if (str2 == null || str2.length() == 0) {
            return;
        }
        Context context = this.ctx.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "ctx.context");
        ChatHelper chatHelper = new ChatHelper(context);
        if (chatThread == null || (str3 = chatThread.uid) == null) {
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
        if (i != 0) {
            builderPath.communityId(i);
        }
        this.apiService.exec(builderPath.build(), new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.chat.util.ChatRequestHelper.sendDeleteThreadRequest.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                super.onFinish(apiRequest, apiResponse);
                LogEvent.clickBuilder(ChatRequestHelper.this.getCtx(), ActSemantic.leaveChat).extraParamIfNotNull("chatType", currentChatType).send();
                ChatRequestHelper.this.handleDeleteUserResponse(str, str2, chatThread);
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(true);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i2, List<NameValuePair> list, String str4, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i2, list, str4, apiResponse, th);
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(str4);
                }
            }
        });
    }

    public final void handleDeleteUserResponse(String str, String str2, ChatThread chatThread) {
        boolean z;
        AccountService accountService = (AccountService) this.ctx.getService("account");
        Intrinsics.checkExpressionValueIsNotNull(accountService, "accountService");
        boolean zIsEqualsNotNull = Utils.isEqualsNotNull(accountService.getUserId(), str);
        if (zIsEqualsNotNull) {
            ConfigService configService = (ConfigService) this.ctx.getService("config");
            Object service = this.ctx.getService("chat");
            Intrinsics.checkExpressionValueIsNotNull(service, "ctx.getService(\"chat\")");
            Intrinsics.checkExpressionValueIsNotNull(configService, "configService");
            ((ChatService) service).removeThread(configService.getCommunityId(), str2);
        }
        if (chatThread != null) {
            NVObject nVObjectM46clone = chatThread.m46clone();
            if (nVObjectM46clone == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.model.ChatThread");
            }
            ChatThread chatThread2 = (ChatThread) nVObjectM46clone;
            List<User> list = chatThread2.membersSummary;
            if (list != null) {
                Iterator<User> it = list.iterator();
                loop0: while (true) {
                    z = false;
                    while (it.hasNext()) {
                        User next = it.next();
                        if (Utils.isEquals(next.uid, str)) {
                            it.remove();
                            if (next.membershipStatus == 1) {
                                z = true;
                            }
                        }
                    }
                }
            } else {
                z = false;
            }
            if (z) {
                chatThread2.membersCount--;
            }
            Object service2 = this.ctx.getService("notification");
            Intrinsics.checkExpressionValueIsNotNull(service2, "ctx.getService(\"notification\")");
            NotificationCenter notificationCenter = (NotificationCenter) service2;
            if (zIsEqualsNotNull) {
                chatThread2.membershipStatus = 0;
                NotificationUtils.sendNotificationIncludeGlobal((NotificationCenter) this.ctx.getService("notification"), new Notification("delete", chatThread2));
                return;
            }
            notificationCenter.sendNotification(new Notification("update", chatThread2));
        }
    }

    public final void sendInviteMemberToExistedChatRequest(String str, final Callback<Object> callback) {
        if (str == null || str.length() == 0) {
            return;
        }
        final ProgressDialog progressDialog = new ProgressDialog(this.ctx.getContext());
        progressDialog.show();
        ApiRequest.Builder builderParam = ApiRequest.builder().chatServer().path("/chat/thread").post().param("type", 0).param("q", str);
        Intrinsics.checkExpressionValueIsNotNull(builderParam, "ApiRequest.builder().cha…         .param(\"q\", uid)");
        ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
        arrayNodeCreateArrayNode.add(str);
        builderParam.param("inviteeUids", arrayNodeCreateArrayNode);
        this.apiService.exec(builderParam.build(), new ApiResponseListener<ThreadResponse>(ThreadResponse.class) { // from class: com.narvii.chat.util.ChatRequestHelper.sendInviteMemberToExistedChatRequest.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ThreadResponse threadResponse) throws Exception {
                ChatThread chatThread;
                super.onFinish(apiRequest, (ApiRequest) threadResponse);
                progressDialog.dismiss();
                if (threadResponse == null || (chatThread = threadResponse.thread) == null) {
                    return;
                }
                GlobalChatService globalChatService = (GlobalChatService) ChatRequestHelper.this.getCtx().getService("globalChat");
                ConfigService configService = (ConfigService) ChatRequestHelper.this.getCtx().getService("config");
                Intrinsics.checkExpressionValueIsNotNull(configService, "configService");
                globalChatService.addRecentChat(GlobalChatThread.newGlobalChatThread(chatThread, configService.getCommunityId(), ChatRequestHelper.this.getCtx().getContext()));
                Intent intent = FragmentWrapperActivity.intent(ChatFragment.class);
                intent.putExtra("id", chatThread.threadId);
                intent.putExtra("thread", JacksonUtils.writeAsString(chatThread));
                ChatRequestHelper.this.getCtx().getContext().startActivity(intent);
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(true);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str2, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str2, apiResponse, th);
                progressDialog.dismiss();
                NVToast.makeText(ChatRequestHelper.this.getCtx().getContext(), str2, 1).show();
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(str2);
                }
            }
        });
    }

    public static /* synthetic */ void delete$default(ChatRequestHelper chatRequestHelper, int i, ChatThread chatThread, FragmentManager fragmentManager, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        chatRequestHelper.delete(i, chatThread, fragmentManager);
    }

    public final void delete(int i, ChatThread chatThread, FragmentManager fragmentManager) {
        if (chatThread == null || fragmentManager == null) {
            return;
        }
        Fragment fragmentFindFragmentByTag = fragmentManager.findFragmentByTag("joinThread");
        if (fragmentFindFragmentByTag != null) {
            fragmentManager.beginTransaction().remove(fragmentFindFragmentByTag).commit();
        }
        JoinThreadFragment joinThreadFragment = new JoinThreadFragment();
        Bundle bundle = new Bundle();
        bundle.putString("id", chatThread.id());
        bundle.putString("thread", JacksonUtils.writeAsString(chatThread.getBriefContent()));
        bundle.putInt(CommentPostActivity.COMMENT_POST_KEY_NDC_ID, i);
        joinThreadFragment.setArguments(bundle);
        fragmentManager.beginTransaction().add(joinThreadFragment, "joinThread").commit();
        fragmentManager.executePendingTransactions();
        joinThreadFragment.leaveConversation();
    }

    public final void processPin(int i, final Context context, ChatThread chatThread) {
        if (context == null || chatThread == null) {
            return;
        }
        final ProgressDialog progressDialog = new ProgressDialog(context);
        progressDialog.show();
        sendTogglePinRequest(i, chatThread, new Callback<Object>() { // from class: com.narvii.chat.util.ChatRequestHelper.processPin.1
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                if (obj instanceof String) {
                    NVToast.makeText(context, (CharSequence) obj, 0).show();
                }
                progressDialog.dismiss();
            }
        });
    }

    public final void sendVVChatPermissionRequest(String str, int i) {
        this.apiService.exec(new ApiRequest.Builder().post().path("/chat/thread/" + str + "/vvchat-permission").param("vvChatJoinType", Integer.valueOf(i)).build(), new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.chat.util.ChatRequestHelper.sendVVChatPermissionRequest.1
        });
    }
}
