package com.narvii.chat.video.fragments;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.content.LocalBroadcastManager;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVActivity;
import com.narvii.app.NVFragment;
import com.narvii.chat.ChatCameraPreviewDialog;
import com.narvii.chat.ChatFragment;
import com.narvii.chat.ThreadInfoHost;
import com.narvii.chat.call.CallScreenService;
import com.narvii.chat.input.ChatThreadCheckFragment;
import com.narvii.chat.rtc.ChannelUserWrapper;
import com.narvii.chat.rtc.RtcService;
import com.narvii.chat.screenroom.playlist.PlaylistFragment;
import com.narvii.chat.setting.helper.ChatWaitingListServiceKt;
import com.narvii.chat.signalling.ChannelUser;
import com.narvii.chat.signalling.ProcessKillMonitorService;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.chat.util.ChatRequestHelper;
import com.narvii.chat.video.ChatLogEventHelper;
import com.narvii.chat.video.ILiveChannelCollapseChangeListener;
import com.narvii.chat.video.VVChatEntryHelper;
import com.narvii.chat.video.events.ChannelUserWrapperUpdateListener;
import com.narvii.chat.video.events.LiveChannelChangeListener;
import com.narvii.chat.video.events.LiveChannelErrorListener;
import com.narvii.chat.video.events.MyChannelUserStatusChangeListener;
import com.narvii.chat.video.events.MyNetworkStatusChangeListener;
import com.narvii.chat.video.utils.VVChatHelper;
import com.narvii.chat.video.utils.VVChatLogHelper;
import com.narvii.chat.video.view.LiveChannelEntryView;
import com.narvii.config.ConfigService;
import com.narvii.influencer.FanClub;
import com.narvii.logging.LogEvent;
import com.narvii.model.ChatThread;
import com.narvii.model.User;
import com.narvii.permisson.NVPermission;
import com.narvii.pushservice.PushPayload;
import com.narvii.pushservice.PushService;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.LiveLayerUtils;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import com.narvii.util.ws.WsError;
import com.narvii.video.model.ChannelActionCallback;
import com.narvii.video.model.ChannelActionResult;
import com.narvii.video.ui.floating.FloatingPermissionUtils;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.UserAvatarLayout;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* loaded from: classes2.dex */
public class VVChatMainFragment extends NVFragment implements View.OnClickListener, LiveChannelChangeListener, MyChannelUserStatusChangeListener, ChannelUserWrapperUpdateListener, MyNetworkStatusChangeListener, LiveChannelEntryView.ChannelEntryClickListener, LiveChannelEntryView.EntryViewVisibilityChangeListener, LiveChannelErrorListener, ThreadInfoHost, ILiveChannelCollapseChangeListener, ChatThreadCheckFragment.LiveChatCheckData {
    private static final String EVENT_SOURCE_NAVBAR = "Navbar";
    public static final String KEY_AUTO_JOIN_AS_PRESENTER = "auto_join_as_presenter";
    public static final String KEY_CHANNEL_TYPE = "channel_type";
    public static final String KEY_CHAT_THREAD = "thread";
    public static final String KEY_FORCE_DISALLOW_FLOATING_WINDOW = "forceDisableFloatingWindow";
    public static final String KEY_FROM_LIVE_EVENT = "fromLiveEvent";
    public static final String KEY_IS_CREATOR = "creator";
    public static final String KEY_IS_RELAUNCH = "relaunch";
    private static final String KEY_PAYLOAD_VVCHAT_DIALOG_SHOWN = "payload_vvchat_dialog_shown";
    public static final String KEY_PENDING_INTENT = "vvCallPendingIntent";
    public static final String KEY_SHOW_GO_LIVE = "showGoLive";
    private static final String TAG = VVChatMainFragment.class.getSimpleName();
    private static final String TAG_FRAGMENT_CONTENT = "live_content_fragment";
    private AccountService accountService;
    private View btnNetWorkStatusClose;
    private CallScreenService callScreenService;
    private int channelType;
    ChatRequestHelper chatRequestHelper;
    private ChatThread chatThread;
    private ConfigService configService;
    private SignallingChannel curChannel;
    private Bundle curChannelInfo;
    private FloatingPermissionUtils floatingPermissionUtils;
    AlertDialog inviteDialog;
    private boolean isCreator;
    private boolean isIntentLeave;
    private View liveChannelContainer;
    private ILiveChannelCollapseChangeListener liveChannelContentListener;
    private FrameLayout liveChannelContentView;
    private LiveChannelEntryView liveChannelEntryView;
    private LiveChannelFragment liveChannelFragment;
    private Bundle liveExtraBundle;
    private int ndcId;
    private boolean needJoinAsGuest;
    private boolean noNeedAutoJoin;
    private Intent pendingIntent;
    private int permissionTmpChannelType;
    private Bundle permissionTmpExtra;
    private boolean permissionTmpIsCreator;
    private AlertDialog presenterNotExistedDialog;
    private ACMAlertDialog privateCallLimitDialog;
    private boolean promoteAsAudienceRequestSent;
    private PushService pushService;
    private RtcService rtcService;
    private Boolean statExpanded;
    private String threadId;
    private TextView tvNetworkStatus;
    private View vLandingContainer;
    private View vNetworkContainer;
    private VVChatHelper vvChatHelper;
    private VVChatLogHelper vvChatLogHelper;
    private boolean isAutoJoinChannel = true;
    private boolean backFromPermission = false;
    private boolean isCurChannelFinishing = false;
    private boolean threadFullInfoFetched = false;
    private boolean threadFullInfoRequestSent = false;
    private boolean payloadInViteDialogShown = false;
    BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.chat.video.fragments.VVChatMainFragment.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (RtcService.ACTION_LIVE_CHANNEL_QUIT.equals(intent.getAction())) {
                if (!Utils.isEqualsNotNull(intent.getStringExtra("threadId"), VVChatMainFragment.this.threadId) || !VVChatMainFragment.this.isAdded() || VVChatMainFragment.this.isDestoryed() || VVChatMainFragment.this.isFinishing() || VVChatMainFragment.this.isResumed()) {
                    return;
                }
                VVChatMainFragment.this.removeLiveContentFragment();
                if (VVChatMainFragment.this.getActivity() == null || !Utils.isLandscape(VVChatMainFragment.this.getContext())) {
                    return;
                }
                VVChatMainFragment.this.getActivity().setRequestedOrientation(1);
                return;
            }
            if (RtcService.ACTION_CHAT_ACTIVITY_FORCE_FINISH.equals(intent.getAction()) && Utils.isEqualsNotNull(intent.getStringExtra("threadId"), VVChatMainFragment.this.threadId) && (VVChatMainFragment.this.getActivity() instanceof NVActivity) && !((NVActivity) VVChatMainFragment.this.getActivity()).isActivityResumed()) {
                VVChatMainFragment.this.getActivity().finish();
            }
        }
    };
    Callback finishLiveChannelCallback = new Callback() { // from class: com.narvii.chat.video.fragments.VVChatMainFragment.12
        @Override // com.narvii.util.Callback
        public void call(Object obj) {
            VVChatMainFragment.this.removeLiveContentFragment();
        }
    };
    Runnable showFloatingRunnable = new Runnable() { // from class: com.narvii.chat.video.fragments.VVChatMainFragment.18
        @Override // java.lang.Runnable
        public void run() {
            if (VVChatMainFragment.this.floatingPermissionUtils.canDrawOverlays()) {
                if (VVChatMainFragment.this.isVoiceType()) {
                    VVChatMainFragment.this.rtcService.showAudiFloatingWindow();
                } else if (VVChatMainFragment.this.isVideoType()) {
                    VVChatMainFragment.this.rtcService.showVideoFloatingWindow();
                } else if (VVChatMainFragment.this.isScreenRoomType()) {
                    VVChatMainFragment.this.rtcService.showSRFloatingWindow();
                }
            }
        }
    };
    private final PushService.PushListener pushListener = new PushService.PushListener() { // from class: com.narvii.chat.video.fragments.VVChatMainFragment.20
        @Override // com.narvii.pushservice.PushService.PushListener
        public void onPushPayload(PushPayload pushPayload) {
            if (pushPayload.type == 66) {
                VVChatMainFragment.this.showVvChatInviteDialog(pushPayload);
            }
        }

        @Override // com.narvii.pushservice.PushService.PushListener
        public boolean onInterceptNotification(PushPayload pushPayload) {
            return VVChatMainFragment.this.isActive() && Utils.isEqualsNotNull(pushPayload.threadId, VVChatMainFragment.this.getThreadId()) && pushPayload.type == 66;
        }
    };

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public boolean isValidPage() {
        return false;
    }

    @Override // com.narvii.chat.video.view.LiveChannelEntryView.EntryViewVisibilityChangeListener
    public void onEntryViewVisibilityChanged(int i) {
    }

    @Override // com.narvii.chat.ThreadInfoHost
    public void onThreadChanged(ChatThread chatThread) {
        this.chatThread = chatThread;
        updateLiveChannelViews(this.curChannel);
        LiveChannelFragment liveChannelFragment = this.liveChannelFragment;
        if (liveChannelFragment != null) {
            liveChannelFragment.onThreadChanged(chatThread);
        }
    }

    @Override // com.narvii.chat.video.ILiveChannelCollapseChangeListener
    public void onLiveContentStatusChanged(int i) {
        ILiveChannelCollapseChangeListener iLiveChannelCollapseChangeListener = this.liveChannelContentListener;
        if (iLiveChannelCollapseChangeListener != null) {
            iLiveChannelCollapseChangeListener.onLiveContentStatusChanged(i);
        }
    }

    public void setContentVisibilityChangeListener(ILiveChannelCollapseChangeListener iLiveChannelCollapseChangeListener) {
        this.liveChannelContentListener = iLiveChannelCollapseChangeListener;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.rtcService = (RtcService) getService("rtc");
        this.accountService = (AccountService) getService("account");
        this.configService = (ConfigService) getService("config");
        this.callScreenService = (CallScreenService) getService("callScreen");
        this.pushService = (PushService) getService("push");
        this.pushService.addPushListener(this.pushListener);
        this.vvChatHelper = new VVChatHelper(this);
        this.vvChatLogHelper = new VVChatLogHelper(this);
        this.floatingPermissionUtils = new FloatingPermissionUtils(getContext());
        this.ndcId = this.configService.getCommunityId();
        this.pendingIntent = (Intent) getActivity().getIntent().getParcelableExtra(KEY_PENDING_INTENT);
        this.chatRequestHelper = new ChatRequestHelper(this);
        if (!isEmbedFragment()) {
            registerLocalReceiver(this.receiver, new IntentFilter(RtcService.ACTION_LIVE_CHANNEL_QUIT));
            registerLocalReceiver(this.receiver, new IntentFilter(RtcService.ACTION_CHAT_ACTIVITY_FORCE_FINISH));
        }
        if (bundle != null) {
            this.threadId = bundle.getString("id");
            this.channelType = bundle.getInt("channel_type");
            this.isCreator = bundle.getBoolean(KEY_IS_CREATOR);
            this.payloadInViteDialogShown = bundle.getBoolean(KEY_PAYLOAD_VVCHAT_DIALOG_SHOWN, false);
        } else {
            this.threadId = getStringParam("id");
            this.channelType = getIntParam("channel_type");
            this.isCreator = getBooleanParam(KEY_IS_CREATOR);
        }
        this.chatThread = (ChatThread) JacksonUtils.readAs(getStringParam("thread"), ChatThread.class);
        this.curChannelInfo = getArguments();
        if (this.curChannelInfo == null) {
            this.curChannelInfo = new Bundle();
        }
        Fragment fragmentFindFragmentByTag = getChildFragmentManager().findFragmentByTag(TAG_FRAGMENT_CONTENT);
        if (fragmentFindFragmentByTag instanceof LiveChannelFragment) {
            this.liveChannelFragment = (LiveChannelFragment) fragmentFindFragmentByTag;
            this.liveChannelFragment.setCollapseChangeListener(this);
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("id", this.threadId);
        bundle.putInt("channel_type", this.channelType);
        bundle.putBoolean(KEY_IS_CREATOR, this.isCreator);
        bundle.putBoolean(KEY_PAYLOAD_VVCHAT_DIALOG_SHOWN, this.payloadInViteDialogShown);
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_vvchat_main, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.vNetworkContainer = view.findViewById(R.id.network_status_container);
        this.tvNetworkStatus = (TextView) view.findViewById(R.id.network_status);
        this.btnNetWorkStatusClose = view.findViewById(R.id.network_close);
        this.btnNetWorkStatusClose.setOnClickListener(this);
        this.vLandingContainer = view.findViewById(R.id.rtc_landing);
        this.liveChannelContainer = view.findViewById(R.id.sub_channel_frame);
        this.liveChannelEntryView = (LiveChannelEntryView) view.findViewById(R.id.vv_entry);
        this.liveChannelEntryView.setChannelEntryClickListener(this);
        this.liveChannelEntryView.setEntryViewVisibilityChangeListener(this);
        this.liveChannelContentView = (FrameLayout) view.findViewById(R.id.vv_content);
        this.curChannel = this.rtcService.getMappedSignallingChannel(this.threadId);
        if (this.rtcService.getMainSigChannel() != null && Utils.isEqualsNotNull(this.rtcService.getMainSigChannel().threadId, getThreadId())) {
            this.channelType = this.rtcService.getMainChannelType();
            this.isCreator = this.rtcService.isCreator();
            updateLiveChannelViews(this.curChannel);
            configLiveChannelFrame();
        } else if (isAutoJoinAsPresenter()) {
            NVPermission.builder(this).permissions(SignallingChannel.isCameraPermissionRequestTypeForHost(5) ? new String[]{"android.permission.RECORD_AUDIO", "android.permission.CAMERA"} : new String[]{"android.permission.RECORD_AUDIO"}).permissionListener(this).requestCode(306).request();
        } else if (getBooleanParam(KEY_FROM_LIVE_EVENT)) {
            if (needBlockLiveChannelRequest()) {
                return;
            }
            if (getThread() == null) {
                this.needJoinAsGuest = true;
            } else if (!getThread().needHidden) {
                this.liveChannelEntryView.hideAll();
                configLiveChannelFrame();
                this.rtcService.joinLiveChannel(this.ndcId, this.threadId, this.channelType, 2);
            }
        } else if (getBooleanParam(KEY_SHOW_GO_LIVE)) {
            this.liveChannelEntryView.showGoLive();
        } else {
            this.needJoinAsGuest = true;
        }
        updateLiveChannelViews(this.curChannel);
        if (this.payloadInViteDialogShown) {
            return;
        }
        this.payloadInViteDialogShown = true;
        PushPayload pushPayload = (PushPayload) JacksonUtils.readAs(getStringParam(ApiRequest.MULTIPART_NAME_PAYLOAD), PushPayload.class);
        if (pushPayload != null) {
            showVvChatInviteDialog(pushPayload);
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onResume() {
        View view;
        super.onResume();
        boolean z = false;
        this.noNeedAutoJoin = false;
        addLiveChannelRelatedListener(getThreadId());
        if (this.pendingIntent != null) {
            if (getBooleanParam(KEY_IS_RELAUNCH) && isAdded()) {
                Fragment parentFragment = getParentFragment();
                if (parentFragment instanceof ChatFragment) {
                    ((ChatFragment) parentFragment).setAllowFloatingWindow(!getBooleanParam(KEY_FORCE_DISALLOW_FLOATING_WINDOW));
                }
                long jTimestamp = System.currentTimeMillis() < ApiService.timestamp() ? ApiService.timestamp() : System.currentTimeMillis();
                long longExtra = this.pendingIntent.getLongExtra("expireTime", 0L);
                if (longExtra == 0 || longExtra * 1000 >= jTimestamp) {
                    try {
                        startActivity(this.pendingIntent);
                    } catch (Exception unused) {
                    }
                }
            }
            this.pendingIntent = null;
        }
        if (this.needJoinAsGuest && !TextUtils.isEmpty(getThreadId()) && !this.vvChatHelper.isCurrentChannelLive(this.rtcService.getMappedSignallingChannel(getThreadId())) && !this.backFromPermission) {
            removeLiveContentFragment();
            joinCurChannelAsGuest();
        }
        SignallingChannel mappedSignallingChannel = this.rtcService.getMappedSignallingChannel(getThreadId());
        if (mappedSignallingChannel != null && SignallingChannel.isLegalChannelType(mappedSignallingChannel.channelType) && SignallingChannel.isLegalRole(mappedSignallingChannel.joinRole)) {
            z = true;
        }
        if (z && (view = this.vLandingContainer) != null) {
            this.curChannel = mappedSignallingChannel;
            view.setVisibility(8);
        }
        if (z && this.liveChannelFragment == null) {
            updateLiveChannelViews(mappedSignallingChannel);
            this.channelType = mappedSignallingChannel.channelType;
            this.threadId = mappedSignallingChannel.threadId;
            this.isCreator = this.rtcService.isCreator();
            configLiveChannelFrame();
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onPause() {
        super.onPause();
        removeChannelRelatedListener(getThreadId());
        this.backFromPermission = false;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        if (!isEmbedFragment()) {
            unregisterLocalReceiver(this.receiver);
        }
        this.pushService.addPushListener(this.pushListener);
        super.onDestroy();
        this.rtcService.leaveChannelAsGuest(this.ndcId, this.threadId);
    }

    private boolean isAutoJoinChannel() {
        return this.isAutoJoinChannel && !isEmbedFragment() && this.vvChatHelper.isEligibleForVVChat();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setThread(ChatThread chatThread) {
        if (isAdded()) {
            this.chatThread = chatThread;
            saveCurChannelInfo();
        }
    }

    @Override // com.narvii.chat.ThreadInfoHost
    public ChatThread getThread() {
        return this.chatThread;
    }

    @Override // com.narvii.chat.input.ChatThreadCheckFragment.LiveChatCheckData
    public SignallingChannel getSignallingChannel() {
        return this.curChannel;
    }

    @Override // com.narvii.chat.ThreadInfoHost
    public String getThreadId() {
        return this.threadId;
    }

    private boolean hasMemberOnChannel() {
        SignallingChannel mappedSignallingChannel = this.curChannel;
        if (mappedSignallingChannel == null) {
            mappedSignallingChannel = this.rtcService.getMappedSignallingChannel(this.threadId);
        }
        return mappedSignallingChannel != null && mappedSignallingChannel.userList.size() > 0;
    }

    public void initLiveChannel(int i, boolean z, Bundle bundle) {
        initLiveChannel(i, z, bundle, 109);
    }

    public void initLiveChannel(int i, boolean z, Bundle bundle, int i2) {
        this.permissionTmpChannelType = i;
        this.permissionTmpIsCreator = z;
        this.permissionTmpExtra = bundle;
        NVPermission.builder(this).permissions(SignallingChannel.isCameraPermissionRequestTypeForHost(i) ? new String[]{"android.permission.RECORD_AUDIO", "android.permission.CAMERA"} : new String[]{"android.permission.RECORD_AUDIO"}).permissionListener(this).requestCode(i2).request();
    }

    @Override // com.narvii.app.NVFragment, com.narvii.permisson.PermissionListener
    public void onPermissionGranted(int i) throws Resources.NotFoundException {
        super.onPermissionGranted(i);
        this.backFromPermission = true;
        if (i == 109) {
            this.channelType = this.permissionTmpChannelType;
            this.isCreator = this.permissionTmpIsCreator;
            this.liveExtraBundle = this.permissionTmpExtra;
            if (joinLiveChannel()) {
                configLiveChannelFrame();
                this.liveChannelEntryView.hideAll();
                return;
            }
            return;
        }
        if (i == 306) {
            if (joinLiveChannel()) {
                this.liveChannelEntryView.hideAll();
                configLiveChannelFrame();
                return;
            }
            return;
        }
        if (i == 308) {
            ChatCameraPreviewDialog chatCameraPreviewDialog = new ChatCameraPreviewDialog(this);
            chatCameraPreviewDialog.setPreviewFinishCallback(new Function2() { // from class: com.narvii.chat.video.fragments.-$$Lambda$VVChatMainFragment$5jIdzrTqcG5uJ05PCxmHGXGw7zU
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return this.f$0.lambda$onPermissionGranted$0$VVChatMainFragment((Boolean) obj, (Boolean) obj2);
                }
            });
            chatCameraPreviewDialog.show();
        }
    }

    public /* synthetic */ Unit lambda$onPermissionGranted$0$VVChatMainFragment(Boolean bool, Boolean bool2) {
        this.channelType = this.permissionTmpChannelType;
        this.isCreator = this.permissionTmpIsCreator;
        Bundle bundle = this.permissionTmpExtra;
        if (bundle == null) {
            bundle = new Bundle();
        }
        bundle.putBoolean("cameraMute", bool.booleanValue());
        bundle.putBoolean("cameraFlip", bool2.booleanValue());
        this.liveExtraBundle = bundle;
        this.liveChannelEntryView.launchChannel(this.channelType, this.isCreator, bundle);
        return null;
    }

    private void updateLiveChannelViews(SignallingChannel signallingChannel) {
        if (isAdded()) {
            ChatThread chatThread = this.chatThread;
            boolean z = chatThread != null && chatThread.membershipStatus == 1;
            this.liveChannelEntryView.setEmbedFragment(isEmbedFragment());
            this.liveChannelEntryView.updateLiveChannelEntryView(signallingChannel, getThread(), isAutoJoinChannel(), z, this.isCreator);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.close) {
            leaveCurrentLiveChannelWithConfirm(EVENT_SOURCE_NAVBAR);
        } else {
            if (id != R.id.network_close) {
                return;
            }
            changeNetworkStatusVisibility(false);
        }
    }

    private boolean isAutoJoinAsPresenter() {
        return getBooleanParam(KEY_AUTO_JOIN_AS_PRESENTER);
    }

    public void setNoNeedAutoJoin(boolean z) {
        this.noNeedAutoJoin = z;
    }

    @Override // com.narvii.chat.video.events.LiveChannelChangeListener
    public void onChannelStatusChanged(SignallingChannel signallingChannel) {
        if (isAdded() && signallingChannel != null && SignallingChannel.isLegalChannelType(signallingChannel.channelType)) {
            this.curChannel = signallingChannel;
            this.vLandingContainer.setVisibility(8);
            if (this.rtcService.getMainSigChannel() != null && Utils.isEqualsNotNull(this.rtcService.getMainSigChannel().threadId, this.threadId)) {
                configLiveChannelFrame();
            }
            promoteAsAudienceInCurrentChannel(signallingChannel);
        }
    }

    private void promoteAsAudienceInCurrentChannel(SignallingChannel signallingChannel) {
        if (isFinishing() || !SignallingChannel.isLegalChannelType(signallingChannel.channelType) || this.vvChatHelper.channelContainMe(signallingChannel) || this.isCreator || this.promoteAsAudienceRequestSent) {
            return;
        }
        this.channelType = signallingChannel.channelType;
        if (isAutoJoinChannel() && !isAutoJoinAsPresenter() && !this.noNeedAutoJoin && !this.isCurChannelFinishing) {
            tryToAutoJoinCurrentChannel();
        } else {
            updateLiveChannelViews(signallingChannel);
        }
    }

    private void tryToAutoJoinCurrentChannel() {
        this.promoteAsAudienceRequestSent = true;
        if (hasAnotherOngoingChannel()) {
            VVChatHelper vVChatHelper = this.vvChatHelper;
            SignallingChannel signallingChannel = this.curChannel;
            vVChatHelper.showChannelComeLiveDialog(signallingChannel != null ? signallingChannel.channelType : 1, new Callback<Boolean>() { // from class: com.narvii.chat.video.fragments.VVChatMainFragment.2
                @Override // com.narvii.util.Callback
                public void call(Boolean bool) {
                    SignallingChannel mainSigChannel = VVChatMainFragment.this.rtcService.getMainSigChannel();
                    VVChatMainFragment.this.forceFinishSameThreadActivity();
                    if (mainSigChannel == null) {
                        VVChatMainFragment.this.rtcService.cleaningAttachedWindows();
                        VVChatMainFragment.this.rtcService.updateJoinRoleWithJoinAgora(VVChatMainFragment.this.ndcId, VVChatMainFragment.this.threadId, 2);
                    } else {
                        VVChatMainFragment.this.rtcService.exitLiveChannel(mainSigChannel.ndcId, mainSigChannel.threadId, new ChannelActionCallback<ChannelActionResult>() { // from class: com.narvii.chat.video.fragments.VVChatMainFragment.2.1
                            @Override // com.narvii.video.model.ChannelActionCallback
                            public void call(ChannelActionResult channelActionResult) {
                                if (channelActionResult == null || !channelActionResult.isSuccess) {
                                    return;
                                }
                                VVChatMainFragment.this.rtcService.cleaningAttachedWindows();
                                VVChatMainFragment.this.rtcService.updateJoinRoleWithJoinAgora(VVChatMainFragment.this.ndcId, VVChatMainFragment.this.threadId, 2);
                            }
                        });
                    }
                }
            }, new Callback<Boolean>() { // from class: com.narvii.chat.video.fragments.VVChatMainFragment.3
                @Override // com.narvii.util.Callback
                public void call(Boolean bool) {
                    VVChatMainFragment.this.closeCurrentChatRoom();
                    if (VVChatMainFragment.this.getActivity() != null) {
                        VVChatMainFragment.this.getActivity().finish();
                    }
                }
            });
            return;
        }
        this.rtcService.updateJoinRoleWithJoinAgora(this.ndcId, this.threadId, 2);
    }

    @Override // com.narvii.chat.video.events.LiveChannelChangeListener
    public void onChannelForceQuit(SignallingChannel signallingChannel, int i) {
        if (isAdded() && isActive()) {
            this.curChannel = signallingChannel;
            if (getActivity() != null && Utils.isLandscape(getContext())) {
                getActivity().setRequestedOrientation(1);
            }
            leaveCurrentLiveChannel(null, false);
            joinCurChannelAsGuest();
            updateLiveChannelViews(signallingChannel);
            if (isAutoJoinChannel()) {
                if (SignallingChannel.isLegalRole(signallingChannel.joinRole)) {
                    if (this.isIntentLeave) {
                        removeLiveContentFragment();
                    } else if (i == 99) {
                        showPrivateCallLimitDialog();
                    } else if (!isPrivateCallLauncher() || !this.callScreenService.isEnding()) {
                        this.vvChatHelper.showPresenterNotExistedToast(this.channelType);
                        removeLiveContentFragment();
                    } else {
                        removeLiveContentFragment();
                    }
                }
                if (getBooleanParam(KEY_FROM_LIVE_EVENT)) {
                    this.vvChatHelper.showPresenterNotExistedToast(this.channelType);
                    removeLiveContentFragment();
                }
            }
        }
    }

    @Override // com.narvii.chat.video.events.ChannelUserWrapperUpdateListener
    public void onUserWrapperStatusChanged(SignallingChannel signallingChannel, ChannelUserWrapper channelUserWrapper) {
        if (isAdded() && isActive() && isAutoJoinChannel()) {
            this.curChannel = signallingChannel;
            if (channelUserWrapper.status == 0) {
                this.vLandingContainer.setVisibility(8);
            }
        }
    }

    @Override // com.narvii.chat.video.events.MyChannelUserStatusChangeListener
    public void onMyChannelUserStatusChanged(int i, SignallingChannel signallingChannel, ChannelUser channelUser) {
        if (isAdded() && isActive()) {
            this.curChannel = signallingChannel;
            if (i == 1) {
                configLiveChannelParams();
                return;
            }
            if (i != 3) {
                if (i == 2) {
                    this.promoteAsAudienceRequestSent = false;
                    updateLiveChannelViews(this.curChannel);
                    joinCurChannelAsGuest();
                    return;
                }
                return;
            }
            if (channelUser != null && SignallingChannel.isLegalRole(channelUser.joinRole)) {
                saveCurChannelInfo();
            }
            if (isAutoJoinChannel()) {
                if (!this.isCreator && this.rtcService.getMainSigChannel() != null && SignallingChannel.isLegalRole(channelUser.joinRole)) {
                    configLiveChannelFrame();
                }
                if (shouldReportActiveStatus(signallingChannel)) {
                    this.vvChatHelper.reportLiveLayerActiveEvent(signallingChannel, this.threadId, this.chatThread.type);
                }
                if (isPrivateCallLauncher()) {
                    if ((this.callScreenService.getThreadId() == null || Utils.isEqualsNotNull(this.callScreenService.getThreadId(), getThreadId())) && !this.rtcService.isPrivateMainChannelFullBefore() && channelUser != null && channelUser.joinRole == 1) {
                        this.callScreenService.updateStatus(1, this.ndcId, getThreadId());
                    }
                }
            }
        }
    }

    @Override // com.narvii.chat.video.events.LiveChannelChangeListener
    public void onChannelUserListChanged(SignallingChannel signallingChannel, Collection<? extends ChannelUser> collection, Collection<? extends ChannelUser> collection2, SparseArray<ChannelUserWrapper> sparseArray) {
        updateLiveChannelViews(signallingChannel);
        if (currentChannelContainMe(signallingChannel, collection)) {
            return;
        }
        promoteAsAudienceInCurrentChannel(signallingChannel);
    }

    private boolean currentChannelContainMe(SignallingChannel signallingChannel, Collection<? extends ChannelUser> collection) {
        if (collection == null || collection.size() == 0 || signallingChannel == null) {
            return false;
        }
        Iterator<? extends ChannelUser> it = collection.iterator();
        while (it.hasNext()) {
            if (it.next().channelUid == signallingChannel.channelUid) {
                return true;
            }
        }
        return false;
    }

    public boolean onCloseClicked() {
        return leaveCurrentLiveChannelWithConfirm(EVENT_SOURCE_NAVBAR, new Callback<Boolean>() { // from class: com.narvii.chat.video.fragments.VVChatMainFragment.4
            @Override // com.narvii.util.Callback
            public void call(Boolean bool) {
                VVChatMainFragment.this.closeCurrentChatRoom();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeCurrentChatRoom() {
        forceFinishSameThreadActivity();
        leaveCurrentLiveChannel(EVENT_SOURCE_NAVBAR, true, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void forceFinishSameThreadActivity() {
        SignallingChannel mainSigChannel = this.rtcService.getMainSigChannel();
        if (mainSigChannel == null || !Utils.isEqualsNotNull(getThreadId(), mainSigChannel.threadId)) {
            return;
        }
        LocalBroadcastManager localBroadcastManager = LocalBroadcastManager.getInstance(getContext());
        Intent intent = new Intent(RtcService.ACTION_CHAT_ACTIVITY_FORCE_FINISH);
        intent.putExtra("threadId", mainSigChannel.threadId);
        localBroadcastManager.sendBroadcast(intent);
    }

    public boolean joinLiveChannel() {
        Log.e("HEEEEEEY SEXY BABY", "TRYING TO JOIN IN SHIT");
        if (!this.accountService.hasAccount()) {
            ensureLogin(new Intent("joinVVChat"));
            return false;
        }
        int i = (this.isCreator || isAutoJoinChannel()) ? 1 : 2;
        if (this.rtcService.isAlreadyJoinedCurChannel(this.threadId, i)) {
            return false;
        }
        if (!this.vvChatHelper.isEligibleForVVChat()) {
            this.vvChatHelper.showNotEligibleForVVChatDialog(null);
            return false;
        }
        if (hasAnotherOngoingChannel()) {
            this.vvChatHelper.showSwitchChannelDialog(new Callback<Boolean>() { // from class: com.narvii.chat.video.fragments.VVChatMainFragment.5
                @Override // com.narvii.util.Callback
                public void call(Boolean bool) {
                    SignallingChannel mainSigChannel = VVChatMainFragment.this.rtcService.getMainSigChannel();
                    VVChatMainFragment.this.forceFinishSameThreadActivity();
                    if (mainSigChannel == null) {
                        VVChatMainFragment.this.joinLiveChannel();
                        return;
                    }
                    final int i2 = mainSigChannel.channelType;
                    final ChatThread mainChannelChatThread = VVChatMainFragment.this.rtcService.getMainChannelChatThread();
                    VVChatMainFragment.this.rtcService.exitLiveChannel(mainSigChannel.ndcId, mainSigChannel.threadId, new ChannelActionCallback<ChannelActionResult>() { // from class: com.narvii.chat.video.fragments.VVChatMainFragment.5.1
                        @Override // com.narvii.video.model.ChannelActionCallback
                        public void call(ChannelActionResult channelActionResult) {
                            if (channelActionResult == null || !channelActionResult.isSuccess) {
                                return;
                            }
                            new ChatLogEventHelper(VVChatMainFragment.this).logQuitChat(i2, mainChannelChatThread);
                            VVChatMainFragment.this.rtcService.cleaningAttachedWindows();
                            VVChatMainFragment.this.joinLiveChannel();
                        }
                    });
                }
            }, new Callback<Boolean>() { // from class: com.narvii.chat.video.fragments.VVChatMainFragment.6
                @Override // com.narvii.util.Callback
                public void call(Boolean bool) {
                }
            });
            if (getParentFragment() instanceof ChatFragment) {
                ((ChatFragment) getParentFragment()).setAllowFloatingWindow(false);
            }
            return false;
        }
        if (!sendThreadDetailRequest(true)) {
            sendVVChatPermissionRequest();
        }
        this.vLandingContainer.setVisibility(0);
        this.rtcService.joinLiveChannel(this.ndcId, this.threadId, this.channelType, i);
        configLiveChannelParams();
        if (getActivity() != null) {
            getActivity().startService(new Intent(getActivity(), (Class<?>) ProcessKillMonitorService.class));
        }
        return true;
    }

    private boolean leaveCurrentLiveChannelWithConfirm(final String str) {
        return leaveCurrentLiveChannelWithConfirm(str, new Callback<Boolean>() { // from class: com.narvii.chat.video.fragments.VVChatMainFragment.7
            @Override // com.narvii.util.Callback
            public void call(Boolean bool) {
                VVChatMainFragment.this.leaveCurrentLiveChannel(str);
            }
        });
    }

    private boolean leaveCurrentLiveChannelWithConfirm(String str, final Callback<Boolean> callback) {
        this.isIntentLeave = true;
        if (this.rtcService.getMainSigChannel() == null || !Utils.isEqualsNotNull(this.rtcService.getMainSigChannel().threadId, getThreadId())) {
            this.rtcService.exitLiveChannel(this.ndcId, this.threadId);
            removeLiveContentFragment();
            return true;
        }
        if (this.vvChatHelper.needShowConfirmDialogWhenLeaveChannel(this.chatThread)) {
            this.vvChatHelper.showLeaveChannelConfirmDialog(getActivity(), true, new Callback<Boolean>() { // from class: com.narvii.chat.video.fragments.VVChatMainFragment.8
                @Override // com.narvii.util.Callback
                public void call(Boolean bool) {
                    Callback callback2 = callback;
                    if (callback2 != null) {
                        callback2.call(true);
                    }
                }
            });
            return false;
        }
        if (!this.rtcService.isPresenterInChannel()) {
            leaveCurrentLiveChannel(str);
            return true;
        }
        this.vvChatHelper.showLeaveChannelConfirmDialog(getActivity(), false, new Callback<Boolean>() { // from class: com.narvii.chat.video.fragments.VVChatMainFragment.9
            @Override // com.narvii.util.Callback
            public void call(Boolean bool) {
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(true);
                }
            }
        });
        return false;
    }

    public void leaveCurrentLiveChannel(String str) {
        leaveCurrentLiveChannel(str, true, false);
    }

    public void leaveCurrentLiveChannel(String str, boolean z) {
        leaveCurrentLiveChannel(str, z, false);
    }

    public void leaveCurrentLiveChannel(final String str, final boolean z, final boolean z2) {
        ChatThread chatThread;
        this.promoteAsAudienceRequestSent = false;
        CallScreenService callScreenService = this.callScreenService;
        if (callScreenService != null && callScreenService.getCurStatus() == 1) {
            this.callScreenService.updateStatus(3);
        }
        if (this.rtcService.isScreenRoomHost() && (chatThread = this.chatThread) != null && chatThread.type != 0) {
            final boolean zIsPresenterInChannel = this.rtcService.isPresenterInChannel();
            this.rtcService.exitLiveChannel(this.ndcId, this.threadId, new DialogInterface.OnDismissListener() { // from class: com.narvii.chat.video.fragments.VVChatMainFragment.10
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialogInterface) {
                    new ChatLogEventHelper(VVChatMainFragment.this).logQuitChat(VVChatMainFragment.this.channelType, VVChatMainFragment.this.chatThread);
                    if (z2) {
                        if (VVChatMainFragment.this.getActivity() != null) {
                            VVChatMainFragment.this.getActivity().finish();
                        }
                    } else if (z) {
                        VVChatMainFragment.this.removeLiveContentFragment();
                    }
                    if (zIsPresenterInChannel) {
                        VVChatMainFragment.this.vvChatLogHelper.logStopPresentingLiveChannel(VVChatMainFragment.this.channelType, str, VVChatMainFragment.this.chatThread);
                    }
                    VVChatMainFragment.this.vvChatLogHelper.logLeaveLiveChannel(VVChatMainFragment.this.channelType, str, VVChatMainFragment.this.chatThread);
                }
            });
            return;
        }
        new ChatLogEventHelper(this).logQuitChat(this.channelType, this.chatThread);
        boolean zIsPresenterInChannel2 = this.rtcService.isPresenterInChannel();
        this.rtcService.exitLiveChannel(this.ndcId, this.threadId);
        if (z2) {
            if (getActivity() != null) {
                getActivity().finish();
            }
        } else if (z) {
            removeLiveContentFragment();
        }
        if (zIsPresenterInChannel2) {
            this.vvChatLogHelper.logStopPresentingLiveChannel(this.channelType, str, this.chatThread);
        }
        this.vvChatLogHelper.logLeaveLiveChannel(this.channelType, str, this.chatThread);
    }

    private boolean sendThreadDetailRequest(final boolean z) {
        if (TextUtils.isEmpty(this.threadId) || this.threadFullInfoRequestSent) {
            return false;
        }
        this.threadFullInfoRequestSent = true;
        this.chatRequestHelper.sendThreadDetailRequest(this.threadId, new Callback<ChatThread>() { // from class: com.narvii.chat.video.fragments.VVChatMainFragment.11
            @Override // com.narvii.util.Callback
            public void call(ChatThread chatThread) {
                if (chatThread != null) {
                    VVChatMainFragment.this.threadFullInfoFetched = true;
                    VVChatMainFragment.this.setThread(chatThread);
                    if (chatThread.isFansOnly()) {
                        VVChatMainFragment.this.joinCurChannelAsGuest();
                    }
                } else {
                    VVChatMainFragment.this.threadFullInfoRequestSent = false;
                }
                if (z) {
                    VVChatMainFragment.this.sendVVChatPermissionRequest();
                }
            }
        });
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendVVChatPermissionRequest() {
        int i;
        Bundle bundle = this.liveExtraBundle;
        if (bundle == null || (i = bundle.getInt("vvChatJoinType")) <= 0) {
            return;
        }
        this.chatRequestHelper.sendVVChatPermissionRequest(getThreadId(), i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isPrivateCallLauncher() {
        return (this.isCreator || this.rtcService.isCreator()) && this.vvChatHelper.isPrivateCall(this.chatThread, this.channelType);
    }

    private void showPrivateCallLimitDialog() {
        ACMAlertDialog aCMAlertDialog = this.privateCallLimitDialog;
        if (aCMAlertDialog != null) {
            aCMAlertDialog.show();
        } else {
            this.privateCallLimitDialog = this.vvChatHelper.showPrivateCallLimitDialog(this.channelType, this.finishLiveChannelCallback);
        }
    }

    private void showPresenterNotExistedDialog() {
        AlertDialog alertDialog = this.presenterNotExistedDialog;
        if (alertDialog == null || !alertDialog.isShowing()) {
            this.presenterNotExistedDialog = this.vvChatHelper.showPresenterNotExistedDialog(this.channelType, this.rtcService.oldChannelType, this.finishLiveChannelCallback);
        }
    }

    private void configLiveChannelParams() {
        RtcService rtcService = this.rtcService;
        rtcService.channelShowingMode = 0;
        rtcService.setIsChannelCreator(this.isCreator);
        this.rtcService.setMainChannelChatThread(this.chatThread);
    }

    private boolean shouldReportActiveStatus(SignallingChannel signallingChannel) {
        return (signallingChannel == null || signallingChannel.joinRole == 0 || signallingChannel.threadId == null || getThread() == null || !LiveLayerUtils.isStatusOk(getThread())) ? false : true;
    }

    private boolean hasAnotherOngoingChannel() {
        SignallingChannel mainSigChannel = this.rtcService.getMainSigChannel();
        return (mainSigChannel == null || Utils.isEquals(mainSigChannel.threadId, this.threadId)) ? false : true;
    }

    private void changeNetworkStatusVisibility(boolean z) {
        View view = this.vNetworkContainer;
        if (view == null) {
            return;
        }
        view.setVisibility(z ? 0 : 8);
    }

    @Override // com.narvii.chat.video.events.MyNetworkStatusChangeListener
    public void onNetworkStatusUpdated(int i) {
        if (i != 2) {
            if (i == 1) {
                NVToast.makeText(getContext(), getString(R.string.rtc_network_bad), 0).show();
                return;
            } else {
                if (i == 3) {
                    NVToast.makeText(getContext(), getString(R.string.network_not_stable), 0).show();
                    return;
                }
                return;
            }
        }
        TextView textView = this.tvNetworkStatus;
        if (textView != null) {
            textView.setText(getString(R.string.rtc_network_broken));
        }
        View view = this.vNetworkContainer;
        if (view != null) {
            view.setVisibility(0);
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 102) {
            String str = Build.MANUFACTURER;
            if ("huawei".equals(str == null ? null : str.toLowerCase(Locale.US)) && Build.VERSION.SDK_INT > 23) {
                Utils.postDelayed(new Runnable() { // from class: com.narvii.chat.video.fragments.VVChatMainFragment.13
                    @Override // java.lang.Runnable
                    public void run() {
                        if (VVChatMainFragment.this.floatingPermissionUtils.canDrawOverlays()) {
                            VVChatMainFragment.this.finish();
                            VVChatMainFragment.this.showFloatingWindow();
                        }
                    }
                }, 300L);
            } else {
                finish();
                showFloatingWindow();
            }
        }
    }

    public void minimizeLiveChannelRoom(String str) {
        tryToShowMinWindow(str);
        this.vvChatLogHelper.logMinimizeLiveChannel(this.channelType, str, getThread());
    }

    public void removeLiveContentFragment() {
        if (this.liveChannelFragment == null || !isAdded()) {
            return;
        }
        this.isCreator = false;
        this.liveChannelFragment.onLiveContentForceRemoved();
        updateLiveChannelViews(this.curChannel);
        getChildFragmentManager().beginTransaction().remove(this.liveChannelFragment).commitAllowingStateLoss();
        this.liveChannelFragment = null;
        ILiveChannelCollapseChangeListener iLiveChannelCollapseChangeListener = this.liveChannelContentListener;
        if (iLiveChannelCollapseChangeListener != null) {
            iLiveChannelCollapseChangeListener.onLiveContentStatusChanged(0);
        }
    }

    private void addLiveChannelRelatedListener(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.rtcService.addLiveChannelChangeListener(str, this);
        this.rtcService.addMyChannelUserStatusChangeListener(str, this);
        this.rtcService.addChannelUserWrapperUpdateListener(str, this);
        this.rtcService.addMyNetWorkStatusChangeListener(str, this);
        this.rtcService.addLiveChannelErrorListener(str, this);
    }

    private void removeChannelRelatedListener(String str) {
        RtcService rtcService;
        if (TextUtils.isEmpty(str) || (rtcService = this.rtcService) == null) {
            return;
        }
        rtcService.removeLiveChannelChangeListener(str, this);
        this.rtcService.removeMyChannelUserStatusChangeListener(str, this);
        this.rtcService.removeChannelUserWrapperUpdateListener(str, this);
        this.rtcService.removeMyNetWorkStatusChangeListener(str, this);
        this.rtcService.removeLiveChannelErrorListener(str, this);
    }

    private void configLiveChannelFrame() {
        if (isAdded() && isAutoJoinChannel()) {
            FragmentManager childFragmentManager = getChildFragmentManager();
            Fragment fragmentFindFragmentByTag = childFragmentManager.findFragmentByTag(TAG_FRAGMENT_CONTENT);
            if ((fragmentFindFragmentByTag instanceof LiveChannelFragment) && ((LiveChannelFragment) fragmentFindFragmentByTag).isMappedLiveChannel(this.channelType)) {
                return;
            }
            if (fragmentFindFragmentByTag != null) {
                childFragmentManager.beginTransaction().remove(fragmentFindFragmentByTag).commitAllowingStateLoss();
                this.liveChannelFragment = null;
            }
            if (this.liveChannelFragment == null) {
                int i = this.channelType;
                if (i == 1) {
                    this.liveChannelFragment = new VoiceChatFragment();
                } else if (i == 3 || i == 4) {
                    this.liveChannelFragment = new VideoChatFragment();
                } else if (i == 5) {
                    this.liveChannelFragment = new ScreenRoomFragment();
                }
                this.vvChatLogHelper.logStartLiveChannel(this.channelType, this.isCreator, getStringParam("Source"), this.chatThread);
            }
            LiveChannelFragment liveChannelFragment = this.liveChannelFragment;
            if (liveChannelFragment == null) {
                com.narvii.util.Log.e(TAG, "no live channel fragment to handle channel type " + this.channelType);
                return;
            }
            liveChannelFragment.setCollapseChangeListener(this);
            Bundle arguments = getArguments();
            if (arguments == null) {
                arguments = new Bundle();
            }
            arguments.putBoolean(KEY_IS_CREATOR, this.isCreator);
            arguments.putInt("channel_type", this.channelType);
            Bundle bundle = this.liveExtraBundle;
            if (bundle != null) {
                arguments.putAll(bundle);
            }
            this.liveChannelFragment.setArguments(arguments);
            FragmentTransaction fragmentTransactionBeginTransaction = childFragmentManager.beginTransaction();
            if (this.channelType != 5 && !getBooleanParam(KEY_FROM_LIVE_EVENT)) {
                fragmentTransactionBeginTransaction.setCustomAnimations(R.anim.slide_in_top_fast, R.anim.fade_out_fast);
            }
            fragmentTransactionBeginTransaction.add(R.id.sub_channel_frame, this.liveChannelFragment, TAG_FRAGMENT_CONTENT).commitNowAllowingStateLoss();
            ILiveChannelCollapseChangeListener iLiveChannelCollapseChangeListener = this.liveChannelContentListener;
            if (iLiveChannelCollapseChangeListener != null) {
                iLiveChannelCollapseChangeListener.onLiveContentStatusChanged(this.rtcService.isInMiniStatus() ? 2 : 1);
            }
        }
    }

    public boolean onBackPressed() {
        List<ChannelUser> list;
        LiveChannelFragment liveChannelFragment = this.liveChannelFragment;
        if (liveChannelFragment != null && liveChannelFragment.isAdded() && this.liveChannelFragment.onBackPressed()) {
            return true;
        }
        if (getParentFragment() instanceof ChatFragment) {
            PlaylistFragment playListFragment = this.vvChatHelper.getPlayListFragment((ChatFragment) getParentFragment());
            if (playListFragment instanceof PlaylistFragment) {
                playListFragment.dismiss();
                return true;
            }
        }
        if (Utils.isLandscape(getContext())) {
            getActivity().setRequestedOrientation(1);
            return true;
        }
        final SignallingChannel mappedSignallingChannel = this.rtcService.getMappedSignallingChannel(this.threadId);
        if (mappedSignallingChannel == null || (list = mappedSignallingChannel.userList) == null || list.size() == 0 || !SignallingChannel.isLegalRole(mappedSignallingChannel.joinRole)) {
            this.isCurChannelFinishing = true;
            this.rtcService.exitLiveChannel(this.ndcId, this.threadId);
            return false;
        }
        if (this.floatingPermissionUtils.canDrawOverlays()) {
            minimizeLiveChannelRoom(null);
        } else {
            this.vvChatHelper.showCloseOrMiniLiveChannelHintDialog(this.channelType, new Callback<Boolean>() { // from class: com.narvii.chat.video.fragments.VVChatMainFragment.14
                @Override // com.narvii.util.Callback
                public void call(Boolean bool) {
                    VVChatMainFragment.this.minimizeLiveChannelRoom("Alert");
                }
            }, new Callback<Boolean>() { // from class: com.narvii.chat.video.fragments.VVChatMainFragment.15
                @Override // com.narvii.util.Callback
                public void call(Boolean bool) {
                    VVChatMainFragment.this.isIntentLeave = true;
                    VVChatMainFragment.this.forceFinishSameThreadActivity();
                    VVChatMainFragment.this.leaveCurrentLiveChannel("Alert");
                    if (VVChatMainFragment.this.getActivity() != null) {
                        VVChatMainFragment.this.getActivity().finish();
                    }
                    if (VVChatMainFragment.this.isPrivateCallLauncher()) {
                        VVChatMainFragment.this.callScreenService.updateStatus(3);
                        VVChatMainFragment.this.vvChatHelper.sendCallNoAnswerMessage(mappedSignallingChannel);
                    }
                }
            });
        }
        return true;
    }

    @Override // com.narvii.chat.video.view.LiveChannelEntryView.ChannelEntryClickListener
    public void onChannelCameraPreview(int i, boolean z, Bundle bundle) {
        initLiveChannel(i, z, bundle, 308);
    }

    @Override // com.narvii.chat.video.view.LiveChannelEntryView.ChannelEntryClickListener
    public void onChannelEntryClicked(final int i, final boolean z, final Bundle bundle) {
        final ChatFragment chatFragment;
        final PlaylistFragment playlistFragmentShowPlayListFragment;
        if (SignallingChannel.isLegalChannelType(i)) {
            if (!this.vvChatHelper.isEligibleForVVChat()) {
                this.vvChatHelper.showNotEligibleForVVChatDialog(null);
                return;
            }
            if (isEmbedFragment()) {
                VVChatEntryHelper vVChatEntryHelper = new VVChatEntryHelper(this);
                Bundle bundle2 = new Bundle();
                if (z) {
                    bundle2.putBoolean(KEY_SHOW_GO_LIVE, true);
                }
                vVChatEntryHelper.launchLiveChannelFromLaunchEvent(this.chatThread, i, null, false, bundle2);
                return;
            }
            if (i == 5) {
                if (!(getParentFragment() instanceof ChatFragment) || (playlistFragmentShowPlayListFragment = this.vvChatHelper.showPlayListFragment((chatFragment = (ChatFragment) getParentFragment()), true)) == null) {
                    return;
                }
                playlistFragmentShowPlayListFragment.setVideoPickCallback(new PlaylistFragment.VideoPickCallback() { // from class: com.narvii.chat.video.fragments.-$$Lambda$VVChatMainFragment$ksYiqbtpFvZ_DsSe5ijegRLWClw
                    @Override // com.narvii.chat.screenroom.playlist.PlaylistFragment.VideoPickCallback
                    public final void onVideoPickFinished() {
                        this.f$0.lambda$onChannelEntryClicked$1$VVChatMainFragment(chatFragment, i, z, bundle, playlistFragmentShowPlayListFragment);
                    }
                });
                return;
            }
            initLiveChannel(i, z, bundle);
        }
    }

    public /* synthetic */ void lambda$onChannelEntryClicked$1$VVChatMainFragment(ChatFragment chatFragment, int i, boolean z, Bundle bundle, PlaylistFragment playlistFragment) {
        this.vvChatHelper.hidePlayListFragment(chatFragment);
        initLiveChannel(i, z, bundle);
        playlistFragment.setVideoPickCallback(null);
    }

    @Override // com.narvii.chat.video.events.LiveChannelErrorListener
    public void onLiveChannelError(int i, WsError wsError) {
        if (isAdded() && isActive()) {
            View view = this.vLandingContainer;
            if (view != null) {
                view.setVisibility(8);
            }
            if (i == 106) {
                final AlertDialog alertDialog = new AlertDialog(getContext());
                alertDialog.setContentView(R.layout.dialog_rtc_exception);
                ((TextView) alertDialog.findViewById(R.id.content)).setText(wsError.message);
                alertDialog.findViewById(R.id.got_it).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.video.fragments.VVChatMainFragment.16
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        alertDialog.dismiss();
                        VVChatMainFragment.this.leaveCurrentLiveChannel(null);
                    }
                });
                alertDialog.setCancelable(false);
                alertDialog.show();
                return;
            }
            if (i == 101 || i == 102) {
                ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
                aCMAlertDialog.setMessage(wsError.message);
                aCMAlertDialog.addButton(R.string.ok, new View.OnClickListener() { // from class: com.narvii.chat.video.fragments.VVChatMainFragment.17
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        VVChatMainFragment.this.leaveCurrentLiveChannel(null);
                    }
                });
                aCMAlertDialog.setCancelable(false);
                aCMAlertDialog.show();
            }
        }
    }

    @Override // android.support.v4.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) throws Resources.NotFoundException {
        super.onConfigurationChanged(configuration);
        if (configuration.orientation == 2) {
            this.liveChannelContainer.setPadding(0, 0, 0, 0);
        } else {
            int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.live_chat_horizontal_padding);
            this.liveChannelContainer.setPadding(dimensionPixelSize, 0, dimensionPixelSize, 0);
        }
    }

    public void showFloatingWindow() {
        this.promoteAsAudienceRequestSent = false;
        this.needJoinAsGuest = true;
        this.rtcService.showNotification();
        this.rtcService.setMainChannelChatThread(this.chatThread);
        this.rtcService.postShowFloatingRunnable(this.threadId, this.showFloatingRunnable, 200L);
    }

    public void tryToShowMinWindow(String str) {
        FloatingPermissionUtils floatingPermissionUtils;
        RtcService rtcService = this.rtcService;
        if (rtcService == null || rtcService.getMainSigChannel() == null || (floatingPermissionUtils = this.floatingPermissionUtils) == null) {
            return;
        }
        floatingPermissionUtils.requestDrawOverlays(new FloatingPermissionUtils.Callback() { // from class: com.narvii.chat.video.fragments.VVChatMainFragment.19
            @Override // com.narvii.video.ui.floating.FloatingPermissionUtils.Callback
            public void call(final Intent intent) {
                if (intent != null) {
                    VVChatMainFragment.this.vvChatHelper.showPermissionRequestDialog(VVChatMainFragment.this.channelType, new Callback<Boolean>() { // from class: com.narvii.chat.video.fragments.VVChatMainFragment.19.1
                        @Override // com.narvii.util.Callback
                        public void call(Boolean bool) {
                            try {
                                VVChatMainFragment.this.startActivityForResult(intent, 102);
                            } catch (Exception unused) {
                            }
                        }
                    });
                } else {
                    VVChatMainFragment.this.finish();
                    VVChatMainFragment.this.showFloatingWindow();
                }
            }
        });
        if (str != null) {
            this.vvChatLogHelper.logMinimizeLiveChannel(this.channelType, str, this.chatThread);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isVoiceType() {
        return this.channelType == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isVideoType() {
        int i = this.channelType;
        return i == 3 || i == 4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isScreenRoomType() {
        return this.channelType == 5;
    }

    private void saveCurChannelInfo() {
        if (this.rtcService.getMainSigChannel() == null || !Utils.isEquals(this.rtcService.getMainSigChannel().threadId, this.threadId)) {
            return;
        }
        if (this.curChannelInfo == null) {
            this.curChannelInfo = new Bundle();
        }
        this.curChannelInfo.putBoolean(RtcService.KEY_IS_CREATOR, this.isCreator);
        this.curChannelInfo.putString("threadId", this.threadId);
        this.curChannelInfo.putString("thread", JacksonUtils.writeAsString(this.chatThread));
        this.curChannelInfo.putInt("__communityId", getIntParam("__communityId"));
        this.curChannelInfo.putInt("channel_type", this.channelType);
        this.curChannelInfo.putBoolean(RtcService.KEY_FROM_GLOBAL_CHAT, getBooleanParam(RtcService.KEY_FROM_GLOBAL_CHAT));
        this.curChannelInfo.putString(RtcService.KEY_COMMUNITY, getStringParam(RtcService.KEY_COMMUNITY));
        this.curChannelInfo.putBoolean(RtcService.KEY_HIDE_DRAWER, getBooleanParam(RtcService.KEY_HIDE_DRAWER));
        this.rtcService.saveCurrentLiveChannelInfo(this.curChannelInfo);
    }

    public int getLiveContentHeight() {
        LiveChannelFragment liveChannelFragment = this.liveChannelFragment;
        if (liveChannelFragment == null) {
            return 0;
        }
        return liveChannelFragment.getContentHeight();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void joinCurChannelAsGuest() {
        if (needBlockLiveChannelRequest()) {
            return;
        }
        SignallingChannel mappedSignallingChannel = this.rtcService.getMappedSignallingChannel(getThreadId());
        if (TextUtils.isEmpty(getThreadId())) {
            return;
        }
        if (mappedSignallingChannel == null || !SignallingChannel.isLegalRole(mappedSignallingChannel.joinRole)) {
            this.rtcService.joinChannelAsGuest(this.ndcId, getThreadId());
        }
    }

    private boolean needBlockLiveChannelRequest() {
        ChatThread thread = getThread();
        if (thread == null) {
            return false;
        }
        if (thread.isFansOnly() && !this.threadFullInfoFetched) {
            sendThreadDetailRequest(false);
            return true;
        }
        FanClub fanClub = ((AccountService) getService("account")).getFanClub(getThread().uid());
        return (fanClub == null || !fanClub.isActive()) && getThread().needHidden;
    }

    public void onFansClubStatusActive() {
        joinCurChannelAsGuest();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showVvChatInviteDialog(final PushPayload pushPayload) {
        AlertDialog alertDialog = this.inviteDialog;
        if (alertDialog == null || !alertDialog.isShowing()) {
            this.inviteDialog = new AlertDialog(this, "InviteToTalk");
            this.inviteDialog.setContentView(R.layout.dialog_invite_to_talk);
            ((UserAvatarLayout) this.inviteDialog.findViewById(R.id.user_avatar_layout)).setUser(pushPayload.fromUser);
            TextView textView = (TextView) this.inviteDialog.findViewById(R.id.info);
            Object[] objArr = new Object[1];
            User user = pushPayload.fromUser;
            objArr[0] = user == null ? "" : user.nickname();
            textView.setText(getString(R.string.invite_to_talk, objArr));
            this.inviteDialog.findViewById(R.id.reject).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.video.fragments.VVChatMainFragment.21
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    VVChatMainFragment.this.inviteDialog.dismiss();
                    LogEvent.clickWildcardBuilder(VVChatMainFragment.this.inviteDialog, "RejectButton").send();
                }
            });
            this.inviteDialog.findViewById(R.id.accept).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.video.fragments.VVChatMainFragment.22
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    VVChatMainFragment.this.inviteDialog.dismiss();
                    LogEvent.clickWildcardBuilder(VVChatMainFragment.this.inviteDialog, "AcceptButton").send();
                    VVChatMainFragment vVChatMainFragment = VVChatMainFragment.this;
                    ChatThreadCheckFragment chatThreadCheckFragment = ChatThreadCheckFragment.getInstance(vVChatMainFragment, vVChatMainFragment, null);
                    if (chatThreadCheckFragment != null) {
                        chatThreadCheckFragment.requestToJoinChannel(VVChatMainFragment.this.curChannel);
                    }
                    ChatWaitingListServiceKt.doJoinCancelIfInWaitingList(VVChatMainFragment.this, pushPayload);
                }
            });
            this.inviteDialog.show();
        }
    }
}
