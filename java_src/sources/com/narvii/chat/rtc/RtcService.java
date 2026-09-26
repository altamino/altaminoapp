package com.narvii.chat.rtc;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.SurfaceView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.chat.call.CallScreenService;
import com.narvii.chat.screenroom.ReputationEarningComposite;
import com.narvii.chat.screenroom.SRChannelStatusChangeListener;
import com.narvii.chat.screenroom.SRRoleChangeListener;
import com.narvii.chat.screenroom.ScreenRoomService;
import com.narvii.chat.signalling.ChannelUser;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.chat.signalling.SignallingListener;
import com.narvii.chat.signalling.SignallingService;
import com.narvii.chat.signalling.ThreadChannelUserInfo;
import com.narvii.chat.video.CameraRenderer;
import com.narvii.chat.video.ChatLogEventHelper;
import com.narvii.chat.video.RtcChatManager;
import com.narvii.chat.video.events.AgoraUserVolumeChangeListener;
import com.narvii.chat.video.events.ChannelUserWrapperUpdateListener;
import com.narvii.chat.video.events.LiveChannelChangeListener;
import com.narvii.chat.video.events.LiveChannelErrorListener;
import com.narvii.chat.video.events.LocalMuteUserListChangeListener;
import com.narvii.chat.video.events.MiniContentMuteStatusChangeListener;
import com.narvii.chat.video.events.MyChannelUserStatusChangeListener;
import com.narvii.chat.video.events.MyNetworkStatusChangeListener;
import com.narvii.chat.video.floating.CommunityThread;
import com.narvii.chat.video.floating.FloatingManager;
import com.narvii.chat.video.invite.VVChatInviteActivity;
import com.narvii.chat.video.utils.LiveChannelMusicHelper;
import com.narvii.chat.video.utils.LiveChannelNotificationHelper;
import com.narvii.chat.video.utils.VVChatHelper;
import com.narvii.chat.video.utils.VVChatLogHelper;
import com.narvii.chat.waitinglist.WaitingListListener;
import com.narvii.chat.waitinglist.WaitingListService;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.model.ChatThread;
import com.narvii.model.User;
import com.narvii.util.Callback;
import com.narvii.util.EventDispatcher;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.crashlytics.CrashlyticsUtils;
import com.narvii.util.ws.WsError;
import com.narvii.video.framepusher.MediaFramePusher;
import com.narvii.video.model.ChannelActionCallback;
import com.narvii.video.model.ChannelActionError;
import com.narvii.video.model.ChannelActionResult;
import com.narvii.video.model.RtcEventHandler;
import com.narvii.video.pro.VideoPreProcessing;
import com.narvii.video.ui.UserStatusData;
import com.narvii.video.ui.floating.FloatingClickEvent;
import com.narvii.widget.ACMAlertDialog;
import io.agora.rtc.IRtcEngineEventHandler;
import io.agora.rtc.RtcEngine;
import io.agora.rtc.video.VideoCanvas;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import w7.l0;
import w7.u;

/* JADX INFO: loaded from: classes5.dex */
public class RtcService implements SignallingListener, RtcEventHandler, FaceTrackStatusChangeListener, WaitingListListener {
    public static final String ACTION_CAMERA_FREE = "com.narvii.action.CAMERA_FREE";
    public static final String ACTION_CAMERA_TAKEN = "com.narvii.action.CAMERA_TAKEN";
    public static final String ACTION_CHAT_ACTIVITY_FORCE_FINISH = "com.narvii.action.ACTION_CHAT_ACTIVITY_FORCE_FINISH";
    public static final String ACTION_LIVE_CHANNEL_QUIT = "com.narvii.action.LIVE_CHANNEL_QUIT";
    public static final int CHANNEL_USER_LIMIT = 7;
    private static final long CONNECTION_CHECK_INTERVAL = 120000;
    private static final String IS_IN_MINI_STATUS = "isMiniStatus";
    private static final String IS_MINI_ALL_MUTE = "isMiniAllMute";
    public static final String KEY_CHANNEL_TYPE = "channel_type";
    public static final String KEY_CHAT_THREAD = "thread";
    public static final String KEY_COMMUNITY = "__community";
    public static final String KEY_COMMUNITY_ID = "__communityId";
    public static final String KEY_FROM_GLOBAL_CHAT = "__fromGlobalChat";
    public static final String KEY_HIDE_DRAWER = "__hideDrawer";
    public static final String KEY_IS_CREATOR = "isCreator";
    public static final String KEY_THREAD_ID = "threadId";
    private static final int LOCAL_MUTE_ACTION_ADD = 0;
    private static final int LOCAL_MUTE_ACTION_REMOVE = 1;
    public static final int SHOWING_MODE_MINI = 1;
    public static final int SHOWING_MODE_NONE = -1;
    public static final int SHOWING_MODE_NORMAL = 0;
    private static final String TAG = "RtcService";
    private static final long VOLUME_ZERO_UPDATE_TIME_LIMIT = 5000;
    private static Handler showFloatingWindowHandler = new Handler(Looper.getMainLooper());
    private AccountService accountService;
    private volatile boolean agoraJoinRequested;
    private CallScreenService callScreenService;
    SparseArray<ChannelUser> channelUserCompareNew;
    SparseArray<ChannelUser> channelUserCompareOld;
    FloatingClickEvent clickEvent;
    Runnable connectionCheckRunnable;
    private Context context;
    private Bundle curLiveChannelInfo;
    private FloatingManager floatingManager;
    private Callback getAgoraChannelInfoCallBack;
    private boolean hasShowingThread;
    private boolean isLostConnectionStatus;
    private boolean isPrivateMainChannelFullBefore;
    public boolean isScreenRoomRoleSet;
    private boolean joinAgoraMessageDispatched;
    public Bundle liveExtraBundle;
    private LocalBroadcastManager localBroadcastManager;
    private ChatThread mainChannelChatThread;
    private SignallingChannel mainSignalChannel;
    private LiveChannelMusicHelper musicHelper;
    public EventDispatcher<MiniContentMuteStatusChangeListener> muteStatusDispatcher;
    private LiveChannelNotificationHelper notificationHelper;
    private NVContext nvContext;
    public int oldChannelType;
    private int oldTotalVolume;
    private String pendingFloatingThreadId;
    private final BroadcastReceiver receiver;
    RelaunchLiveChannelListener relaunchLiveChannelListener;
    private ReputationEarningComposite repEarningComposite;
    private RtcChatManager rtcManager;
    private SignallingService sigService;
    public WeakReference<Activity> topActivity;
    private VideoPreProcessing.FrameAvailableListener videoFrameAvailableListener;
    private VideoPreProcessing videoPreProcessing;
    private VVChatHelper vvChatHelper;
    String vvchatStartChatType;
    long vvchatStartTime;
    private WaitingListService waitingListService;
    public int channelShowingMode = -1;
    public int screenRoomHostUid = -1;
    private SparseArray<ChannelUserWrapper> mainChannelUserWrapperList = new SparseArray<>();
    private Set<Integer> unbridledAgoraUsers = new HashSet();
    private Set<String> localMuteUserList = new HashSet();
    private HashMap<String, EventDispatcher<MyNetworkStatusChangeListener>> networkStatusDispatcher = new HashMap<>();
    private HashMap<String, EventDispatcher<AgoraUserVolumeChangeListener>> totalVolumeChangeDispatcher = new HashMap<>();
    private HashMap<String, EventDispatcher<LiveChannelChangeListener>> channelStatusChangeDispatcher = new HashMap<>();
    private HashMap<String, EventDispatcher<MyChannelUserStatusChangeListener>> localChannelUserStatusDispatcher = new HashMap<>();
    private HashMap<String, EventDispatcher<ChannelUserWrapperUpdateListener>> channelUserWrapperStatusDispatcher = new HashMap<>();
    private HashMap<String, EventDispatcher<LocalMuteUserListChangeListener>> localMuteUserListDispatcher = new HashMap<>();
    private HashMap<String, EventDispatcher<LiveChannelErrorListener>> channelErrorDispatcher = new HashMap<>();
    private HashMap<String, EventDispatcher<WaitingListListener>> waitingListDispatcher = new HashMap<>();
    private EventDispatcher<SRRoleChangeListener> srRoleChangeListenerEventDispatcher = new EventDispatcher<>();
    private EventDispatcher<SRChannelStatusChangeListener> srChannelStatusChangeDispatcher = new EventDispatcher<>();
    private EventDispatcher<DataStreamListener> dataStreamListeners = new EventDispatcher<>();
    private Bundle curChannelMiniInfo = new Bundle();
    private SparseArray<Long> lastVolumeZeroTime = new SparseArray<>();
    private SparseArray<Integer> lastVolumes = new SparseArray<>();
    private AtomicBoolean hasLeaveChannel = new AtomicBoolean(false);

    /* JADX INFO: renamed from: com.narvii.chat.rtc.RtcService$10, reason: invalid class name */
    class AnonymousClass10 implements Callback {
        final /* synthetic */ int val$channelType;
        final /* synthetic */ int val$ndcId;
        final /* synthetic */ int val$role;
        final /* synthetic */ String val$threadId;

        AnonymousClass10(int i10, String str, int i11, int i12) {
            this.val$ndcId = i10;
            this.val$threadId = str;
            this.val$role = i11;
            this.val$channelType = i12;
        }

        @Override // com.narvii.util.Callback
        public void call(Object obj) {
            if (obj instanceof SignallingChannel) {
                RtcService.this.sigService.updateThreadJoinRole(this.val$ndcId, this.val$threadId, this.val$role, new Callback() { // from class: com.narvii.chat.rtc.RtcService.10.1
                    @Override // com.narvii.util.Callback
                    public void call(Object obj2) {
                        if (!(obj2 instanceof SignallingChannel)) {
                            if (obj2 instanceof WsError) {
                                AnonymousClass10 anonymousClass10 = AnonymousClass10.this;
                                WsError wsError = (WsError) obj2;
                                RtcService.this.dispatchChannelException(anonymousClass10.val$threadId, wsError.code, wsError);
                                return;
                            }
                            return;
                        }
                        if (((SignallingChannel) obj2).joinRole == 1) {
                            SignallingService signallingService = RtcService.this.sigService;
                            AnonymousClass10 anonymousClass11 = AnonymousClass10.this;
                            signallingService.updateThreadChannelType(anonymousClass11.val$ndcId, anonymousClass11.val$threadId, anonymousClass11.val$channelType, new Callback() { // from class: com.narvii.chat.rtc.RtcService.10.1.1
                                @Override // com.narvii.util.Callback
                                public void call(Object obj3) {
                                    if (obj3 instanceof SignallingChannel) {
                                        SignallingService signallingService2 = RtcService.this.sigService;
                                        AnonymousClass10 anonymousClass12 = AnonymousClass10.this;
                                        signallingService2.getAgoraChannel(anonymousClass12.val$ndcId, anonymousClass12.val$threadId, RtcService.this.getAgoraChannelInfoCallBack);
                                    } else if (obj3 instanceof WsError) {
                                        AnonymousClass10 anonymousClass13 = AnonymousClass10.this;
                                        WsError wsError2 = (WsError) obj3;
                                        RtcService.this.dispatchChannelException(anonymousClass13.val$threadId, wsError2.code, wsError2);
                                    }
                                }
                            });
                        } else {
                            SignallingService signallingService2 = RtcService.this.sigService;
                            AnonymousClass10 anonymousClass12 = AnonymousClass10.this;
                            signallingService2.getAgoraChannel(anonymousClass12.val$ndcId, anonymousClass12.val$threadId, RtcService.this.getAgoraChannelInfoCallBack);
                        }
                    }
                });
            }
        }
    }

    /* JADX INFO: renamed from: com.narvii.chat.rtc.RtcService$5, reason: invalid class name */
    class AnonymousClass5 implements FloatingClickEvent {
        AnonymousClass5() {
        }

        private void leaveFromWindow(SignallingChannel signallingChannel) {
            new ChatLogEventHelper(RtcService.this.nvContext).logQuitChat(signallingChannel.channelType, RtcService.this.mainChannelChatThread);
            boolean zIsPresenterInChannel = RtcService.this.isPresenterInChannel();
            RtcService.this.callScreenService.cancelCall(signallingChannel);
            RtcService.this.exitLiveChannel(signallingChannel.ndcId, signallingChannel.threadId);
            VVChatLogHelper vVChatLogHelper = new VVChatLogHelper(RtcService.this.nvContext);
            if (zIsPresenterInChannel) {
                vVChatLogHelper.logStopPresentingLiveChannel(signallingChannel.channelType, "Popup Window", null);
            }
            vVChatLogHelper.logLeaveLiveChannel(signallingChannel.channelType, "Popup Window", null);
        }

        @Override // com.narvii.video.ui.floating.FloatingClickEvent
        public void onCloseClicked() {
            List<ChannelUser> list;
            final SignallingChannel mainSigChannel = RtcService.this.getMainSigChannel();
            if (mainSigChannel == null) {
                RtcService.this.hideVideoFloatingWindow();
                RtcService.this.hideAudioFloatingWindow();
                RtcService.this.hideSRFloatingWindow();
                RtcService.this.cancelNotification();
                return;
            }
            WeakReference<Activity> weakReference = RtcService.this.topActivity;
            Activity activity = weakReference == null ? null : weakReference.get();
            if (activity == null || activity.isFinishing()) {
                leaveFromWindow(mainSigChannel);
                return;
            }
            boolean z6 = RtcService.this.getMainChannelChatThread() != null && RtcService.this.getMainChannelChatThread().type == 0 && RtcService.this.callScreenService != null && (RtcService.this.callScreenService.getCurStatus() != 8 || RtcService.this.callScreenService.getCurStatus() == 6);
            if (mainSigChannel.joinRole != 1 || z6 || (list = mainSigChannel.userList) == null || list.size() <= 1) {
                leaveFromWindow(mainSigChannel);
                return;
            }
            VVChatHelper vVChatHelper = new VVChatHelper(RtcService.this.nvContext);
            if (vVChatHelper.needShowConfirmDialogWhenLeaveChannel(RtcService.this.getMainChannelChatThread())) {
                vVChatHelper.showLeaveChannelConfirmDialog(activity, true, new Callback() { // from class: com.narvii.chat.rtc.l
                    @Override // com.narvii.util.Callback
                    public final void call(Object obj) {
                        this.f2016a.lambda$onCloseClicked$0(mainSigChannel, (Boolean) obj);
                    }
                });
            } else {
                leaveFromWindow(mainSigChannel);
            }
        }

        @Override // com.narvii.video.ui.floating.FloatingClickEvent
        public void onTotalClicked() {
            RtcService.this.relaunchRtcMainActivity();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCloseClicked$0(SignallingChannel signallingChannel, Boolean bool) {
            if (bool.booleanValue()) {
                leaveFromWindow(signallingChannel);
            }
        }
    }

    public interface WaitingListCallback<T, K> {
        void call(T t5, K k);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isVideoSignificantChannelType(int i10) {
        return i10 == 4 || i10 == 3 || i10 == 5;
    }

    private boolean isVoiceSignificantChannelType(int i10) {
        return i10 == 1;
    }

    private void joinAgoraChannel(String str, String str2, int i10, int i11, int i12, boolean z6, boolean z10) {
        int i13;
        SignallingChannel signallingChannel;
        int i14 = i10 == 1 ? 1 : 2;
        ChatThread chatThread = this.mainChannelChatThread;
        boolean z11 = chatThread == null || chatThread.type != 0 || (signallingChannel = this.mainSignalChannel) == null || signallingChannel.channelType != 1;
        SignallingChannel signallingChannel2 = this.mainSignalChannel;
        this.rtcManager.joinChannel(str, str2, i14, i11, i12, z11, z6, signallingChannel2 != null && ((i13 = signallingChannel2.channelType) == 4 || i13 == 3), signallingChannel2 != null && signallingChannel2.channelType == 5, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$exitLiveChannel$0(SignallingChannel signallingChannel, Object obj) {
        this.agoraJoinRequested = false;
        if (obj instanceof ChannelActionResult) {
            handleChannelActionResult(signallingChannel, (ChannelActionResult) obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$exitSignallingChannel$1(ChannelActionCallback channelActionCallback, Object obj) {
        this.agoraJoinRequested = false;
        if (obj instanceof SignallingChannel) {
            cleanMainChannel();
            if (channelActionCallback != null) {
                channelActionCallback.call(new ChannelActionResult(true, null));
            }
        }
        if (obj instanceof WsError) {
            NVToast.makeText(this.context, obj.toString(), 1).show();
            if (channelActionCallback != null) {
                channelActionCallback.call(new ChannelActionResult(false, ChannelActionError.LEAVE_CHANNEL_ERROR));
            }
        }
    }

    private void onNewUserJoined(ChannelUser channelUser) {
    }

    private void onUserLeaveChannel(ChannelUser channelUser) {
    }

    public void addMutedUser(String str) {
        operaLocalMuteUser(0, str);
    }

    public boolean channelContainMe(SignallingChannel signallingChannel) {
        List<ChannelUser> list;
        AccountService accountService;
        if (signallingChannel == null || (list = signallingChannel.userList) == null || list.size() == 0 || (accountService = this.accountService) == null) {
            return false;
        }
        if (TextUtils.isEmpty(accountService.getUserId())) {
            Iterator<ChannelUser> it = signallingChannel.userList.iterator();
            while (it.hasNext()) {
                if (it.next().channelUid == signallingChannel.channelUid) {
                    return true;
                }
            }
        } else {
            Iterator<ChannelUser> it2 = signallingChannel.userList.iterator();
            while (it2.hasNext()) {
                if (Utils.isEqualsNotNull(it2.next().uid(), this.accountService.getUserId())) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean channelOnlyContaineMe(SignallingChannel signallingChannel) {
        List<ChannelUser> list;
        return (signallingChannel == null || (list = signallingChannel.userList) == null || list.size() == 0 || signallingChannel.userList.size() != 1 || signallingChannel.userList.get(0).channelUid != signallingChannel.channelUid) ? false : true;
    }

    public void exitLiveChannel(int i10, String str) {
        exitLiveChannel(i10, str, null, null, true);
    }

    public void exitLiveChannelKeepWindow(int i10, String str) {
        exitLiveChannel(i10, str, null, null, false);
    }

    public Bundle getCurLiveChannelInfo() {
        return this.curLiveChannelInfo;
    }

    public Set<String> getLocalMutedUserList() {
        return this.localMuteUserList;
    }

    public ChatThread getMainChannelChatThread() {
        return this.mainChannelChatThread;
    }

    public SparseArray<ChannelUserWrapper> getMainChannelUserWrapperList() {
        return this.mainChannelUserWrapperList;
    }

    public SignallingChannel getMainSigChannel() {
        return this.mainSignalChannel;
    }

    public String getPendingFloatingThreadId() {
        return this.pendingFloatingThreadId;
    }

    public int getPresenterCountInChannel(SignallingChannel signallingChannel) {
        List<ChannelUser> list;
        int i10 = 0;
        if (signallingChannel != null && (list = signallingChannel.userList) != null) {
            for (ChannelUser channelUser : list) {
                if (channelUser.joinRole == 1 && channelUser.userProfile != null) {
                    i10++;
                }
            }
        }
        return i10;
    }

    public RtcChatManager getRtcManager() {
        return this.rtcManager;
    }

    public ChannelUserWrapper getScreenRoomHostUser() {
        for (int i10 = 0; i10 < this.mainChannelUserWrapperList.size(); i10++) {
            ChannelUserWrapper channelUserWrapperValueAt = this.mainChannelUserWrapperList.valueAt(i10);
            if (isScreenRoomHost(channelUserWrapperValueAt)) {
                return channelUserWrapperValueAt;
            }
        }
        return null;
    }

    public SignallingService getSigService() {
        return this.sigService;
    }

    public void hideThreadDetailWindow(int i10) {
        CommunityThread floatingThread = this.floatingManager.getFloatingThread();
        if (floatingThread != null && floatingThread.ndcId == i10) {
            hideThreadDetailWindow();
        }
    }

    public boolean isHasShowingThread() {
        return this.hasShowingThread;
    }

    public boolean isPrivateMainChannelFullBefore() {
        return this.isPrivateMainChannelFullBefore;
    }

    public boolean isScreenRoomHost() {
        return isScreenRoomHost(getMainChannelLocalUserWrapper());
    }

    public void leaveChannelAsGuest(int i10, String str) {
        if (isExistedInChannelEqualRole(str, 0)) {
            this.sigService.leaveThread(i10, str, null);
        }
    }

    @Override // com.narvii.video.model.RtcEventHandler
    public void onError(int i10, String str) {
    }

    @Override // com.narvii.video.model.RtcEventHandler
    public void onExtraCallback(int i10, Object... objArr) {
        final ObjectNode objectNodeCreateObjectNode;
        if (i10 == 1) {
            exitOldChannelAndJoinNewChannel();
            return;
        }
        if (i10 != 3) {
            if (i10 != 1002) {
                return;
            }
            destroyAgoraEngine();
            return;
        }
        final int iIntValue = ((Integer) objArr[0]).intValue();
        final byte[] bArr = (byte[]) objArr[1];
        if (bArr.length <= 2 || bArr[0] != 123) {
            objectNodeCreateObjectNode = null;
        } else {
            try {
                objectNodeCreateObjectNode = JacksonUtils.createObjectNode(new String(bArr, 0, bArr.length, Utils.UTF_8));
            } catch (Exception unused) {
                objectNodeCreateObjectNode = null;
            }
        }
        this.dataStreamListeners.dispatch(new Callback() { // from class: com.narvii.chat.rtc.i
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                ((DataStreamListener) obj).onDataStreamReceived(iIntValue, bArr, objectNodeCreateObjectNode);
            }
        });
    }

    @Override // com.narvii.video.model.RtcEventHandler
    public void onNetworkQuality(int i10, int i11, int i12) {
    }

    @Override // com.narvii.video.model.RtcEventHandler
    public void onNetworkStatusChanged(int i10) {
        if (i10 == 2 && !this.isLostConnectionStatus) {
            this.isLostConnectionStatus = true;
            Utils.postDelayed(this.connectionCheckRunnable, 120000L);
        }
        dispatchNetworkStatusChange(i10);
    }

    public void relaunchRtcMainActivity() {
        relaunchRtcMainActivity(false, null);
    }

    public void removeMutedUser(String str) {
        operaLocalMuteUser(1, str);
    }

    public void removePendingFloatingRunnable() {
        this.pendingFloatingThreadId = null;
        showFloatingWindowHandler.removeCallbacksAndMessages(null);
    }

    public void requestToBePresenter(ChannelActionCallback<ChannelActionResult> channelActionCallback) {
        requestToBePresenter(channelActionCallback, true, false);
    }

    public void setMainChannelChatThread(ChatThread chatThread) {
        this.mainChannelChatThread = chatThread;
    }

    public void setRelaunchLiveChannelListener(RelaunchLiveChannelListener relaunchLiveChannelListener) {
        this.relaunchLiveChannelListener = relaunchLiveChannelListener;
    }

    public void showAudiFloatingWindow() {
        this.channelShowingMode = 1;
        this.floatingManager.showAudioFloatingWindow();
    }

    public void showSRFloatingWindow() {
        this.channelShowingMode = 1;
        this.floatingManager.showSRFloatingWindow();
        setHostStreamMode(true);
    }

    public void showVideoFloatingWindow() {
        this.channelShowingMode = 1;
        this.floatingManager.showVideoFloatingWindow();
        this.rtcManager.enterLowerStreamMode();
    }

    private void addAgoraUserDataToChannelUserWrapper(int i10) {
        SparseArray<UserStatusData> userDataList = this.rtcManager.getUserDataList();
        ChannelUserWrapper channelUserWrapper = this.mainChannelUserWrapperList.get(i10);
        if (channelUserWrapper == null || Utils.isEqualsNotNull(channelUserWrapper.userStatus, userDataList.get(i10))) {
            return;
        }
        channelUserWrapper.userStatus = userDataList.get(i10);
    }

    private void buildMainSignalChanel(SignallingChannel signallingChannel) {
        if (signallingChannel == null || !SignallingChannel.isLegalRole(signallingChannel.joinRole)) {
            return;
        }
        SignallingChannel signallingChannel2 = this.mainSignalChannel;
        if (signallingChannel2 != null && !Utils.isEquals(signallingChannel2.threadId, signallingChannel.threadId)) {
            Log.e(TAG, "existed a main channel, when another main channel come in");
            cleanMainChannel();
        }
        logVVChatStatusChange(signallingChannel);
        this.mainSignalChannel = signallingChannel;
    }

    private void calculateUserListChange(Collection<ChannelUser> collection, Collection<ChannelUser> collection2) {
        if (collection == null || collection2 == null || getMainSigChannel() == null) {
            return;
        }
        this.channelUserCompareOld.clear();
        this.channelUserCompareNew.clear();
        for (ChannelUser channelUser : collection) {
            this.channelUserCompareOld.put(channelUser.channelUid, channelUser);
        }
        for (ChannelUser channelUser2 : collection2) {
            this.channelUserCompareNew.put(channelUser2.channelUid, channelUser2);
        }
        for (ChannelUser channelUser3 : collection2) {
            if (channelUser3.channelUid != getMainSigChannel().channelUid) {
                ChannelUser channelUser4 = this.channelUserCompareOld.get(channelUser3.channelUid);
                if (channelUser4 == null) {
                    onNewUserJoined(channelUser3);
                }
                if (channelUser4 != null && channelUser4.joinRole == 2 && channelUser3.joinRole == 1 && getMainSigChannel().joinRole == 1) {
                    this.musicHelper.playHintMusic(1);
                }
            }
        }
        for (ChannelUser channelUser5 : collection) {
            if (channelUser5.channelUid != getMainSigChannel().channelUid) {
                ChannelUser channelUser6 = this.channelUserCompareNew.get(channelUser5.channelUid);
                if (channelUser6 == null) {
                    onUserLeaveChannel(channelUser5);
                }
                if (channelUser6 == null && channelUser5.joinRole == 1 && getMainSigChannel().joinRole == 1) {
                    this.musicHelper.playHintMusic(2);
                }
            }
        }
    }

    private void changeChannelUserWrapperStatus(int i10, int i11) {
        ChannelUserWrapper channelUserWrapper;
        if (this.mainSignalChannel == null || this.mainChannelUserWrapperList.indexOfKey(i10) < 0 || (channelUserWrapper = this.mainChannelUserWrapperList.get(i10)) == null) {
            return;
        }
        channelUserWrapper.setStatus(i11);
        UserStatusData userStatusData = channelUserWrapper.userStatus;
        if (userStatusData != null && userStatusData.mUid != i10) {
            userStatusData.mUid = i10;
        }
        dispatchChannelUserWrapperChanged(this.mainSignalChannel, channelUserWrapper);
    }

    private void cleanMainChannel() {
        SignallingChannel signallingChannel = this.mainSignalChannel;
        if (signallingChannel != null && SignallingChannel.isLegalChannelType(signallingChannel.channelType)) {
            this.oldChannelType = this.mainSignalChannel.channelType;
        }
        Bundle bundle = this.curLiveChannelInfo;
        if (bundle != null) {
            Object obj = bundle.get("threadId");
            SignallingChannel signallingChannel2 = this.mainSignalChannel;
            if (Utils.isEqualsNotNull(obj, signallingChannel2 == null ? null : signallingChannel2.threadId)) {
                this.curLiveChannelInfo.clear();
            }
        }
        Bundle bundle2 = this.curChannelMiniInfo;
        if (bundle2 != null) {
            bundle2.clear();
        }
        this.agoraJoinRequested = false;
        logVVChatStatusChange(null);
        this.mainSignalChannel = null;
        this.localMuteUserList = new HashSet();
        this.mainChannelUserWrapperList = new SparseArray<>();
        this.isPrivateMainChannelFullBefore = false;
        this.mainChannelChatThread = null;
        this.isScreenRoomRoleSet = false;
        this.screenRoomHostUid = -1;
        this.joinAgoraMessageDispatched = false;
        VideoPreProcessing videoPreProcessing = this.videoPreProcessing;
        if (videoPreProcessing != null) {
            videoPreProcessing.doDeregisterPreProcessing();
            this.videoPreProcessing = null;
        }
        this.videoFrameAvailableListener = null;
        this.lastVolumeZeroTime.clear();
        this.lastVolumes.clear();
        Bundle bundle3 = this.liveExtraBundle;
        if (bundle3 != null) {
            bundle3.clear();
        }
    }

    private void destroyAgoraEngine() {
        if (this.hasLeaveChannel.compareAndSet(false, true)) {
            this.rtcManager.leaveChannel(new ChannelActionCallback() { // from class: com.narvii.chat.rtc.h
                @Override // com.narvii.video.model.ChannelActionCallback
                public final void call(Object obj) {
                    this.f2009a.lambda$destroyAgoraEngine$3(obj);
                }
            });
            this.rtcManager.destroyAgoraEngine();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchChannelException(String str, final int i10, final WsError wsError) {
        EventDispatcher<LiveChannelErrorListener> eventDispatcher = this.channelErrorDispatcher.get(str);
        if (eventDispatcher == null) {
            return;
        }
        eventDispatcher.dispatch(new Callback<LiveChannelErrorListener>() { // from class: com.narvii.chat.rtc.RtcService.16
            @Override // com.narvii.util.Callback
            public void call(LiveChannelErrorListener liveChannelErrorListener) {
                liveChannelErrorListener.onLiveChannelError(i10, wsError);
            }
        });
    }

    private void dispatchChannelForceQuit(final SignallingChannel signallingChannel, final int i10) {
        if (signallingChannel == null || !this.channelStatusChangeDispatcher.containsKey(signallingChannel.threadId)) {
            return;
        }
        this.channelStatusChangeDispatcher.get(signallingChannel.threadId).dispatch(new Callback<LiveChannelChangeListener>() { // from class: com.narvii.chat.rtc.RtcService.20
            @Override // com.narvii.util.Callback
            public void call(LiveChannelChangeListener liveChannelChangeListener) {
                liveChannelChangeListener.onChannelForceQuit(signallingChannel, i10);
            }
        });
    }

    private void dispatchChannelStatusChange(final SignallingChannel signallingChannel) {
        if (signallingChannel == null || !this.channelStatusChangeDispatcher.containsKey(signallingChannel.threadId)) {
            return;
        }
        this.channelStatusChangeDispatcher.get(signallingChannel.threadId).dispatch(new Callback<LiveChannelChangeListener>() { // from class: com.narvii.chat.rtc.RtcService.21
            @Override // com.narvii.util.Callback
            public void call(LiveChannelChangeListener liveChannelChangeListener) {
                liveChannelChangeListener.onChannelStatusChanged(signallingChannel);
            }
        });
    }

    private void dispatchChannelUserListChange(final SignallingChannel signallingChannel, final Collection<ChannelUser> collection, final Collection<ChannelUser> collection2, final SparseArray<ChannelUserWrapper> sparseArray) {
        if (signallingChannel == null || !this.channelStatusChangeDispatcher.containsKey(signallingChannel.threadId)) {
            return;
        }
        this.channelStatusChangeDispatcher.get(signallingChannel.threadId).dispatch(new Callback<LiveChannelChangeListener>() { // from class: com.narvii.chat.rtc.RtcService.19
            @Override // com.narvii.util.Callback
            public void call(LiveChannelChangeListener liveChannelChangeListener) {
                liveChannelChangeListener.onChannelUserListChanged(signallingChannel, RtcService.getFilteredChannelUserList(collection), RtcService.getFilteredChannelUserList(collection2), RtcService.getFilteredUserList(sparseArray));
            }
        });
    }

    private void dispatchChannelUserWrapperChanged(final SignallingChannel signallingChannel, final ChannelUserWrapper channelUserWrapper) {
        if (signallingChannel == null || !this.channelUserWrapperStatusDispatcher.containsKey(signallingChannel.threadId)) {
            return;
        }
        this.channelUserWrapperStatusDispatcher.get(signallingChannel.threadId).dispatch(new Callback<ChannelUserWrapperUpdateListener>() { // from class: com.narvii.chat.rtc.RtcService.24
            @Override // com.narvii.util.Callback
            public void call(ChannelUserWrapperUpdateListener channelUserWrapperUpdateListener) {
                channelUserWrapperUpdateListener.onUserWrapperStatusChanged(signallingChannel, channelUserWrapper);
            }
        });
    }

    private void dispatchJoinAgoraSuccessed() {
        final ChannelUserWrapper mainChannelLocalUserWrapper;
        SignallingChannel signallingChannel;
        if (this.joinAgoraMessageDispatched || this.mainChannelUserWrapperList == null || (mainChannelLocalUserWrapper = getMainChannelLocalUserWrapper()) == null || mainChannelLocalUserWrapper.userStatus == null || (signallingChannel = this.mainSignalChannel) == null || signallingChannel.channelType != 5) {
            return;
        }
        this.srChannelStatusChangeDispatcher.dispatch(new Callback<SRChannelStatusChangeListener>() { // from class: com.narvii.chat.rtc.RtcService.2
            @Override // com.narvii.util.Callback
            public void call(SRChannelStatusChangeListener sRChannelStatusChangeListener) {
                ChannelUser channelUser = mainChannelLocalUserWrapper.channelUser;
                sRChannelStatusChangeListener.onChannelStarted(channelUser != null && channelUser.isHost);
            }
        });
        this.joinAgoraMessageDispatched = true;
    }

    private void dispatchLocalMuteUserListChange(final SignallingChannel signallingChannel) {
        if (signallingChannel == null || !this.localMuteUserListDispatcher.containsKey(signallingChannel.threadId)) {
            return;
        }
        this.localMuteUserListDispatcher.get(signallingChannel.threadId).dispatch(new Callback<LocalMuteUserListChangeListener>() { // from class: com.narvii.chat.rtc.RtcService.17
            @Override // com.narvii.util.Callback
            public void call(LocalMuteUserListChangeListener localMuteUserListChangeListener) {
                localMuteUserListChangeListener.onLocalMuteUserListChanged(signallingChannel, RtcService.this.localMuteUserList);
            }
        });
    }

    private void dispatchLocalUserStatusChange(final int i10, final SignallingChannel signallingChannel, final ChannelUser channelUser) {
        if (signallingChannel == null || !this.localChannelUserStatusDispatcher.containsKey(signallingChannel.threadId)) {
            return;
        }
        this.localChannelUserStatusDispatcher.get(signallingChannel.threadId).dispatch(new Callback<MyChannelUserStatusChangeListener>() { // from class: com.narvii.chat.rtc.RtcService.18
            @Override // com.narvii.util.Callback
            public void call(MyChannelUserStatusChangeListener myChannelUserStatusChangeListener) {
                myChannelUserStatusChangeListener.onMyChannelUserStatusChanged(i10, signallingChannel, channelUser);
            }
        });
    }

    private void dispatchNetworkStatusChange(final int i10) {
        SignallingChannel signallingChannel = this.mainSignalChannel;
        if (signallingChannel == null || !this.networkStatusDispatcher.containsKey(signallingChannel.threadId)) {
            return;
        }
        this.networkStatusDispatcher.get(this.mainSignalChannel.threadId).dispatch(new Callback<MyNetworkStatusChangeListener>() { // from class: com.narvii.chat.rtc.RtcService.23
            @Override // com.narvii.util.Callback
            public void call(MyNetworkStatusChangeListener myNetworkStatusChangeListener) {
                myNetworkStatusChangeListener.onNetworkStatusUpdated(i10);
            }
        });
        if (i10 == 2) {
            this.musicHelper.playHintMusic(3);
        }
    }

    private void dispatchTotalVolumeChange(final int i10) {
        SignallingChannel signallingChannel = this.mainSignalChannel;
        if (signallingChannel == null || !this.totalVolumeChangeDispatcher.containsKey(signallingChannel.threadId)) {
            return;
        }
        this.totalVolumeChangeDispatcher.get(this.mainSignalChannel.threadId).dispatch(new Callback<AgoraUserVolumeChangeListener>() { // from class: com.narvii.chat.rtc.RtcService.22
            @Override // com.narvii.util.Callback
            public void call(AgoraUserVolumeChangeListener agoraUserVolumeChangeListener) {
                agoraUserVolumeChangeListener.onTotalVolumeChanged(RtcService.this.mainSignalChannel, i10);
            }
        });
    }

    private void dispatchWaitingListApprove(final SignallingChannel signallingChannel) {
        EventDispatcher<WaitingListListener> eventDispatcher = this.waitingListDispatcher.get(signallingChannel.threadId);
        if (eventDispatcher == null) {
            return;
        }
        eventDispatcher.dispatch(new Callback() { // from class: com.narvii.chat.rtc.c
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                ((WaitingListListener) obj).onWaitingListApprove(signallingChannel);
            }
        });
    }

    private void dispatchWaitingListChanged(final SignallingChannel signallingChannel, final Collection<User> collection, final Collection<User> collection2) {
        EventDispatcher<WaitingListListener> eventDispatcher = this.waitingListDispatcher.get(signallingChannel.threadId);
        if (eventDispatcher == null) {
            return;
        }
        eventDispatcher.dispatch(new Callback() { // from class: com.narvii.chat.rtc.f
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                ((WaitingListListener) obj).onWaitingListChanged(signallingChannel, collection, collection2);
            }
        });
    }

    private void dispatcheScreenRoomRoleChange(SignallingChannel signallingChannel) {
        boolean z6;
        final boolean z10;
        if (this.isScreenRoomRoleSet || signallingChannel.channelType != 5) {
            return;
        }
        boolean zChannelContainMe = channelContainMe(signallingChannel);
        Iterator<ChannelUser> it = signallingChannel.userList.iterator();
        while (true) {
            z6 = false;
            if (!it.hasNext()) {
                z10 = false;
                break;
            }
            ChannelUser next = it.next();
            if (next.isHost) {
                int i10 = next.channelUid;
                this.screenRoomHostUid = i10;
                z10 = i10 == signallingChannel.channelUid;
                z6 = true;
                break;
            }
        }
        if (z6 && zChannelContainMe) {
            this.isScreenRoomRoleSet = true;
            this.srRoleChangeListenerEventDispatcher.dispatch(new Callback<SRRoleChangeListener>() { // from class: com.narvii.chat.rtc.RtcService.15
                @Override // com.narvii.util.Callback
                public void call(SRRoleChangeListener sRRoleChangeListener) {
                    sRRoleChangeListener.onScreenRoomRoleChange(z10);
                }
            });
        }
    }

    private void exitOldChannelAndJoinNewChannel() {
        this.rtcManager.leaveChannel(new ChannelActionCallback() { // from class: com.narvii.chat.rtc.g
            @Override // com.narvii.video.model.ChannelActionCallback
            public final void call(Object obj) {
                this.f2008a.lambda$exitOldChannelAndJoinNewChannel$4(obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void exitSignallingChannel(int i10, String str, final ChannelActionCallback<ChannelActionResult> channelActionCallback) {
        this.sigService.leaveThread(i10, str, new Callback() { // from class: com.narvii.chat.rtc.j
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                this.f2013a.lambda$exitSignallingChannel$1(channelActionCallback, obj);
            }
        });
        this.srChannelStatusChangeDispatcher.dispatch(new Callback<SRChannelStatusChangeListener>() { // from class: com.narvii.chat.rtc.RtcService.13
            @Override // com.narvii.util.Callback
            public void call(SRChannelStatusChangeListener sRChannelStatusChangeListener) {
                sRChannelStatusChangeListener.onChannelEnd();
            }
        });
        this.channelShowingMode = -1;
        VVChatHelper vVChatHelper = this.vvChatHelper;
        SignallingChannel signallingChannel = this.mainSignalChannel;
        ChatThread chatThread = this.mainChannelChatThread;
        vVChatHelper.reportLiveLayerInactiveEvent(signallingChannel, chatThread == null ? null : chatThread.threadId, chatThread != null ? chatThread.type : -1);
        cleanMainChannel();
    }

    public static List<ChannelUser> getFilteredChannelUserList(Collection<ChannelUser> collection) {
        ArrayList arrayList = new ArrayList();
        if (collection != null) {
            for (ChannelUser channelUser : collection) {
                if (SignallingChannel.isNotGuestRole(channelUser.joinRole)) {
                    arrayList.add(channelUser);
                }
            }
        }
        return arrayList;
    }

    public static SparseArray<ChannelUserWrapper> getFilteredUserList(SparseArray<ChannelUserWrapper> sparseArray) {
        ChannelUser channelUser;
        SparseArray<ChannelUserWrapper> sparseArray2 = new SparseArray<>();
        if (sparseArray != null) {
            for (int i10 = 0; i10 < sparseArray.size(); i10++) {
                ChannelUserWrapper channelUserWrapperValueAt = sparseArray.valueAt(i10);
                if (channelUserWrapperValueAt != null && (channelUser = channelUserWrapperValueAt.channelUser) != null && SignallingChannel.isNotGuestRole(channelUser.joinRole)) {
                    sparseArray2.put(sparseArray.keyAt(i10), sparseArray.valueAt(i10));
                }
            }
        }
        return sparseArray2;
    }

    private void handleChannelActionResult(SignallingChannel signallingChannel, ChannelActionResult channelActionResult) {
        ChannelActionError channelActionError;
        if (channelActionResult == null || (channelActionError = channelActionResult.error) == null || !channelActionError.equals(ChannelActionError.LEAVE_CHANNEL_ERROR)) {
            return;
        }
        muteLocalStream(signallingChannel.channelType, true);
        this.rtcManager.muteAllRemoteStream();
    }

    private boolean isAgoraUserInMainChannel(int i10) {
        return (this.mainSignalChannel == null || this.mainChannelUserWrapperList.get(i10) == null) ? false : true;
    }

    private boolean isAllUseVoiceMuted() {
        ChannelUser channelUser;
        if (this.mainSignalChannel == null || this.mainChannelUserWrapperList == null) {
            return true;
        }
        for (int i10 = 0; i10 < this.mainChannelUserWrapperList.size(); i10++) {
            ChannelUserWrapper channelUserWrapperValueAt = this.mainChannelUserWrapperList.valueAt(i10);
            UserStatusData userStatusData = channelUserWrapperValueAt.userStatus;
            if (userStatusData != null && !userStatusData.isVoiceMuted() && (channelUser = channelUserWrapperValueAt.channelUser) != null && channelUser.joinRole == 1) {
                return false;
            }
        }
        return true;
    }

    private boolean isHost(int i10) {
        ChannelUser channelUser;
        ChannelUserWrapper channelUserWrapper = this.mainChannelUserWrapperList.get(i10);
        return (channelUserWrapper == null || (channelUser = channelUserWrapper.channelUser) == null || !channelUser.isHost) ? false : true;
    }

    private boolean isInitCameraFlipped() {
        Bundle bundle = this.liveExtraBundle;
        return bundle != null && bundle.getBoolean("cameraFlip");
    }

    private boolean isInitCameraMuted() {
        Bundle bundle = this.liveExtraBundle;
        return bundle != null && bundle.getBoolean("cameraMute");
    }

    private boolean isReadyToJoinAgora(SignallingChannel signallingChannel) {
        SignallingChannel signallingChannel2 = this.mainSignalChannel;
        return signallingChannel2 != null && Utils.isEquals(signallingChannel2, signallingChannel) && this.vvChatHelper.isValidChannelToJoinAgora(this.mainSignalChannel) && channelContainMe(signallingChannel);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$destroyAgoraEngine$3(Object obj) {
        if (obj instanceof ChannelActionResult) {
            if (((ChannelActionResult) obj).isSuccess) {
                Log.i(TAG, "leave channel success");
            } else {
                Log.e(TAG, "leave channel error");
                this.hasLeaveChannel.set(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$exitOldChannelAndJoinNewChannel$4(Object obj) {
        if (obj instanceof ChannelActionResult) {
            if (!((ChannelActionResult) obj).isSuccess) {
                Log.e(TAG, "join agora channel error");
            } else {
                SignallingChannel mainSigChannel = getMainSigChannel();
                joinAgoraChannel(mainSigChannel.channelKey, mainSigChannel.channelName, mainSigChannel.channelType, mainSigChannel.channelUid, mainSigChannel.ndcId, false, isInitCameraMuted());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ l0 lambda$waitListClean$5(Callback callback, Object obj) {
        if (!(obj instanceof SignallingChannel)) {
            return null;
        }
        callback.call((SignallingChannel) obj);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ l0 lambda$waitListJoin$8(Callback callback, Object obj) {
        if (!(obj instanceof SignallingChannel)) {
            return null;
        }
        SignallingChannel signallingChannel = (SignallingChannel) obj;
        if (callback == null) {
            return null;
        }
        callback.call(signallingChannel);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ l0 lambda$waitListJoinApprove$6(WaitingListCallback waitingListCallback, Object obj) {
        if (!(obj instanceof u)) {
            return null;
        }
        u uVar = (u) obj;
        if (!(uVar.c() instanceof SignallingChannel) || !(uVar.d() instanceof Boolean)) {
            return null;
        }
        waitingListCallback.call((SignallingChannel) uVar.c(), Boolean.valueOf(((Boolean) uVar.d()).booleanValue()));
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ l0 lambda$waitListJoinCancel$7(Callback callback, Object obj) {
        if (!(obj instanceof SignallingChannel)) {
            return null;
        }
        callback.call((SignallingChannel) obj);
        return null;
    }

    private void logVVChatStatusChange(SignallingChannel signallingChannel) {
        if (signallingChannel == null || this.vvchatStartTime != 0 || !SignallingChannel.isLegalChannelType(signallingChannel.channelType)) {
            SignallingChannel signallingChannel2 = this.mainSignalChannel;
            if (signallingChannel2 == null || signallingChannel != null) {
                return;
            }
            if (this.vvchatStartTime != 0) {
                String chatType = ChatLogEventHelper.getChatType(signallingChannel2.channelType);
                LogEvent.Builder builderExtraParam = LogEvent.clickBuilder(this.nvContext, ActSemantic.VVChatEnd).ndcId(this.mainSignalChannel.ndcId).extraParam("chatId", this.mainSignalChannel.threadId);
                if (chatType == null) {
                    chatType = this.vvchatStartChatType;
                }
                builderExtraParam.extraParam("chatType", chatType).extraParam(TypedValues.TransitionType.S_DURATION, Long.valueOf(SystemClock.elapsedRealtime() - this.vvchatStartTime)).allowNoPage().send();
                CrashlyticsUtils.states.remove("vvchat");
            }
            this.vvchatStartTime = 0L;
            this.vvchatStartChatType = null;
            return;
        }
        List<ChannelUser> list = signallingChannel.userList;
        int size = list == null ? 0 : list.size();
        this.vvchatStartTime = SystemClock.elapsedRealtime();
        String chatType2 = ChatLogEventHelper.getChatType(signallingChannel.channelType);
        this.vvchatStartChatType = chatType2;
        if (chatType2 == null) {
            StringBuilder sb = new StringBuilder();
            sb.append(signallingChannel.channelType);
            sb.append("-");
            ChatThread chatThread = this.mainChannelChatThread;
            sb.append(chatThread != null ? chatThread.type : -1);
            Log.e("chatType is null", sb.toString());
        }
        LogEvent.clickBuilder(this.nvContext, ActSemantic.VVChatStart).ndcId(signallingChannel.ndcId).extraParam("chatId", signallingChannel.threadId).extraParam("memberCount", Integer.valueOf(size)).extraParam("chatType", this.vvchatStartChatType).allowNoPage().send();
        CrashlyticsUtils.states.put("vvchat", this.vvchatStartChatType);
    }

    private void mergeAgoraDataAndChannelData(SignallingChannel signallingChannel, Collection<ChannelUser> collection) {
        ChannelUser channelUser;
        ChannelUser channelUser2;
        if (signallingChannel != null) {
            if (getMainSigChannel() == null || Utils.isEqualsNotNull(getMainSigChannel().threadId, signallingChannel.threadId)) {
                if (getMainSigChannel() == null && collection != null && collection.size() >= 1) {
                    for (ChannelUser channelUser3 : collection) {
                        if (Utils.isEqualsNotNull(this.accountService.getUserId(), channelUser3.uid()) && SignallingChannel.isLegalRole(channelUser3.joinRole)) {
                            SignallingChannel mappedSignallingChannel = getMappedSignallingChannel(signallingChannel.threadId);
                            if (mappedSignallingChannel == null) {
                                break;
                            }
                            mappedSignallingChannel.joinRole = channelUser3.joinRole;
                            logVVChatStatusChange(mappedSignallingChannel);
                            this.mainSignalChannel = mappedSignallingChannel;
                            break;
                        }
                    }
                }
                if (getMainSigChannel() == null) {
                    return;
                }
                SparseArray<UserStatusData> userDataList = this.rtcManager.getUserDataList();
                HashSet hashSet = new HashSet();
                Iterator<ChannelUser> it = collection.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    ChannelUser next = it.next();
                    if (next != null) {
                        ChannelUserWrapper channelUserWrapper = this.mainChannelUserWrapperList.get(next.channelUid);
                        if (channelUserWrapper == null) {
                            channelUserWrapper = new ChannelUserWrapper(next, next.channelUid, null);
                        }
                        channelUserWrapper.channelUser = next;
                        this.mainChannelUserWrapperList.put(next.channelUid, channelUserWrapper);
                        UserStatusData userStatusData = userDataList.get(next.channelUid);
                        if (isMainChannelVideoType()) {
                            if (userStatusData == null || !(userStatusData.videoFrameStatus == 2 || signallingChannel.channelType == 5)) {
                                channelUserWrapper.status = 0;
                            } else {
                                channelUserWrapper.status = 1;
                            }
                        } else if (userStatusData != null) {
                            channelUserWrapper.status = 1;
                        } else {
                            channelUserWrapper.status = 0;
                        }
                        channelUserWrapper.userStatus = userStatusData;
                        hashSet.add(Integer.valueOf(next.channelUid));
                    }
                }
                HashSet hashSet2 = new HashSet();
                for (int i10 = 0; i10 < this.mainChannelUserWrapperList.size(); i10++) {
                    int iKeyAt = this.mainChannelUserWrapperList.keyAt(i10);
                    if (!hashSet.contains(Integer.valueOf(iKeyAt))) {
                        hashSet2.add(Integer.valueOf(iKeyAt));
                    }
                }
                Iterator it2 = hashSet2.iterator();
                while (it2.hasNext()) {
                    this.mainChannelUserWrapperList.remove(((Integer) it2.next()).intValue());
                }
                if (userDataList != null) {
                    int i11 = isVideoSignificantChannelType(signallingChannel.channelType) ? 2 : 1;
                    for (int i12 = 0; i12 < userDataList.size(); i12++) {
                        int iKeyAt2 = userDataList.keyAt(i12);
                        ChannelUserWrapper channelUserWrapper2 = this.mainChannelUserWrapperList.get(iKeyAt2);
                        boolean zContains = this.unbridledAgoraUsers.contains(Integer.valueOf(iKeyAt2));
                        boolean z6 = (channelUserWrapper2 == null || (channelUser2 = channelUserWrapper2.channelUser) == null || !this.localMuteUserList.contains(channelUser2.uid())) ? false : true;
                        if (channelUserWrapper2 == null || (channelUser = channelUserWrapper2.channelUser) == null || channelUser.joinRole != 1) {
                            this.unbridledAgoraUsers.add(Integer.valueOf(iKeyAt2));
                            this.rtcManager.muteRemoteUer(i11, iKeyAt2, true);
                        } else if (channelUser != null) {
                            if (z6) {
                                this.rtcManager.muteRemoteUer(i11, iKeyAt2, true);
                            } else if (zContains) {
                                this.unbridledAgoraUsers.remove(Integer.valueOf(iKeyAt2));
                                this.rtcManager.muteRemoteUer(i11, iKeyAt2, false);
                            }
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void muteLocalStream(int i10, boolean z6) {
        this.rtcManager.muteLocalStream(isVideoSignificantChannelType(i10) ? 2 : 1, z6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tryToJoinAgoraChannel(SignallingChannel signallingChannel) {
        ChannelUser channelUser;
        if (signallingChannel == null || !this.vvChatHelper.isEligibleForVVChat() || this.agoraJoinRequested || !isReadyToJoinAgora(signallingChannel)) {
            return;
        }
        prepareAgoraWorkThread(signallingChannel.channelType);
        int i10 = signallingChannel.channelType;
        if (i10 == 1) {
            this.rtcManager.setLocalUid(signallingChannel.channelUid);
            this.rtcManager.setLocalVoiceStatus();
            addAgoraUserDataToChannelUserWrapper(signallingChannel.channelUid);
            changeChannelUserWrapperStatus(signallingChannel.channelUid, 0);
            if (signallingChannel.userList.size() > 1) {
                this.agoraJoinRequested = true;
                joinAgoraChannel(signallingChannel.channelKey, signallingChannel.channelName, signallingChannel.joinRole, signallingChannel.channelUid, signallingChannel.ndcId, false, false);
                return;
            }
            return;
        }
        if (i10 != 3 && i10 != 4) {
            if (i10 == 5) {
                this.rtcManager.setLocalUid(signallingChannel.channelUid);
                addAgoraUserDataToChannelUserWrapper(signallingChannel.channelUid);
                changeChannelUserWrapperStatus(signallingChannel.channelUid, 0);
                if (signallingChannel.userList.size() > 1) {
                    this.agoraJoinRequested = true;
                    ChannelUserWrapper mainChannelLocalUserWrapper = getMainChannelLocalUserWrapper();
                    joinAgoraChannel(signallingChannel.channelKey, signallingChannel.channelName, signallingChannel.joinRole, signallingChannel.channelUid, signallingChannel.ndcId, (mainChannelLocalUserWrapper == null || (channelUser = mainChannelLocalUserWrapper.channelUser) == null || !channelUser.isHost) ? false : true, false);
                    return;
                }
                return;
            }
            return;
        }
        this.rtcManager.setLocalUid(signallingChannel.channelUid);
        this.rtcManager.initLocalVideoStatus(signallingChannel.ndcId);
        addAgoraUserDataToChannelUserWrapper(signallingChannel.channelUid);
        changeChannelUserWrapperStatus(signallingChannel.channelUid, 0);
        boolean zIsInitCameraMuted = isInitCameraMuted();
        boolean zIsInitCameraFlipped = isInitCameraFlipped();
        this.rtcManager.muteLocalVideo(zIsInitCameraMuted);
        this.rtcManager.setCameraFacing(!zIsInitCameraFlipped);
        if (signallingChannel.userList.size() > 1) {
            this.agoraJoinRequested = true;
            joinAgoraChannel(signallingChannel.channelKey, signallingChannel.channelName, signallingChannel.joinRole, signallingChannel.channelUid, signallingChannel.ndcId, false, zIsInitCameraMuted);
        }
    }

    private void updateChannelUserWrapperInfo(int i10) {
        ChannelUserWrapper channelUserWrapper;
        if (this.mainSignalChannel == null || this.mainChannelUserWrapperList.indexOfKey(i10) < 0 || (channelUserWrapper = this.mainChannelUserWrapperList.get(i10)) == null) {
            return;
        }
        if (SignallingChannel.isVideoType(this.mainSignalChannel.channelType) && this.rtcManager.getUserDataList().get(i10) != null && this.rtcManager.getUserDataList().get(i10).videoFrameStatus == 2) {
            channelUserWrapper.status = 1;
        }
        dispatchChannelUserWrapperChanged(this.mainSignalChannel, channelUserWrapper);
    }

    public void addAgoraUserVolumeChangeListener(String str, AgoraUserVolumeChangeListener agoraUserVolumeChangeListener) {
        EventDispatcher<AgoraUserVolumeChangeListener> eventDispatcher = this.totalVolumeChangeDispatcher.get(str);
        if (eventDispatcher == null) {
            eventDispatcher = new EventDispatcher<>();
        }
        eventDispatcher.addListener(agoraUserVolumeChangeListener);
        this.totalVolumeChangeDispatcher.put(str, eventDispatcher);
    }

    public void addChannelUserWrapperUpdateListener(String str, ChannelUserWrapperUpdateListener channelUserWrapperUpdateListener) {
        EventDispatcher<ChannelUserWrapperUpdateListener> eventDispatcher = this.channelUserWrapperStatusDispatcher.get(str);
        if (eventDispatcher == null) {
            eventDispatcher = new EventDispatcher<>();
        }
        eventDispatcher.addListener(channelUserWrapperUpdateListener);
        this.channelUserWrapperStatusDispatcher.put(str, eventDispatcher);
    }

    public void addDataStreamListener(DataStreamListener dataStreamListener) {
        this.dataStreamListeners.addListener(dataStreamListener);
    }

    public void addLiveChannelChangeListener(String str, LiveChannelChangeListener liveChannelChangeListener) {
        EventDispatcher<LiveChannelChangeListener> eventDispatcher = this.channelStatusChangeDispatcher.get(str);
        if (eventDispatcher == null) {
            eventDispatcher = new EventDispatcher<>();
        }
        eventDispatcher.addListener(liveChannelChangeListener);
        this.channelStatusChangeDispatcher.put(str, eventDispatcher);
    }

    public void addLiveChannelErrorListener(String str, LiveChannelErrorListener liveChannelErrorListener) {
        EventDispatcher<LiveChannelErrorListener> eventDispatcher = this.channelErrorDispatcher.get(str);
        if (eventDispatcher == null) {
            eventDispatcher = new EventDispatcher<>();
        }
        eventDispatcher.addListener(liveChannelErrorListener);
        this.channelErrorDispatcher.put(str, eventDispatcher);
    }

    public void addLocalMuteUserListChangeListener(String str, LocalMuteUserListChangeListener localMuteUserListChangeListener) {
        EventDispatcher<LocalMuteUserListChangeListener> eventDispatcher = this.localMuteUserListDispatcher.get(str);
        if (eventDispatcher == null) {
            eventDispatcher = new EventDispatcher<>();
        }
        eventDispatcher.addListener(localMuteUserListChangeListener);
        this.localMuteUserListDispatcher.put(str, eventDispatcher);
    }

    public void addMyChannelUserStatusChangeListener(String str, MyChannelUserStatusChangeListener myChannelUserStatusChangeListener) {
        EventDispatcher<MyChannelUserStatusChangeListener> eventDispatcher = this.localChannelUserStatusDispatcher.get(str);
        if (eventDispatcher == null) {
            eventDispatcher = new EventDispatcher<>();
        }
        eventDispatcher.addListener(myChannelUserStatusChangeListener);
        this.localChannelUserStatusDispatcher.put(str, eventDispatcher);
    }

    public void addMyNetWorkStatusChangeListener(String str, MyNetworkStatusChangeListener myNetworkStatusChangeListener) {
        EventDispatcher<MyNetworkStatusChangeListener> eventDispatcher = this.networkStatusDispatcher.get(str);
        if (eventDispatcher == null) {
            eventDispatcher = new EventDispatcher<>();
        }
        eventDispatcher.addListener(myNetworkStatusChangeListener);
        this.networkStatusDispatcher.put(str, eventDispatcher);
    }

    public void addSRChannelStatusChangeListener(SRChannelStatusChangeListener sRChannelStatusChangeListener) {
        this.srChannelStatusChangeDispatcher.addListener(sRChannelStatusChangeListener);
    }

    public void addSRRoleChangeListener(SRRoleChangeListener sRRoleChangeListener) {
        this.srRoleChangeListenerEventDispatcher.addListener(sRRoleChangeListener);
    }

    public void addWaitingListListener(String str, WaitingListListener waitingListListener) {
        EventDispatcher<WaitingListListener> eventDispatcher = this.waitingListDispatcher.get(str);
        if (eventDispatcher == null) {
            eventDispatcher = new EventDispatcher<>();
        }
        eventDispatcher.addListener(waitingListListener);
        this.waitingListDispatcher.put(str, eventDispatcher);
    }

    public void cancelNotification() {
        this.notificationHelper.cancelNotification();
    }

    public void captureVideoFrame(int i10, VideoPreProcessing.ProgressCallback progressCallback) {
        VideoPreProcessing videoPreProcessing = this.videoPreProcessing;
        if (videoPreProcessing == null) {
            progressCallback.onProcessYUV(null, 0, 0, 0);
        } else {
            videoPreProcessing.capFile(i10, progressCallback);
        }
    }

    public void cleanMappedWindow(String str) {
        if (Utils.isEqualsNotNull(this.floatingManager.getFloatingLiveChannel() == null ? null : this.floatingManager.getFloatingLiveChannel().threadId, str)) {
            cleaningAttachedWindows();
        }
    }

    public void cleanThreadWindow(String str) {
        ChatThread chatThread;
        CommunityThread floatingThread = this.floatingManager.getFloatingThread();
        if (floatingThread == null || (chatThread = floatingThread.chatThread) == null || !Utils.isEqualsNotNull(chatThread.threadId, str)) {
            return;
        }
        hideThreadDetailWindow();
    }

    public void exitLiveChannel(int i10, String str, DialogInterface.OnDismissListener onDismissListener) {
        exitLiveChannel(i10, str, null, onDismissListener, true);
    }

    public void flipCamera() {
        this.rtcManager.flipCamera();
    }

    public ChannelUserWrapper getChannelUserWrapper(int i10) {
        if (this.mainChannelUserWrapperList == null) {
            return null;
        }
        for (int i11 = 0; i11 < this.mainChannelUserWrapperList.size(); i11++) {
            ChannelUserWrapper channelUserWrapperValueAt = this.mainChannelUserWrapperList.valueAt(i11);
            if (channelUserWrapperValueAt != null && channelUserWrapperValueAt.channelUid == i10) {
                return channelUserWrapperValueAt;
            }
        }
        return null;
    }

    public SignallingChannel getFloatingLiveChannel() {
        return this.floatingManager.getFloatingLiveChannel();
    }

    public Collection<ChannelUser> getMainChannelChannelUserList() {
        SignallingChannel signallingChannel = this.mainSignalChannel;
        if (signallingChannel == null) {
            return null;
        }
        return signallingChannel.userList;
    }

    public Collection<ChannelUser> getMainChannelFilteredChannelUserList() {
        SignallingChannel signallingChannel = this.mainSignalChannel;
        if (signallingChannel == null) {
            return null;
        }
        return getFilteredChannelUserList(signallingChannel.userList);
    }

    public SparseArray<ChannelUserWrapper> getMainChannelFilteredUserWrapperList() {
        return getFilteredUserList(this.mainChannelUserWrapperList);
    }

    public int getMainChannelType() {
        SignallingChannel signallingChannel = this.mainSignalChannel;
        if (signallingChannel == null) {
            return 0;
        }
        return signallingChannel.channelType;
    }

    public SignallingChannel getMappedSignallingChannel(String str) {
        for (SignallingChannel signallingChannel : this.sigService.channelList()) {
            if (signallingChannel != null && Utils.isEqualsNotNull(signallingChannel.threadId, str)) {
                return signallingChannel;
            }
        }
        return null;
    }

    public MediaFramePusher getMeidaFramePusher() {
        RtcChatManager rtcChatManager = this.rtcManager;
        if (rtcChatManager == null) {
            return null;
        }
        return rtcChatManager.getMediaFramePusher();
    }

    public int getShowingWindowType() {
        return this.floatingManager.getShowingWindowType();
    }

    public boolean hasAtLeastOneMemberInCurrentChannel() {
        List<ChannelUser> list;
        SignallingChannel signallingChannel = this.mainSignalChannel;
        return (signallingChannel == null || (list = signallingChannel.userList) == null || list.size() <= 1) ? false : true;
    }

    public void hideAudioFloatingWindow() {
        this.floatingManager.removeAudioFloatingWindow();
    }

    public void hideSRFloatingWindow() {
        this.floatingManager.removeSRFloatingWindow();
    }

    public void hideVideoFloatingWindow() {
        this.floatingManager.removeVideoFloatingWindow();
        configStream();
    }

    public boolean isAllMuted() {
        return this.curChannelMiniInfo.getBoolean(IS_MINI_ALL_MUTE, false);
    }

    public boolean isAlreadyJoinedCurChannel(String str, int i10) {
        for (SignallingChannel signallingChannel : this.sigService.channelList()) {
            if (Utils.isEqualsNotNull(signallingChannel.threadId, str)) {
                if (i10 == 1) {
                    return signallingChannel.joinRole == 1;
                }
                if (i10 != 2) {
                    return true;
                }
                int i11 = signallingChannel.joinRole;
                return i11 == 2 || i11 == 1;
            }
        }
        return false;
    }

    public boolean isCreator() {
        Bundle bundle = this.curLiveChannelInfo;
        return bundle != null && bundle.getBoolean(KEY_IS_CREATOR);
    }

    public boolean isEligible() {
        return this.rtcManager.isEligible();
    }

    public boolean isInMiniStatus() {
        return this.curChannelMiniInfo.getBoolean(IS_IN_MINI_STATUS, false);
    }

    public boolean isPresenterInChannel() {
        SignallingChannel signallingChannel = this.mainSignalChannel;
        return signallingChannel != null && signallingChannel.joinRole == 1;
    }

    public void joinChannelAsGuest(int i10, String str) {
        this.sigService.joinThread(i10, str, null);
    }

    public void joinLiveChannel(int i10, String str, int i11, int i12) {
        if (str == null || !SignallingChannel.isLegalChannelType(i11) || isExistedInChannelAtLeastRole(str, i12)) {
            return;
        }
        if (getMainSigChannel() == null || Utils.isEquals(this.mainSignalChannel.threadId, str)) {
            this.hasShowingThread = true;
            this.sigService.joinThread(i10, str, new AnonymousClass10(i10, str, i12, i11));
        }
    }

    public void muteAllRemoteUsers(boolean z6) {
        SignallingChannel signallingChannel;
        List<ChannelUser> list;
        if (this.rtcManager == null || (signallingChannel = this.mainSignalChannel) == null || (list = signallingChannel.userList) == null) {
            return;
        }
        for (ChannelUser channelUser : list) {
            if (channelUser.isSpeaker()) {
                this.rtcManager.muteRemoteAudio(channelUser.channelUid, z6);
            }
        }
    }

    public void muteRemoteUser(int i10, boolean z6) {
        RtcChatManager rtcChatManager = this.rtcManager;
        if (rtcChatManager == null || rtcChatManager.worker() == null || this.rtcManager.worker().getRtcEngine() == null) {
            return;
        }
        this.rtcManager.worker().getRtcEngine().muteRemoteVideoStream(i10, z6);
        this.rtcManager.worker().getRtcEngine().muteRemoteAudioStream(i10, z6);
    }

    public void muteVideoWithoutChangeStatus(boolean z6) {
        if (this.mainSignalChannel == null) {
            return;
        }
        this.rtcManager.muteLocalVideo(z6, false);
    }

    @Override // com.narvii.video.model.RtcEventHandler
    public void onAudioVolumeIndication(IRtcEngineEventHandler.AudioVolumeInfo[] audioVolumeInfoArr, int i10) {
        SparseArray<ChannelUserWrapper> sparseArray;
        ChannelUser channelUser;
        UserStatusData userStatusData;
        UserStatusData userStatusData2;
        if (this.mainSignalChannel == null || (sparseArray = this.mainChannelUserWrapperList) == null || sparseArray.size() == 0) {
            return;
        }
        if (isAllUseVoiceMuted()) {
            i10 = 0;
        }
        if (this.oldTotalVolume != i10) {
            dispatchTotalVolumeChange(i10);
            this.oldTotalVolume = i10;
        }
        if (audioVolumeInfoArr == null || this.mainChannelUserWrapperList == null) {
            return;
        }
        for (IRtcEngineEventHandler.AudioVolumeInfo audioVolumeInfo : audioVolumeInfoArr) {
            int i11 = audioVolumeInfo.volume;
            Integer num = this.lastVolumes.get(audioVolumeInfo.uid);
            if (num != null && num.intValue() != 0 && i11 == 0) {
                this.lastVolumeZeroTime.put(audioVolumeInfo.uid, Long.valueOf(System.currentTimeMillis()));
            }
            SparseArray<ChannelUserWrapper> sparseArray2 = this.mainChannelUserWrapperList;
            int i12 = audioVolumeInfo.uid;
            if (i12 == 0) {
                i12 = this.mainSignalChannel.channelUid;
            }
            ChannelUserWrapper channelUserWrapper = sparseArray2.get(i12);
            if (i11 == 0) {
                Long l = this.lastVolumeZeroTime.get(audioVolumeInfo.uid);
                i11 = (l == null || System.currentTimeMillis() - l.longValue() <= 5000) ? (channelUserWrapper == null || (userStatusData2 = channelUserWrapper.userStatus) == null) ? 0 : userStatusData2.mVolume : 0;
            }
            this.lastVolumes.put(audioVolumeInfo.uid, Integer.valueOf(audioVolumeInfo.volume));
            if (channelUserWrapper != null && (userStatusData = channelUserWrapper.userStatus) != null && userStatusData.isVoiceMuted()) {
                i11 = 0;
            }
            if (channelUserWrapper != null && channelUserWrapper.userStatus != null) {
                if (UserStatusData.getVolumeLevel(i11) == UserStatusData.getVolumeLevel(channelUserWrapper.userStatus.mVolume)) {
                    return;
                }
                SignallingChannel signallingChannel = this.mainSignalChannel;
                if (signallingChannel.channelType != 5 || (channelUser = channelUserWrapper.channelUser) == null || !channelUser.isHost) {
                    channelUserWrapper.userStatus.mVolume = i11;
                    dispatchChannelUserWrapperChanged(signallingChannel, channelUserWrapper);
                }
            }
        }
    }

    @Override // com.narvii.chat.signalling.SignallingListener
    public void onChannelChanged(SignallingService signallingService, SignallingChannel signallingChannel) {
        Log.d(TAG, "signalling -- channel status change " + signallingChannel.channelName);
        dispatchChannelStatusChange(signallingChannel);
    }

    @Override // com.narvii.chat.signalling.SignallingListener
    public void onChannelForceQuit(SignallingService signallingService, SignallingChannel signallingChannel, int i10) {
        Log.d(TAG, "signalling -- force quit");
        if (signallingChannel != null && signallingChannel.joinRole != 0) {
            this.oldChannelType = signallingChannel.channelType;
        }
        dispatchChannelForceQuit(signallingChannel, i10);
    }

    @Override // com.narvii.chat.signalling.SignallingListener
    public void onChannelListChanged(SignallingService signallingService, SignallingChannel signallingChannel, boolean z6) {
        Log.d(TAG, "signalling -- channel changed " + signallingChannel.channelName);
        dispatchLocalUserStatusChange(z6 ? 1 : 2, signallingChannel, null);
        if (!z6) {
            SignallingChannel signallingChannel2 = this.mainSignalChannel;
            if (signallingChannel2 != null && Utils.isEqualsNotNull(signallingChannel2.threadId, signallingChannel.threadId)) {
                cleanMainChannel();
            }
            LocalBroadcastManager localBroadcastManagerB = LocalBroadcastManager.b(this.nvContext.getContext());
            Intent intent = new Intent(ACTION_LIVE_CHANNEL_QUIT);
            intent.putExtra("threadId", signallingChannel.threadId);
            localBroadcastManagerB.d(intent);
        }
        CallScreenService callScreenService = this.callScreenService;
        if (callScreenService != null && Utils.isEquals(callScreenService.getThreadId(), signallingChannel.threadId)) {
            this.callScreenService.resetCallScreen();
        }
        if (signallingService.channelList() == null || signallingService.channelList().size() == 0) {
            this.rtcManager.leaveChannel(null);
        }
    }

    public void onDestroy() {
        this.localBroadcastManager.f(this.receiver);
        this.context.unregisterReceiver(this.receiver);
    }

    @Override // com.narvii.chat.signalling.SignallingListener
    public void onError(SignallingService signallingService, WsError wsError) {
    }

    @Override // com.narvii.chat.rtc.FaceTrackStatusChangeListener
    public void onFaceStatusChange(int i10) {
        updateChannelUserWrapperInfo(this.rtcManager.getLocalUid());
    }

    @Override // com.narvii.video.model.RtcEventHandler
    public void onFirstRemoteVideoDecoded(int i10, int i11, int i12, int i13) {
        ChannelUser channelUser;
        if (this.rtcManager.getLocalUid() != i10) {
            ChannelUserWrapper channelUserWrapper = this.mainChannelUserWrapperList.get(i10);
            boolean z6 = (channelUserWrapper == null || (channelUser = channelUserWrapper.channelUser) == null || !channelUser.isHost) ? false : true;
            SurfaceView surfaceViewCreateRendererView = RtcEngine.CreateRendererView(this.context);
            this.rtcManager.setupRemoteVideo(new VideoCanvas(surfaceViewCreateRendererView, (z6 && getMainSigChannel() != null && getMainSigChannel().channelType == 5) ? 2 : 1, i10));
            UserStatusData userStausData = this.rtcManager.getUserStausData(i10);
            if (userStausData != null) {
                userStausData.setVideoFrameStatus(2);
                userStausData.mView = surfaceViewCreateRendererView;
            } else {
                this.rtcManager.addNewUser(i10, surfaceViewCreateRendererView, 2);
            }
        }
        if (getMainSigChannel() != null && isVideoSignificantChannelType(getMainSigChannel().channelType) && isAgoraUserInMainChannel(i10)) {
            addAgoraUserDataToChannelUserWrapper(i10);
            changeChannelUserWrapperStatus(i10, 1);
        }
        configStream();
    }

    @Override // com.narvii.video.model.RtcEventHandler
    public void onJoinChannelSuccess(String str, int i10, int i11) {
        this.hasLeaveChannel.set(false);
        if (isMainChannelVideoType()) {
            if (this.videoPreProcessing == null) {
                this.videoPreProcessing = new VideoPreProcessing();
            }
            this.videoPreProcessing.doRegisterPreProcessing();
            VideoPreProcessing.FrameAvailableListener frameAvailableListener = this.videoFrameAvailableListener;
            if (frameAvailableListener != null) {
                this.videoPreProcessing.setRemoteFrameAvailableListener(frameAvailableListener);
            }
        }
        if (!isAgoraUserInMainChannel(i10) || getMainSigChannel() == null) {
            return;
        }
        addAgoraUserDataToChannelUserWrapper(i10);
        boolean zIsVideoSignificantChannelType = isVideoSignificantChannelType(getMainSigChannel().channelType);
        boolean z6 = getMainSigChannel().channelType == 5;
        if (z6 && isHost(i10)) {
            this.rtcManager.initScreenRoomHostSwap();
        }
        changeChannelUserWrapperStatus(i10, (!zIsVideoSignificantChannelType || z6) ? 1 : 0);
        dispatchJoinAgoraSuccessed();
    }

    @Override // com.narvii.video.model.RtcEventHandler
    public void onLeaveChannel() {
        SignallingChannel signallingChannel = this.mainSignalChannel;
        if (signallingChannel != null) {
            changeChannelUserWrapperStatus(signallingChannel.channelUid, 2);
        }
        VideoPreProcessing videoPreProcessing = this.videoPreProcessing;
        if (videoPreProcessing != null) {
            videoPreProcessing.doDeregisterPreProcessing();
        }
    }

    @Override // com.narvii.chat.signalling.SignallingListener
    public void onReceiverBusy(SignallingChannel signallingChannel) {
        if (signallingChannel != null) {
            exitLiveChannel(signallingChannel.ndcId, signallingChannel.threadId);
        }
        this.callScreenService.updateStatus(10);
    }

    @Override // com.narvii.video.model.RtcEventHandler
    public void onRejoinChannelSuccess(String str, int i10, int i11) {
        if (this.isLostConnectionStatus) {
            this.isLostConnectionStatus = false;
            Utils.handler.removeCallbacks(this.connectionCheckRunnable);
        }
        updateChannelUserWrapperInfo(i10);
        if (isAgoraUserInMainChannel(i10) && isMainChannelVoiceType()) {
            changeChannelUserWrapperStatus(i10, 1);
        }
    }

    @Override // com.narvii.video.model.RtcEventHandler
    public void onRemoteUserJoined(int i10) {
        ChannelUserWrapper channelUserWrapper = this.mainChannelUserWrapperList.get(i10);
        SignallingChannel signallingChannel = this.mainSignalChannel;
        boolean z6 = false;
        boolean z10 = signallingChannel != null && this.vvChatHelper.isAgoraVideoType(signallingChannel.channelType);
        if (getMainSigChannel() != null && (getMainSigChannel().channelType == 1 || getMainSigChannel().channelType == 5)) {
            z6 = true;
        }
        if (!isAgoraUserInMainChannel(i10) || channelUserWrapper == null || channelUserWrapper.channelUser == null) {
            this.rtcManager.muteRemoteUer(z10 ? 2 : 1, i10, true);
            this.unbridledAgoraUsers.add(Integer.valueOf(i10));
            return;
        }
        addAgoraUserDataToChannelUserWrapper(i10);
        if (z6) {
            changeChannelUserWrapperStatus(i10, 1);
        }
        ChannelUser channelUser = channelUserWrapper.channelUser;
        if (channelUser.joinRole != 1) {
            this.rtcManager.muteRemoteUer(z10 ? 2 : 1, i10, true);
            this.unbridledAgoraUsers.add(Integer.valueOf(i10));
        } else if (this.localMuteUserList.contains(channelUser.uid())) {
            this.rtcManager.muteRemoteUer(z10 ? 2 : 1, i10, true);
        }
    }

    @Override // com.narvii.chat.signalling.SignallingListener
    public void onSignallingPong(ArrayList<ThreadChannelUserInfo> arrayList) {
        HashMap map = new HashMap();
        for (ThreadChannelUserInfo threadChannelUserInfo : arrayList) {
            map.put(threadChannelUserInfo.threadId, threadChannelUserInfo);
            if (this.sigService.getChannelByThread(threadChannelUserInfo.threadId) == null) {
                this.sigService.leaveThread(threadChannelUserInfo.ndcId, threadChannelUserInfo.threadId, null);
            }
        }
        for (SignallingChannel signallingChannel : this.sigService.channelList()) {
            ThreadChannelUserInfo threadChannelUserInfo2 = (ThreadChannelUserInfo) map.get(signallingChannel.threadId);
            boolean z6 = threadChannelUserInfo2 == null || threadChannelUserInfo2.joinRole == 0;
            if (signallingChannel.joinRole != 0 && z6) {
                exitLiveChannel(signallingChannel.ndcId, signallingChannel.threadId);
            }
        }
    }

    @Override // com.narvii.chat.signalling.SignallingListener
    public void onUserForceRemoveFromPresenter(SignallingChannel signallingChannel) {
        WeakReference<Activity> weakReference = this.topActivity;
        Activity activity = weakReference == null ? null : weakReference.get();
        if (activity != null) {
            ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(activity);
            aCMAlertDialog.setMessage(R.string.removed_by_host);
            aCMAlertDialog.addButton(R.string.got_it, null);
            aCMAlertDialog.show();
        }
        stopPresenting();
    }

    @Override // com.narvii.chat.signalling.SignallingListener
    public void onUserListChanged(SignallingService signallingService, SignallingChannel signallingChannel, Collection<ChannelUser> collection, Collection<ChannelUser> collection2) {
        String str;
        boolean z6;
        StringBuilder sb = new StringBuilder();
        sb.append("signalling -- user list changed ");
        if (collection2 == null) {
            str = " null ";
        } else {
            str = " size " + collection2.size();
        }
        sb.append(str);
        Log.d(TAG, sb.toString());
        mergeAgoraDataAndChannelData(signallingChannel, collection2);
        boolean zIsEqualsNotNull = Utils.isEqualsNotNull(getMainSigChannel() == null ? null : getMainSigChannel().threadId, signallingChannel.threadId);
        dispatchChannelUserListChange(signallingChannel, collection, collection2, zIsEqualsNotNull ? getMainChannelUserWrapperList() : null);
        tryToJoinAgoraChannel(signallingChannel);
        if (collection2 == null) {
            return;
        }
        if (zIsEqualsNotNull) {
            dispatcheScreenRoomRoleChange(signallingChannel);
        }
        calculateUserListChange(collection, collection2);
        if (zIsEqualsNotNull && getMainSigChannel() != null && collection2.size() == 2 && Utils.isEqualsNotNull(getMainSigChannel().threadId, this.callScreenService.getThreadId())) {
            Iterator<ChannelUser> it = collection2.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z6 = true;
                    break;
                } else if (it.next().joinRole != 1) {
                    z6 = false;
                    break;
                }
            }
            this.isPrivateMainChannelFullBefore = z6;
            if (z6) {
                WeakReference<VVChatInviteActivity> weakReference = VVChatInviteActivity.instance;
                if (weakReference != null && weakReference.get() != null) {
                    VVChatInviteActivity.instance.get().finish();
                }
                this.callScreenService.updateStatus(2);
            }
        }
        if (isAllMuted()) {
            muteAllRemoteUsers(true);
        }
    }

    public void relaunchRtcMainActivity(boolean z6, Intent intent) {
        cancelNotification();
        if (getMainSigChannel() == null) {
            hideVideoFloatingWindow();
            hideAudioFloatingWindow();
            hideSRFloatingWindow();
        } else {
            closeShowingWindow();
            RelaunchLiveChannelListener relaunchLiveChannelListener = this.relaunchLiveChannelListener;
            if (relaunchLiveChannelListener != null) {
                relaunchLiveChannelListener.onReLaunchLiveChannelView(this.curLiveChannelInfo, z6, intent);
            }
        }
    }

    public void removeAgoraUserVolumeChangeListener(String str, AgoraUserVolumeChangeListener agoraUserVolumeChangeListener) {
        EventDispatcher<AgoraUserVolumeChangeListener> eventDispatcher = this.totalVolumeChangeDispatcher.get(str);
        if (eventDispatcher == null) {
            return;
        }
        eventDispatcher.removeListener(agoraUserVolumeChangeListener);
    }

    public void removeAllLocalMuteUsers() {
        SignallingChannel signallingChannel = this.mainSignalChannel;
        if (signallingChannel == null || signallingChannel.userList == null) {
            return;
        }
        Iterator it = new HashSet(this.localMuteUserList).iterator();
        while (it.hasNext()) {
            removeMutedUser((String) it.next());
        }
        this.localMuteUserList.clear();
    }

    public void removeAsSpeaker(String str) {
        SignallingChannel signallingChannel = this.mainSignalChannel;
        if (signallingChannel == null) {
            return;
        }
        this.sigService.sendRemoveFromPresenter(signallingChannel.ndcId, signallingChannel.threadId, str, new Callback() { // from class: com.narvii.chat.rtc.RtcService.7
            @Override // com.narvii.util.Callback
            public void call(Object obj) {
                if (obj instanceof WsError) {
                    NVToast.makeText(RtcService.this.context, ((WsError) obj).message, 1).show();
                }
            }
        });
    }

    public void removeChannelUserWrapperUpdateListener(String str, ChannelUserWrapperUpdateListener channelUserWrapperUpdateListener) {
        EventDispatcher<ChannelUserWrapperUpdateListener> eventDispatcher = this.channelUserWrapperStatusDispatcher.get(str);
        if (eventDispatcher == null) {
            return;
        }
        eventDispatcher.removeListener(channelUserWrapperUpdateListener);
    }

    public void removeDataStreamListener(DataStreamListener dataStreamListener) {
        this.dataStreamListeners.removeListener(dataStreamListener);
    }

    public void removeLiveChannelChangeListener(String str, LiveChannelChangeListener liveChannelChangeListener) {
        EventDispatcher<LiveChannelChangeListener> eventDispatcher = this.channelStatusChangeDispatcher.get(str);
        if (eventDispatcher == null) {
            return;
        }
        eventDispatcher.removeListener(liveChannelChangeListener);
    }

    public void removeLiveChannelErrorListener(String str, LiveChannelErrorListener liveChannelErrorListener) {
        EventDispatcher<LiveChannelErrorListener> eventDispatcher = this.channelErrorDispatcher.get(str);
        if (eventDispatcher == null) {
            return;
        }
        eventDispatcher.removeListener(liveChannelErrorListener);
    }

    public void removeLocalMuteUserListChangeListener(String str, LocalMuteUserListChangeListener localMuteUserListChangeListener) {
        EventDispatcher<LocalMuteUserListChangeListener> eventDispatcher = this.localMuteUserListDispatcher.get(str);
        if (eventDispatcher == null) {
            return;
        }
        eventDispatcher.removeListener(localMuteUserListChangeListener);
    }

    public void removeMyChannelUserStatusChangeListener(String str, MyChannelUserStatusChangeListener myChannelUserStatusChangeListener) {
        EventDispatcher<MyChannelUserStatusChangeListener> eventDispatcher = this.localChannelUserStatusDispatcher.get(str);
        if (eventDispatcher == null) {
            return;
        }
        eventDispatcher.removeListener(myChannelUserStatusChangeListener);
    }

    public void removeMyNetWorkStatusChangeListener(String str, MyNetworkStatusChangeListener myNetworkStatusChangeListener) {
        EventDispatcher<MyNetworkStatusChangeListener> eventDispatcher = this.networkStatusDispatcher.get(str);
        if (eventDispatcher == null) {
            return;
        }
        eventDispatcher.removeListener(myNetworkStatusChangeListener);
    }

    public void removeSRRoleChangeListener(SRRoleChangeListener sRRoleChangeListener) {
        this.srRoleChangeListenerEventDispatcher.removeListener(sRRoleChangeListener);
    }

    public void removeWaitingListListener(String str, WaitingListListener waitingListListener) {
        EventDispatcher<WaitingListListener> eventDispatcher = this.waitingListDispatcher.get(str);
        if (eventDispatcher == null) {
            return;
        }
        eventDispatcher.removeListener(waitingListListener);
    }

    public void requestToBePresenter(final ChannelActionCallback<ChannelActionResult> channelActionCallback, final boolean z6, final boolean z10) {
        final SignallingChannel mainSigChannel = getMainSigChannel();
        if (mainSigChannel == null) {
            return;
        }
        final ChannelActionResult channelActionResult = new ChannelActionResult(false, ChannelActionError.ERROR_REQUEST_TO_BE_PRESENTER);
        if (!isVideoSignificantChannelType(mainSigChannel.channelType) || getPresenterCountInChannel(mainSigChannel) < 7) {
            this.sigService.updateThreadJoinRole(mainSigChannel.ndcId, mainSigChannel.threadId, 1, new Callback() { // from class: com.narvii.chat.rtc.RtcService.3
                @Override // com.narvii.util.Callback
                public void call(Object obj) {
                    if (obj instanceof WsError) {
                        int iCode = ((WsError) obj).code();
                        if (iCode == 105 || iCode == 116 || iCode == 110) {
                            RtcService.this.dispatchChannelException(mainSigChannel.threadId, iCode, new WsError(iCode, NVApplication.instance().getString(R.string.channel_presenter_limit_note_live)));
                            ChannelActionCallback channelActionCallback2 = channelActionCallback;
                            if (channelActionCallback2 != null) {
                                channelActionCallback2.call(channelActionResult);
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    if (obj instanceof SignallingChannel) {
                        SignallingChannel signallingChannel = (SignallingChannel) obj;
                        if (signallingChannel.joinRole == 1) {
                            if (z10) {
                                RtcService.this.rtcManager.muteLocalAudio(false);
                                RtcService.this.rtcManager.muteLocalVideo(true);
                            } else {
                                RtcService.this.muteLocalStream(mainSigChannel.channelType, false);
                            }
                            if (RtcService.this.isVideoSignificantChannelType(mainSigChannel.channelType)) {
                                RtcService.this.rtcManager.requestToBeBroadcast(z6, z10);
                            }
                        }
                        if (channelActionCallback != null) {
                            channelActionCallback.call(new ChannelActionResult(signallingChannel.joinRole == 1, null));
                        }
                    }
                }
            });
        } else if (channelActionCallback != null) {
            channelActionCallback.call(channelActionResult);
        }
    }

    public void resetReputationComposite(ReputationEarningComposite reputationEarningComposite) {
        ReputationEarningComposite reputationEarningComposite2 = this.repEarningComposite;
        if (reputationEarningComposite2 != null) {
            reputationEarningComposite2.destroy();
            this.repEarningComposite = null;
        }
        this.repEarningComposite = reputationEarningComposite;
    }

    public void saveCurrentLiveChannelInfo(Bundle bundle) {
        if (this.curLiveChannelInfo == null) {
            this.curLiveChannelInfo = new Bundle();
        }
        this.curLiveChannelInfo.putAll(bundle);
    }

    public boolean sendDataStream(byte[] bArr) {
        int iSendDataStream = this.rtcManager.sendDataStream(bArr);
        if (iSendDataStream < 0) {
            Log.w(TAG, "fail to send agora data stream (" + (-iSendDataStream) + ")");
        }
        return iSendDataStream == 0;
    }

    public void setCommunityString(String str) {
        this.floatingManager.setCommunityString(str);
    }

    public void setHideDrawer(boolean z6) {
        this.floatingManager.setHideDrawer(z6);
    }

    public void setHostStreamMode(boolean z6) {
        ChannelUserWrapper channelUserWrapper = this.mainChannelUserWrapperList.get(this.screenRoomHostUid);
        if (channelUserWrapper == null || channelUserWrapper.channelUser == null) {
            return;
        }
        this.rtcManager.setLowerStreamMode(channelUserWrapper.channelUid, z6);
    }

    public void setIsChannelCreator(boolean z6) {
        this.floatingManager.setIsChannelCreator(z6);
    }

    public void setIsFromGlobalChat(boolean z6) {
        this.floatingManager.setIsFromGlobalChat(z6);
    }

    public void setIsInMiniStatus(boolean z6) {
        this.curChannelMiniInfo.putBoolean(IS_IN_MINI_STATUS, z6);
    }

    public void setVideoFrameAvailableListener(VideoPreProcessing.FrameAvailableListener frameAvailableListener) {
        VideoPreProcessing videoPreProcessing = this.videoPreProcessing;
        if (videoPreProcessing == null) {
            this.videoFrameAvailableListener = frameAvailableListener;
        } else {
            videoPreProcessing.setRemoteFrameAvailableListener(frameAvailableListener);
        }
    }

    public void showNotification() {
        if (this.mainSignalChannel == null) {
            return;
        }
        String str = null;
        try {
            ChatThread chatThread = (ChatThread) JacksonUtils.readAs(this.curLiveChannelInfo.getString("thread"), ChatThread.class);
            if (chatThread != null && !TextUtils.isEmpty(chatThread.title)) {
                str = chatThread.title;
            }
        } catch (Exception unused) {
        }
        this.notificationHelper.showNotification(str, this.mainSignalChannel.channelType);
    }

    public void showThreadDetailWindow(CommunityThread communityThread) {
        this.floatingManager.showThreadFloatingWindow(communityThread);
    }

    public void toggleLocalSteam() {
        this.rtcManager.toggleLocalAudio();
        this.rtcManager.toggleLocalVideo();
    }

    public void toggleLocalVideo() {
        this.rtcManager.toggleLocalVideo();
    }

    public void toggleLocalVoice() {
        this.rtcManager.toggleLocalAudio();
    }

    public void toggleSpeaker() {
        this.rtcManager.toggleSpeaker();
    }

    public void updateJoinRole(int i10, String str, int i11, Callback callback) {
        this.sigService.updateThreadJoinRole(i10, str, i11, callback);
    }

    public void updateJoinRoleWithJoinAgora(final int i10, final String str, int i11) {
        this.sigService.updateThreadJoinRole(i10, str, i11, new Callback() { // from class: com.narvii.chat.rtc.RtcService.9
            @Override // com.narvii.util.Callback
            public void call(Object obj) {
                if (obj instanceof SignallingChannel) {
                    RtcService.this.sigService.getAgoraChannel(i10, str, RtcService.this.getAgoraChannelInfoCallBack);
                }
            }
        });
    }

    public void updateLocalUserVolume(float f) {
        UserStatusData userStatusData;
        if (this.mainSignalChannel == null) {
            return;
        }
        if (f > 1.0f) {
            f = 1.0f;
        }
        if (f < 0.0f) {
            f = 0.0f;
        }
        int i10 = (int) (f * 256.0f);
        ChannelUserWrapper mainChannelLocalUserWrapper = getMainChannelLocalUserWrapper();
        if (mainChannelLocalUserWrapper == null || (userStatusData = mainChannelLocalUserWrapper.userStatus) == null || userStatusData.getCurVolumeLevel() == UserStatusData.getVolumeLevel(i10)) {
            return;
        }
        mainChannelLocalUserWrapper.userStatus.mVolume = i10;
        dispatchChannelUserWrapperChanged(this.mainSignalChannel, mainChannelLocalUserWrapper);
    }

    public void waitListClean(int i10, String str, final Callback<SignallingChannel> callback) {
        this.waitingListService.waitListClean(i10, str, new e8.l() { // from class: com.narvii.chat.rtc.a
            @Override // e8.l
            public final Object invoke(Object obj) {
                return RtcService.lambda$waitListClean$5(callback, obj);
            }
        });
    }

    public void waitListJoin(int i10, String str, final Callback<SignallingChannel> callback) {
        this.waitingListService.waitListJoin(i10, str, new e8.l() { // from class: com.narvii.chat.rtc.d
            @Override // e8.l
            public final Object invoke(Object obj) {
                return RtcService.lambda$waitListJoin$8(callback, obj);
            }
        });
    }

    public void waitListJoinApprove(int i10, String str, String str2, final WaitingListCallback<SignallingChannel, Boolean> waitingListCallback) {
        this.waitingListService.waitListJoinApprove(i10, str, str2, new e8.l() { // from class: com.narvii.chat.rtc.k
            @Override // e8.l
            public final Object invoke(Object obj) {
                return RtcService.lambda$waitListJoinApprove$6(waitingListCallback, obj);
            }
        });
    }

    public void waitListJoinCancel(int i10, String str, String str2, final Callback<SignallingChannel> callback) {
        this.waitingListService.waitListJoinCancel(i10, str, str2, new e8.l() { // from class: com.narvii.chat.rtc.b
            @Override // e8.l
            public final Object invoke(Object obj) {
                return RtcService.lambda$waitListJoinCancel$7(callback, obj);
            }
        });
    }

    public RtcService(NVContext nVContext) {
        BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.narvii.chat.rtc.RtcService.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                if (AccountService.ACTION_ACCOUNT_CHANGED.equals(intent.getAction())) {
                    if (!RtcService.this.accountService.hasAccount()) {
                        RtcService.this.cleaningAttachedWindows();
                        RtcService.this.hideThreadDetailWindow();
                        SignallingChannel mainSigChannel = RtcService.this.getMainSigChannel();
                        if (mainSigChannel != null) {
                            RtcService.this.exitLiveChannel(mainSigChannel.ndcId, mainSigChannel.threadId);
                            return;
                        }
                        return;
                    }
                    return;
                }
                if ("android.intent.action.SCREEN_ON".equals(intent.getAction())) {
                    RtcService.this.rtcManager.onResume();
                    return;
                }
                if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
                    RtcService.this.rtcManager.onPause();
                } else if (RtcService.ACTION_CAMERA_TAKEN.equals(intent.getAction())) {
                    RtcService.this.rtcManager.onPause();
                } else if (RtcService.ACTION_CAMERA_FREE.equals(intent.getAction())) {
                    RtcService.this.rtcManager.onResume();
                }
            }
        };
        this.receiver = broadcastReceiver;
        this.clickEvent = new AnonymousClass5();
        this.connectionCheckRunnable = new Runnable() { // from class: com.narvii.chat.rtc.RtcService.8
            @Override // java.lang.Runnable
            public void run() {
                if (RtcService.this.isLostConnectionStatus) {
                    RtcService.this.rtcManager.leaveChannel(null);
                }
            }
        };
        this.getAgoraChannelInfoCallBack = new Callback() { // from class: com.narvii.chat.rtc.RtcService.11
            @Override // com.narvii.util.Callback
            public void call(Object obj) {
                if (obj instanceof SignallingChannel) {
                    RtcService.this.tryToJoinAgoraChannel((SignallingChannel) obj);
                } else if (obj instanceof WsError) {
                    NVToast.makeText(RtcService.this.context, ((WsError) obj).message(), 1).show();
                }
            }
        };
        this.channelUserCompareOld = new SparseArray<>();
        this.channelUserCompareNew = new SparseArray<>();
        this.muteStatusDispatcher = new EventDispatcher<>();
        this.nvContext = nVContext;
        this.context = nVContext.getContext();
        this.rtcManager = (RtcChatManager) nVContext.getService("rtcManager");
        this.sigService = (SignallingService) nVContext.getService("signalling");
        this.waitingListService = (WaitingListService) nVContext.getService("waitingList");
        this.accountService = (AccountService) nVContext.getService("account");
        this.callScreenService = (CallScreenService) nVContext.getService("callScreen");
        this.sigService.listeners.addListener(this);
        this.waitingListService.getListeners().addListener(this);
        FloatingManager floatingManager = new FloatingManager(this.context, this, this.callScreenService);
        this.floatingManager = floatingManager;
        floatingManager.setFloatingClickEvent(this.clickEvent);
        LocalBroadcastManager localBroadcastManagerB = LocalBroadcastManager.b(nVContext.getContext());
        this.localBroadcastManager = localBroadcastManagerB;
        localBroadcastManagerB.c(broadcastReceiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
        this.localBroadcastManager.c(broadcastReceiver, new IntentFilter(ACTION_CAMERA_FREE));
        this.localBroadcastManager.c(broadcastReceiver, new IntentFilter(ACTION_CAMERA_TAKEN));
        this.context.registerReceiver(broadcastReceiver, new IntentFilter("android.intent.action.SCREEN_ON"));
        this.context.registerReceiver(broadcastReceiver, new IntentFilter("android.intent.action.SCREEN_OFF"));
        this.musicHelper = new LiveChannelMusicHelper(nVContext);
        this.vvChatHelper = new VVChatHelper(nVContext);
        this.notificationHelper = new LiveChannelNotificationHelper(nVContext);
    }

    private void configStream() {
        ChatThread chatThread;
        boolean z6;
        Bundle curLiveChannelInfo = getCurLiveChannelInfo();
        if (curLiveChannelInfo == null) {
            chatThread = null;
        } else {
            chatThread = (ChatThread) JacksonUtils.readAs(curLiveChannelInfo.getString("thread"), ChatThread.class);
        }
        if (chatThread != null && chatThread.type == 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        if (this.mainChannelUserWrapperList != null) {
            for (int i10 = 0; i10 < this.mainChannelUserWrapperList.size(); i10++) {
                ChannelUserWrapper channelUserWrapperValueAt = this.mainChannelUserWrapperList.valueAt(i10);
                if (channelUserWrapperValueAt != null) {
                    this.rtcManager.setLowerStreamMode(channelUserWrapperValueAt.channelUid, !z6);
                }
            }
        }
    }

    private boolean isExistedInChannelAtLeastRole(String str, int i10) {
        SignallingChannel mappedSignallingChannel = getMappedSignallingChannel(str);
        if (mappedSignallingChannel == null) {
            return false;
        }
        if (i10 == 1) {
            if (mappedSignallingChannel.joinRole != 1) {
                return false;
            }
            return true;
        }
        if (i10 != 2) {
            return true;
        }
        int i11 = mappedSignallingChannel.joinRole;
        if (i11 != 1 && i11 != 2) {
            return false;
        }
        return true;
    }

    private boolean isExistedInChannelEqualRole(String str, int i10) {
        SignallingChannel mappedSignallingChannel = getMappedSignallingChannel(str);
        if (mappedSignallingChannel == null || i10 != mappedSignallingChannel.joinRole) {
            return false;
        }
        return true;
    }

    private boolean isMainChannelVideoType() {
        if (getMainSigChannel() != null && isVideoSignificantChannelType(getMainSigChannel().channelType)) {
            return true;
        }
        return false;
    }

    private boolean isMainChannelVoiceType() {
        if (getMainSigChannel() != null && isVoiceSignificantChannelType(getMainSigChannel().channelType)) {
            return true;
        }
        return false;
    }

    private void operaLocalMuteUser(int i10, String str) {
        boolean z6;
        int i11;
        int i12;
        String strUid;
        if (!TextUtils.isEmpty(str) && this.mainSignalChannel != null) {
            boolean z10 = false;
            if (i10 == 0) {
                z6 = true;
            } else {
                z6 = false;
            }
            boolean zContains = this.localMuteUserList.contains(str);
            if (!z6 || !zContains) {
                if (!z6 && !zContains) {
                    return;
                }
                Iterator<ChannelUser> it = this.mainSignalChannel.userList.iterator();
                while (true) {
                    if (it.hasNext()) {
                        ChannelUser next = it.next();
                        if (next == null) {
                            strUid = null;
                        } else {
                            strUid = next.uid();
                        }
                        if (Utils.isEqualsNotNull(strUid, str)) {
                            i11 = next.channelUid;
                            break;
                        }
                    } else {
                        i11 = -1;
                        break;
                    }
                }
                if (i11 == -1) {
                    return;
                }
                if (z6) {
                    this.localMuteUserList.add(str);
                } else {
                    this.localMuteUserList.remove(str);
                }
                RtcChatManager rtcChatManager = this.rtcManager;
                if (this.vvChatHelper.isAgoraVideoType(this.mainSignalChannel.channelType)) {
                    i12 = 2;
                } else {
                    i12 = 1;
                }
                if (i10 == 0) {
                    z10 = true;
                }
                rtcChatManager.muteRemoteUer(i12, i11, z10);
                dispatchLocalMuteUserListChange(this.mainSignalChannel);
            }
        }
    }

    private void prepareAgoraWorkThread(int i10) {
        int i11;
        boolean z6;
        boolean z10 = true;
        if (isVideoSignificantChannelType(i10)) {
            i11 = 2;
        } else {
            i11 = 1;
        }
        if (i10 == 3) {
            z6 = true;
        } else {
            z6 = false;
        }
        if (this.rtcManager.worker() != null && this.rtcManager.getCurChannelType() == i11) {
            this.rtcManager.setForceAvatar(z6);
            return;
        }
        this.rtcManager.setForceAvatar(z6);
        this.rtcManager.setFaceTrackStatusChange(this);
        this.rtcManager.setCurSigChannelType(i10);
        RtcChatManager rtcChatManager = this.rtcManager;
        if (i10 != 5) {
            z10 = false;
        }
        rtcChatManager.initRtcService(z10, i11, this);
    }

    public void changeLocalVoiceMuteStatus(boolean z6) {
        ChannelUserWrapper mainChannelLocalUserWrapper = getMainChannelLocalUserWrapper();
        if (mainChannelLocalUserWrapper != null && mainChannelLocalUserWrapper.channelUser != null && this.mainSignalChannel != null) {
            UserStatusData userStatusData = mainChannelLocalUserWrapper.userStatus;
            if (userStatusData != null) {
                userStatusData.setVoiceMuted(z6);
            }
            dispatchChannelUserWrapperChanged(this.mainSignalChannel, mainChannelLocalUserWrapper);
        }
    }

    public void cleaningAttachedWindows() {
        closeShowingWindow();
        cancelNotification();
    }

    public void closeShowingWindow() {
        if (getShowingWindowType() == 2) {
            hideAudioFloatingWindow();
        } else if (getShowingWindowType() == 0) {
            hideVideoFloatingWindow();
        } else if (getShowingWindowType() == 3) {
            hideSRFloatingWindow();
        }
    }

    public void exitLiveChannel(int i10, String str, ChannelActionCallback<ChannelActionResult> channelActionCallback) {
        exitLiveChannel(i10, str, channelActionCallback, null, true);
    }

    public void exitLiveChannelOfCommunity(int i10) {
        int i11;
        hideLiveChannelFloatingWindow(i10);
        SignallingChannel mainSigChannel = getMainSigChannel();
        if (mainSigChannel != null && (i11 = mainSigChannel.ndcId) == i10) {
            exitLiveChannel(i11, mainSigChannel.threadId);
        }
    }

    public ChannelUserWrapper getMainChannelLocalUserWrapper() {
        SparseArray<ChannelUserWrapper> mainChannelUserWrapperList = getMainChannelUserWrapperList();
        SignallingChannel mainSigChannel = getMainSigChannel();
        if (mainSigChannel != null && mainChannelUserWrapperList != null && mainChannelUserWrapperList.size() != 0) {
            for (int i10 = 0; i10 < mainChannelUserWrapperList.size(); i10++) {
                if (mainChannelUserWrapperList.valueAt(i10).channelUid == mainSigChannel.channelUid) {
                    return mainChannelUserWrapperList.valueAt(i10);
                }
            }
        }
        return null;
    }

    public void hideLiveChannelFloatingWindow(int i10) {
        SignallingChannel floatingLiveChannel;
        if (getShowingWindowType() != -1 && (floatingLiveChannel = getFloatingLiveChannel()) != null && floatingLiveChannel.ndcId == i10) {
            cleaningAttachedWindows();
        }
    }

    public boolean isHostInCurrentChannel() {
        ChannelUser channelUser;
        ChannelUserWrapper mainChannelLocalUserWrapper = getMainChannelLocalUserWrapper();
        if (mainChannelLocalUserWrapper != null && (channelUser = mainChannelLocalUserWrapper.channelUser) != null && channelUser.isHost) {
            return true;
        }
        return false;
    }

    public boolean isScreenRoomHost(ChannelUserWrapper channelUserWrapper) {
        ChannelUser channelUser;
        return channelUserWrapper != null && (channelUser = channelUserWrapper.channelUser) != null && channelUser.isHost && getMainSigChannel().channelType == 5;
    }

    @Override // com.narvii.video.model.RtcEventHandler
    public void onAudioQuality(int i10, int i11, short s, short s5) {
        updateChannelUserWrapperInfo(i10);
    }

    @Override // com.narvii.video.model.RtcEventHandler
    public void onAudioRouteChanged(int i10) {
        if (getMainSigChannel() == null) {
            return;
        }
        updateChannelUserWrapperInfo(getMainSigChannel().channelUid);
    }

    @Override // com.narvii.chat.signalling.SignallingListener
    public void onChannelTypeUpdateSuccess(SignallingService signallingService, SignallingChannel signallingChannel) {
        dispatchChannelStatusChange(signallingChannel);
        logVVChatStatusChange(signallingChannel);
    }

    @Override // com.narvii.video.model.RtcEventHandler
    public void onLocalUserSteamDecoded(int i10) {
        if (isMainChannelVideoType()) {
            addAgoraUserDataToChannelUserWrapper(i10);
            changeChannelUserWrapperStatus(i10, 1);
        }
    }

    @Override // com.narvii.video.model.RtcEventHandler
    public void onRequestToken() {
        if (getMainSigChannel() == null) {
            return;
        }
        SignallingService signallingService = this.sigService;
        SignallingChannel signallingChannel = this.mainSignalChannel;
        signallingService.getAgoraChannel(signallingChannel.ndcId, signallingChannel.threadId, new Callback() { // from class: com.narvii.chat.rtc.RtcService.14
            @Override // com.narvii.util.Callback
            public void call(Object obj) {
                if (obj instanceof SignallingChannel) {
                    RtcService.this.rtcManager.worker().getRtcEngine().renewToken(((SignallingChannel) obj).channelKey);
                } else {
                    Log.d(RtcService.TAG, "renew agora token error");
                }
            }
        });
    }

    @Override // com.narvii.video.model.RtcEventHandler
    public void onUserMuteAudio(int i10, boolean z6) {
        addAgoraUserDataToChannelUserWrapper(i10);
        updateChannelUserWrapperInfo(i10);
        if (isAllUseVoiceMuted()) {
            dispatchTotalVolumeChange(0);
        }
    }

    @Override // com.narvii.video.model.RtcEventHandler
    public void onUserMuteVideo(int i10, boolean z6) {
        updateChannelUserWrapperInfo(i10);
    }

    @Override // com.narvii.video.model.RtcEventHandler
    public void onUserOffline(int i10, int i11) {
        if (getMainSigChannel() == null) {
            return;
        }
        if (i11 == 1) {
            updateChannelUserWrapperInfo(i10);
        } else {
            changeChannelUserWrapperStatus(i10, 2);
        }
    }

    @Override // com.narvii.chat.signalling.SignallingListener
    public void onUserRoleChange(SignallingService signallingService, SignallingChannel signallingChannel, ChannelUser channelUser) {
        String str;
        buildMainSignalChanel(signallingChannel);
        dispatchLocalUserStatusChange(3, signallingChannel, channelUser);
        dispatcheScreenRoomRoleChange(signallingChannel);
        mergeAgoraDataAndChannelData(signallingChannel, signallingChannel.userList);
        SparseArray<ChannelUserWrapper> mainChannelUserWrapperList = null;
        if (getMainSigChannel() == null) {
            str = null;
        } else {
            str = getMainSigChannel().threadId;
        }
        boolean zIsEqualsNotNull = Utils.isEqualsNotNull(str, signallingChannel.threadId);
        List listEmptyList = Collections.emptyList();
        List<ChannelUser> list = signallingChannel.userList;
        if (zIsEqualsNotNull) {
            mainChannelUserWrapperList = getMainChannelUserWrapperList();
        }
        dispatchChannelUserListChange(signallingChannel, listEmptyList, list, mainChannelUserWrapperList);
    }

    @Override // com.narvii.chat.waitinglist.WaitingListListener
    public void onWaitingListApprove(SignallingChannel signallingChannel) {
        dispatchWaitingListApprove(signallingChannel);
    }

    @Override // com.narvii.chat.waitinglist.WaitingListListener
    public void onWaitingListChanged(SignallingChannel signallingChannel, Collection<User> collection, Collection<User> collection2) {
        dispatchWaitingListChanged(signallingChannel, collection, collection2);
    }

    public boolean onlyMePresenterInMainChannel() {
        List<ChannelUser> list;
        SignallingChannel mainSigChannel = getMainSigChannel();
        if (mainSigChannel == null || (list = mainSigChannel.userList) == null || list.size() != 1 || mainSigChannel.joinRole != 1) {
            return false;
        }
        return true;
    }

    public void postShowFloatingRunnable(String str, final Runnable runnable, long j6) {
        removePendingFloatingRunnable();
        this.pendingFloatingThreadId = str;
        showFloatingWindowHandler.postDelayed(new Runnable() { // from class: com.narvii.chat.rtc.RtcService.4
            @Override // java.lang.Runnable
            public void run() {
                runnable.run();
                RtcService.this.pendingFloatingThreadId = null;
            }
        }, j6);
    }

    public void setCameraLandScape(boolean z6) {
        UserStatusData userStatusData;
        ChannelUserWrapper mainChannelLocalUserWrapper = getMainChannelLocalUserWrapper();
        if (mainChannelLocalUserWrapper != null && (userStatusData = mainChannelLocalUserWrapper.userStatus) != null) {
            SurfaceView surfaceView = userStatusData.mView;
            if (surfaceView instanceof CameraRenderer) {
                ((CameraRenderer) surfaceView).setLandscape(z6);
            }
        }
    }

    public void setIsAllMuted(final boolean z6) {
        if (z6 != isAllMuted()) {
            this.muteStatusDispatcher.dispatch(new Callback<MiniContentMuteStatusChangeListener>() { // from class: com.narvii.chat.rtc.RtcService.25
                @Override // com.narvii.util.Callback
                public void call(MiniContentMuteStatusChangeListener miniContentMuteStatusChangeListener) {
                    miniContentMuteStatusChangeListener.onMuteStatusChanged(z6);
                }
            });
        }
        this.curChannelMiniInfo.putBoolean(IS_MINI_ALL_MUTE, z6);
    }

    public void stopPresenting() {
        SignallingChannel signallingChannel;
        int i10;
        ChannelUser channelUser;
        ChannelUserWrapper mainChannelLocalUserWrapper = getMainChannelLocalUserWrapper();
        if ((mainChannelLocalUserWrapper != null && (channelUser = mainChannelLocalUserWrapper.channelUser) != null && channelUser.joinRole != 1) || (signallingChannel = this.mainSignalChannel) == null) {
            this.rtcManager.requesToBeAudience();
            return;
        }
        if (signallingChannel.channelType == 5 && isScreenRoomHost()) {
            ChatThread chatThread = this.mainChannelChatThread;
            if (chatThread != null) {
                exitLiveChannel(chatThread.ndcId, chatThread.threadId);
                return;
            }
            return;
        }
        SignallingService signallingService = this.sigService;
        SignallingChannel signallingChannel2 = this.mainSignalChannel;
        int i11 = signallingChannel2.ndcId;
        String str = signallingChannel2.threadId;
        if (channelOnlyContaineMe(signallingChannel2)) {
            i10 = 0;
        } else {
            i10 = 2;
        }
        signallingService.updateThreadJoinRole(i11, str, i10, new Callback() { // from class: com.narvii.chat.rtc.RtcService.6
            @Override // com.narvii.util.Callback
            public void call(Object obj) {
                if (!(obj instanceof WsError)) {
                    RtcService.this.rtcManager.requesToBeAudience();
                    return;
                }
                WsError wsError = (WsError) obj;
                if (TextUtils.isEmpty(wsError.message)) {
                    return;
                }
                NVToast.makeText(RtcService.this.context, wsError.message, 1).show();
            }
        });
    }

    public void tryKeepAlive() {
        SignallingChannel mainSigChannel = getMainSigChannel();
        if (mainSigChannel != null) {
            this.sigService.setKeepAliveThreadId(mainSigChannel.threadId);
        }
    }

    public void exitLiveChannel(final int i10, final String str, final ChannelActionCallback<ChannelActionResult> channelActionCallback, final DialogInterface.OnDismissListener onDismissListener, boolean z6) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        SignallingChannel signallingChannel = this.mainSignalChannel;
        if (signallingChannel != null && Utils.isEqualsNotNull(str, signallingChannel.threadId)) {
            this.hasShowingThread = false;
            if (z6) {
                cleaningAttachedWindows();
            }
            WeakReference<Activity> weakReference = this.topActivity;
            Activity activity = weakReference == null ? null : weakReference.get();
            final SignallingChannel mainSigChannel = getMainSigChannel();
            RtcChatManager rtcChatManager = this.rtcManager;
            if (rtcChatManager != null) {
                rtcChatManager.onPause();
            }
            ReputationEarningComposite reputationEarningComposite = this.repEarningComposite;
            if (reputationEarningComposite != null) {
                reputationEarningComposite.destroy();
                this.repEarningComposite = null;
            }
            RtcChatManager rtcChatManager2 = this.rtcManager;
            if (rtcChatManager2 != null) {
                rtcChatManager2.leaveChannel(new ChannelActionCallback() { // from class: com.narvii.chat.rtc.e
                    @Override // com.narvii.video.model.ChannelActionCallback
                    public final void call(Object obj) {
                        this.f2003a.lambda$exitLiveChannel$0(mainSigChannel, obj);
                    }
                });
            }
            boolean zIsScreenRoomHost = isScreenRoomHost();
            Bundle bundle = this.curLiveChannelInfo;
            ChatThread chatThread = (bundle == null || JacksonUtils.readAs(bundle.getString("thread"), ChatThread.class) == null) ? null : (ChatThread) JacksonUtils.readAs(this.curLiveChannelInfo.getString("thread"), ChatThread.class);
            boolean z10 = chatThread == null || chatThread.type != 0;
            if (activity != null && zIsScreenRoomHost && z10) {
                ScreenRoomService screenRoomService = (ScreenRoomService) this.nvContext.getService("screenRoom");
                if (screenRoomService != null) {
                    screenRoomService.stopPlay();
                }
                this.vvChatHelper.showReputationClaimDialog(activity instanceof NVActivity ? (NVActivity) activity : null, this.mainSignalChannel.ndcId, mainSigChannel, new DialogInterface.OnDismissListener() { // from class: com.narvii.chat.rtc.RtcService.12
                    @Override // android.content.DialogInterface.OnDismissListener
                    public void onDismiss(DialogInterface dialogInterface) {
                        RtcService.this.exitSignallingChannel(i10, str, channelActionCallback);
                        DialogInterface.OnDismissListener onDismissListener2 = onDismissListener;
                        if (onDismissListener2 != null) {
                            onDismissListener2.onDismiss(dialogInterface);
                        }
                    }
                });
                return;
            }
            exitSignallingChannel(i10, str, channelActionCallback);
            return;
        }
        this.sigService.leaveThread(i10, str, null);
    }

    public void hideThreadDetailWindow() {
        this.floatingManager.removeThreadFloatingWindow();
    }
}
