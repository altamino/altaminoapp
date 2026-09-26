package com.narvii.chat.video.utils;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.chat.ChatFragment;
import com.narvii.chat.call.CallScreenService;
import com.narvii.chat.rtc.ChannelUserWrapper;
import com.narvii.chat.rtc.RtcService;
import com.narvii.chat.screenroom.playlist.PlaylistFragment;
import com.narvii.chat.screenroom.widgets.ReputationClaimDialog;
import com.narvii.chat.signalling.ChannelUser;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.chat.util.ChatHelper;
import com.narvii.chat.util.ChatHelperKt;
import com.narvii.chat.util.ChatRequestHelper;
import com.narvii.chat.video.fragments.ScreenRoomFragment;
import com.narvii.chat.video.view.VoiceCallHelper;
import com.narvii.livelayer.LiveLayerService;
import com.narvii.livelayer.ws.LiveLayerWsService;
import com.narvii.model.ChatThread;
import com.narvii.model.NVObject;
import com.narvii.model.User;
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
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class VVChatHelper {

    @NotNull
    private final NVContext ctx;

    /* JADX INFO: renamed from: com.narvii.chat.video.utils.VVChatHelper$showReputationClaimDialog$1, reason: invalid class name */
    public static final class AnonymousClass1 extends ApiResponseListener<ReputationPostResponse> {
        final /* synthetic */ NVActivity $a;
        final /* synthetic */ DialogInterface.OnDismissListener $repDismissListener;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(DialogInterface.OnDismissListener onDismissListener, NVActivity nVActivity, Class<ReputationPostResponse> cls) {
            super(cls);
            this.$repDismissListener = onDismissListener;
            this.$a = nVActivity;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onFinish$lambda$0(NVActivity nVActivity, ReputationPostResponse resp, DialogInterface.OnDismissListener onDismissListener) {
            kotlin.jvm.internal.t.j(resp, "$resp");
            if (nVActivity.isFinishing()) {
                return;
            }
            ReputationClaimDialog.show(nVActivity, resp, onDismissListener);
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFinish(@NotNull ApiRequest req, @NotNull final ReputationPostResponse resp) throws Exception {
            kotlin.jvm.internal.t.j(req, "req");
            kotlin.jvm.internal.t.j(resp, "resp");
            super.onFinish(req, resp);
            if (resp.totalReputation >= 1) {
                final NVActivity nVActivity = this.$a;
                final DialogInterface.OnDismissListener onDismissListener = this.$repDismissListener;
                Utils.postDelayed(new Runnable() { // from class: com.narvii.chat.video.utils.a0
                    @Override // java.lang.Runnable
                    public final void run() {
                        VVChatHelper.AnonymousClass1.onFinish$lambda$0(nVActivity, resp, onDismissListener);
                    }
                }, 50L);
            } else {
                DialogInterface.OnDismissListener onDismissListener2 = this.$repDismissListener;
                if (onDismissListener2 != null) {
                    onDismissListener2.onDismiss(null);
                }
            }
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(@Nullable ApiRequest apiRequest, int i10, @Nullable List<NameValuePair> list, @Nullable String str, @Nullable ApiResponse apiResponse, @Nullable Throwable th) {
            super.onFail(apiRequest, i10, list, str, apiResponse, th);
            DialogInterface.OnDismissListener onDismissListener = this.$repDismissListener;
            if (onDismissListener != null) {
                onDismissListener.onDismiss(null);
            }
        }
    }

    @NotNull
    public final NVContext getCtx() {
        return this.ctx;
    }

    @Nullable
    public final PlaylistFragment getPlayListFragment(@Nullable ChatFragment chatFragment) {
        if (chatFragment == null) {
            return null;
        }
        FragmentManager childFragmentManager = chatFragment.getChildFragmentManager();
        kotlin.jvm.internal.t.i(childFragmentManager, "getChildFragmentManager(...)");
        Fragment fragmentM0 = childFragmentManager.m0(ScreenRoomFragment.PLAYLIST_FRAGMENT_TAG);
        if (fragmentM0 instanceof PlaylistFragment) {
            return (PlaylistFragment) fragmentM0;
        }
        return null;
    }

    public final boolean isAgoraVideoType(int i10) {
        return i10 == 4 || i10 == 3 || i10 == 5;
    }

    public final boolean isAgoraVoiceType(int i10) {
        return i10 == 1;
    }

    public final boolean isCurrentChannelLive(@Nullable SignallingChannel signallingChannel) {
        if (signallingChannel == null || !SignallingChannel.isLegalRole(signallingChannel.joinRole) || !SignallingChannel.isLegalChannelType(signallingChannel.channelType)) {
            return false;
        }
        List<ChannelUser> list = signallingChannel.userList;
        return list == null || !list.isEmpty();
    }

    public final boolean isCurrentThreadLive(@Nullable String str) {
        SignallingChannel mappedSignallingChannel;
        return str != null && (mappedSignallingChannel = ((RtcService) this.ctx.getService("rtc")).getMappedSignallingChannel(str)) != null && SignallingChannel.isLegalChannelType(mappedSignallingChannel.channelType) && SignallingChannel.isLegalRole(mappedSignallingChannel.joinRole);
    }

    public final boolean isPrivateCall(@Nullable ChatThread chatThread, int i10) {
        return chatThread != null && chatThread.type == 0 && (i10 == 1 || i10 == 4);
    }

    public final boolean isValidChannelToJoinAgora(@Nullable SignallingChannel signallingChannel) {
        return (signallingChannel == null || !SignallingChannel.isLegalRole(signallingChannel.joinRole) || TextUtils.isEmpty(signallingChannel.threadId) || !SignallingChannel.isLegalChannelType(signallingChannel.channelType) || TextUtils.isEmpty(signallingChannel.channelKey) || TextUtils.isEmpty(signallingChannel.channelName)) ? false : true;
    }

    /* JADX WARN: Code duplicated, block: B:42:0x007d  */
    public final boolean needShowConfirmDialogWhenLeaveChannel(@Nullable ChatThread chatThread) {
        List<ChannelUser> list;
        Object next;
        ChannelUser channelUser;
        boolean z6;
        User user;
        User user2;
        List<ChannelUser> list2;
        if (chatThread == null) {
            return false;
        }
        RtcService rtcService = (RtcService) this.ctx.getService("rtc");
        Context context = this.ctx.getContext();
        kotlin.jvm.internal.t.i(context, "getContext(...)");
        ChatHelper chatHelper = new ChatHelper(context);
        SignallingChannel mappedSignallingChannel = rtcService.getMappedSignallingChannel(chatThread.threadId);
        String str = null;
        if ((mappedSignallingChannel != null ? mappedSignallingChannel.userList : null) == null || mappedSignallingChannel == null || (list = mappedSignallingChannel.userList) == null) {
            channelUser = null;
        } else {
            Iterator<T> it = list.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (((ChannelUser) next).channelUid != mappedSignallingChannel.channelUid);
            channelUser = (ChannelUser) next;
        }
        if (channelUser == null || !channelUser.isHost) {
            if (chatHelper.isHost(chatThread, (channelUser == null || (user2 = channelUser.userProfile) == null) ? null : user2.uid())) {
                z6 = true;
            } else {
                if (channelUser != null && (user = channelUser.userProfile) != null) {
                    str = user.uid;
                }
                if (chatHelper.isCoHost(chatThread, str)) {
                    z6 = true;
                } else {
                    z6 = false;
                }
            }
        } else {
            z6 = true;
        }
        boolean zHasOtherHostInCurrentChannel = hasOtherHostInCurrentChannel(chatThread);
        if (mappedSignallingChannel == null || (list2 = mappedSignallingChannel.userList) == null || list2.size() <= 1 || !isMePresenterInCurrentChannel(chatThread.threadId) || !z6) {
            return false;
        }
        return !zHasOtherHostInCurrentChannel || (mappedSignallingChannel != null && mappedSignallingChannel.channelType == 5);
    }

    @Nullable
    public final PlaylistFragment showPlayListFragment(@Nullable ChatFragment chatFragment, boolean z6) {
        Object obj;
        if (chatFragment == null) {
            return null;
        }
        FragmentManager childFragmentManager = chatFragment.getChildFragmentManager();
        kotlin.jvm.internal.t.i(childFragmentManager, "getChildFragmentManager(...)");
        Fragment fragmentM0 = childFragmentManager.m0(ScreenRoomFragment.PLAYLIST_FRAGMENT_TAG);
        if (fragmentM0 == null) {
            obj = fragmentM0;
            PlaylistFragment playlistFragment = new PlaylistFragment();
            playlistFragment.setIsPrePickMode(z6, chatFragment.getThread());
            childFragmentManager.q().y(R.anim.activity_push_bottom_in, R.anim.activity_push_bottom_out).c(R.id.screen_room_playlist, playlistFragment, ScreenRoomFragment.PLAYLIST_FRAGMENT_TAG).k();
            obj = playlistFragment;
        }
        obj = fragmentM0;
        if (obj instanceof PlaylistFragment) {
            return (PlaylistFragment) obj;
        }
        return null;
    }

    public VVChatHelper(@NotNull NVContext _ctx) {
        kotlin.jvm.internal.t.j(_ctx, "_ctx");
        this.ctx = _ctx;
    }

    private final boolean isDeviceOffline() {
        try {
            Object systemService = this.ctx.getContext().getSystemService("connectivity");
            kotlin.jvm.internal.t.h(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) systemService).getActiveNetworkInfo();
            if (activeNetworkInfo == null) {
                return false;
            }
            activeNetworkInfo.isConnected();
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void quitAsPresenter$default(VVChatHelper vVChatHelper, int i10, ChatThread chatThread, ChannelUserWrapper channelUserWrapper, Callback callback, int i11, Object obj) {
        if ((i11 & 8) != 0) {
            callback = null;
        }
        vVChatHelper.quitAsPresenter(i10, chatThread, channelUserWrapper, callback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void quitAsPresenter$lambda$21$lambda$20(ACMAlertDialog this_apply, Callback callback, ChatThread chatThread, RtcService rtcService, View view) {
        kotlin.jvm.internal.t.j(this_apply, "$this_apply");
        this_apply.dismiss();
        if (callback != null) {
            callback.call(Boolean.TRUE);
        }
        if (chatThread == null || !ChatHelperKt.isSingleChat(chatThread)) {
            rtcService.stopPresenting();
            return;
        }
        CallScreenService callScreenService = (CallScreenService) this_apply.getService("callScreen");
        if (callScreenService != null) {
            callScreenService.cancelCall(rtcService.getMainSigChannel());
        }
        rtcService.exitLiveChannel(chatThread.ndcId, chatThread.threadId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void requestToBePresenter$lambda$14(ACMAlertDialog dlg, View view) {
        kotlin.jvm.internal.t.j(dlg, "$dlg");
        dlg.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void requestToBePresenter$lambda$17(ACMAlertDialog dlg, VVChatHelper this$0, ChatThread chatThread, final RtcService rtcService, View view) {
        kotlin.jvm.internal.t.j(dlg, "$dlg");
        kotlin.jvm.internal.t.j(this$0, "this$0");
        dlg.dismiss();
        new ChatRequestHelper(this$0.ctx).sendJoinChatThreadRequest(chatThread.threadId, ((AccountService) this$0.ctx.getService("account")).getUserId(), chatThread, new Callback() { // from class: com.narvii.chat.video.utils.j
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                VVChatHelper.requestToBePresenter$lambda$17$lambda$16(rtcService, (Boolean) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void requestToBePresenter$lambda$17$lambda$16(RtcService rtcService, Boolean bool) {
        if (bool != null) {
            bool.booleanValue();
            rtcService.requestToBePresenter(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void requestToBePresenter$lambda$19(RtcService rtcService, Boolean bool) {
        if (bool != null) {
            bool.booleanValue();
            rtcService.requestToBePresenter(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showAcceptChatInvitationDialog$lambda$22(ACMAlertDialog dlg, View view) {
        kotlin.jvm.internal.t.j(dlg, "$dlg");
        dlg.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showAcceptChatInvitationDialog$lambda$23(ACMAlertDialog dlg, Callback callback, View view) {
        kotlin.jvm.internal.t.j(dlg, "$dlg");
        dlg.dismiss();
        if (callback != null) {
            callback.call(Boolean.TRUE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showChannelComeLiveDialog$lambda$26(Callback callback, ACMAlertDialog dlg, View view) {
        kotlin.jvm.internal.t.j(dlg, "$dlg");
        if (callback != null) {
            callback.call(Boolean.TRUE);
        }
        dlg.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showChannelComeLiveDialog$lambda$27(ACMAlertDialog dlg, Callback callback, View view) {
        kotlin.jvm.internal.t.j(dlg, "$dlg");
        dlg.dismiss();
        if (callback != null) {
            callback.call(Boolean.TRUE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showCloseOrMiniLiveChannelHintDialog$lambda$2(Callback callback, View view) {
        if (callback != null) {
            callback.call(Boolean.TRUE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showCloseOrMiniLiveChannelHintDialog$lambda$3(Callback callback, View view) {
        if (callback != null) {
            callback.call(Boolean.TRUE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showCloseOrMiniLiveChannelHintDialog$lambda$4(ACMAlertDialog dlg, View view) {
        kotlin.jvm.internal.t.j(dlg, "$dlg");
        dlg.dismiss();
    }

    public static /* synthetic */ void showLeaveChannelConfirmDialog$default(VVChatHelper vVChatHelper, Activity activity, boolean z6, Callback callback, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z6 = false;
        }
        vVChatHelper.showLeaveChannelConfirmDialog(activity, z6, callback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showLeaveChannelConfirmDialog$lambda$12(ACMAlertDialog dlg, View view) {
        kotlin.jvm.internal.t.j(dlg, "$dlg");
        dlg.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showLeaveChannelConfirmDialog$lambda$13(Callback callback, ACMAlertDialog dlg, View view) {
        kotlin.jvm.internal.t.j(dlg, "$dlg");
        if (callback != null) {
            callback.call(Boolean.TRUE);
        }
        dlg.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showNotEligibleForVVChatDialog$lambda$11(ACMAlertDialog dlg, Callback callback, View view) {
        kotlin.jvm.internal.t.j(dlg, "$dlg");
        dlg.dismiss();
        if (callback != null) {
            callback.call(Boolean.TRUE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showPermissionRequestDialog$lambda$8(ACMAlertDialog alertDialog, View view) {
        kotlin.jvm.internal.t.j(alertDialog, "$alertDialog");
        alertDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showPermissionRequestDialog$lambda$9(ACMAlertDialog alertDialog, Callback callback, View view) {
        kotlin.jvm.internal.t.j(alertDialog, "$alertDialog");
        alertDialog.dismiss();
        if (callback != null) {
            callback.call(Boolean.TRUE);
        }
    }

    public static /* synthetic */ PlaylistFragment showPlayListFragment$default(VVChatHelper vVChatHelper, ChatFragment chatFragment, boolean z6, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z6 = false;
        }
        return vVChatHelper.showPlayListFragment(chatFragment, z6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showPresenterNotExistedDialog$lambda$10(AlertDialog dlg, Callback callback, View view) {
        kotlin.jvm.internal.t.j(dlg, "$dlg");
        dlg.dismiss();
        if (callback != null) {
            callback.call(Boolean.TRUE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showPrivateCallLimitDialog$lambda$7(ACMAlertDialog dlg, Callback callback, View view) {
        kotlin.jvm.internal.t.j(dlg, "$dlg");
        dlg.dismiss();
        if (callback != null) {
            callback.call(Boolean.TRUE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showPrivateCallRetryDialog$lambda$5(Callback callback, AlertDialog dlg, View view) {
        kotlin.jvm.internal.t.j(dlg, "$dlg");
        if (callback != null) {
            callback.call(Boolean.FALSE);
        }
        dlg.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showPrivateCallRetryDialog$lambda$6(Callback callback, AlertDialog dlg, View view) {
        kotlin.jvm.internal.t.j(dlg, "$dlg");
        if (callback != null) {
            callback.call(Boolean.TRUE);
        }
        dlg.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showStrangerHintDialog$lambda$24(ACMAlertDialog dlg, View view) {
        kotlin.jvm.internal.t.j(dlg, "$dlg");
        dlg.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showStrangerHintDialog$lambda$25(ACMAlertDialog dlg, Callback callback, View view) {
        kotlin.jvm.internal.t.j(dlg, "$dlg");
        dlg.dismiss();
        if (callback != null) {
            callback.call(Boolean.TRUE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showSwitchChannelDialog$lambda$0(ACMAlertDialog dlg, Callback callback, View view) {
        kotlin.jvm.internal.t.j(dlg, "$dlg");
        dlg.dismiss();
        if (callback != null) {
            callback.call(Boolean.FALSE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showSwitchChannelDialog$lambda$1(ACMAlertDialog dlg, Callback callback, View view) {
        kotlin.jvm.internal.t.j(dlg, "$dlg");
        dlg.dismiss();
        if (callback != null) {
            callback.call(Boolean.TRUE);
        }
    }

    public final boolean channelContainMe(@Nullable SignallingChannel signallingChannel) {
        AccountService accountService;
        if ((signallingChannel != null ? signallingChannel.userList : null) == null || signallingChannel.userList.size() == 0 || (accountService = (AccountService) this.ctx.getService("account")) == null) {
            return false;
        }
        Iterator<ChannelUser> it = signallingChannel.userList.iterator();
        while (it.hasNext()) {
            if (Utils.isEqualsNotNull(it.next().uid(), accountService.getUserId())) {
                return true;
            }
        }
        return false;
    }

    public final void checkRtcStatus(@Nullable Callback<Boolean> callback) {
        WsService wsService = (WsService) this.ctx.getService("ws");
        kotlin.jvm.internal.t.g(wsService);
        int connectStatus = wsService.getConnectStatus();
        if (connectStatus == 1) {
            NVToast.makeText(this.ctx.getContext(), R.string.rtc_not_ready, 1).show();
            if (callback != null) {
                callback.call(Boolean.FALSE);
                return;
            }
            return;
        }
        if (connectStatus > 0 && !isDeviceOffline()) {
            if (callback != null) {
                callback.call(Boolean.TRUE);
            }
        } else {
            NVToast.makeText(this.ctx.getContext(), R.string.rtc_offline, 1).show();
            if (callback != null) {
                callback.call(Boolean.FALSE);
            }
        }
    }

    public final boolean hasOtherHostInCurrentChannel(@Nullable ChatThread chatThread) {
        String strUid;
        RtcService rtcService = (RtcService) this.ctx.getService("rtc");
        String str = chatThread != null ? chatThread.threadId : null;
        if (str == null || !isCurrentThreadLive(str)) {
            return false;
        }
        SignallingChannel mappedSignallingChannel = rtcService.getMappedSignallingChannel(str);
        if ((mappedSignallingChannel != null ? mappedSignallingChannel.userList : null) == null) {
            return true;
        }
        String userId = ((AccountService) this.ctx.getService("account")).getUserId();
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

    public final void hidePlayListFragment(@Nullable ChatFragment chatFragment) {
        if (chatFragment == null) {
            return;
        }
        FragmentManager childFragmentManager = chatFragment.getChildFragmentManager();
        kotlin.jvm.internal.t.i(childFragmentManager, "getChildFragmentManager(...)");
        Fragment fragmentM0 = childFragmentManager.m0(ScreenRoomFragment.PLAYLIST_FRAGMENT_TAG);
        if (fragmentM0 == null || !(fragmentM0 instanceof PlaylistFragment)) {
            return;
        }
        ((PlaylistFragment) fragmentM0).dismiss();
    }

    public final boolean isEligibleForVVChat() {
        String CPU_ABI;
        if (!((RtcService) this.ctx.getService("rtc")).isEligible() || (CPU_ABI = Build.CPU_ABI) == null) {
            return false;
        }
        kotlin.jvm.internal.t.i(CPU_ABI, "CPU_ABI");
        return kotlin.text.t.K(CPU_ABI, "arm", false, 2, null);
    }

    public final boolean isMePresenterInCurrentChannel(@Nullable String str) {
        SignallingChannel mappedSignallingChannel = ((RtcService) this.ctx.getService("rtc")).getMappedSignallingChannel(str);
        return mappedSignallingChannel != null && mappedSignallingChannel.joinRole == 1;
    }

    public final boolean isThreadOwner(@Nullable ChatThread chatThread, @Nullable String str) {
        return chatThread != null && chatThread.type == 2 && Utils.isEqualsNotNull(chatThread != null ? chatThread.uid : null, str);
    }

    /* JADX WARN: Code duplicated, block: B:25:0x005b  */
    public final void quitAsPresenter(int i10, @Nullable final ChatThread chatThread, @Nullable ChannelUserWrapper channelUserWrapper, @Nullable final Callback<Boolean> callback) {
        ChannelUser channelUser;
        ChannelUser channelUser2;
        final ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this.ctx.getContext());
        Context context = aCMAlertDialog.getContext();
        kotlin.jvm.internal.t.i(context, "getContext(...)");
        ChatHelper chatHelper = new ChatHelper(context);
        final RtcService rtcService = (RtcService) this.ctx.getService("rtc");
        int i11 = R.string.quit_as_speaker_stop_play_video_hint;
        if (channelUserWrapper == null || (channelUser2 = channelUserWrapper.channelUser) == null || !channelUser2.isHost || i10 != 5) {
            if (ChatHelperKt.isPublicChat(chatThread) && (chatHelper.isHost(chatThread) || chatHelper.isCoHost(chatThread))) {
                if (chatHelper.isSpeakerHasOtherOriganizer(chatThread, (channelUserWrapper == null || (channelUser = channelUserWrapper.channelUser) == null) ? null : channelUser.uid())) {
                    i11 = R.string.quit_as_speaker_hint;
                }
            } else {
                i11 = R.string.quit_as_speaker_hint;
            }
        }
        aCMAlertDialog.setMessage(i11);
        aCMAlertDialog.addButton(R.string.no, (View.OnClickListener) null, -4473925);
        aCMAlertDialog.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.chat.video.utils.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VVChatHelper.quitAsPresenter$lambda$21$lambda$20(aCMAlertDialog, callback, chatThread, rtcService, view);
            }
        });
        aCMAlertDialog.show();
    }

    public final void reportLiveLayerActiveEvent(@Nullable SignallingChannel signallingChannel, @Nullable String str, int i10) {
        if (signallingChannel != null && SignallingChannel.isLegalChannelType(signallingChannel.channelType) && Utils.isEqualsNotNull(str, signallingChannel.threadId) && ChatThread.isLegalThreadType(i10)) {
            LiveLayerService liveLayerService = (LiveLayerService) this.ctx.getService("liveLayer");
            String str2 = NVObject.objectTypeName(12) + com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING + str;
            HashMap<String, Object> map = new HashMap<>();
            ArrayList arrayList = new ArrayList();
            String ACTION_CHATTING = LiveLayerService.ACTION_CHATTING;
            kotlin.jvm.internal.t.i(ACTION_CHATTING, "ACTION_CHATTING");
            arrayList.add(ACTION_CHATTING);
            map.put("threadType", Integer.valueOf(i10));
            map.put("channelType", Integer.valueOf(signallingChannel.channelType));
            liveLayerService.reportActive(arrayList, str2, map);
        }
    }

    public final void reportLiveLayerInactiveEvent(@Nullable SignallingChannel signallingChannel, @Nullable String str, int i10) {
        if (signallingChannel != null && SignallingChannel.isLegalChannelType(signallingChannel.channelType) && Utils.isEqualsNotNull(str, signallingChannel.threadId) && ChatThread.isLegalThreadType(i10)) {
            LiveLayerWsService liveLayerWsService = (LiveLayerWsService) this.ctx.getService("liveLayerWS");
            ArrayList arrayList = new ArrayList();
            String ACTION_CHATTING = LiveLayerService.ACTION_CHATTING;
            kotlin.jvm.internal.t.i(ACTION_CHATTING, "ACTION_CHATTING");
            arrayList.add(ACTION_CHATTING);
            HashMap<String, Object> map = new HashMap<>();
            map.put("threadType", Integer.valueOf(i10));
            map.put("channelType", Integer.valueOf(signallingChannel.channelType));
            String strAssembleTarget = LiveLayerService.assembleTarget(signallingChannel.ndcId, NVObject.objectTypeName(12) + com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING + str);
            if (liveLayerWsService != null) {
                liveLayerWsService.reportInactive(signallingChannel.ndcId, arrayList, strAssembleTarget, map);
            }
        }
    }

    public final void requestToBePresenter(@Nullable final ChatThread chatThread) {
        int i10;
        final RtcService rtcService = (RtcService) this.ctx.getService("rtc");
        if (chatThread == null || (i10 = chatThread.membershipStatus) == 1) {
            rtcService.requestToBePresenter(null);
            return;
        }
        if (i10 != 2) {
            new ChatRequestHelper(this.ctx).sendJoinChatThreadRequest(chatThread.threadId, ((AccountService) this.ctx.getService("account")).getUserId(), chatThread, new Callback() { // from class: com.narvii.chat.video.utils.y
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    VVChatHelper.requestToBePresenter$lambda$19(rtcService, (Boolean) obj);
                }
            });
            return;
        }
        final ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this.ctx.getContext());
        aCMAlertDialog.setMessage(R.string.chat_need_to_accept);
        aCMAlertDialog.addNagativeButton(R.string.cancel, new View.OnClickListener() { // from class: com.narvii.chat.video.utils.w
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VVChatHelper.requestToBePresenter$lambda$14(aCMAlertDialog, view);
            }
        });
        aCMAlertDialog.addButton(R.string.accept, new View.OnClickListener() { // from class: com.narvii.chat.video.utils.x
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VVChatHelper.requestToBePresenter$lambda$17(aCMAlertDialog, this, chatThread, rtcService, view);
            }
        });
        aCMAlertDialog.show();
    }

    public final void sendCallCancelMessage(@Nullable SignallingChannel signallingChannel, boolean z6) {
        if (signallingChannel == null || z6) {
            return;
        }
        VoiceCallHelper voiceCallHelper = new VoiceCallHelper(this.ctx.getContext());
        int i10 = signallingChannel.channelType;
        int i11 = 53;
        if (i10 != 1) {
            if (i10 == 3) {
                i11 = 59;
            } else if (i10 == 4) {
                i11 = 56;
            }
        }
        ApiRequest apiRequestBuildRequest = voiceCallHelper.buildRequest(signallingChannel.ndcId, signallingChannel.threadId, i11);
        ApiService apiService = (ApiService) NVApplication.instance().getService(signallingChannel.ndcId, "api");
        if (apiRequestBuildRequest != null) {
            apiService.exec(apiRequestBuildRequest, ApiResponseListener.IGNORE_RESPONSE_LISTENER);
        }
    }

    public final void sendCallNoAnswerMessage(@Nullable SignallingChannel signallingChannel) {
        if (signallingChannel == null) {
            return;
        }
        VoiceCallHelper voiceCallHelper = new VoiceCallHelper(this.ctx.getContext());
        int i10 = signallingChannel.channelType;
        int i11 = 52;
        if (i10 != 1) {
            if (i10 == 3) {
                i11 = 58;
            } else if (i10 == 4) {
                i11 = 55;
            }
        }
        ((ApiService) NVApplication.instance().getService(signallingChannel.ndcId, "api")).exec(voiceCallHelper.buildRequest(signallingChannel.ndcId, signallingChannel.threadId, i11), ApiResponseListener.IGNORE_RESPONSE_LISTENER);
    }

    public final void showAcceptChatInvitationDialog(@Nullable ChatThread chatThread, @Nullable final Callback<Boolean> callback) {
        if (chatThread == null) {
            return;
        }
        final ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this.ctx.getContext());
        aCMAlertDialog.setMessage(R.string.chat_need_to_accept);
        aCMAlertDialog.addNagativeButton(R.string.cancel, new View.OnClickListener() { // from class: com.narvii.chat.video.utils.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VVChatHelper.showAcceptChatInvitationDialog$lambda$22(aCMAlertDialog, view);
            }
        });
        aCMAlertDialog.addButton(R.string.accept, new View.OnClickListener() { // from class: com.narvii.chat.video.utils.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VVChatHelper.showAcceptChatInvitationDialog$lambda$23(aCMAlertDialog, callback, view);
            }
        });
        aCMAlertDialog.show();
    }

    public final void showChannelComeLiveDialog(int i10, @Nullable final Callback<Boolean> callback, @Nullable final Callback<Boolean> callback2) {
        final ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this.ctx.getContext());
        aCMAlertDialog.setMessage(R.string.room_come_live_hint_live);
        aCMAlertDialog.addNagativeButton(R.string.no, new View.OnClickListener() { // from class: com.narvii.chat.video.utils.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VVChatHelper.showChannelComeLiveDialog$lambda$26(callback2, aCMAlertDialog, view);
            }
        });
        aCMAlertDialog.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.chat.video.utils.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VVChatHelper.showChannelComeLiveDialog$lambda$27(aCMAlertDialog, callback, view);
            }
        });
        aCMAlertDialog.setCancelable(false);
        aCMAlertDialog.show();
    }

    @NotNull
    public final ACMAlertDialog showCloseOrMiniLiveChannelHintDialog(int i10, @Nullable final Callback<Boolean> callback, @Nullable final Callback<Boolean> callback2) {
        final ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this.ctx.getContext());
        aCMAlertDialog.setMessage(this.ctx.getContext().getString(R.string.quit_as_speaker_hint));
        aCMAlertDialog.addNagativeButton(R.string.leave_chat_room, new View.OnClickListener() { // from class: com.narvii.chat.video.utils.z
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VVChatHelper.showCloseOrMiniLiveChannelHintDialog$lambda$2(callback2, view);
            }
        });
        aCMAlertDialog.addButton(R.string.minimize_the_view, new View.OnClickListener() { // from class: com.narvii.chat.video.utils.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VVChatHelper.showCloseOrMiniLiveChannelHintDialog$lambda$3(callback, view);
            }
        });
        aCMAlertDialog.findViewById(R.id.root).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.video.utils.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VVChatHelper.showCloseOrMiniLiveChannelHintDialog$lambda$4(aCMAlertDialog, view);
            }
        });
        aCMAlertDialog.show();
        return aCMAlertDialog;
    }

    public final void showLeaveChannelConfirmDialog(@NotNull Activity activity, boolean z6, @Nullable final Callback<Boolean> callback) {
        kotlin.jvm.internal.t.j(activity, "activity");
        final ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(activity);
        aCMAlertDialog.setMessage(z6 ? R.string.rtc_organizer_quit_live : R.string.quit_as_speaker_hint);
        aCMAlertDialog.addNagativeButton(R.string.no, new View.OnClickListener() { // from class: com.narvii.chat.video.utils.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VVChatHelper.showLeaveChannelConfirmDialog$lambda$12(aCMAlertDialog, view);
            }
        });
        aCMAlertDialog.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.chat.video.utils.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VVChatHelper.showLeaveChannelConfirmDialog$lambda$13(callback, aCMAlertDialog, view);
            }
        });
        if (!activity.isFinishing()) {
            aCMAlertDialog.show();
        } else if (callback != null) {
            callback.call(Boolean.TRUE);
        }
    }

    public final void showNotEligibleForVVChatDialog(@Nullable final Callback<Boolean> callback) {
        final ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this.ctx.getContext());
        aCMAlertDialog.setMessage(R.string.av_not_supported);
        aCMAlertDialog.addButton(android.R.string.ok, new View.OnClickListener() { // from class: com.narvii.chat.video.utils.t
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VVChatHelper.showNotEligibleForVVChatDialog$lambda$11(aCMAlertDialog, callback, view);
            }
        });
        aCMAlertDialog.show();
    }

    public final void showPermissionRequestDialog(int i10, @Nullable final Callback<Boolean> callback) {
        final ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this.ctx.getContext());
        aCMAlertDialog.setTitle(R.string.floating_permission_title);
        aCMAlertDialog.setMessage(this.ctx.getContext().getString(R.string.floating_permission_message_live));
        aCMAlertDialog.addNagativeButton(R.string.cancel, new View.OnClickListener() { // from class: com.narvii.chat.video.utils.u
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VVChatHelper.showPermissionRequestDialog$lambda$8(aCMAlertDialog, view);
            }
        });
        aCMAlertDialog.addButton(android.R.string.ok, new View.OnClickListener() { // from class: com.narvii.chat.video.utils.v
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VVChatHelper.showPermissionRequestDialog$lambda$9(aCMAlertDialog, callback, view);
            }
        });
        aCMAlertDialog.show();
    }

    @NotNull
    public final AlertDialog showPresenterNotExistedDialog(int i10, int i11, @Nullable final Callback<Boolean> callback) {
        final AlertDialog alertDialog = new AlertDialog(this.ctx.getContext());
        alertDialog.setContentView(R.layout.dialog_channel_empty);
        ((TextView) alertDialog.findViewById(R.id.end_hint)).setText(this.ctx.getContext().getString(R.string.live_channel_ended));
        alertDialog.findViewById(R.id.leave).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.video.utils.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VVChatHelper.showPresenterNotExistedDialog$lambda$10(alertDialog, callback, view);
            }
        });
        alertDialog.setCancelable(false);
        alertDialog.show();
        return alertDialog;
    }

    public final void showPresenterNotExistedToast(int i10) {
        NVToast.makeText(this.ctx.getContext(), this.ctx.getContext().getString(R.string.live_channel_ended), 1).show();
    }

    @NotNull
    public final ACMAlertDialog showPrivateCallLimitDialog(int i10, @Nullable final Callback<Boolean> callback) {
        final ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this.ctx.getContext());
        aCMAlertDialog.setMessage(R.string.private_call_limit);
        aCMAlertDialog.addButton(R.string.ok, new View.OnClickListener() { // from class: com.narvii.chat.video.utils.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VVChatHelper.showPrivateCallLimitDialog$lambda$7(aCMAlertDialog, callback, view);
            }
        });
        aCMAlertDialog.show();
        return aCMAlertDialog;
    }

    @NotNull
    public final AlertDialog showPrivateCallRetryDialog(@Nullable final Callback<Boolean> callback) {
        final AlertDialog alertDialog = new AlertDialog(this.ctx.getContext());
        alertDialog.setContentView(R.layout.dialog_call_retry);
        alertDialog.findViewById(R.id.cancel).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.video.utils.o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VVChatHelper.showPrivateCallRetryDialog$lambda$5(callback, alertDialog, view);
            }
        });
        alertDialog.findViewById(R.id.retry).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.video.utils.p
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VVChatHelper.showPrivateCallRetryDialog$lambda$6(callback, alertDialog, view);
            }
        });
        alertDialog.setCancelable(false);
        alertDialog.show();
        return alertDialog;
    }

    public final void showReputationClaimDialog(@Nullable NVActivity nVActivity, int i10, @Nullable SignallingChannel signallingChannel, @Nullable DialogInterface.OnDismissListener onDismissListener) {
        if (nVActivity == null || nVActivity.isFinishing() || signallingChannel == null) {
            return;
        }
        ((ApiService) nVActivity.getService("api")).exec(ApiRequest.builder().https().communityId(i10).path("/chat/thread/" + signallingChannel.threadId + "/avchat-reputation").post().build(), new AnonymousClass1(onDismissListener, nVActivity, ReputationPostResponse.class));
    }

    public final void showStrangerHintDialog(int i10, @Nullable ChatThread chatThread, @Nullable final Callback<Boolean> callback) {
        if (chatThread != null && chatThread.type != 2) {
            if (callback != null) {
                callback.call(Boolean.TRUE);
            }
        } else {
            final ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this.ctx.getContext());
            aCMAlertDialog.setTitle(R.string.stranger_note_title_1);
            aCMAlertDialog.setMessage(R.string.stranger_note_content_1_live);
            aCMAlertDialog.addNagativeButton(i10 != 1 ? R.string.view_only : R.string.listen_only, new View.OnClickListener() { // from class: com.narvii.chat.video.utils.m
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    VVChatHelper.showStrangerHintDialog$lambda$24(aCMAlertDialog, view);
                }
            });
            aCMAlertDialog.addButton(R.string.confirm, new View.OnClickListener() { // from class: com.narvii.chat.video.utils.s
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    VVChatHelper.showStrangerHintDialog$lambda$25(aCMAlertDialog, callback, view);
                }
            });
            aCMAlertDialog.show();
        }
    }

    public final void showSwitchChannelDialog(@Nullable final Callback<Boolean> callback, @Nullable final Callback<Boolean> callback2) {
        if (((RtcService) this.ctx.getService("rtc")).getMainSigChannel() == null) {
            return;
        }
        final ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this.ctx.getContext());
        aCMAlertDialog.setMessage(R.string.switch_channel_note_live);
        aCMAlertDialog.addNagativeButton(R.string.no, new View.OnClickListener() { // from class: com.narvii.chat.video.utils.q
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VVChatHelper.showSwitchChannelDialog$lambda$0(aCMAlertDialog, callback2, view);
            }
        });
        aCMAlertDialog.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.chat.video.utils.r
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VVChatHelper.showSwitchChannelDialog$lambda$1(aCMAlertDialog, callback, view);
            }
        });
        aCMAlertDialog.setCancelable(false);
        aCMAlertDialog.show();
    }

    public final boolean supportLiveChannelInCurCommunity() {
        CommunityConfigHelper communityConfigHelper = new CommunityConfigHelper(this.ctx);
        return communityConfigHelper.isChatEnabled() && (communityConfigHelper.isVoiceChatEnable() || communityConfigHelper.isVideoChatEnable() || communityConfigHelper.isAvatarChatEnable() || communityConfigHelper.isScreenRoomEnable() || communityConfigHelper.isAudio2ChatEnable());
    }

    public final boolean checkEligibleWithHint() {
        if (isEligibleForVVChat()) {
            return true;
        }
        showNotEligibleForVVChatDialog(null);
        return false;
    }

    public final boolean isReadyToLaunchLiveChannel(@Nullable ChatThread chatThread, boolean z6) {
        if (!checkEligibleWithHint() || chatThread == null) {
            return false;
        }
        return true;
    }
}
