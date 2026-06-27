package com.narvii.chat.video.utils;

import android.app.Activity;
import android.content.DialogInterface;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.chat.ChatFragment;
import com.narvii.chat.rtc.ChannelUserWrapper;
import com.narvii.chat.rtc.RtcService;
import com.narvii.chat.screenroom.playlist.PlaylistFragment;
import com.narvii.chat.screenroom.widgets.ReputationClaimDialog;
import com.narvii.chat.signalling.ChannelUser;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.chat.util.ChatRequestHelper;
import com.narvii.chat.video.fragments.ScreenRoomFragment;
import com.narvii.chat.video.utils.VVChatHelper;
import com.narvii.chat.video.view.VoiceCallHelper;
import com.narvii.livelayer.LiveLayerService;
import com.narvii.livelayer.ws.LiveLayerWsService;
import com.narvii.model.ChatThread;
import com.narvii.model.NVObject;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.ReputationPostResponse;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.util.Callback;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.ws.WsService;
import com.narvii.widget.ACMAlertDialog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: VVChatHelper.kt */
/* loaded from: classes.dex */
public final class VVChatHelper {
    private final NVContext ctx;

    public final boolean isAgoraVideoType(int i) {
        return i == 4 || i == 3 || i == 5;
    }

    public final boolean isAgoraVoiceType(int i) {
        return i == 1;
    }

    public final boolean isEligibleForVVChat() {
        return true;
    }

    public VVChatHelper(NVContext _ctx) {
        Intrinsics.checkParameterIsNotNull(_ctx, "_ctx");
        this.ctx = _ctx;
    }

    public final NVContext getCtx() {
        return this.ctx;
    }

    public final void checkRtcStatus(Callback<Boolean> callback) {
        WsService wsService = (WsService) this.ctx.getService("ws");
        if (wsService != null) {
            int connectStatus = wsService.getConnectStatus();
            if (connectStatus == 1) {
                NVToast.makeText(this.ctx.getContext(), R.string.rtc_not_ready, 1).show();
                if (callback != null) {
                    callback.call(false);
                    return;
                }
                return;
            }
            if (connectStatus > 0 && !isDeviceOffline()) {
                if (callback != null) {
                    callback.call(true);
                    return;
                }
                return;
            } else {
                NVToast.makeText(this.ctx.getContext(), R.string.rtc_offline, 1).show();
                if (callback != null) {
                    callback.call(false);
                    return;
                }
                return;
            }
        }
        Intrinsics.throwNpe();
        throw null;
    }

    public final void showSwitchChannelDialog(final Callback<Boolean> callback, final Callback<Boolean> callback2) {
        RtcService rtcService = (RtcService) this.ctx.getService("rtc");
        Intrinsics.checkExpressionValueIsNotNull(rtcService, "rtcService");
        SignallingChannel mainSigChannel = rtcService.getMainSigChannel();
        if (mainSigChannel != null) {
            int i = mainSigChannel.channelType;
            final ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this.ctx.getContext());
            aCMAlertDialog.setMessage(R.string.switch_channel_note_live);
            aCMAlertDialog.addNagativeButton(R.string.no, new View.OnClickListener() { // from class: com.narvii.chat.video.utils.VVChatHelper.showSwitchChannelDialog.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    aCMAlertDialog.dismiss();
                    Callback callback3 = callback2;
                    if (callback3 != null) {
                        callback3.call(false);
                    }
                }
            });
            aCMAlertDialog.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.chat.video.utils.VVChatHelper.showSwitchChannelDialog.2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    aCMAlertDialog.dismiss();
                    Callback callback3 = callback;
                    if (callback3 != null) {
                        callback3.call(true);
                    }
                }
            });
            aCMAlertDialog.setCancelable(false);
            aCMAlertDialog.show();
        }
    }

    public final ACMAlertDialog showCloseOrMiniLiveChannelHintDialog(int i, final Callback<Boolean> callback, final Callback<Boolean> callback2) {
        final ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this.ctx.getContext());
        aCMAlertDialog.setMessage(this.ctx.getContext().getString(R.string.quit_as_speaker_hint));
        aCMAlertDialog.addNagativeButton(R.string.leave_chat_room, new View.OnClickListener() { // from class: com.narvii.chat.video.utils.VVChatHelper.showCloseOrMiniLiveChannelHintDialog.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Callback callback3 = callback2;
                if (callback3 != null) {
                    callback3.call(true);
                }
            }
        });
        aCMAlertDialog.addButton(R.string.minimize_the_view, new View.OnClickListener() { // from class: com.narvii.chat.video.utils.VVChatHelper.showCloseOrMiniLiveChannelHintDialog.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Callback callback3 = callback;
                if (callback3 != null) {
                    callback3.call(true);
                }
            }
        });
        aCMAlertDialog.findViewById(R.id.root).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.video.utils.VVChatHelper.showCloseOrMiniLiveChannelHintDialog.3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                aCMAlertDialog.dismiss();
            }
        });
        aCMAlertDialog.show();
        return aCMAlertDialog;
    }

    public final AlertDialog showPrivateCallRetryDialog(final Callback<Boolean> callback) {
        final AlertDialog alertDialog = new AlertDialog(this.ctx.getContext());
        alertDialog.setContentView(R.layout.dialog_call_retry);
        alertDialog.findViewById(R.id.cancel).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.video.utils.VVChatHelper.showPrivateCallRetryDialog.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(false);
                }
                alertDialog.dismiss();
            }
        });
        alertDialog.findViewById(R.id.retry).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.video.utils.VVChatHelper.showPrivateCallRetryDialog.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(true);
                }
                alertDialog.dismiss();
            }
        });
        alertDialog.setCancelable(false);
        alertDialog.show();
        return alertDialog;
    }

    public final ACMAlertDialog showPrivateCallLimitDialog(int i, final Callback<Boolean> callback) {
        final ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this.ctx.getContext());
        aCMAlertDialog.setMessage(R.string.private_call_limit);
        aCMAlertDialog.addButton(R.string.ok, new View.OnClickListener() { // from class: com.narvii.chat.video.utils.VVChatHelper.showPrivateCallLimitDialog.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                aCMAlertDialog.dismiss();
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(true);
                }
            }
        });
        aCMAlertDialog.show();
        return aCMAlertDialog;
    }

    public final void showPermissionRequestDialog(int i, final Callback<Boolean> callback) {
        final ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this.ctx.getContext());
        aCMAlertDialog.setTitle(R.string.floating_permission_title);
        aCMAlertDialog.setMessage(this.ctx.getContext().getString(R.string.floating_permission_message_live));
        aCMAlertDialog.addNagativeButton(R.string.cancel, new View.OnClickListener() { // from class: com.narvii.chat.video.utils.VVChatHelper.showPermissionRequestDialog.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                aCMAlertDialog.dismiss();
            }
        });
        aCMAlertDialog.addButton(android.R.string.ok, new View.OnClickListener() { // from class: com.narvii.chat.video.utils.VVChatHelper.showPermissionRequestDialog.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                aCMAlertDialog.dismiss();
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(true);
                }
            }
        });
        aCMAlertDialog.show();
    }

    public final AlertDialog showPresenterNotExistedDialog(int i, int i2, final Callback<Boolean> callback) {
        final AlertDialog alertDialog = new AlertDialog(this.ctx.getContext());
        alertDialog.setContentView(R.layout.dialog_channel_empty);
        View viewFindViewById = alertDialog.findViewById(R.id.end_hint);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "dlg.findViewById<TextView>(R.id.end_hint)");
        ((TextView) viewFindViewById).setText(this.ctx.getContext().getString(R.string.live_channel_ended));
        alertDialog.findViewById(R.id.leave).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.video.utils.VVChatHelper.showPresenterNotExistedDialog.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                alertDialog.dismiss();
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(true);
                }
            }
        });
        alertDialog.setCancelable(false);
        alertDialog.show();
        return alertDialog;
    }

    public final void showPresenterNotExistedToast(int i) {
        NVToast.makeText(this.ctx.getContext(), this.ctx.getContext().getString(R.string.live_channel_ended), 1).show();
    }

    public final boolean isPrivateCall(ChatThread chatThread, int i) {
        return (chatThread != null && chatThread.type == 0) && (i == 1 || i == 4);
    }

    private final boolean isDeviceOffline() {
        try {
            Object systemService = this.ctx.getContext().getSystemService("connectivity");
            if (systemService == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.net.ConnectivityManager");
            }
            ConnectivityManager connectivityManager = (ConnectivityManager) systemService;
            NetworkInfo activeNetworkInfo = connectivityManager != null ? connectivityManager.getActiveNetworkInfo() : null;
            if (activeNetworkInfo == null) {
                return false;
            }
            activeNetworkInfo.isConnected();
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    public final boolean checkEligibleWithHint() {
        if (isEligibleForVVChat()) {
            return true;
        }
        showNotEligibleForVVChatDialog(null);
        return false;
    }

    public final void showNotEligibleForVVChatDialog(final Callback<Boolean> callback) {
        final ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this.ctx.getContext());
        aCMAlertDialog.setMessage(R.string.av_not_supported);
        aCMAlertDialog.addButton(android.R.string.ok, new View.OnClickListener() { // from class: com.narvii.chat.video.utils.VVChatHelper.showNotEligibleForVVChatDialog.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                aCMAlertDialog.dismiss();
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(true);
                }
            }
        });
        aCMAlertDialog.show();
    }

    public final boolean isThreadOwner(ChatThread chatThread, String str) {
        return chatThread != null && chatThread.type == 2 && Utils.isEqualsNotNull(chatThread != null ? chatThread.uid : null, str);
    }

    public static /* synthetic */ void showLeaveChannelConfirmDialog$default(VVChatHelper vVChatHelper, Activity activity, boolean z, Callback callback, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        vVChatHelper.showLeaveChannelConfirmDialog(activity, z, callback);
    }

    public final void showLeaveChannelConfirmDialog(Activity activity, boolean z, final Callback<Boolean> callback) {
        Intrinsics.checkParameterIsNotNull(activity, "activity");
        final ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(activity);
        aCMAlertDialog.setMessage(z ? R.string.rtc_organizer_quit_live : R.string.quit_as_speaker_hint);
        aCMAlertDialog.addNagativeButton(R.string.no, new View.OnClickListener() { // from class: com.narvii.chat.video.utils.VVChatHelper.showLeaveChannelConfirmDialog.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                aCMAlertDialog.dismiss();
            }
        });
        aCMAlertDialog.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.chat.video.utils.VVChatHelper.showLeaveChannelConfirmDialog.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(true);
                }
                aCMAlertDialog.dismiss();
            }
        });
        if (!activity.isFinishing()) {
            aCMAlertDialog.show();
        } else if (callback != null) {
            callback.call(true);
        }
    }

    public final void reportLiveLayerActiveEvent(SignallingChannel signallingChannel, String str, int i) {
        if (signallingChannel != null && SignallingChannel.isLegalChannelType(signallingChannel.channelType) && Utils.isEqualsNotNull(str, signallingChannel.threadId) && ChatThread.isLegalThreadType(i)) {
            LiveLayerService liveLayerService = (LiveLayerService) this.ctx.getService("liveLayer");
            String str2 = NVObject.objectTypeName(12) + "/" + str;
            HashMap<String, Object> map = new HashMap<>();
            ArrayList arrayList = new ArrayList();
            String str3 = LiveLayerService.ACTION_CHATTING;
            Intrinsics.checkExpressionValueIsNotNull(str3, "LiveLayerService.ACTION_CHATTING");
            arrayList.add(str3);
            map.put("threadType", Integer.valueOf(i));
            map.put("channelType", Integer.valueOf(signallingChannel.channelType));
            liveLayerService.reportActive(arrayList, str2, map);
        }
    }

    public final void reportLiveLayerInactiveEvent(SignallingChannel signallingChannel, String str, int i) {
        if (signallingChannel != null && SignallingChannel.isLegalChannelType(signallingChannel.channelType) && Utils.isEqualsNotNull(str, signallingChannel.threadId) && ChatThread.isLegalThreadType(i)) {
            LiveLayerWsService liveLayerWsService = (LiveLayerWsService) this.ctx.getService("liveLayerWS");
            ArrayList arrayList = new ArrayList();
            String str2 = LiveLayerService.ACTION_CHATTING;
            Intrinsics.checkExpressionValueIsNotNull(str2, "LiveLayerService.ACTION_CHATTING");
            arrayList.add(str2);
            HashMap<String, Object> map = new HashMap<>();
            map.put("threadType", Integer.valueOf(i));
            map.put("channelType", Integer.valueOf(signallingChannel.channelType));
            String strAssembleTarget = LiveLayerService.assembleTarget(signallingChannel.ndcId, NVObject.objectTypeName(12) + "/" + str);
            if (liveLayerWsService != null) {
                liveLayerWsService.reportInactive(signallingChannel.ndcId, arrayList, strAssembleTarget, map);
            }
        }
    }

    public final void sendCallCancelMessage(SignallingChannel signallingChannel, boolean z) {
        if (signallingChannel == null || z) {
            return;
        }
        VoiceCallHelper voiceCallHelper = new VoiceCallHelper(this.ctx.getContext());
        int i = signallingChannel.channelType;
        int i2 = 53;
        if (i != 1) {
            if (i == 3) {
                i2 = 59;
            } else if (i == 4) {
                i2 = 56;
            }
        }
        ApiRequest apiRequestBuildRequest = voiceCallHelper.buildRequest(signallingChannel.ndcId, signallingChannel.threadId, i2);
        ApiService apiService = (ApiService) NVApplication.instance().getService(signallingChannel.ndcId, "api");
        if (apiRequestBuildRequest != null) {
            apiService.exec(apiRequestBuildRequest, ApiResponseListener.IGNORE_RESPONSE_LISTENER);
        }
    }

    public final void sendCallNoAnswerMessage(SignallingChannel signallingChannel) {
        if (signallingChannel == null) {
            return;
        }
        VoiceCallHelper voiceCallHelper = new VoiceCallHelper(this.ctx.getContext());
        int i = signallingChannel.channelType;
        int i2 = 52;
        if (i != 1) {
            if (i == 3) {
                i2 = 58;
            } else if (i == 4) {
                i2 = 55;
            }
        }
        ((ApiService) NVApplication.instance().getService(signallingChannel.ndcId, "api")).exec(voiceCallHelper.buildRequest(signallingChannel.ndcId, signallingChannel.threadId, i2), ApiResponseListener.IGNORE_RESPONSE_LISTENER);
    }

    public final boolean isValidChannelToJoinAgora(SignallingChannel signallingChannel) {
        return (signallingChannel == null || !SignallingChannel.isLegalRole(signallingChannel.joinRole) || TextUtils.isEmpty(signallingChannel.threadId) || !SignallingChannel.isLegalChannelType(signallingChannel.channelType) || TextUtils.isEmpty(signallingChannel.channelKey) || TextUtils.isEmpty(signallingChannel.channelName)) ? false : true;
    }

    public final void showReputationClaimDialog(NVActivity nVActivity, int i, SignallingChannel signallingChannel, DialogInterface.OnDismissListener onDismissListener) {
        if (nVActivity == null || nVActivity.isFinishing() || signallingChannel == null) {
            return;
        }
        ((ApiService) nVActivity.getService("api")).exec(ApiRequest.builder().https().communityId(i).path("/chat/thread/" + signallingChannel.threadId + "/avchat-reputation").post().build(), new C09861(onDismissListener, nVActivity, ReputationPostResponse.class));
    }

    /* compiled from: VVChatHelper.kt */
    /* renamed from: com.narvii.chat.video.utils.VVChatHelper$showReputationClaimDialog$1, reason: invalid class name and case insensitive filesystem */
    /* loaded from: classes2.dex */
    public static final class C09861 extends ApiResponseListener<ReputationPostResponse> {
        final /* synthetic */ NVActivity $a;
        final /* synthetic */ DialogInterface.OnDismissListener $repDismissListener;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C09861(DialogInterface.OnDismissListener onDismissListener, NVActivity nVActivity, Class cls) {
            super(cls);
            this.$repDismissListener = onDismissListener;
            this.$a = nVActivity;
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFinish(ApiRequest req, final ReputationPostResponse resp) throws Exception {
            Intrinsics.checkParameterIsNotNull(req, "req");
            Intrinsics.checkParameterIsNotNull(resp, "resp");
            super.onFinish(req, (ApiRequest) resp);
            if (resp.totalReputation < 1) {
                DialogInterface.OnDismissListener onDismissListener = this.$repDismissListener;
                if (onDismissListener != null) {
                    onDismissListener.onDismiss(null);
                    return;
                }
                return;
            }
            Utils.postDelayed(new Runnable() { // from class: com.narvii.chat.video.utils.VVChatHelper$showReputationClaimDialog$1$onFinish$1
                @Override // java.lang.Runnable
                public final void run() {
                    if (this.this$0.$a.isFinishing()) {
                        return;
                    }
                    VVChatHelper.C09861 c09861 = this.this$0;
                    ReputationClaimDialog.show(c09861.$a, resp, c09861.$repDismissListener);
                }
            }, 50L);
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
            super.onFail(apiRequest, i, list, str, apiResponse, th);
            DialogInterface.OnDismissListener onDismissListener = this.$repDismissListener;
            if (onDismissListener != null) {
                onDismissListener.onDismiss(null);
            }
        }
    }

    public final boolean supportLiveChannelInCurCommunity() {
        CommunityConfigHelper communityConfigHelper = new CommunityConfigHelper(this.ctx);
        return communityConfigHelper.isChatEnabled() && (communityConfigHelper.isVoiceChatEnable() || communityConfigHelper.isVideoChatEnable() || communityConfigHelper.isAvatarChatEnable() || communityConfigHelper.isScreenRoomEnable() || communityConfigHelper.isAudio2ChatEnable());
    }

    public final boolean isReadyToLaunchLiveChannel(ChatThread chatThread, boolean z) {
        return checkEligibleWithHint() && chatThread != null;
    }

    public final boolean channelContainMe(SignallingChannel signallingChannel) {
        AccountService accountService;
        if ((signallingChannel != null ? signallingChannel.userList : null) != null && signallingChannel.userList.size() != 0 && (accountService = (AccountService) this.ctx.getService("account")) != null) {
            Iterator<ChannelUser> it = signallingChannel.userList.iterator();
            while (it.hasNext()) {
                if (Utils.isEqualsNotNull(it.next().uid(), accountService.getUserId())) {
                    return true;
                }
            }
        }
        return false;
    }

    public final void requestToBePresenter(final ChatThread chatThread) {
        int i;
        final RtcService rtcService = (RtcService) this.ctx.getService("rtc");
        if (chatThread == null || (i = chatThread.membershipStatus) == 1) {
            rtcService.requestToBePresenter(null);
            return;
        }
        if (i == 2) {
            final ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this.ctx.getContext());
            aCMAlertDialog.setMessage(R.string.chat_need_to_accept);
            aCMAlertDialog.addNagativeButton(R.string.cancel, new View.OnClickListener() { // from class: com.narvii.chat.video.utils.VVChatHelper.requestToBePresenter.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    aCMAlertDialog.dismiss();
                }
            });
            aCMAlertDialog.addButton(R.string.accept, new View.OnClickListener() { // from class: com.narvii.chat.video.utils.VVChatHelper.requestToBePresenter.2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    aCMAlertDialog.dismiss();
                    ChatRequestHelper chatRequestHelper = new ChatRequestHelper(VVChatHelper.this.getCtx());
                    AccountService accountService = (AccountService) VVChatHelper.this.getCtx().getService("account");
                    String str = chatThread.threadId;
                    Intrinsics.checkExpressionValueIsNotNull(accountService, "accountService");
                    chatRequestHelper.sendJoinChatThreadRequest(str, accountService.getUserId(), chatThread, new Callback<Boolean>() { // from class: com.narvii.chat.video.utils.VVChatHelper.requestToBePresenter.2.1
                        @Override // com.narvii.util.Callback
                        public final void call(Boolean bool) {
                            if (bool != null) {
                                bool.booleanValue();
                                rtcService.requestToBePresenter(null);
                            }
                        }
                    });
                }
            });
            aCMAlertDialog.show();
            return;
        }
        ChatRequestHelper chatRequestHelper = new ChatRequestHelper(this.ctx);
        AccountService accountService = (AccountService) this.ctx.getService("account");
        String str = chatThread.threadId;
        Intrinsics.checkExpressionValueIsNotNull(accountService, "accountService");
        chatRequestHelper.sendJoinChatThreadRequest(str, accountService.getUserId(), chatThread, new Callback<Boolean>() { // from class: com.narvii.chat.video.utils.VVChatHelper.requestToBePresenter.3
            @Override // com.narvii.util.Callback
            public final void call(Boolean bool) {
                if (bool != null) {
                    bool.booleanValue();
                    rtcService.requestToBePresenter(null);
                }
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void quitAsPresenter$default(VVChatHelper vVChatHelper, int i, ChatThread chatThread, ChannelUserWrapper channelUserWrapper, Callback callback, int i2, Object obj) {
        if ((i2 & 8) != 0) {
            callback = null;
        }
        vVChatHelper.quitAsPresenter(i, chatThread, channelUserWrapper, callback);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x005d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void quitAsPresenter(final int r12, final com.narvii.model.ChatThread r13, final com.narvii.chat.rtc.ChannelUserWrapper r14, final com.narvii.util.Callback<java.lang.Boolean> r15) {
        /*
            r11 = this;
            com.narvii.widget.ACMAlertDialog r8 = new com.narvii.widget.ACMAlertDialog
            com.narvii.app.NVContext r0 = r11.ctx
            android.content.Context r0 = r0.getContext()
            r8.<init>(r0)
            com.narvii.chat.util.ChatHelper r0 = new com.narvii.chat.util.ChatHelper
            android.content.Context r1 = r8.getContext()
            java.lang.String r2 = "context"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r1, r2)
            r0.<init>(r1)
            com.narvii.app.NVContext r1 = r11.ctx
            java.lang.String r2 = "rtc"
            java.lang.Object r1 = r1.getService(r2)
            r2 = r1
            com.narvii.chat.rtc.RtcService r2 = (com.narvii.chat.rtc.RtcService) r2
            r1 = 2131693155(0x7f0f0e63, float:1.901543E38)
            r3 = 0
            if (r14 == 0) goto L38
            com.narvii.chat.signalling.ChannelUser r4 = r14.channelUser
            if (r4 == 0) goto L38
            boolean r4 = r4.isHost
            r5 = 1
            if (r4 != r5) goto L38
            r4 = 5
            if (r12 != r4) goto L38
            goto L60
        L38:
            boolean r4 = com.narvii.chat.util.ChatHelperKt.isPublicChat(r13)
            if (r4 == 0) goto L5d
            boolean r4 = r0.isHost(r13)
            if (r4 != 0) goto L4a
            boolean r4 = r0.isCoHost(r13)
            if (r4 == 0) goto L5d
        L4a:
            if (r14 == 0) goto L55
            com.narvii.chat.signalling.ChannelUser r4 = r14.channelUser
            if (r4 == 0) goto L55
            java.lang.String r4 = r4.uid()
            goto L56
        L55:
            r4 = r3
        L56:
            boolean r0 = r0.isSpeakerHasOtherOriganizer(r13, r4)
            if (r0 != 0) goto L5d
            goto L60
        L5d:
            r1 = 2131693154(0x7f0f0e62, float:1.9015428E38)
        L60:
            r8.setMessage(r1)
            r0 = 2131692585(0x7f0f0c29, float:1.9014274E38)
            r4 = 4290493371(0xffbbbbbb, double:2.1197853783E-314)
            int r1 = (int) r4
            r8.addButton(r0, r3, r1)
            r9 = 2131693983(0x7f0f119f, float:1.901711E38)
            com.narvii.chat.video.utils.VVChatHelper$quitAsPresenter$$inlined$apply$lambda$1 r10 = new com.narvii.chat.video.utils.VVChatHelper$quitAsPresenter$$inlined$apply$lambda$1
            r0 = r10
            r1 = r8
            r3 = r11
            r4 = r14
            r5 = r12
            r6 = r13
            r7 = r15
            r0.<init>()
            r8.addButton(r9, r10)
            r8.show()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.chat.video.utils.VVChatHelper.quitAsPresenter(int, com.narvii.model.ChatThread, com.narvii.chat.rtc.ChannelUserWrapper, com.narvii.util.Callback):void");
    }

    public final void showAcceptChatInvitationDialog(ChatThread chatThread, final Callback<Boolean> callback) {
        if (chatThread == null) {
            return;
        }
        final ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this.ctx.getContext());
        aCMAlertDialog.setMessage(R.string.chat_need_to_accept);
        aCMAlertDialog.addNagativeButton(R.string.cancel, new View.OnClickListener() { // from class: com.narvii.chat.video.utils.VVChatHelper.showAcceptChatInvitationDialog.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                aCMAlertDialog.dismiss();
            }
        });
        aCMAlertDialog.addButton(R.string.accept, new View.OnClickListener() { // from class: com.narvii.chat.video.utils.VVChatHelper.showAcceptChatInvitationDialog.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                aCMAlertDialog.dismiss();
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(true);
                }
            }
        });
        aCMAlertDialog.show();
    }

    public final void showStrangerHintDialog(int i, ChatThread chatThread, final Callback<Boolean> callback) {
        if (chatThread != null && chatThread.type != 2) {
            if (callback != null) {
                callback.call(true);
            }
        } else {
            final ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this.ctx.getContext());
            aCMAlertDialog.setTitle(R.string.stranger_note_title_1);
            aCMAlertDialog.setMessage(R.string.stranger_note_content_1_live);
            aCMAlertDialog.addNagativeButton(i != 1 ? R.string.view_only : R.string.listen_only, new View.OnClickListener() { // from class: com.narvii.chat.video.utils.VVChatHelper.showStrangerHintDialog.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    aCMAlertDialog.dismiss();
                }
            });
            aCMAlertDialog.addButton(R.string.confirm, new View.OnClickListener() { // from class: com.narvii.chat.video.utils.VVChatHelper.showStrangerHintDialog.2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    aCMAlertDialog.dismiss();
                    Callback callback2 = callback;
                    if (callback2 != null) {
                        callback2.call(true);
                    }
                }
            });
            aCMAlertDialog.show();
        }
    }

    public final void showChannelComeLiveDialog(int i, final Callback<Boolean> callback, final Callback<Boolean> callback2) {
        final ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this.ctx.getContext());
        aCMAlertDialog.setMessage(R.string.room_come_live_hint_live);
        aCMAlertDialog.addNagativeButton(R.string.no, new View.OnClickListener() { // from class: com.narvii.chat.video.utils.VVChatHelper.showChannelComeLiveDialog.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Callback callback3 = callback2;
                if (callback3 != null) {
                    callback3.call(true);
                }
                aCMAlertDialog.dismiss();
            }
        });
        aCMAlertDialog.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.chat.video.utils.VVChatHelper.showChannelComeLiveDialog.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                aCMAlertDialog.dismiss();
                Callback callback3 = callback;
                if (callback3 != null) {
                    callback3.call(true);
                }
            }
        });
        aCMAlertDialog.setCancelable(false);
        aCMAlertDialog.show();
    }

    public static /* synthetic */ PlaylistFragment showPlayListFragment$default(VVChatHelper vVChatHelper, ChatFragment chatFragment, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return vVChatHelper.showPlayListFragment(chatFragment, z);
    }

    public final PlaylistFragment showPlayListFragment(ChatFragment chatFragment, boolean z) {
        if (chatFragment == null) {
            return null;
        }
        FragmentManager childFragmentManager = chatFragment.getChildFragmentManager();
        Intrinsics.checkExpressionValueIsNotNull(childFragmentManager, "chatFragment.childFragmentManager");
        Fragment fragmentFindFragmentByTag = childFragmentManager.findFragmentByTag(ScreenRoomFragment.PLAYLIST_FRAGMENT_TAG);
        Fragment fragment = fragmentFindFragmentByTag;
        if (fragmentFindFragmentByTag == null) {
            PlaylistFragment playlistFragment = new PlaylistFragment();
            playlistFragment.setIsPrePickMode(z, chatFragment.getThread());
            childFragmentManager.beginTransaction().setCustomAnimations(R.anim.activity_push_bottom_in, R.anim.activity_push_bottom_out).add(R.id.screen_room_playlist, playlistFragment, ScreenRoomFragment.PLAYLIST_FRAGMENT_TAG).commitAllowingStateLoss();
            fragment = playlistFragment;
        }
        return (PlaylistFragment) (fragment instanceof PlaylistFragment ? fragment : null);
    }

    public final PlaylistFragment getPlayListFragment(ChatFragment chatFragment) {
        if (chatFragment == null) {
            return null;
        }
        FragmentManager childFragmentManager = chatFragment.getChildFragmentManager();
        Intrinsics.checkExpressionValueIsNotNull(childFragmentManager, "chatFragment.childFragmentManager");
        Fragment fragmentFindFragmentByTag = childFragmentManager.findFragmentByTag(ScreenRoomFragment.PLAYLIST_FRAGMENT_TAG);
        if (!(fragmentFindFragmentByTag instanceof PlaylistFragment)) {
            fragmentFindFragmentByTag = null;
        }
        return (PlaylistFragment) fragmentFindFragmentByTag;
    }

    public final void hidePlayListFragment(ChatFragment chatFragment) {
        if (chatFragment == null) {
            return;
        }
        FragmentManager childFragmentManager = chatFragment.getChildFragmentManager();
        Intrinsics.checkExpressionValueIsNotNull(childFragmentManager, "chatFragment.childFragmentManager");
        Fragment fragmentFindFragmentByTag = childFragmentManager.findFragmentByTag(ScreenRoomFragment.PLAYLIST_FRAGMENT_TAG);
        if (fragmentFindFragmentByTag == null || !(fragmentFindFragmentByTag instanceof PlaylistFragment)) {
            return;
        }
        ((PlaylistFragment) fragmentFindFragmentByTag).dismiss();
    }

    public final boolean isCurrentChannelLive(SignallingChannel signallingChannel) {
        if (signallingChannel == null || !SignallingChannel.isLegalRole(signallingChannel.joinRole) || !SignallingChannel.isLegalChannelType(signallingChannel.channelType)) {
            return false;
        }
        List<ChannelUser> list = signallingChannel.userList;
        if (list != null) {
            if (list == null || list.isEmpty()) {
                return false;
            }
        }
        return true;
    }

    public final boolean isCurrentThreadLive(String str) {
        SignallingChannel mappedSignallingChannel;
        return str != null && (mappedSignallingChannel = ((RtcService) this.ctx.getService("rtc")).getMappedSignallingChannel(str)) != null && SignallingChannel.isLegalChannelType(mappedSignallingChannel.channelType) && SignallingChannel.isLegalRole(mappedSignallingChannel.joinRole);
    }

    public final boolean hasOtherHostInCurrentChannel(ChatThread chatThread) {
        String str;
        String strUid;
        RtcService rtcService = (RtcService) this.ctx.getService("rtc");
        if (chatThread == null || (str = chatThread.threadId) == null || !isCurrentThreadLive(str)) {
            return false;
        }
        SignallingChannel mappedSignallingChannel = rtcService.getMappedSignallingChannel(str);
        if ((mappedSignallingChannel != null ? mappedSignallingChannel.userList : null) == null) {
            return true;
        }
        AccountService accountService = (AccountService) this.ctx.getService("account");
        Intrinsics.checkExpressionValueIsNotNull(accountService, "accountService");
        String userId = accountService.getUserId();
        for (ChannelUser channelUser : mappedSignallingChannel.userList) {
            String strUid2 = channelUser.uid();
            if (strUid2 == null || !strUid2.equals(userId)) {
                if (channelUser.joinRole == 1 && (chatThread.getCoHostUidList().contains(channelUser.uid()) || ((strUid = channelUser.uid()) != null && strUid.equals(chatThread.uid)))) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean isMePresenterInCurrentChannel(String str) {
        SignallingChannel mappedSignallingChannel = ((RtcService) this.ctx.getService("rtc")).getMappedSignallingChannel(str);
        return (mappedSignallingChannel != null ? mappedSignallingChannel.joinRole : -1) == 1;
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x0081  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean needShowConfirmDialogWhenLeaveChannel(com.narvii.model.ChatThread r10) {
        /*
            r9 = this;
            r0 = 0
            if (r10 != 0) goto L4
            return r0
        L4:
            com.narvii.app.NVContext r1 = r9.ctx
            java.lang.String r2 = "rtc"
            java.lang.Object r1 = r1.getService(r2)
            com.narvii.chat.rtc.RtcService r1 = (com.narvii.chat.rtc.RtcService) r1
            com.narvii.chat.util.ChatHelper r2 = new com.narvii.chat.util.ChatHelper
            com.narvii.app.NVContext r3 = r9.ctx
            android.content.Context r3 = r3.getContext()
            java.lang.String r4 = "ctx.context"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r3, r4)
            r2.<init>(r3)
            java.lang.String r3 = r10.threadId
            com.narvii.chat.signalling.SignallingChannel r1 = r1.getMappedSignallingChannel(r3)
            r3 = 0
            if (r1 == 0) goto L2b
            java.util.List<com.narvii.chat.signalling.ChannelUser> r4 = r1.userList
            goto L2c
        L2b:
            r4 = r3
        L2c:
            r5 = 1
            if (r4 != 0) goto L31
        L2f:
            r4 = r3
            goto L58
        L31:
            if (r1 == 0) goto L2f
            java.util.List<com.narvii.chat.signalling.ChannelUser> r4 = r1.userList
            if (r4 == 0) goto L2f
            java.util.Iterator r4 = r4.iterator()
        L3b:
            boolean r6 = r4.hasNext()
            if (r6 == 0) goto L54
            java.lang.Object r6 = r4.next()
            r7 = r6
            com.narvii.chat.signalling.ChannelUser r7 = (com.narvii.chat.signalling.ChannelUser) r7
            int r7 = r7.channelUid
            int r8 = r1.channelUid
            if (r7 != r8) goto L50
            r7 = 1
            goto L51
        L50:
            r7 = 0
        L51:
            if (r7 == 0) goto L3b
            goto L55
        L54:
            r6 = r3
        L55:
            r4 = r6
            com.narvii.chat.signalling.ChannelUser r4 = (com.narvii.chat.signalling.ChannelUser) r4
        L58:
            if (r4 == 0) goto L5e
            boolean r6 = r4.isHost
            if (r6 == r5) goto L81
        L5e:
            if (r4 == 0) goto L69
            com.narvii.model.User r6 = r4.userProfile
            if (r6 == 0) goto L69
            java.lang.String r6 = r6.uid()
            goto L6a
        L69:
            r6 = r3
        L6a:
            boolean r6 = r2.isHost(r10, r6)
            if (r6 != 0) goto L81
            if (r4 == 0) goto L78
            com.narvii.model.User r4 = r4.userProfile
            if (r4 == 0) goto L78
            java.lang.String r3 = r4.uid
        L78:
            boolean r2 = r2.isCoHost(r10, r3)
            if (r2 == 0) goto L7f
            goto L81
        L7f:
            r2 = 0
            goto L82
        L81:
            r2 = 1
        L82:
            boolean r3 = r9.hasOtherHostInCurrentChannel(r10)
            if (r1 == 0) goto L91
            java.util.List<com.narvii.chat.signalling.ChannelUser> r4 = r1.userList
            if (r4 == 0) goto L91
            int r4 = r4.size()
            goto L92
        L91:
            r4 = 0
        L92:
            if (r4 <= r5) goto L96
            r4 = 1
            goto L97
        L96:
            r4 = 0
        L97:
            if (r4 == 0) goto Lad
            java.lang.String r10 = r10.threadId
            boolean r10 = r9.isMePresenterInCurrentChannel(r10)
            if (r10 == 0) goto Lad
            if (r2 == 0) goto Lad
            if (r3 == 0) goto Lac
            if (r1 == 0) goto Lad
            int r10 = r1.channelType
            r1 = 5
            if (r10 != r1) goto Lad
        Lac:
            r0 = 1
        Lad:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.chat.video.utils.VVChatHelper.needShowConfirmDialogWhenLeaveChannel(com.narvii.model.ChatThread):boolean");
    }
}
