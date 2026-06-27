package com.narvii.chat.rtc;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.support.v4.content.LocalBroadcastManager;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.SurfaceView;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
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
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* loaded from: classes.dex */
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
    private Context context;
    private Bundle curLiveChannelInfo;
    private FloatingManager floatingManager;
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
    private LiveChannelNotificationHelper notificationHelper;
    private NVContext nvContext;
    public int oldChannelType;
    private int oldTotalVolume;
    private String pendingFloatingThreadId;
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
    private final BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.chat.rtc.RtcService.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (AccountService.ACTION_ACCOUNT_CHANGED.equals(intent.getAction())) {
                if (RtcService.this.accountService.hasAccount()) {
                    return;
                }
                RtcService.this.cleaningAttachedWindows();
                RtcService.this.hideThreadDetailWindow();
                SignallingChannel mainSigChannel = RtcService.this.getMainSigChannel();
                if (mainSigChannel != null) {
                    RtcService.this.exitLiveChannel(mainSigChannel.ndcId, mainSigChannel.threadId);
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
    FloatingClickEvent clickEvent = new AnonymousClass5();
    Runnable connectionCheckRunnable = new Runnable() { // from class: com.narvii.chat.rtc.RtcService.8
        @Override // java.lang.Runnable
        public void run() {
            if (RtcService.this.isLostConnectionStatus) {
                RtcService.this.rtcManager.leaveChannel(null);
            }
        }
    };
    private Callback getAgoraChannelInfoCallBack = new Callback() { // from class: com.narvii.chat.rtc.RtcService.11
        @Override // com.narvii.util.Callback
        public void call(Object obj) {
            if (obj instanceof SignallingChannel) {
                RtcService.this.tryToJoinAgoraChannel((SignallingChannel) obj);
            } else if (obj instanceof WsError) {
                NVToast.makeText(RtcService.this.context, ((WsError) obj).message(), 1).show();
            }
        }
    };
    SparseArray<ChannelUser> channelUserCompareOld = new SparseArray<>();
    SparseArray<ChannelUser> channelUserCompareNew = new SparseArray<>();
    public EventDispatcher<MiniContentMuteStatusChangeListener> muteStatusDispatcher = new EventDispatcher<>();

    /* loaded from: classes2.dex */
    public interface WaitingListCallback<T, K> {
        void call(T t, K k);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isVideoSignificantChannelType(int i) {
        return i == 4 || i == 3 || i == 5;
    }

    private boolean isVoiceSignificantChannelType(int i) {
        return i == 1;
    }

    private void onNewUserJoined(ChannelUser channelUser) {
    }

    private void onUserLeaveChannel(ChannelUser channelUser) {
    }

    @Override // com.narvii.video.model.RtcEventHandler
    public void onError(int i, String str) {
    }

    @Override // com.narvii.chat.signalling.SignallingListener
    public void onError(SignallingService signallingService, WsError wsError) {
    }

    @Override // com.narvii.video.model.RtcEventHandler
    public void onNetworkQuality(int i, int i2, int i3) {
    }

    public RtcService(NVContext nVContext) {
        this.nvContext = nVContext;
        this.context = nVContext.getContext();
        this.rtcManager = (RtcChatManager) nVContext.getService("rtcManager");
        this.sigService = (SignallingService) nVContext.getService("signalling");
        this.waitingListService = (WaitingListService) nVContext.getService("waitingList");
        this.accountService = (AccountService) nVContext.getService("account");
        this.callScreenService = (CallScreenService) nVContext.getService("callScreen");
        this.sigService.listeners.addListener(this);
        this.waitingListService.getListeners().addListener(this);
        this.floatingManager = new FloatingManager(this.context, this, this.callScreenService);
        this.floatingManager.setFloatingClickEvent(this.clickEvent);
        this.localBroadcastManager = LocalBroadcastManager.getInstance(nVContext.getContext());
        this.localBroadcastManager.registerReceiver(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
        this.localBroadcastManager.registerReceiver(this.receiver, new IntentFilter(ACTION_CAMERA_FREE));
        this.localBroadcastManager.registerReceiver(this.receiver, new IntentFilter(ACTION_CAMERA_TAKEN));
        this.context.registerReceiver(this.receiver, new IntentFilter("android.intent.action.SCREEN_ON"));
        this.context.registerReceiver(this.receiver, new IntentFilter("android.intent.action.SCREEN_OFF"));
        this.musicHelper = new LiveChannelMusicHelper(nVContext);
        this.vvChatHelper = new VVChatHelper(nVContext);
        this.notificationHelper = new LiveChannelNotificationHelper(nVContext);
    }

    public void onDestroy() {
        this.localBroadcastManager.unregisterReceiver(this.receiver);
        this.context.unregisterReceiver(this.receiver);
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

    public void requestToBePresenter(ChannelActionCallback<ChannelActionResult> channelActionCallback) {
        requestToBePresenter(channelActionCallback, true, false);
    }

    public void requestToBePresenter(final ChannelActionCallback<ChannelActionResult> channelActionCallback, final boolean z, final boolean z2) {
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
                            if (!z2) {
                                RtcService.this.muteLocalStream(mainSigChannel.channelType, false);
                            } else {
                                RtcService.this.rtcManager.muteLocalAudio(false);
                                RtcService.this.rtcManager.muteLocalVideo(true);
                            }
                            if (RtcService.this.isVideoSignificantChannelType(mainSigChannel.channelType)) {
                                RtcService.this.rtcManager.requestToBeBroadcast(z, z2);
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

    /* JADX INFO: Access modifiers changed from: private */
    public void muteLocalStream(int i, boolean z) {
        this.rtcManager.muteLocalStream(isVideoSignificantChannelType(i) ? 2 : 1, z);
    }

    public void muteVideoWithoutChangeStatus(boolean z) {
        if (this.mainSignalChannel == null) {
            return;
        }
        this.rtcManager.muteLocalVideo(z, false);
    }

    public void muteRemoteUser(int i, boolean z) {
        RtcChatManager rtcChatManager = this.rtcManager;
        if (rtcChatManager == null || rtcChatManager.worker() == null || this.rtcManager.worker().getRtcEngine() == null) {
            return;
        }
        this.rtcManager.worker().getRtcEngine().muteRemoteVideoStream(i, z);
        this.rtcManager.worker().getRtcEngine().muteRemoteAudioStream(i, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void joinAgoraChannel(String str, String str2, int i, int i2, int i3, boolean z, boolean z2) {
        int i4;
        SignallingChannel signallingChannel;
        int i5 = i == 1 ? 1 : 2;
        ChatThread chatThread = this.mainChannelChatThread;
        boolean z3 = chatThread == null || chatThread.type != 0 || (signallingChannel = this.mainSignalChannel) == null || signallingChannel.channelType != 1;
        SignallingChannel signallingChannel2 = this.mainSignalChannel;
        boolean z4 = signallingChannel2 != null && ((i4 = signallingChannel2.channelType) == 4 || i4 == 3);
        SignallingChannel signallingChannel3 = this.mainSignalChannel;
        this.rtcManager.joinChannel(str, str2, i5, i2, i3, z3, z, z4, signallingChannel3 != null && signallingChannel3.channelType == 5, z2);
    }

    public int getPresenterCountInChannel(SignallingChannel signallingChannel) {
        List<ChannelUser> list;
        int i = 0;
        if (signallingChannel != null && (list = signallingChannel.userList) != null) {
            for (ChannelUser channelUser : list) {
                if (channelUser.joinRole == 1 && channelUser.userProfile != null) {
                    i++;
                }
            }
        }
        return i;
    }

    public SparseArray<ChannelUserWrapper> getMainChannelUserWrapperList() {
        return this.mainChannelUserWrapperList;
    }

    public SparseArray<ChannelUserWrapper> getMainChannelFilteredUserWrapperList() {
        return getFilteredUserList(this.mainChannelUserWrapperList);
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

    public void addSRRoleChangeListener(SRRoleChangeListener sRRoleChangeListener) {
        this.srRoleChangeListenerEventDispatcher.addListener(sRRoleChangeListener);
    }

    public void removeSRRoleChangeListener(SRRoleChangeListener sRRoleChangeListener) {
        this.srRoleChangeListenerEventDispatcher.removeListener(sRRoleChangeListener);
    }

    public void addSRChannelStatusChangeListener(SRChannelStatusChangeListener sRChannelStatusChangeListener) {
        this.srChannelStatusChangeDispatcher.addListener(sRChannelStatusChangeListener);
    }

    private boolean isReadyToJoinAgora(SignallingChannel signallingChannel) {
        SignallingChannel signallingChannel2 = this.mainSignalChannel;
        return signallingChannel2 != null && Utils.isEquals(signallingChannel2, signallingChannel) && this.vvChatHelper.isValidChannelToJoinAgora(this.mainSignalChannel) && channelContainMe(signallingChannel);
    }

    public boolean channelOnlyContaineMe(SignallingChannel signallingChannel) {
        List<ChannelUser> list;
        return (signallingChannel == null || (list = signallingChannel.userList) == null || list.size() == 0 || signallingChannel.userList.size() != 1 || signallingChannel.userList.get(0).channelUid != signallingChannel.channelUid) ? false : true;
    }

    public boolean channelContainMe(SignallingChannel signallingChannel) {
        List<ChannelUser> list;
        AccountService accountService;
        if (signallingChannel == null || (list = signallingChannel.userList) == null || list.size() == 0 || (accountService = this.accountService) == null) {
            return false;
        }
        if (!TextUtils.isEmpty(accountService.getUserId())) {
            Iterator<ChannelUser> it = signallingChannel.userList.iterator();
            while (it.hasNext()) {
                if (Utils.isEqualsNotNull(it.next().uid(), this.accountService.getUserId())) {
                    return true;
                }
            }
        } else {
            Iterator<ChannelUser> it2 = signallingChannel.userList.iterator();
            while (it2.hasNext()) {
                if (it2.next().channelUid == signallingChannel.channelUid) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean onlyMePresenterInMainChannel() {
        List<ChannelUser> list;
        SignallingChannel mainSigChannel = getMainSigChannel();
        return mainSigChannel != null && (list = mainSigChannel.userList) != null && list.size() == 1 && mainSigChannel.joinRole == 1;
    }

    @Override // com.narvii.chat.rtc.FaceTrackStatusChangeListener
    public void onFaceStatusChange(int i) {
        updateChannelUserWrapperInfo(this.rtcManager.getLocalUid());
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

    public void cleaningAttachedWindows() {
        closeShowingWindow();
        cancelNotification();
    }

    public void setRelaunchLiveChannelListener(RelaunchLiveChannelListener relaunchLiveChannelListener) {
        this.relaunchLiveChannelListener = relaunchLiveChannelListener;
    }

    public int getShowingWindowType() {
        return this.floatingManager.getShowingWindowType();
    }

    public SignallingChannel getFloatingLiveChannel() {
        return this.floatingManager.getFloatingLiveChannel();
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

    public void showAudiFloatingWindow() {
        this.channelShowingMode = 1;
        this.floatingManager.showAudioFloatingWindow();
    }

    public void setIsFromGlobalChat(boolean z) {
        this.floatingManager.setIsFromGlobalChat(z);
    }

    public void setCommunityString(String str) {
        this.floatingManager.setCommunityString(str);
    }

    public void setHideDrawer(boolean z) {
        this.floatingManager.setHideDrawer(z);
    }

    public void showThreadDetailWindow(CommunityThread communityThread) {
        this.floatingManager.showThreadFloatingWindow(communityThread);
    }

    public void exitLiveChannelOfCommunity(int i) {
        int i2;
        hideLiveChannelFloatingWindow(i);
        SignallingChannel mainSigChannel = getMainSigChannel();
        if (mainSigChannel == null || (i2 = mainSigChannel.ndcId) != i) {
            return;
        }
        exitLiveChannel(i2, mainSigChannel.threadId);
    }

    public void hideLiveChannelFloatingWindow(int i) {
        SignallingChannel floatingLiveChannel;
        if (getShowingWindowType() == -1 || (floatingLiveChannel = getFloatingLiveChannel()) == null || floatingLiveChannel.ndcId != i) {
            return;
        }
        cleaningAttachedWindows();
    }

    public void hideThreadDetailWindow(int i) {
        CommunityThread floatingThread = this.floatingManager.getFloatingThread();
        if (floatingThread != null && floatingThread.ndcId == i) {
            hideThreadDetailWindow();
        }
    }

    public void hideThreadDetailWindow() {
        this.floatingManager.removeThreadFloatingWindow();
    }

    public void setIsChannelCreator(boolean z) {
        this.floatingManager.setIsChannelCreator(z);
    }

    public void postShowFloatingRunnable(String str, final Runnable runnable, long j) {
        removePendingFloatingRunnable();
        this.pendingFloatingThreadId = str;
        showFloatingWindowHandler.postDelayed(new Runnable() { // from class: com.narvii.chat.rtc.RtcService.4
            @Override // java.lang.Runnable
            public void run() {
                runnable.run();
                RtcService.this.pendingFloatingThreadId = null;
            }
        }, j);
    }

    public void removePendingFloatingRunnable() {
        this.pendingFloatingThreadId = null;
        showFloatingWindowHandler.removeCallbacksAndMessages(null);
    }

    public String getPendingFloatingThreadId() {
        return this.pendingFloatingThreadId;
    }

    public void showVideoFloatingWindow() {
        this.channelShowingMode = 1;
        this.floatingManager.showVideoFloatingWindow();
        this.rtcManager.enterLowerStreamMode();
    }

    public void showSRFloatingWindow() {
        this.channelShowingMode = 1;
        this.floatingManager.showSRFloatingWindow();
        setHostStreamMode(true);
    }

    public void setHostStreamMode(boolean z) {
        ChannelUserWrapper channelUserWrapper = this.mainChannelUserWrapperList.get(this.screenRoomHostUid);
        if (channelUserWrapper == null || channelUserWrapper.channelUser == null) {
            return;
        }
        this.rtcManager.setLowerStreamMode(channelUserWrapper.channelUid, z);
    }

    public void hideAudioFloatingWindow() {
        this.floatingManager.removeAudioFloatingWindow();
    }

    public void hideVideoFloatingWindow() {
        this.floatingManager.removeVideoFloatingWindow();
        configStream();
    }

    public void hideSRFloatingWindow() {
        this.floatingManager.removeSRFloatingWindow();
    }

    /* renamed from: com.narvii.chat.rtc.RtcService$5, reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass5 implements FloatingClickEvent {
        AnonymousClass5() {
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
            boolean z = RtcService.this.getMainChannelChatThread() != null && RtcService.this.getMainChannelChatThread().type == 0 && RtcService.this.callScreenService != null && (RtcService.this.callScreenService.getCurStatus() != 8 || RtcService.this.callScreenService.getCurStatus() == 6);
            if (mainSigChannel.joinRole != 1 || z || (list = mainSigChannel.userList) == null || list.size() <= 1) {
                leaveFromWindow(mainSigChannel);
                return;
            }
            VVChatHelper vVChatHelper = new VVChatHelper(RtcService.this.nvContext);
            if (vVChatHelper.needShowConfirmDialogWhenLeaveChannel(RtcService.this.getMainChannelChatThread())) {
                vVChatHelper.showLeaveChannelConfirmDialog(activity, true, new Callback() { // from class: com.narvii.chat.rtc.-$$Lambda$RtcService$5$pZHUhJoXHGlnz4Y4er7ojsw9jOs
                    @Override // com.narvii.util.Callback
                    public final void call(Object obj) {
                        this.f$0.lambda$onCloseClicked$0$RtcService$5(mainSigChannel, (Boolean) obj);
                    }
                });
            } else {
                leaveFromWindow(mainSigChannel);
            }
        }

        public /* synthetic */ void lambda$onCloseClicked$0$RtcService$5(SignallingChannel signallingChannel, Boolean bool) {
            if (bool.booleanValue()) {
                leaveFromWindow(signallingChannel);
            }
        }

        @Override // com.narvii.video.ui.floating.FloatingClickEvent
        public void onTotalClicked() {
            RtcService.this.relaunchRtcMainActivity();
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
    }

    public void relaunchRtcMainActivity() {
        relaunchRtcMainActivity(false, null);
    }

    public void relaunchRtcMainActivity(boolean z, Intent intent) {
        cancelNotification();
        if (getMainSigChannel() == null) {
            hideVideoFloatingWindow();
            hideAudioFloatingWindow();
            hideSRFloatingWindow();
        } else {
            closeShowingWindow();
            RelaunchLiveChannelListener relaunchLiveChannelListener = this.relaunchLiveChannelListener;
            if (relaunchLiveChannelListener != null) {
                relaunchLiveChannelListener.onReLaunchLiveChannelView(this.curLiveChannelInfo, z, intent);
            }
        }
    }

    public void toggleSpeaker() {
        this.rtcManager.toggleSpeaker();
    }

    public void toggleLocalVoice() {
        this.rtcManager.toggleLocalAudio();
    }

    public void toggleLocalSteam() {
        this.rtcManager.toggleLocalAudio();
        this.rtcManager.toggleLocalVideo();
    }

    public void toggleLocalVideo() {
        this.rtcManager.toggleLocalVideo();
    }

    public SignallingService getSigService() {
        return this.sigService;
    }

    public void tryKeepAlive() {
        SignallingChannel mainSigChannel = getMainSigChannel();
        if (mainSigChannel != null) {
            this.sigService.setKeepAliveThreadId(mainSigChannel.threadId);
        }
    }

    public void flipCamera() {
        this.rtcManager.flipCamera();
    }

    public RtcChatManager getRtcManager() {
        return this.rtcManager;
    }

    public boolean isEligible() {
        if (Build.VERSION.SDK_INT < 18) {
            return false;
        }
        return this.rtcManager.isEligible();
    }

    public boolean isHasShowingThread() {
        return this.hasShowingThread;
    }

    public void setMainChannelChatThread(ChatThread chatThread) {
        this.mainChannelChatThread = chatThread;
    }

    public ChatThread getMainChannelChatThread() {
        return this.mainChannelChatThread;
    }

    public boolean isPrivateMainChannelFullBefore() {
        return this.isPrivateMainChannelFullBefore;
    }

    public MediaFramePusher getMeidaFramePusher() {
        RtcChatManager rtcChatManager = this.rtcManager;
        if (rtcChatManager == null) {
            return null;
        }
        return rtcChatManager.getMediaFramePusher();
    }

    public boolean isScreenRoomHost() {
        return isScreenRoomHost(getMainChannelLocalUserWrapper());
    }

    public boolean isScreenRoomHost(ChannelUserWrapper channelUserWrapper) {
        ChannelUser channelUser;
        return channelUserWrapper != null && (channelUser = channelUserWrapper.channelUser) != null && channelUser.isHost && getMainSigChannel().channelType == 5;
    }

    public ChannelUserWrapper getScreenRoomHostUser() {
        for (int i = 0; i < this.mainChannelUserWrapperList.size(); i++) {
            ChannelUserWrapper channelUserWrapperValueAt = this.mainChannelUserWrapperList.valueAt(i);
            if (isScreenRoomHost(channelUserWrapperValueAt)) {
                return channelUserWrapperValueAt;
            }
        }
        return null;
    }

    public void setCameraLandScape(boolean z) {
        UserStatusData userStatusData;
        ChannelUserWrapper mainChannelLocalUserWrapper = getMainChannelLocalUserWrapper();
        if (mainChannelLocalUserWrapper == null || (userStatusData = mainChannelLocalUserWrapper.userStatus) == null) {
            return;
        }
        SurfaceView surfaceView = userStatusData.mView;
        if (surfaceView instanceof CameraRenderer) {
            ((CameraRenderer) surfaceView).setLandscape(z);
        }
    }

    public void stopPresenting() {
        SignallingChannel signallingChannel;
        ChannelUser channelUser;
        ChannelUserWrapper mainChannelLocalUserWrapper = getMainChannelLocalUserWrapper();
        if (((mainChannelLocalUserWrapper == null || (channelUser = mainChannelLocalUserWrapper.channelUser) == null || channelUser.joinRole == 1) ? false : true) || (signallingChannel = this.mainSignalChannel) == null) {
            this.rtcManager.requesToBeAudience();
            return;
        }
        if (signallingChannel.channelType == 5 && isScreenRoomHost()) {
            ChatThread chatThread = this.mainChannelChatThread;
            exitLiveChannel(chatThread.ndcId, chatThread.threadId);
        } else {
            SignallingService signallingService = this.sigService;
            SignallingChannel signallingChannel2 = this.mainSignalChannel;
            signallingService.updateThreadJoinRole(signallingChannel2.ndcId, signallingChannel2.threadId, channelOnlyContaineMe(signallingChannel2) ? 0 : 2, new Callback() { // from class: com.narvii.chat.rtc.RtcService.6
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

    public boolean isCreator() {
        Bundle bundle = this.curLiveChannelInfo;
        return bundle != null && bundle.getBoolean(KEY_IS_CREATOR);
    }

    public void saveCurrentLiveChannelInfo(Bundle bundle) {
        if (this.curLiveChannelInfo == null) {
            this.curLiveChannelInfo = new Bundle();
        }
        this.curLiveChannelInfo.putAll(bundle);
    }

    public Bundle getCurLiveChannelInfo() {
        return this.curLiveChannelInfo;
    }

    public void joinChannelAsGuest(int i, String str) {
        this.sigService.joinThread(i, str, null);
    }

    public void leaveChannelAsGuest(int i, String str) {
        if (isExistedInChannelEqualRole(str, 0)) {
            this.sigService.leaveThread(i, str, null);
        }
    }

    public void updateJoinRole(int i, String str, int i2, Callback callback) {
        this.sigService.updateThreadJoinRole(i, str, i2, callback);
    }

    public void updateJoinRoleWithJoinAgora(final int i, final String str, int i2) {
        this.sigService.updateThreadJoinRole(i, str, i2, new Callback() { // from class: com.narvii.chat.rtc.RtcService.9
            @Override // com.narvii.util.Callback
            public void call(Object obj) {
                if (obj instanceof SignallingChannel) {
                    RtcService.this.sigService.getAgoraChannel(i, str, RtcService.this.getAgoraChannelInfoCallBack);
                }
            }
        });
    }

    public void joinLiveChannel(int i, String str, int i2, int i3) {
        if (str == null || !SignallingChannel.isLegalChannelType(i2) || isExistedInChannelAtLeastRole(str, i3)) {
            return;
        }
        if (getMainSigChannel() == null || Utils.isEquals(this.mainSignalChannel.threadId, str)) {
            this.hasShowingThread = true;
            this.sigService.joinThread(i, str, new AnonymousClass10(i, str, i3, i2));
        }
    }

    /* renamed from: com.narvii.chat.rtc.RtcService$10, reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass10 implements Callback {
        final /* synthetic */ int val$channelType;
        final /* synthetic */ int val$ndcId;
        final /* synthetic */ int val$role;
        final /* synthetic */ String val$threadId;

        AnonymousClass10(int i, String str, int i2, int i3) {
            this.val$ndcId = i;
            this.val$threadId = str;
            this.val$role = i2;
            this.val$channelType = i3;
        }

        @Override // com.narvii.util.Callback
        public void call(Object obj) {
            if (obj instanceof SignallingChannel) {
                RtcService.this.sigService.updateThreadJoinRole(this.val$ndcId, this.val$threadId, this.val$role, new Callback() { // from class: com.narvii.chat.rtc.RtcService.10.1
                    @Override // com.narvii.util.Callback
                    public void call(Object obj2) {
                        if (obj2 instanceof SignallingChannel) {
                            if (((SignallingChannel) obj2).joinRole == 1) {
                                SignallingService signallingService = RtcService.this.sigService;
                                AnonymousClass10 anonymousClass10 = AnonymousClass10.this;
                                signallingService.updateThreadChannelType(anonymousClass10.val$ndcId, anonymousClass10.val$threadId, anonymousClass10.val$channelType, new Callback() { // from class: com.narvii.chat.rtc.RtcService.10.1.1
                                    @Override // com.narvii.util.Callback
                                    public void call(Object obj3) {
                                        if (obj3 instanceof SignallingChannel) {
                                            SignallingService signallingService2 = RtcService.this.sigService;
                                            AnonymousClass10 anonymousClass102 = AnonymousClass10.this;
                                            signallingService2.getAgoraChannel(anonymousClass102.val$ndcId, anonymousClass102.val$threadId, RtcService.this.getAgoraChannelInfoCallBack);
                                        } else if (obj3 instanceof WsError) {
                                            AnonymousClass10 anonymousClass103 = AnonymousClass10.this;
                                            WsError wsError = (WsError) obj3;
                                            RtcService.this.dispatchChannelException(anonymousClass103.val$threadId, wsError.code, wsError);
                                        }
                                    }
                                });
                                return;
                            } else {
                                SignallingService signallingService2 = RtcService.this.sigService;
                                AnonymousClass10 anonymousClass102 = AnonymousClass10.this;
                                signallingService2.getAgoraChannel(anonymousClass102.val$ndcId, anonymousClass102.val$threadId, RtcService.this.getAgoraChannelInfoCallBack);
                                return;
                            }
                        }
                        if (obj2 instanceof WsError) {
                            AnonymousClass10 anonymousClass103 = AnonymousClass10.this;
                            WsError wsError = (WsError) obj2;
                            RtcService.this.dispatchChannelException(anonymousClass103.val$threadId, wsError.code, wsError);
                        }
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tryToJoinAgoraChannel(SignallingChannel signallingChannel) {
        ChannelUser channelUser;
        if (signallingChannel == null || !this.vvChatHelper.isEligibleForVVChat() || this.agoraJoinRequested || !isReadyToJoinAgora(signallingChannel)) {
            return;
        }
        prepareAgoraWorkThread(signallingChannel.channelType);
        int i = signallingChannel.channelType;
        if (i == 1) {
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
        if (i != 3 && i != 4) {
            if (i == 5) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isInitCameraMuted() {
        Bundle bundle = this.liveExtraBundle;
        return bundle != null && bundle.getBoolean("cameraMute");
    }

    private boolean isInitCameraFlipped() {
        Bundle bundle = this.liveExtraBundle;
        return bundle != null && bundle.getBoolean("cameraFlip");
    }

    private void prepareAgoraWorkThread(int i) {
        int i2 = isVideoSignificantChannelType(i) ? 2 : 1;
        boolean z = i == 3;
        if (this.rtcManager.worker() != null && this.rtcManager.getCurChannelType() == i2) {
            this.rtcManager.setForceAvatar(z);
            return;
        }
        this.rtcManager.setForceAvatar(z);
        this.rtcManager.setFaceTrackStatusChange(this);
        this.rtcManager.setCurSigChannelType(i);
        this.rtcManager.initRtcService(i == 5, i2, this);
    }

    public void exitLiveChannel(int i, String str) {
        exitLiveChannel(i, str, null, null, true);
    }

    public void exitLiveChannel(int i, String str, DialogInterface.OnDismissListener onDismissListener) {
        exitLiveChannel(i, str, null, onDismissListener, true);
    }

    public void exitLiveChannel(int i, String str, ChannelActionCallback<ChannelActionResult> channelActionCallback) {
        exitLiveChannel(i, str, channelActionCallback, null, true);
    }

    public void exitLiveChannelKeepWindow(int i, String str) {
        exitLiveChannel(i, str, null, null, false);
    }

    public void exitLiveChannel(final int i, final String str, final ChannelActionCallback<ChannelActionResult> channelActionCallback, final DialogInterface.OnDismissListener onDismissListener, boolean z) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        SignallingChannel signallingChannel = this.mainSignalChannel;
        if (signallingChannel == null || !Utils.isEqualsNotNull(str, signallingChannel.threadId)) {
            this.sigService.leaveThread(i, str, null);
            return;
        }
        this.hasShowingThread = false;
        if (z) {
            cleaningAttachedWindows();
        }
        WeakReference<Activity> weakReference = this.topActivity;
        Context context = weakReference == null ? null : (Activity) weakReference.get();
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
        this.rtcManager.leaveChannel(new ChannelActionCallback() { // from class: com.narvii.chat.rtc.RtcService.12
            @Override // com.narvii.video.model.ChannelActionCallback
            public void call(Object obj) {
                RtcService.this.agoraJoinRequested = false;
                if (obj == ChannelActionError.LEAVE_CHANNEL_ERROR) {
                    RtcService.this.muteLocalStream(mainSigChannel.channelType, true);
                    RtcService.this.rtcManager.muteAllRemoteStream();
                }
            }
        });
        boolean zIsScreenRoomHost = isScreenRoomHost();
        Bundle bundle = this.curLiveChannelInfo;
        ChatThread chatThread = (bundle == null || JacksonUtils.readAs(bundle.getString("thread"), ChatThread.class) == null) ? null : (ChatThread) JacksonUtils.readAs(this.curLiveChannelInfo.getString("thread"), ChatThread.class);
        boolean z2 = chatThread == null || chatThread.type != 0;
        if (context != null && zIsScreenRoomHost && z2) {
            ScreenRoomService screenRoomService = (ScreenRoomService) this.nvContext.getService("screenRoom");
            if (screenRoomService != null) {
                screenRoomService.stopPlay();
            }
            this.vvChatHelper.showReputationClaimDialog(context instanceof NVActivity ? (NVActivity) context : null, this.mainSignalChannel.ndcId, mainSigChannel, new DialogInterface.OnDismissListener() { // from class: com.narvii.chat.rtc.RtcService.13
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialogInterface) {
                    RtcService.this.exitSignallingChannel(i, str, channelActionCallback);
                    DialogInterface.OnDismissListener onDismissListener2 = onDismissListener;
                    if (onDismissListener2 != null) {
                        onDismissListener2.onDismiss(dialogInterface);
                    }
                }
            });
            return;
        }
        exitSignallingChannel(i, str, channelActionCallback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void exitSignallingChannel(int i, String str, final ChannelActionCallback<ChannelActionResult> channelActionCallback) {
        this.sigService.leaveThread(i, str, new Callback() { // from class: com.narvii.chat.rtc.RtcService.14
            @Override // com.narvii.util.Callback
            public void call(Object obj) {
                RtcService.this.agoraJoinRequested = false;
                if (obj instanceof SignallingChannel) {
                    RtcService.this.cleanMainChannel();
                    ChannelActionCallback channelActionCallback2 = channelActionCallback;
                    if (channelActionCallback2 != null) {
                        channelActionCallback2.call(new ChannelActionResult(true, null));
                    }
                }
                if (obj instanceof WsError) {
                    NVToast.makeText(RtcService.this.context, obj.toString(), 1).show();
                    ChannelActionCallback channelActionCallback3 = channelActionCallback;
                    if (channelActionCallback3 != null) {
                        channelActionCallback3.call(new ChannelActionResult(false, ChannelActionError.LEAVE_CHANNEL_ERROR));
                    }
                }
            }
        });
        this.srChannelStatusChangeDispatcher.dispatch(new Callback<SRChannelStatusChangeListener>() { // from class: com.narvii.chat.rtc.RtcService.15
            @Override // com.narvii.util.Callback
            public void call(SRChannelStatusChangeListener sRChannelStatusChangeListener) {
                sRChannelStatusChangeListener.onChannelEnd();
            }
        });
        this.channelShowingMode = -1;
        VVChatHelper vVChatHelper = this.vvChatHelper;
        SignallingChannel signallingChannel = this.mainSignalChannel;
        ChatThread chatThread = this.mainChannelChatThread;
        String str2 = chatThread == null ? null : chatThread.threadId;
        ChatThread chatThread2 = this.mainChannelChatThread;
        vVChatHelper.reportLiveLayerInactiveEvent(signallingChannel, str2, chatThread2 != null ? chatThread2.type : -1);
        cleanMainChannel();
    }

    public void captureVideoFrame(int i, VideoPreProcessing.ProgressCallback progressCallback) {
        VideoPreProcessing videoPreProcessing = this.videoPreProcessing;
        if (videoPreProcessing == null) {
            progressCallback.onProcessYUV(null, 0, 0, 0);
        } else {
            videoPreProcessing.capFile(i, progressCallback);
        }
    }

    public void setVideoFrameAvailableListener(VideoPreProcessing.FrameAvailableListener frameAvailableListener) {
        VideoPreProcessing videoPreProcessing = this.videoPreProcessing;
        if (videoPreProcessing == null) {
            this.videoFrameAvailableListener = frameAvailableListener;
        } else {
            videoPreProcessing.setRemoteFrameAvailableListener(frameAvailableListener);
        }
    }

    @Override // com.narvii.video.model.RtcEventHandler
    public void onRemoteUserJoined(int i) {
        ChannelUserWrapper channelUserWrapper = this.mainChannelUserWrapperList.get(i);
        SignallingChannel signallingChannel = this.mainSignalChannel;
        boolean z = false;
        boolean z2 = signallingChannel != null && this.vvChatHelper.isAgoraVideoType(signallingChannel.channelType);
        if (getMainSigChannel() != null && (getMainSigChannel().channelType == 1 || getMainSigChannel().channelType == 5)) {
            z = true;
        }
        if (!isAgoraUserInMainChannel(i) || channelUserWrapper == null || channelUserWrapper.channelUser == null) {
            this.rtcManager.muteRemoteUer(z2 ? 2 : 1, i, true);
            this.unbridledAgoraUsers.add(Integer.valueOf(i));
            return;
        }
        addAgoraUserDataToChannelUserWrapper(i);
        if (z) {
            changeChannelUserWrapperStatus(i, 1);
        }
        ChannelUser channelUser = channelUserWrapper.channelUser;
        if (channelUser.joinRole != 1) {
            this.rtcManager.muteRemoteUer(z2 ? 2 : 1, i, true);
            this.unbridledAgoraUsers.add(Integer.valueOf(i));
        } else if (this.localMuteUserList.contains(channelUser.uid())) {
            this.rtcManager.muteRemoteUer(z2 ? 2 : 1, i, true);
        }
    }

    @Override // com.narvii.video.model.RtcEventHandler
    public void onFirstRemoteVideoDecoded(int i, int i2, int i3, int i4) {
        ChannelUser channelUser;
        if (this.rtcManager.getLocalUid() != i) {
            ChannelUserWrapper channelUserWrapper = this.mainChannelUserWrapperList.get(i);
            boolean z = (channelUserWrapper == null || (channelUser = channelUserWrapper.channelUser) == null || !channelUser.isHost) ? false : true;
            SurfaceView surfaceViewCreateRendererView = RtcEngine.CreateRendererView(this.context);
            this.rtcManager.setupRemoteVideo(new VideoCanvas(surfaceViewCreateRendererView, (z && getMainSigChannel() != null && getMainSigChannel().channelType == 5) ? 2 : 1, i));
            UserStatusData userStausData = this.rtcManager.getUserStausData(i);
            if (userStausData != null) {
                userStausData.setVideoFrameStatus(2);
                userStausData.mView = surfaceViewCreateRendererView;
            } else {
                this.rtcManager.addNewUser(i, surfaceViewCreateRendererView, 2);
            }
        }
        if (getMainSigChannel() != null && isVideoSignificantChannelType(getMainSigChannel().channelType) && isAgoraUserInMainChannel(i)) {
            addAgoraUserDataToChannelUserWrapper(i);
            changeChannelUserWrapperStatus(i, 1);
        }
        configStream();
    }

    private void configStream() {
        Bundle curLiveChannelInfo = getCurLiveChannelInfo();
        ChatThread chatThread = curLiveChannelInfo == null ? null : (ChatThread) JacksonUtils.readAs(curLiveChannelInfo.getString("thread"), ChatThread.class);
        boolean z = chatThread != null && chatThread.type == 0;
        if (this.mainChannelUserWrapperList != null) {
            for (int i = 0; i < this.mainChannelUserWrapperList.size(); i++) {
                ChannelUserWrapper channelUserWrapperValueAt = this.mainChannelUserWrapperList.valueAt(i);
                if (channelUserWrapperValueAt != null) {
                    this.rtcManager.setLowerStreamMode(channelUserWrapperValueAt.channelUid, !z);
                }
            }
        }
    }

    @Override // com.narvii.video.model.RtcEventHandler
    public void onJoinChannelSuccess(String str, int i, int i2) {
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
        if (!isAgoraUserInMainChannel(i) || getMainSigChannel() == null) {
            return;
        }
        addAgoraUserDataToChannelUserWrapper(i);
        boolean zIsVideoSignificantChannelType = isVideoSignificantChannelType(getMainSigChannel().channelType);
        int i3 = 1;
        boolean z = getMainSigChannel().channelType == 5;
        if (z && isHost(i)) {
            this.rtcManager.initScreenRoomHostSwap();
        }
        if (zIsVideoSignificantChannelType && !z) {
            i3 = 0;
        }
        changeChannelUserWrapperStatus(i, i3);
        dispatchJoinAgoraSuccessed();
    }

    @Override // com.narvii.video.model.RtcEventHandler
    public void onRejoinChannelSuccess(String str, int i, int i2) {
        if (this.isLostConnectionStatus) {
            this.isLostConnectionStatus = false;
            Utils.handler.removeCallbacks(this.connectionCheckRunnable);
        }
        updateChannelUserWrapperInfo(i);
        if (isAgoraUserInMainChannel(i) && isMainChannelVoiceType()) {
            changeChannelUserWrapperStatus(i, 1);
        }
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

    @Override // com.narvii.video.model.RtcEventHandler
    public void onUserOffline(int i, int i2) {
        if (getMainSigChannel() == null) {
            return;
        }
        if (i2 == 1) {
            updateChannelUserWrapperInfo(i);
        } else {
            changeChannelUserWrapperStatus(i, 2);
        }
    }

    @Override // com.narvii.video.model.RtcEventHandler
    public void onLocalUserSteamDecoded(int i) {
        if (isMainChannelVideoType()) {
            addAgoraUserDataToChannelUserWrapper(i);
            changeChannelUserWrapperStatus(i, 1);
        }
    }

    @Override // com.narvii.video.model.RtcEventHandler
    public void onUserMuteAudio(int i, boolean z) {
        addAgoraUserDataToChannelUserWrapper(i);
        updateChannelUserWrapperInfo(i);
        if (isAllUseVoiceMuted()) {
            dispatchTotalVolumeChange(0);
        }
    }

    @Override // com.narvii.video.model.RtcEventHandler
    public void onUserMuteVideo(int i, boolean z) {
        updateChannelUserWrapperInfo(i);
    }

    @Override // com.narvii.video.model.RtcEventHandler
    public void onAudioVolumeIndication(IRtcEngineEventHandler.AudioVolumeInfo[] audioVolumeInfoArr, int i) {
        SparseArray<ChannelUserWrapper> sparseArray;
        ChannelUser channelUser;
        UserStatusData userStatusData;
        UserStatusData userStatusData2;
        if (this.mainSignalChannel == null || (sparseArray = this.mainChannelUserWrapperList) == null || sparseArray.size() == 0) {
            return;
        }
        if (isAllUseVoiceMuted()) {
            i = 0;
        }
        if (this.oldTotalVolume != i) {
            dispatchTotalVolumeChange(i);
            this.oldTotalVolume = i;
        }
        if (audioVolumeInfoArr == null || this.mainChannelUserWrapperList == null) {
            return;
        }
        for (IRtcEngineEventHandler.AudioVolumeInfo audioVolumeInfo : audioVolumeInfoArr) {
            int i2 = audioVolumeInfo.volume;
            Integer num = this.lastVolumes.get(audioVolumeInfo.uid);
            if (num != null && num.intValue() != 0 && i2 == 0) {
                this.lastVolumeZeroTime.put(audioVolumeInfo.uid, Long.valueOf(System.currentTimeMillis()));
            }
            SparseArray<ChannelUserWrapper> sparseArray2 = this.mainChannelUserWrapperList;
            int i3 = audioVolumeInfo.uid;
            if (i3 == 0) {
                i3 = this.mainSignalChannel.channelUid;
            }
            ChannelUserWrapper channelUserWrapper = sparseArray2.get(i3);
            if (i2 == 0) {
                Long l = this.lastVolumeZeroTime.get(audioVolumeInfo.uid);
                i2 = (l == null || System.currentTimeMillis() - l.longValue() <= 5000) ? (channelUserWrapper == null || (userStatusData2 = channelUserWrapper.userStatus) == null) ? 0 : userStatusData2.mVolume : 0;
            }
            this.lastVolumes.put(audioVolumeInfo.uid, Integer.valueOf(audioVolumeInfo.volume));
            if (channelUserWrapper != null && (userStatusData = channelUserWrapper.userStatus) != null && userStatusData.isVoiceMuted()) {
                i2 = 0;
            }
            if (channelUserWrapper != null && channelUserWrapper.userStatus != null) {
                if (UserStatusData.getVolumeLevel(i2) == UserStatusData.getVolumeLevel(channelUserWrapper.userStatus.mVolume)) {
                    return;
                }
                if (this.mainSignalChannel.channelType != 5 || (channelUser = channelUserWrapper.channelUser) == null || !channelUser.isHost) {
                    channelUserWrapper.userStatus.mVolume = i2;
                    dispatchChannelUserWrapperChanged(this.mainSignalChannel, channelUserWrapper);
                }
            }
        }
    }

    @Override // com.narvii.video.model.RtcEventHandler
    public void onAudioRouteChanged(int i) {
        if (getMainSigChannel() == null) {
            return;
        }
        updateChannelUserWrapperInfo(getMainSigChannel().channelUid);
    }

    @Override // com.narvii.video.model.RtcEventHandler
    public void onExtraCallback(int i, Object... objArr) {
        if (i == 1) {
            this.rtcManager.leaveChannel(new ChannelActionCallback() { // from class: com.narvii.chat.rtc.RtcService.16
                @Override // com.narvii.video.model.ChannelActionCallback
                public void call(Object obj) {
                    if (obj instanceof ChannelActionResult) {
                        if (((ChannelActionResult) obj).isSuccess) {
                            SignallingChannel mainSigChannel = RtcService.this.getMainSigChannel();
                            RtcService rtcService = RtcService.this;
                            rtcService.joinAgoraChannel(mainSigChannel.channelKey, mainSigChannel.channelName, mainSigChannel.channelType, mainSigChannel.channelUid, mainSigChannel.ndcId, false, rtcService.isInitCameraMuted());
                            return;
                        }
                        Log.e(RtcService.TAG, "join agora channel error");
                    }
                }
            });
            return;
        }
        if (i == 3) {
            final int iIntValue = ((Integer) objArr[0]).intValue();
            final byte[] bArr = (byte[]) objArr[1];
            final ObjectNode objectNodeCreateObjectNode = null;
            if (bArr.length > 2 && bArr[0] == 123) {
                try {
                    objectNodeCreateObjectNode = JacksonUtils.createObjectNode(new String(bArr, 0, bArr.length, Utils.UTF_8));
                } catch (Exception unused) {
                }
            }
            this.dataStreamListeners.dispatch(new Callback<DataStreamListener>() { // from class: com.narvii.chat.rtc.RtcService.17
                @Override // com.narvii.util.Callback
                public void call(DataStreamListener dataStreamListener) {
                    dataStreamListener.onDataStreamReceived(iIntValue, bArr, objectNodeCreateObjectNode);
                }
            });
        }
    }

    @Override // com.narvii.video.model.RtcEventHandler
    public void onRequestToken() {
        if (getMainSigChannel() == null) {
            return;
        }
        SignallingService signallingService = this.sigService;
        SignallingChannel signallingChannel = this.mainSignalChannel;
        signallingService.getAgoraChannel(signallingChannel.ndcId, signallingChannel.threadId, new Callback() { // from class: com.narvii.chat.rtc.RtcService.18
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
    public void onNetworkStatusChanged(int i) throws IllegalStateException {
        if (i == 2 && !this.isLostConnectionStatus) {
            this.isLostConnectionStatus = true;
            Utils.postDelayed(this.connectionCheckRunnable, 120000L);
        }
        dispatchNetworkStatusChange(i);
    }

    @Override // com.narvii.video.model.RtcEventHandler
    public void onAudioQuality(int i, int i2, short s, short s2) {
        updateChannelUserWrapperInfo(i);
    }

    public void waitListClean(int i, String str, final Callback<SignallingChannel> callback) {
        this.waitingListService.waitListClean(i, str, new Function1() { // from class: com.narvii.chat.rtc.-$$Lambda$RtcService$JWmjJ2xZxnnWCape5Un24MCiGbc
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return RtcService.lambda$waitListClean$0(callback, obj);
            }
        });
    }

    static /* synthetic */ Unit lambda$waitListClean$0(Callback callback, Object obj) {
        if (!(obj instanceof SignallingChannel)) {
            return null;
        }
        callback.call((SignallingChannel) obj);
        return null;
    }

    public void waitListJoinApprove(int i, String str, String str2, final WaitingListCallback<SignallingChannel, Boolean> waitingListCallback) {
        this.waitingListService.waitListJoinApprove(i, str, str2, new Function1() { // from class: com.narvii.chat.rtc.-$$Lambda$RtcService$iVYLPGk2olAtIWIvoHYZbA2lHE4
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return RtcService.lambda$waitListJoinApprove$1(waitingListCallback, obj);
            }
        });
    }

    static /* synthetic */ Unit lambda$waitListJoinApprove$1(WaitingListCallback waitingListCallback, Object obj) {
        if (!(obj instanceof Pair)) {
            return null;
        }
        Pair pair = (Pair) obj;
        if (!(pair.getFirst() instanceof SignallingChannel) || !(pair.getSecond() instanceof Boolean)) {
            return null;
        }
        waitingListCallback.call((SignallingChannel) pair.getFirst(), Boolean.valueOf(((Boolean) pair.getSecond()).booleanValue()));
        return null;
    }

    public void waitListJoinCancel(int i, String str, String str2, final Callback<SignallingChannel> callback) {
        this.waitingListService.waitListJoinCancel(i, str, str2, new Function1() { // from class: com.narvii.chat.rtc.-$$Lambda$RtcService$8_eoWP0YEWMCKekw7vxVf830kd8
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return RtcService.lambda$waitListJoinCancel$2(callback, obj);
            }
        });
    }

    static /* synthetic */ Unit lambda$waitListJoinCancel$2(Callback callback, Object obj) {
        if (!(obj instanceof SignallingChannel)) {
            return null;
        }
        callback.call((SignallingChannel) obj);
        return null;
    }

    public void waitListJoin(int i, String str, final Callback<SignallingChannel> callback) {
        this.waitingListService.waitListJoin(i, str, new Function1() { // from class: com.narvii.chat.rtc.-$$Lambda$RtcService$39BxXx7iOKPen1xAVvHsO9t4NDY
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return RtcService.lambda$waitListJoin$3(callback, obj);
            }
        });
    }

    static /* synthetic */ Unit lambda$waitListJoin$3(Callback callback, Object obj) {
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

    @Override // com.narvii.chat.waitinglist.WaitingListListener
    public void onWaitingListApprove(SignallingChannel signallingChannel) {
        dispatchWaitingListApprove(signallingChannel);
    }

    @Override // com.narvii.chat.waitinglist.WaitingListListener
    public void onWaitingListChanged(SignallingChannel signallingChannel, Collection<User> collection, Collection<User> collection2) {
        dispatchWaitingListChanged(signallingChannel, collection, collection2);
    }

    @Override // com.narvii.chat.signalling.SignallingListener
    public void onChannelListChanged(SignallingService signallingService, SignallingChannel signallingChannel, boolean z) {
        Log.d(TAG, "signalling -- channel changed " + signallingChannel.channelName);
        dispatchLocalUserStatusChange(z ? 1 : 2, signallingChannel, null);
        if (!z && signallingChannel != null) {
            SignallingChannel signallingChannel2 = this.mainSignalChannel;
            if (signallingChannel2 != null && Utils.isEqualsNotNull(signallingChannel2.threadId, signallingChannel.threadId)) {
                cleanMainChannel();
            }
            LocalBroadcastManager localBroadcastManager = LocalBroadcastManager.getInstance(this.nvContext.getContext());
            Intent intent = new Intent(ACTION_LIVE_CHANNEL_QUIT);
            intent.putExtra("threadId", signallingChannel.threadId);
            localBroadcastManager.sendBroadcast(intent);
        }
        CallScreenService callScreenService = this.callScreenService;
        if (callScreenService != null && Utils.isEquals(callScreenService.getThreadId(), signallingChannel.threadId)) {
            this.callScreenService.resetCallScreen();
        }
        if (signallingService.channelList() == null || signallingService.channelList().size() == 0) {
            this.rtcManager.leaveChannel(null);
        }
    }

    @Override // com.narvii.chat.signalling.SignallingListener
    public void onChannelChanged(SignallingService signallingService, SignallingChannel signallingChannel) {
        Log.d(TAG, "signalling -- channel status change " + signallingChannel.channelName);
        dispatchChannelStatusChange(signallingChannel);
    }

    @Override // com.narvii.chat.signalling.SignallingListener
    public void onUserListChanged(SignallingService signallingService, SignallingChannel signallingChannel, Collection<ChannelUser> collection, Collection<ChannelUser> collection2) throws IllegalStateException {
        String str;
        boolean z;
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
                z = true;
                if (!it.hasNext()) {
                    break;
                } else if (it.next().joinRole != 1) {
                    z = false;
                    break;
                }
            }
            this.isPrivateMainChannelFullBefore = z;
            if (this.isPrivateMainChannelFullBefore) {
                WeakReference<VVChatInviteActivity> weakReference = VVChatInviteActivity.instance;
                if (weakReference != null && weakReference.get() != null) {
                    VVChatInviteActivity.instance.get().finish();
                }
                this.callScreenService.updateStatus(2);
            }
        }
    }

    private void dispatcheScreenRoomRoleChange(SignallingChannel signallingChannel) {
        boolean z;
        final boolean z2;
        if (this.isScreenRoomRoleSet || signallingChannel.channelType != 5) {
            return;
        }
        boolean zChannelContainMe = channelContainMe(signallingChannel);
        Iterator<ChannelUser> it = signallingChannel.userList.iterator();
        while (true) {
            if (!it.hasNext()) {
                z2 = false;
                break;
            }
            ChannelUser next = it.next();
            if (next.isHost) {
                int i = next.channelUid;
                this.screenRoomHostUid = i;
                z2 = i == signallingChannel.channelUid;
                z = true;
            }
        }
        if (z && zChannelContainMe) {
            this.isScreenRoomRoleSet = true;
            this.srRoleChangeListenerEventDispatcher.dispatch(new Callback<SRRoleChangeListener>() { // from class: com.narvii.chat.rtc.RtcService.19
                @Override // com.narvii.util.Callback
                public void call(SRRoleChangeListener sRRoleChangeListener) {
                    sRRoleChangeListener.onScreenRoomRoleChange(z2);
                }
            });
        }
    }

    @Override // com.narvii.chat.signalling.SignallingListener
    public void onChannelForceQuit(SignallingService signallingService, SignallingChannel signallingChannel, int i) {
        Log.d(TAG, "signalling -- force quit");
        if (signallingChannel != null && signallingChannel.joinRole != 0) {
            this.oldChannelType = signallingChannel.channelType;
        }
        dispatchChannelForceQuit(signallingChannel, i);
    }

    @Override // com.narvii.chat.signalling.SignallingListener
    public void onSignallingPong(ArrayList<ThreadChannelUserInfo> arrayList) {
        HashMap map = new HashMap();
        Iterator<ThreadChannelUserInfo> it = arrayList.iterator();
        while (it.hasNext()) {
            ThreadChannelUserInfo next = it.next();
            map.put(next.threadId, next);
            if (this.sigService.getChannelByThread(next.threadId) == null) {
                this.sigService.leaveThread(next.ndcId, next.threadId, null);
            }
        }
        for (SignallingChannel signallingChannel : this.sigService.channelList()) {
            ThreadChannelUserInfo threadChannelUserInfo = (ThreadChannelUserInfo) map.get(signallingChannel.threadId);
            boolean z = threadChannelUserInfo == null || threadChannelUserInfo.joinRole == 0;
            if (signallingChannel.joinRole != 0 && z) {
                exitLiveChannel(signallingChannel.ndcId, signallingChannel.threadId);
            }
        }
    }

    @Override // com.narvii.chat.signalling.SignallingListener
    public void onUserRoleChange(SignallingService signallingService, SignallingChannel signallingChannel, ChannelUser channelUser) {
        buildMainSignalChanel(signallingChannel);
        dispatchLocalUserStatusChange(3, signallingChannel, channelUser);
        dispatcheScreenRoomRoleChange(signallingChannel);
        mergeAgoraDataAndChannelData(signallingChannel, signallingChannel.userList);
        dispatchChannelUserListChange(signallingChannel, Collections.emptyList(), signallingChannel.userList, Utils.isEqualsNotNull(getMainSigChannel() == null ? null : getMainSigChannel().threadId, signallingChannel.threadId) ? getMainChannelUserWrapperList() : null);
    }

    @Override // com.narvii.chat.signalling.SignallingListener
    public void onReceiverBusy(SignallingChannel signallingChannel) {
        if (signallingChannel != null) {
            exitLiveChannel(signallingChannel.ndcId, signallingChannel.threadId);
        }
        this.callScreenService.updateStatus(10);
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
    public void onChannelTypeUpdateSuccess(SignallingService signallingService, SignallingChannel signallingChannel) {
        dispatchChannelStatusChange(signallingChannel);
        logVVChatStatusChange(signallingChannel);
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

    public void cancelNotification() {
        this.notificationHelper.cancelNotification();
    }

    public void addMutedUser(String str) {
        operaLocalMuteUser(0, str);
    }

    public void removeMutedUser(String str) {
        operaLocalMuteUser(1, str);
    }

    public Set<String> getLocalMutedUserList() {
        return this.localMuteUserList;
    }

    private void operaLocalMuteUser(int i, String str) {
        int i2;
        if (TextUtils.isEmpty(str) || this.mainSignalChannel == null) {
            return;
        }
        boolean z = i == 0;
        boolean zContains = this.localMuteUserList.contains(str);
        if (z && zContains) {
            return;
        }
        if (z || zContains) {
            Iterator<ChannelUser> it = this.mainSignalChannel.userList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    i2 = -1;
                    break;
                }
                ChannelUser next = it.next();
                if (Utils.isEqualsNotNull(next == null ? null : next.uid(), str)) {
                    i2 = next.channelUid;
                    break;
                }
            }
            if (i2 == -1) {
                return;
            }
            if (z) {
                this.localMuteUserList.add(str);
            } else {
                this.localMuteUserList.remove(str);
            }
            this.rtcManager.muteRemoteUer(this.vvChatHelper.isAgoraVideoType(this.mainSignalChannel.channelType) ? 2 : 1, i2, i == 0);
            dispatchLocalMuteUserListChange(this.mainSignalChannel);
        }
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

    public void addDataStreamListener(DataStreamListener dataStreamListener) {
        this.dataStreamListeners.addListener(dataStreamListener);
    }

    public void removeDataStreamListener(DataStreamListener dataStreamListener) {
        this.dataStreamListeners.removeListener(dataStreamListener);
    }

    public void addMyNetWorkStatusChangeListener(String str, MyNetworkStatusChangeListener myNetworkStatusChangeListener) {
        EventDispatcher<MyNetworkStatusChangeListener> eventDispatcher = this.networkStatusDispatcher.get(str);
        if (eventDispatcher == null) {
            eventDispatcher = new EventDispatcher<>();
        }
        eventDispatcher.addListener(myNetworkStatusChangeListener);
        this.networkStatusDispatcher.put(str, eventDispatcher);
    }

    public void removeMyNetWorkStatusChangeListener(String str, MyNetworkStatusChangeListener myNetworkStatusChangeListener) {
        EventDispatcher<MyNetworkStatusChangeListener> eventDispatcher = this.networkStatusDispatcher.get(str);
        if (eventDispatcher == null) {
            return;
        }
        eventDispatcher.removeListener(myNetworkStatusChangeListener);
    }

    public void addAgoraUserVolumeChangeListener(String str, AgoraUserVolumeChangeListener agoraUserVolumeChangeListener) {
        EventDispatcher<AgoraUserVolumeChangeListener> eventDispatcher = this.totalVolumeChangeDispatcher.get(str);
        if (eventDispatcher == null) {
            eventDispatcher = new EventDispatcher<>();
        }
        eventDispatcher.addListener(agoraUserVolumeChangeListener);
        this.totalVolumeChangeDispatcher.put(str, eventDispatcher);
    }

    public void removeAgoraUserVolumeChangeListener(String str, AgoraUserVolumeChangeListener agoraUserVolumeChangeListener) {
        EventDispatcher<AgoraUserVolumeChangeListener> eventDispatcher = this.totalVolumeChangeDispatcher.get(str);
        if (eventDispatcher == null) {
            return;
        }
        eventDispatcher.removeListener(agoraUserVolumeChangeListener);
    }

    public void addLiveChannelChangeListener(String str, LiveChannelChangeListener liveChannelChangeListener) {
        EventDispatcher<LiveChannelChangeListener> eventDispatcher = this.channelStatusChangeDispatcher.get(str);
        if (eventDispatcher == null) {
            eventDispatcher = new EventDispatcher<>();
        }
        eventDispatcher.addListener(liveChannelChangeListener);
        this.channelStatusChangeDispatcher.put(str, eventDispatcher);
    }

    public void removeLiveChannelChangeListener(String str, LiveChannelChangeListener liveChannelChangeListener) {
        EventDispatcher<LiveChannelChangeListener> eventDispatcher = this.channelStatusChangeDispatcher.get(str);
        if (eventDispatcher == null) {
            return;
        }
        eventDispatcher.removeListener(liveChannelChangeListener);
    }

    public void addMyChannelUserStatusChangeListener(String str, MyChannelUserStatusChangeListener myChannelUserStatusChangeListener) {
        EventDispatcher<MyChannelUserStatusChangeListener> eventDispatcher = this.localChannelUserStatusDispatcher.get(str);
        if (eventDispatcher == null) {
            eventDispatcher = new EventDispatcher<>();
        }
        eventDispatcher.addListener(myChannelUserStatusChangeListener);
        this.localChannelUserStatusDispatcher.put(str, eventDispatcher);
    }

    public void removeMyChannelUserStatusChangeListener(String str, MyChannelUserStatusChangeListener myChannelUserStatusChangeListener) {
        EventDispatcher<MyChannelUserStatusChangeListener> eventDispatcher = this.localChannelUserStatusDispatcher.get(str);
        if (eventDispatcher == null) {
            return;
        }
        eventDispatcher.removeListener(myChannelUserStatusChangeListener);
    }

    public void addChannelUserWrapperUpdateListener(String str, ChannelUserWrapperUpdateListener channelUserWrapperUpdateListener) {
        EventDispatcher<ChannelUserWrapperUpdateListener> eventDispatcher = this.channelUserWrapperStatusDispatcher.get(str);
        if (eventDispatcher == null) {
            eventDispatcher = new EventDispatcher<>();
        }
        eventDispatcher.addListener(channelUserWrapperUpdateListener);
        this.channelUserWrapperStatusDispatcher.put(str, eventDispatcher);
    }

    public void removeChannelUserWrapperUpdateListener(String str, ChannelUserWrapperUpdateListener channelUserWrapperUpdateListener) {
        EventDispatcher<ChannelUserWrapperUpdateListener> eventDispatcher = this.channelUserWrapperStatusDispatcher.get(str);
        if (eventDispatcher == null) {
            return;
        }
        eventDispatcher.removeListener(channelUserWrapperUpdateListener);
    }

    public void addLocalMuteUserListChangeListener(String str, LocalMuteUserListChangeListener localMuteUserListChangeListener) {
        EventDispatcher<LocalMuteUserListChangeListener> eventDispatcher = this.localMuteUserListDispatcher.get(str);
        if (eventDispatcher == null) {
            eventDispatcher = new EventDispatcher<>();
        }
        eventDispatcher.addListener(localMuteUserListChangeListener);
        this.localMuteUserListDispatcher.put(str, eventDispatcher);
    }

    public void removeLocalMuteUserListChangeListener(String str, LocalMuteUserListChangeListener localMuteUserListChangeListener) {
        EventDispatcher<LocalMuteUserListChangeListener> eventDispatcher = this.localMuteUserListDispatcher.get(str);
        if (eventDispatcher == null) {
            return;
        }
        eventDispatcher.removeListener(localMuteUserListChangeListener);
    }

    public void addLiveChannelErrorListener(String str, LiveChannelErrorListener liveChannelErrorListener) {
        EventDispatcher<LiveChannelErrorListener> eventDispatcher = this.channelErrorDispatcher.get(str);
        if (eventDispatcher == null) {
            eventDispatcher = new EventDispatcher<>();
        }
        eventDispatcher.addListener(liveChannelErrorListener);
        this.channelErrorDispatcher.put(str, eventDispatcher);
    }

    public void removeLiveChannelErrorListener(String str, LiveChannelErrorListener liveChannelErrorListener) {
        EventDispatcher<LiveChannelErrorListener> eventDispatcher = this.channelErrorDispatcher.get(str);
        if (eventDispatcher == null) {
            return;
        }
        eventDispatcher.removeListener(liveChannelErrorListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchChannelException(String str, final int i, final WsError wsError) {
        EventDispatcher<LiveChannelErrorListener> eventDispatcher = this.channelErrorDispatcher.get(str);
        if (eventDispatcher == null) {
            return;
        }
        eventDispatcher.dispatch(new Callback<LiveChannelErrorListener>() { // from class: com.narvii.chat.rtc.RtcService.20
            @Override // com.narvii.util.Callback
            public void call(LiveChannelErrorListener liveChannelErrorListener) {
                liveChannelErrorListener.onLiveChannelError(i, wsError);
            }
        });
    }

    public void addWaitingListListener(String str, WaitingListListener waitingListListener) {
        EventDispatcher<WaitingListListener> eventDispatcher = this.waitingListDispatcher.get(str);
        if (eventDispatcher == null) {
            eventDispatcher = new EventDispatcher<>();
        }
        eventDispatcher.addListener(waitingListListener);
        this.waitingListDispatcher.put(str, eventDispatcher);
    }

    public void removeWaitingListListener(String str, WaitingListListener waitingListListener) {
        EventDispatcher<WaitingListListener> eventDispatcher = this.waitingListDispatcher.get(str);
        if (eventDispatcher == null) {
            return;
        }
        eventDispatcher.removeListener(waitingListListener);
    }

    private void dispatchWaitingListApprove(final SignallingChannel signallingChannel) {
        EventDispatcher<WaitingListListener> eventDispatcher = this.waitingListDispatcher.get(signallingChannel.threadId);
        if (eventDispatcher == null) {
            return;
        }
        eventDispatcher.dispatch(new Callback() { // from class: com.narvii.chat.rtc.-$$Lambda$RtcService$eJVfsh8jsAX4ojSu6JIg9eJ69ks
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
        eventDispatcher.dispatch(new Callback() { // from class: com.narvii.chat.rtc.-$$Lambda$RtcService$f7ue1Tquvuh-mCdY1uop7hvBcQI
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                ((WaitingListListener) obj).onWaitingListChanged(signallingChannel, collection, collection2);
            }
        });
    }

    private void dispatchLocalMuteUserListChange(final SignallingChannel signallingChannel) {
        if (signallingChannel == null || !this.localMuteUserListDispatcher.containsKey(signallingChannel.threadId)) {
            return;
        }
        this.localMuteUserListDispatcher.get(signallingChannel.threadId).dispatch(new Callback<LocalMuteUserListChangeListener>() { // from class: com.narvii.chat.rtc.RtcService.21
            @Override // com.narvii.util.Callback
            public void call(LocalMuteUserListChangeListener localMuteUserListChangeListener) {
                localMuteUserListChangeListener.onLocalMuteUserListChanged(signallingChannel, RtcService.this.localMuteUserList);
            }
        });
    }

    private void dispatchLocalUserStatusChange(final int i, final SignallingChannel signallingChannel, final ChannelUser channelUser) {
        if (signallingChannel == null || !this.localChannelUserStatusDispatcher.containsKey(signallingChannel.threadId)) {
            return;
        }
        this.localChannelUserStatusDispatcher.get(signallingChannel.threadId).dispatch(new Callback<MyChannelUserStatusChangeListener>() { // from class: com.narvii.chat.rtc.RtcService.22
            @Override // com.narvii.util.Callback
            public void call(MyChannelUserStatusChangeListener myChannelUserStatusChangeListener) {
                myChannelUserStatusChangeListener.onMyChannelUserStatusChanged(i, signallingChannel, channelUser);
            }
        });
    }

    private void logVVChatStatusChange(SignallingChannel signallingChannel) {
        if (signallingChannel != null && this.vvchatStartTime == 0 && SignallingChannel.isLegalChannelType(signallingChannel.channelType)) {
            List<ChannelUser> list = signallingChannel.userList;
            int size = list == null ? 0 : list.size();
            this.vvchatStartTime = SystemClock.elapsedRealtime();
            this.vvchatStartChatType = ChatLogEventHelper.getChatType(signallingChannel.channelType);
            if (this.vvchatStartChatType == null) {
                StringBuilder sb = new StringBuilder();
                sb.append(signallingChannel.channelType);
                sb.append("-");
                ChatThread chatThread = this.mainChannelChatThread;
                sb.append(chatThread != null ? chatThread.type : -1);
                Log.e("chatType is null", sb.toString());
            }
            LogEvent.clickBuilder(this.nvContext, ActSemantic.VVChatStart).ndcId(signallingChannel.ndcId).extraParam("chatId", signallingChannel.threadId).extraParam("memberCount", Integer.valueOf(size)).extraParam("chatType", this.vvchatStartChatType).allowNoPage().send();
            CrashlyticsUtils.states.put("vvchat", this.vvchatStartChatType);
            return;
        }
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
            builderExtraParam.extraParam("chatType", chatType).extraParam("duration", Long.valueOf(SystemClock.elapsedRealtime() - this.vvchatStartTime)).allowNoPage().send();
            CrashlyticsUtils.states.remove("vvchat");
        }
        this.vvchatStartTime = 0L;
        this.vvchatStartChatType = null;
    }

    private void dispatchChannelUserListChange(final SignallingChannel signallingChannel, final Collection<ChannelUser> collection, final Collection<ChannelUser> collection2, final SparseArray<ChannelUserWrapper> sparseArray) {
        if (signallingChannel == null || !this.channelStatusChangeDispatcher.containsKey(signallingChannel.threadId)) {
            return;
        }
        this.channelStatusChangeDispatcher.get(signallingChannel.threadId).dispatch(new Callback<LiveChannelChangeListener>() { // from class: com.narvii.chat.rtc.RtcService.23
            @Override // com.narvii.util.Callback
            public void call(LiveChannelChangeListener liveChannelChangeListener) {
                liveChannelChangeListener.onChannelUserListChanged(signallingChannel, RtcService.getFilteredChannelUserList(collection), RtcService.getFilteredChannelUserList(collection2), RtcService.getFilteredUserList(sparseArray));
            }
        });
    }

    private void dispatchChannelForceQuit(final SignallingChannel signallingChannel, final int i) {
        if (signallingChannel == null || !this.channelStatusChangeDispatcher.containsKey(signallingChannel.threadId)) {
            return;
        }
        this.channelStatusChangeDispatcher.get(signallingChannel.threadId).dispatch(new Callback<LiveChannelChangeListener>() { // from class: com.narvii.chat.rtc.RtcService.24
            @Override // com.narvii.util.Callback
            public void call(LiveChannelChangeListener liveChannelChangeListener) {
                liveChannelChangeListener.onChannelForceQuit(signallingChannel, i);
            }
        });
    }

    private void dispatchChannelStatusChange(final SignallingChannel signallingChannel) {
        if (signallingChannel == null || !this.channelStatusChangeDispatcher.containsKey(signallingChannel.threadId)) {
            return;
        }
        this.channelStatusChangeDispatcher.get(signallingChannel.threadId).dispatch(new Callback<LiveChannelChangeListener>() { // from class: com.narvii.chat.rtc.RtcService.25
            @Override // com.narvii.util.Callback
            public void call(LiveChannelChangeListener liveChannelChangeListener) {
                liveChannelChangeListener.onChannelStatusChanged(signallingChannel);
            }
        });
    }

    private void dispatchTotalVolumeChange(final int i) {
        SignallingChannel signallingChannel = this.mainSignalChannel;
        if (signallingChannel == null || !this.totalVolumeChangeDispatcher.containsKey(signallingChannel.threadId)) {
            return;
        }
        this.totalVolumeChangeDispatcher.get(this.mainSignalChannel.threadId).dispatch(new Callback<AgoraUserVolumeChangeListener>() { // from class: com.narvii.chat.rtc.RtcService.26
            @Override // com.narvii.util.Callback
            public void call(AgoraUserVolumeChangeListener agoraUserVolumeChangeListener) {
                agoraUserVolumeChangeListener.onTotalVolumeChanged(RtcService.this.mainSignalChannel, i);
            }
        });
    }

    private void dispatchNetworkStatusChange(final int i) throws IllegalStateException {
        SignallingChannel signallingChannel = this.mainSignalChannel;
        if (signallingChannel == null || !this.networkStatusDispatcher.containsKey(signallingChannel.threadId)) {
            return;
        }
        this.networkStatusDispatcher.get(this.mainSignalChannel.threadId).dispatch(new Callback<MyNetworkStatusChangeListener>() { // from class: com.narvii.chat.rtc.RtcService.27
            @Override // com.narvii.util.Callback
            public void call(MyNetworkStatusChangeListener myNetworkStatusChangeListener) {
                myNetworkStatusChangeListener.onNetworkStatusUpdated(i);
            }
        });
        if (i == 2) {
            this.musicHelper.playHintMusic(3);
        }
    }

    private void dispatchChannelUserWrapperChanged(final SignallingChannel signallingChannel, final ChannelUserWrapper channelUserWrapper) {
        if (signallingChannel == null || !this.channelUserWrapperStatusDispatcher.containsKey(signallingChannel.threadId)) {
            return;
        }
        this.channelUserWrapperStatusDispatcher.get(signallingChannel.threadId).dispatch(new Callback<ChannelUserWrapperUpdateListener>() { // from class: com.narvii.chat.rtc.RtcService.28
            @Override // com.narvii.util.Callback
            public void call(ChannelUserWrapperUpdateListener channelUserWrapperUpdateListener) {
                channelUserWrapperUpdateListener.onUserWrapperStatusChanged(signallingChannel, channelUserWrapper);
            }
        });
    }

    public SignallingChannel getMainSigChannel() {
        return this.mainSignalChannel;
    }

    public int getMainChannelType() {
        SignallingChannel signallingChannel = this.mainSignalChannel;
        if (signallingChannel == null) {
            return 0;
        }
        return signallingChannel.channelType;
    }

    private void updateChannelUserWrapperInfo(int i) {
        ChannelUserWrapper channelUserWrapper;
        if (this.mainSignalChannel == null || this.mainChannelUserWrapperList.indexOfKey(i) < 0 || (channelUserWrapper = this.mainChannelUserWrapperList.get(i)) == null) {
            return;
        }
        if (SignallingChannel.isVideoType(this.mainSignalChannel.channelType) && this.rtcManager.getUserDataList().get(i) != null && this.rtcManager.getUserDataList().get(i).videoFrameStatus == 2) {
            channelUserWrapper.status = 1;
        }
        dispatchChannelUserWrapperChanged(this.mainSignalChannel, channelUserWrapper);
    }

    private void changeChannelUserWrapperStatus(int i, int i2) {
        ChannelUserWrapper channelUserWrapper;
        if (this.mainSignalChannel == null || this.mainChannelUserWrapperList.indexOfKey(i) < 0 || (channelUserWrapper = this.mainChannelUserWrapperList.get(i)) == null) {
            return;
        }
        channelUserWrapper.setStatus(i2);
        UserStatusData userStatusData = channelUserWrapper.userStatus;
        if (userStatusData != null && userStatusData.mUid != i) {
            userStatusData.mUid = i;
        }
        dispatchChannelUserWrapperChanged(this.mainSignalChannel, channelUserWrapper);
    }

    public boolean isAlreadyJoinedCurChannel(String str, int i) {
        int i2;
        for (SignallingChannel signallingChannel : this.sigService.channelList()) {
            if (Utils.isEqualsNotNull(signallingChannel.threadId, str)) {
                return i == 1 ? signallingChannel.joinRole == 1 : i != 2 || (i2 = signallingChannel.joinRole) == 2 || i2 == 1;
            }
        }
        return false;
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
        int i = (int) (f * 256.0f);
        ChannelUserWrapper mainChannelLocalUserWrapper = getMainChannelLocalUserWrapper();
        if (mainChannelLocalUserWrapper == null || (userStatusData = mainChannelLocalUserWrapper.userStatus) == null || userStatusData.getCurVolumeLevel() == UserStatusData.getVolumeLevel(i)) {
            return;
        }
        mainChannelLocalUserWrapper.userStatus.mVolume = i;
        dispatchChannelUserWrapperChanged(this.mainSignalChannel, mainChannelLocalUserWrapper);
    }

    public ChannelUserWrapper getMainChannelLocalUserWrapper() {
        SparseArray<ChannelUserWrapper> mainChannelUserWrapperList = getMainChannelUserWrapperList();
        SignallingChannel mainSigChannel = getMainSigChannel();
        if (mainSigChannel != null && mainChannelUserWrapperList != null && mainChannelUserWrapperList.size() != 0) {
            for (int i = 0; i < mainChannelUserWrapperList.size(); i++) {
                if (mainChannelUserWrapperList.valueAt(i).channelUid == mainSigChannel.channelUid) {
                    return mainChannelUserWrapperList.valueAt(i);
                }
            }
        }
        return null;
    }

    public boolean isHostInCurrentChannel() {
        ChannelUser channelUser;
        ChannelUserWrapper mainChannelLocalUserWrapper = getMainChannelLocalUserWrapper();
        return (mainChannelLocalUserWrapper == null || (channelUser = mainChannelLocalUserWrapper.channelUser) == null || !channelUser.isHost) ? false : true;
    }

    public boolean hasAtLeastOneMemberInCurrentChannel() {
        List<ChannelUser> list;
        SignallingChannel signallingChannel = this.mainSignalChannel;
        return (signallingChannel == null || (list = signallingChannel.userList) == null || list.size() <= 1) ? false : true;
    }

    public boolean isPresenterInChannel() {
        SignallingChannel signallingChannel = this.mainSignalChannel;
        return signallingChannel != null && signallingChannel.joinRole == 1;
    }

    private boolean isAllUseVoiceMuted() {
        ChannelUser channelUser;
        if (this.mainSignalChannel == null || this.mainChannelUserWrapperList == null) {
            return true;
        }
        for (int i = 0; i < this.mainChannelUserWrapperList.size(); i++) {
            ChannelUserWrapper channelUserWrapperValueAt = this.mainChannelUserWrapperList.valueAt(i);
            UserStatusData userStatusData = channelUserWrapperValueAt.userStatus;
            if (userStatusData != null && !userStatusData.isVoiceMuted() && (channelUser = channelUserWrapperValueAt.channelUser) != null && channelUser.joinRole == 1) {
                return false;
            }
        }
        return true;
    }

    public void changeLocalVoiceMuteStatus(boolean z) {
        ChannelUserWrapper mainChannelLocalUserWrapper = getMainChannelLocalUserWrapper();
        if (mainChannelLocalUserWrapper == null || mainChannelLocalUserWrapper.channelUser == null || this.mainSignalChannel == null) {
            return;
        }
        UserStatusData userStatusData = mainChannelLocalUserWrapper.userStatus;
        if (userStatusData != null) {
            userStatusData.setVoiceMuted(z);
        }
        dispatchChannelUserWrapperChanged(this.mainSignalChannel, mainChannelLocalUserWrapper);
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

    /* JADX INFO: Access modifiers changed from: private */
    public void cleanMainChannel() {
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

    private boolean isExistedInChannelAtLeastRole(String str, int i) {
        int i2;
        SignallingChannel mappedSignallingChannel = getMappedSignallingChannel(str);
        if (mappedSignallingChannel == null) {
            return false;
        }
        return i == 1 ? mappedSignallingChannel.joinRole == 1 : i != 2 || (i2 = mappedSignallingChannel.joinRole) == 1 || i2 == 2;
    }

    private boolean isExistedInChannelEqualRole(String str, int i) {
        SignallingChannel mappedSignallingChannel = getMappedSignallingChannel(str);
        return mappedSignallingChannel != null && i == mappedSignallingChannel.joinRole;
    }

    public SignallingChannel getMappedSignallingChannel(String str) {
        for (SignallingChannel signallingChannel : this.sigService.channelList()) {
            if (signallingChannel != null && Utils.isEqualsNotNull(signallingChannel.threadId, str)) {
                return signallingChannel;
            }
        }
        return null;
    }

    private boolean isAgoraUserInMainChannel(int i) {
        return (this.mainSignalChannel == null || this.mainChannelUserWrapperList.get(i) == null) ? false : true;
    }

    private boolean isMainChannelVoiceType() {
        return getMainSigChannel() != null && isVoiceSignificantChannelType(getMainSigChannel().channelType);
    }

    private boolean isMainChannelVideoType() {
        return getMainSigChannel() != null && isVideoSignificantChannelType(getMainSigChannel().channelType);
    }

    private void addAgoraUserDataToChannelUserWrapper(int i) {
        SparseArray<UserStatusData> userDataList = this.rtcManager.getUserDataList();
        ChannelUserWrapper channelUserWrapper = this.mainChannelUserWrapperList.get(i);
        if (channelUserWrapper == null || Utils.isEqualsNotNull(channelUserWrapper.userStatus, userDataList.get(i))) {
            return;
        }
        channelUserWrapper.userStatus = userDataList.get(i);
    }

    private boolean isHost(int i) {
        ChannelUser channelUser;
        ChannelUserWrapper channelUserWrapper = this.mainChannelUserWrapperList.get(i);
        return (channelUserWrapper == null || (channelUser = channelUserWrapper.channelUser) == null || !channelUser.isHost) ? false : true;
    }

    public boolean sendDataStream(byte[] bArr) {
        int iSendDataStream = this.rtcManager.sendDataStream(bArr);
        if (iSendDataStream < 0) {
            Log.w(TAG, "fail to send agora data stream (" + (-iSendDataStream) + ")");
        }
        return iSendDataStream == 0;
    }

    public ChannelUserWrapper getChannelUserWrapper(int i) {
        if (this.mainChannelUserWrapperList == null) {
            return null;
        }
        for (int i2 = 0; i2 < this.mainChannelUserWrapperList.size(); i2++) {
            ChannelUserWrapper channelUserWrapperValueAt = this.mainChannelUserWrapperList.valueAt(i2);
            if (channelUserWrapperValueAt != null && channelUserWrapperValueAt.channelUid == i) {
                return channelUserWrapperValueAt;
            }
        }
        return null;
    }

    private void calculateUserListChange(Collection<ChannelUser> collection, Collection<ChannelUser> collection2) throws IllegalStateException {
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
                if ((channelUser4 != null && channelUser4.joinRole == 2 && channelUser3.joinRole == 1) && getMainSigChannel().joinRole == 1) {
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

    private void mergeAgoraDataAndChannelData(SignallingChannel signallingChannel, Collection<ChannelUser> collection) {
        ChannelUser channelUser;
        ChannelUser channelUser2;
        if (signallingChannel != null) {
            if (getMainSigChannel() == null || Utils.isEqualsNotNull(getMainSigChannel().threadId, signallingChannel.threadId)) {
                if (getMainSigChannel() == null && collection != null && collection.size() >= 1) {
                    Iterator<ChannelUser> it = collection.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        ChannelUser next = it.next();
                        if (Utils.isEqualsNotNull(this.accountService.getUserId(), next.uid()) && SignallingChannel.isLegalRole(next.joinRole)) {
                            SignallingChannel mappedSignallingChannel = getMappedSignallingChannel(signallingChannel.threadId);
                            if (mappedSignallingChannel != null) {
                                mappedSignallingChannel.joinRole = next.joinRole;
                                logVVChatStatusChange(mappedSignallingChannel);
                                this.mainSignalChannel = mappedSignallingChannel;
                            }
                        }
                    }
                }
                if (getMainSigChannel() == null) {
                    return;
                }
                SparseArray<UserStatusData> userDataList = this.rtcManager.getUserDataList();
                HashSet hashSet = new HashSet();
                Iterator<ChannelUser> it2 = collection.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    ChannelUser next2 = it2.next();
                    if (next2 != null) {
                        ChannelUserWrapper channelUserWrapper = this.mainChannelUserWrapperList.get(next2.channelUid);
                        if (channelUserWrapper == null) {
                            channelUserWrapper = new ChannelUserWrapper(next2, next2.channelUid, null);
                        }
                        channelUserWrapper.channelUser = next2;
                        this.mainChannelUserWrapperList.put(next2.channelUid, channelUserWrapper);
                        UserStatusData userStatusData = userDataList.get(next2.channelUid);
                        if (isMainChannelVideoType()) {
                            if (userStatusData != null && (userStatusData.videoFrameStatus == 2 || signallingChannel.channelType == 5)) {
                                channelUserWrapper.status = 1;
                            } else {
                                channelUserWrapper.status = 0;
                            }
                        } else if (userStatusData != null) {
                            channelUserWrapper.status = 1;
                        } else {
                            channelUserWrapper.status = 0;
                        }
                        channelUserWrapper.userStatus = userStatusData;
                        hashSet.add(Integer.valueOf(next2.channelUid));
                    }
                }
                HashSet hashSet2 = new HashSet();
                for (int i = 0; i < this.mainChannelUserWrapperList.size(); i++) {
                    int iKeyAt = this.mainChannelUserWrapperList.keyAt(i);
                    if (!hashSet.contains(Integer.valueOf(iKeyAt))) {
                        hashSet2.add(Integer.valueOf(iKeyAt));
                    }
                }
                Iterator it3 = hashSet2.iterator();
                while (it3.hasNext()) {
                    this.mainChannelUserWrapperList.remove(((Integer) it3.next()).intValue());
                }
                if (userDataList != null) {
                    int i2 = isVideoSignificantChannelType(signallingChannel.channelType) ? 2 : 1;
                    for (int i3 = 0; i3 < userDataList.size(); i3++) {
                        int iKeyAt2 = userDataList.keyAt(i3);
                        ChannelUserWrapper channelUserWrapper2 = this.mainChannelUserWrapperList.get(iKeyAt2);
                        boolean zContains = this.unbridledAgoraUsers.contains(Integer.valueOf(iKeyAt2));
                        boolean z = (channelUserWrapper2 == null || (channelUser2 = channelUserWrapper2.channelUser) == null || !this.localMuteUserList.contains(channelUser2.uid())) ? false : true;
                        if (channelUserWrapper2 == null || (channelUser = channelUserWrapper2.channelUser) == null || channelUser.joinRole != 1) {
                            this.unbridledAgoraUsers.add(Integer.valueOf(iKeyAt2));
                            this.rtcManager.muteRemoteUer(i2, iKeyAt2, true);
                        } else if (channelUser != null) {
                            if (z) {
                                this.rtcManager.muteRemoteUer(i2, iKeyAt2, true);
                            } else if (zContains) {
                                this.unbridledAgoraUsers.remove(Integer.valueOf(iKeyAt2));
                                this.rtcManager.muteRemoteUer(i2, iKeyAt2, false);
                            }
                        }
                    }
                }
            }
        }
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
            for (int i = 0; i < sparseArray.size(); i++) {
                ChannelUserWrapper channelUserWrapperValueAt = sparseArray.valueAt(i);
                if (channelUserWrapperValueAt != null && (channelUser = channelUserWrapperValueAt.channelUser) != null && SignallingChannel.isNotGuestRole(channelUser.joinRole)) {
                    sparseArray2.put(sparseArray.keyAt(i), sparseArray.valueAt(i));
                }
            }
        }
        return sparseArray2;
    }

    public void setIsInMiniStatus(boolean z) {
        this.curChannelMiniInfo.putBoolean(IS_IN_MINI_STATUS, z);
    }

    public boolean isInMiniStatus() {
        return this.curChannelMiniInfo.getBoolean(IS_IN_MINI_STATUS, false);
    }

    public void setIsAllMuted(final boolean z) {
        if (z != isAllMuted()) {
            this.muteStatusDispatcher.dispatch(new Callback<MiniContentMuteStatusChangeListener>() { // from class: com.narvii.chat.rtc.RtcService.29
                @Override // com.narvii.util.Callback
                public void call(MiniContentMuteStatusChangeListener miniContentMuteStatusChangeListener) {
                    miniContentMuteStatusChangeListener.onMuteStatusChanged(z);
                }
            });
        }
        this.curChannelMiniInfo.putBoolean(IS_MINI_ALL_MUTE, z);
    }

    public boolean isAllMuted() {
        return this.curChannelMiniInfo.getBoolean(IS_MINI_ALL_MUTE, false);
    }
}
