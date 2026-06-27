package com.narvii.chat.input;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.narvii.account.AccountService;
import com.narvii.account.push.PushNotificationHelper;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVFragment;
import com.narvii.chat.ChatFragment;
import com.narvii.chat.global.GlobalChatHelper;
import com.narvii.chat.rtc.RtcService;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.chat.util.ChatHelper;
import com.narvii.chat.video.utils.VVChatHelper;
import com.narvii.config.ConfigService;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.model.ChatThread;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.permisson.NVPermission;
import com.narvii.permisson.PermissionUtils;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.NotificationUtils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.video.model.ChannelActionCallback;
import com.narvii.video.model.ChannelActionResult;
import com.narvii.widget.ACMAlertDialog;
import java.util.List;

/* loaded from: classes2.dex */
public class ChatThreadCheckFragment extends NVFragment {
    private AccountService account;
    private ChatHelper chatHelper;
    private LiveChatCheckData chatThreadData;
    private GlobalChatHelper globalChatHelper;
    private LiveChatJoinEventListener joinEventListener;
    private ChatInputMessageSenderHelper messageSenderHelper;
    private PushNotificationHelper pushNotificationHelper;
    private RtcService rtcService;

    public interface LiveChatCheckData {
        SignallingChannel getSignallingChannel();

        ChatThread getThread();

        String getThreadId();
    }

    public interface LiveChatJoinEventListener {
        void onJoinEnd();

        void onJoinStart();
    }

    private boolean checkEligible() {
        return true;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public boolean isValidPage() {
        return false;
    }

    public static ChatThreadCheckFragment getInstance(NVFragment nVFragment, LiveChatCheckData liveChatCheckData, LiveChatJoinEventListener liveChatJoinEventListener) {
        ChatThreadCheckFragment chatThreadCheckFragment = (ChatThreadCheckFragment) nVFragment.getChildFragmentManager().findFragmentByTag("vvchatJoinCheck");
        if (chatThreadCheckFragment == null) {
            chatThreadCheckFragment = new ChatThreadCheckFragment();
            nVFragment.getChildFragmentManager().beginTransaction().add(chatThreadCheckFragment, "vvchatJoinCheck").commit();
            nVFragment.getChildFragmentManager().executePendingTransactions();
        }
        chatThreadCheckFragment.setArguments(new Bundle());
        chatThreadCheckFragment.chatThreadData = liveChatCheckData;
        chatThreadCheckFragment.joinEventListener = liveChatJoinEventListener;
        return chatThreadCheckFragment;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.rtcService = (RtcService) getService("rtc");
        this.account = (AccountService) getService("account");
        this.chatHelper = new ChatHelper(getContext());
        this.globalChatHelper = new GlobalChatHelper(this);
        this.pushNotificationHelper = new PushNotificationHelper(this);
        this.messageSenderHelper = new ChatInputMessageSenderHelper(this, getThreadId());
    }

    public String getThreadId() {
        LiveChatCheckData liveChatCheckData = this.chatThreadData;
        if (liveChatCheckData != null && liveChatCheckData.getThread() != null) {
            return this.chatThreadData.getThreadId();
        }
        if (getParentFragment() instanceof ChatFragment) {
            return ((ChatFragment) getParentFragment()).getThreadId();
        }
        if (getParentFragment() instanceof ChatInputFragment) {
            return ((ChatInputFragment) getParentFragment()).getThreadId();
        }
        return getStringParam("threadId");
    }

    public ChatThread getThread() {
        LiveChatCheckData liveChatCheckData = this.chatThreadData;
        if (liveChatCheckData != null && liveChatCheckData.getThread() != null) {
            return this.chatThreadData.getThread();
        }
        if (getParentFragment() instanceof ChatFragment) {
            return ((ChatFragment) getParentFragment()).getThread();
        }
        if (getParentFragment() instanceof ChatInputFragment) {
            return ((ChatInputFragment) getParentFragment()).getThread();
        }
        return (ChatThread) JacksonUtils.readAs(getStringParam("thread"), ChatThread.class);
    }

    private SignallingChannel getSignallingChannel() {
        LiveChatCheckData liveChatCheckData = this.chatThreadData;
        if (liveChatCheckData != null && liveChatCheckData.getThread() != null) {
            return this.chatThreadData.getSignallingChannel();
        }
        return this.rtcService.getMappedSignallingChannel(getThreadId());
    }

    public void requestToJoinOrSpeak(SignallingChannel signallingChannel) {
        ChatThread thread = getThread();
        if (thread == null) {
            return;
        }
        if (this.chatHelper.isHostOrCoHost(getThread())) {
            requestToJoinChannel(signallingChannel);
            return;
        }
        if (thread.getVvChatJoinType() == 3) {
            ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
            aCMAlertDialog.setMessage(R.string.get_invitaion_limit_hint);
            aCMAlertDialog.addButton(R.string.got_it, null);
            aCMAlertDialog.show();
            return;
        }
        if (thread.getVvChatJoinType() == 2) {
            requestToSpeak(signallingChannel);
        } else {
            requestToJoinChannel(signallingChannel);
        }
    }

    public void requestToJoinChannel(final SignallingChannel signallingChannel) {
        if (signallingChannel == null && (signallingChannel = getSignallingChannel()) == null) {
            return;
        }
        int i = signallingChannel.channelType;
        if (checkEligible() && checkCommunityAvailability(i, new Callback<Boolean>() { // from class: com.narvii.chat.input.ChatThreadCheckFragment.1
            @Override // com.narvii.util.Callback
            public void call(Boolean bool) {
                if (bool.booleanValue()) {
                    ChatThreadCheckFragment.this.messageSenderHelper.recordChatActivity();
                    ChatThreadCheckFragment.this.requestToJoinChannel(signallingChannel);
                }
            }
        })) {
            if (!checkChannelPermission()) {
                ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
                aCMAlertDialog.setMessage(R.string.get_invitaion_limit_hint);
                aCMAlertDialog.addButton(R.string.got_it, null);
                aCMAlertDialog.show();
                return;
            }
            if (!checkChannelUserLimit()) {
                ACMAlertDialog aCMAlertDialog2 = new ACMAlertDialog(getContext());
                aCMAlertDialog2.setMessage(R.string.channel_presenter_limit_note_live);
                aCMAlertDialog2.addButton(android.R.string.ok, null);
                aCMAlertDialog2.show();
                return;
            }
            if (getThread() != null && getThread().type != 2) {
                checkThreadAvailable(true, new Callback() { // from class: com.narvii.chat.input.-$$Lambda$ChatThreadCheckFragment$tUPiCWLQJXQRZW1vq7MkprUWU4s
                    @Override // com.narvii.util.Callback
                    public final void call(Object obj) {
                        this.f$0.lambda$requestToJoinChannel$0$ChatThreadCheckFragment((Boolean) obj);
                    }
                });
            } else {
                new VVChatHelper(this).showStrangerHintDialog(signallingChannel.channelType, getThread(), new AnonymousClass2());
            }
        }
    }

    public /* synthetic */ void lambda$requestToJoinChannel$0$ChatThreadCheckFragment(Boolean bool) {
        requestToJoinChannelWithSystemPermissionCheck();
    }

    /* renamed from: com.narvii.chat.input.ChatThreadCheckFragment$2, reason: invalid class name */
    class AnonymousClass2 implements Callback<Boolean> {
        AnonymousClass2() {
        }

        @Override // com.narvii.util.Callback
        public void call(Boolean bool) {
            ChatThreadCheckFragment.this.checkThreadAvailable(true, new Callback() { // from class: com.narvii.chat.input.-$$Lambda$ChatThreadCheckFragment$2$DGtyu3047ET0tAjLvqVglmqRpJE
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    this.f$0.lambda$call$0$ChatThreadCheckFragment$2((Boolean) obj);
                }
            });
        }

        public /* synthetic */ void lambda$call$0$ChatThreadCheckFragment$2(Boolean bool) {
            ChatThreadCheckFragment.this.requestToJoinChannelWithSystemPermissionCheck();
        }
    }

    public void requestToSpeak(final SignallingChannel signallingChannel) {
        if (signallingChannel == null && (signallingChannel = getSignallingChannel()) == null) {
            return;
        }
        int i = signallingChannel.channelType;
        if (checkEligible() && checkCommunityAvailability(i, new Callback<Boolean>() { // from class: com.narvii.chat.input.ChatThreadCheckFragment.3
            @Override // com.narvii.util.Callback
            public void call(Boolean bool) {
                if (bool.booleanValue()) {
                    ChatThreadCheckFragment.this.messageSenderHelper.recordChatActivity();
                    ChatThreadCheckFragment.this.requestToSpeak(signallingChannel);
                }
            }
        })) {
            ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
            aCMAlertDialog.setMessage(R.string.apply_to_talk_title);
            aCMAlertDialog.addNagativeButton(R.string.cancel, null);
            aCMAlertDialog.addButton(R.string.apply, new View.OnClickListener() { // from class: com.narvii.chat.input.-$$Lambda$ChatThreadCheckFragment$mCy5ppvl9ZmIRBAlTrtQeYeFZOE
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$requestToSpeak$2$ChatThreadCheckFragment(signallingChannel, view);
                }
            });
            aCMAlertDialog.show();
        }
    }

    public /* synthetic */ void lambda$requestToSpeak$2$ChatThreadCheckFragment(final SignallingChannel signallingChannel, View view) {
        checkThreadAvailable(true, new Callback() { // from class: com.narvii.chat.input.-$$Lambda$ChatThreadCheckFragment$gHnYJWhDhZze_QS3rc5xNnymXWU
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                this.f$0.lambda$null$1$ChatThreadCheckFragment(signallingChannel, (Boolean) obj);
            }
        });
    }

    public /* synthetic */ void lambda$null$1$ChatThreadCheckFragment(SignallingChannel signallingChannel, Boolean bool) {
        if (bool.booleanValue()) {
            LiveChatJoinEventListener liveChatJoinEventListener = this.joinEventListener;
            if (liveChatJoinEventListener != null) {
                liveChatJoinEventListener.onJoinStart();
            }
            final ChatThread thread = getThread();
            if (signallingChannel.joinRole == 3) {
                this.rtcService.updateJoinRole(thread.ndcId, getThreadId(), 2, new Callback() { // from class: com.narvii.chat.input.ChatThreadCheckFragment.4
                    @Override // com.narvii.util.Callback
                    public void call(Object obj) {
                        ChatThreadCheckFragment.this.sendWaitListJoinRequest(thread.ndcId);
                    }
                });
            } else {
                sendWaitListJoinRequest(thread.ndcId);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendWaitListJoinRequest(int i) {
        this.rtcService.waitListJoin(i, getThreadId(), new Callback() { // from class: com.narvii.chat.input.-$$Lambda$ChatThreadCheckFragment$EobZqrs9tmVn7t6rfjNCqFCQAg0
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                this.f$0.lambda$sendWaitListJoinRequest$3$ChatThreadCheckFragment((SignallingChannel) obj);
            }
        });
    }

    public /* synthetic */ void lambda$sendWaitListJoinRequest$3$ChatThreadCheckFragment(SignallingChannel signallingChannel) {
        LiveChatJoinEventListener liveChatJoinEventListener = this.joinEventListener;
        if (liveChatJoinEventListener != null) {
            liveChatJoinEventListener.onJoinEnd();
        }
    }

    public boolean checkCommunityAvailability(final int i, final Callback<Boolean> callback) {
        return true ^ this.globalChatHelper.tryJoinCommunity(((ConfigService) getService("config")).getCommunityId(), true, new GlobalChatHelper.JoinCommunityCallback() { // from class: com.narvii.chat.input.ChatThreadCheckFragment.5
            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            public boolean onPreJoinCommunity(int i2) {
                return false;
            }

            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            public int getActionRTCType() {
                return i;
            }

            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            public void onCheckLoginFailed() {
                ChatThreadCheckFragment.this.ensureLogin(new Intent("joinChannel"));
            }

            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            public ChatThread followingChatToJoin() {
                return ChatThreadCheckFragment.this.getThread();
            }

            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            public void onPostJoinCommunity(int i2, boolean z) {
                Callback callback2;
                if (!z || (callback2 = callback) == null) {
                    return;
                }
                callback2.call(Boolean.valueOf(z));
            }
        });
    }

    public boolean checkThreadAvailable(boolean z, Callback<Boolean> callback) {
        User user;
        int i;
        ChatThread thread = getThread();
        if (thread != null) {
            if (thread.status == 9 || ((user = thread.author) != null && ((i = user.status) == 9 || i == 10))) {
                NVToast.makeText(getContext(), R.string.chat_disabled_by_moderator, 0).show();
            } else if (thread.condition == 2 && thread.type == 2) {
                NVToast.makeText(getContext(), R.string.chat_author_absent, 0).show();
            } else {
                int i2 = thread.membershipStatus;
                if (i2 == 3) {
                    NVToast.makeText(getContext(), R.string.chat_pending_approval, 0).show();
                } else {
                    if (i2 == 1) {
                        callback.call(true);
                        return true;
                    }
                    if (z) {
                        sendRequestToJoinThreadRequest(callback);
                    }
                }
            }
        }
        return false;
    }

    public boolean checkChannelPermission() {
        return !this.account.hasAccount() || getThread() == null || getThread().type == 0 || getThread().type == 1 || getThread().getVvChatJoinType() != 3 || this.chatHelper.isHostOrCoHost(getThread());
    }

    public boolean checkChannelUserLimit() {
        SignallingChannel signallingChannel = getSignallingChannel();
        return signallingChannel != null && (signallingChannel.channelType == 1 || this.rtcService.getPresenterCountInChannel(signallingChannel) < 7);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void requestToJoinChannelWithSystemPermissionCheck() {
        boolean zHasSelfPermission;
        SignallingChannel signallingChannel = getSignallingChannel();
        if (SignallingChannel.isCameraPermissionRequestType(signallingChannel.channelType)) {
            zHasSelfPermission = PermissionUtils.hasSelfPermission(getContext(), "android.permission.RECORD_AUDIO", "android.permission.CAMERA");
        } else {
            zHasSelfPermission = signallingChannel.channelType == 1 ? PermissionUtils.hasSelfPermission(getContext(), "android.permission.RECORD_AUDIO") : true;
        }
        if (zHasSelfPermission) {
            requestToBePresenter();
        } else {
            NVPermission.builder(this).permissions(SignallingChannel.isCameraPermissionRequestType(signallingChannel.channelType) ? new String[]{"android.permission.RECORD_AUDIO", "android.permission.CAMERA"} : new String[]{"android.permission.RECORD_AUDIO"}).permissionListener(this).requestCode(304).request();
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.permisson.PermissionListener
    public void onPermissionGranted(int i) {
        super.onPermissionGranted(i);
        if (i == 304) {
            requestToBePresenter();
        }
    }

    public void sendRequestToJoinThreadRequest(final Callback<Boolean> callback) {
        final ChatThread thread = getThread();
        if (thread == null || thread.membershipStatus == 1) {
            return;
        }
        final ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.show();
        String userId = ((AccountService) getService("account")).getUserId();
        ((ApiService) getService("api")).exec(ApiRequest.builder().chatServer().post().path("/chat/thread/" + getThreadId() + "/member/" + userId).build(), new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.chat.input.ChatThreadCheckFragment.6
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                super.onFinish(apiRequest, apiResponse);
                LogEvent.clickBuilder(ChatThreadCheckFragment.this, ActSemantic.joinChat).send();
                ChatThread chatThread = (ChatThread) thread.m46clone();
                chatThread.membershipStatus = 1;
                NotificationUtils.sendNotificationIncludeGlobal((NotificationCenter) ChatThreadCheckFragment.this.getService("notification"), new Notification("update", chatThread));
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(true);
                }
                ChatThreadCheckFragment.this.pushNotificationHelper.showRemindDialogIfNeeded(PushNotificationHelper.SCENARIO_CHAT);
                progressDialog.dismiss();
                ChatThreadCheckFragment.this.messageSenderHelper.recordChatActivity();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str, apiResponse, th);
                NVToast.makeText(ChatThreadCheckFragment.this.getContext(), str, 1).show();
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(false);
                }
                progressDialog.dismiss();
            }
        });
    }

    private void requestToBePresenter() {
        int i;
        LiveChatJoinEventListener liveChatJoinEventListener = this.joinEventListener;
        if (liveChatJoinEventListener != null) {
            liveChatJoinEventListener.onJoinStart();
        }
        SignallingChannel signallingChannel = getSignallingChannel();
        boolean z = false;
        if (signallingChannel != null && ((i = signallingChannel.channelType) == 3 || i == 4)) {
            z = true;
        }
        this.rtcService.requestToBePresenter(new ChannelActionCallback<ChannelActionResult>() { // from class: com.narvii.chat.input.ChatThreadCheckFragment.7
            @Override // com.narvii.video.model.ChannelActionCallback
            public void call(ChannelActionResult channelActionResult) {
                if (channelActionResult == null || ChatThreadCheckFragment.this.joinEventListener == null) {
                    return;
                }
                ChatThreadCheckFragment.this.joinEventListener.onJoinEnd();
            }
        }, z, !z);
    }
}
