package com.narvii.chat.video.floating;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.content.LocalBroadcastManager;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.SurfaceView;
import android.view.ViewGroup;
import android.view.WindowManager;
import com.google.android.exoplayer2.C;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.chat.ChatFragment;
import com.narvii.chat.call.CallScreenService;
import com.narvii.chat.call.CallStatusChangeListener;
import com.narvii.chat.rtc.ChannelUserWrapper;
import com.narvii.chat.rtc.RtcService;
import com.narvii.chat.screenroom.ScreenRoomService;
import com.narvii.chat.signalling.ChannelUser;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.chat.util.ChatHelper;
import com.narvii.chat.video.events.AgoraUserVolumeChangeListener;
import com.narvii.chat.video.events.ChannelUserWrapperUpdateListener;
import com.narvii.chat.video.events.LiveChannelChangeListener;
import com.narvii.chat.video.view.VoiceCallHelper;
import com.narvii.model.ChatThread;
import com.narvii.model.User;
import com.narvii.theme.ThemePackService;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.video.ui.UserStatusData;
import com.narvii.video.ui.floating.FloatingClickEvent;
import com.narvii.widget.NVImageView;
import java.util.Collection;

/* loaded from: classes2.dex */
public class FloatingManager implements CallStatusChangeListener, LiveChannelChangeListener, AgoraUserVolumeChangeListener, ChannelUserWrapperUpdateListener {
    public static final int SHOWING_WINDOW_TYPE_AUDIO = 2;
    public static final int SHOWING_WINDOW_TYPE_SR = 3;
    public static final int SHOWING_WINDOW_TYPE_VIDEO = 0;
    private static final String TAG = "FloatingManager";
    private static final long TIME_LEFT_ENDING = 30000;
    private static AudioFloatingLayout audioFloatingLayout;
    private static WindowManager.LayoutParams audioWindowParams;
    private static WindowManager mWindowManager;
    private static SRFloatingLayout srFloatingLayout;
    private static WindowManager.LayoutParams srWindowParams;
    private static ThreadFloatingLayout threadFloatingLayout;
    private static WindowManager.LayoutParams threadWindowParams;
    private static VideoFloatingLayout videoFloatingLayout;
    private static WindowManager.LayoutParams videoWindowParams;
    private VoiceCallHelper callHelper;
    CallScreenService callScreenService;
    private String communityString;
    Context context;
    private boolean enterAutoEnding;
    FloatingClickEvent floatingClickEvent;
    private SignallingChannel floatingLiveChannel;
    private CommunityThread floatingThread;
    private boolean fromGlobalChat;
    private boolean hideDrawer;
    private boolean isCreator;
    Runnable leaveChannelRunnable = new Runnable() { // from class: com.narvii.chat.video.floating.FloatingManager.3
        @Override // java.lang.Runnable
        public void run() {
            RtcService rtcService = FloatingManager.this.rtcService;
            if (rtcService == null || rtcService.getMainSigChannel() == null) {
                return;
            }
            RtcService rtcService2 = FloatingManager.this.rtcService;
            rtcService2.exitLiveChannel(rtcService2.getMainSigChannel().ndcId, FloatingManager.this.rtcService.getMainSigChannel().threadId);
        }
    };
    private BroadcastReceiver requireAccountReceiver = new BroadcastReceiver() { // from class: com.narvii.chat.video.floating.FloatingManager.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            FloatingManager.this.removeAllFloatingWindow();
        }
    };
    RtcService rtcService;
    private int showingWindowType;

    @Override // com.narvii.chat.video.events.LiveChannelChangeListener
    public void onChannelStatusChanged(SignallingChannel signallingChannel) {
    }

    @Override // com.narvii.chat.video.events.AgoraUserVolumeChangeListener
    public void onTotalVolumeChanged(SignallingChannel signallingChannel, int i) {
    }

    public FloatingManager(Context context, RtcService rtcService, CallScreenService callScreenService) {
        this.context = context;
        this.rtcService = rtcService;
        this.callScreenService = callScreenService;
        this.callHelper = new VoiceCallHelper(context);
        LocalBroadcastManager.getInstance(context).registerReceiver(this.requireAccountReceiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
    }

    public void destroy() {
        if (this.requireAccountReceiver != null) {
            LocalBroadcastManager.getInstance(this.context).unregisterReceiver(this.requireAccountReceiver);
        }
    }

    public void setFloatingClickEvent(FloatingClickEvent floatingClickEvent) {
        this.floatingClickEvent = floatingClickEvent;
    }

    public void setIsFromGlobalChat(boolean z) {
        this.fromGlobalChat = z;
    }

    public boolean isFromGlobalChat() {
        return this.fromGlobalChat;
    }

    public void setCommunityString(String str) {
        this.communityString = str;
    }

    public String getCommunityString() {
        return this.communityString;
    }

    public void setHideDrawer(boolean z) {
        this.hideDrawer = z;
    }

    public boolean isHideDrawer() {
        return this.hideDrawer;
    }

    public void setIsChannelCreator(boolean z) {
        this.isCreator = z;
    }

    public boolean getIsChannelCreator() {
        return this.isCreator;
    }

    private WindowManager.LayoutParams getWindowParams(int i, int i2) {
        WindowManager windowManager = getWindowManager(this.context);
        int width = windowManager.getDefaultDisplay().getWidth();
        int height = windowManager.getDefaultDisplay().getHeight();
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        if (Build.VERSION.SDK_INT >= 26) {
            layoutParams.type = 2038;
        } else {
            layoutParams.type = 2002;
        }
        layoutParams.flags = 424;
        if (Build.VERSION.SDK_INT >= 28) {
            layoutParams.layoutInDisplayCutoutMode = 1;
        }
        layoutParams.gravity = 51;
        layoutParams.format = -2;
        layoutParams.width = this.context.getResources().getDimensionPixelSize(i);
        layoutParams.height = this.context.getResources().getDimensionPixelSize(i2);
        layoutParams.y = (height - this.context.getResources().getDimensionPixelSize(i2)) - this.context.getResources().getDimensionPixelSize(R.dimen.floating_window_margin_bottom);
        layoutParams.x = (width - this.context.getResources().getDimensionPixelSize(i)) - this.context.getResources().getDimensionPixelSize(R.dimen.floating_window_margin);
        return layoutParams;
    }

    public SignallingChannel getFloatingLiveChannel() {
        return this.floatingLiveChannel;
    }

    public void createAudioWindow() {
        if (audioFloatingLayout == null) {
            audioFloatingLayout = (AudioFloatingLayout) LayoutInflater.from(this.context).inflate(R.layout.floating_audio_window, (ViewGroup) null);
            audioFloatingLayout.setChatThread(this.rtcService.getMainChannelChatThread());
            NVImageView nVImageView = (NVImageView) audioFloatingLayout.findViewById(R.id.bg);
            ChatThread mainChannelChatThread = this.rtcService.getMainChannelChatThread();
            if (mainChannelChatThread != null) {
                if (mainChannelChatThread.getBackground() != null) {
                    nVImageView.setImageMedia(mainChannelChatThread.getBackground());
                } else {
                    Drawable drawableThemeBackground = themeBackground(Utils.getDimenPixelSize(this.context, R.dimen.video_floating_cell_width), Utils.getDimenPixelSize(this.context, R.dimen.video_floating_cell_height));
                    if (drawableThemeBackground != null) {
                        nVImageView.setImageDrawable(drawableThemeBackground);
                    } else {
                        Drawable drawableThemeColor = themeColor();
                        if (drawableThemeColor != null) {
                            nVImageView.setImageDrawable(drawableThemeColor);
                        } else {
                            nVImageView.setImageDrawable(new ColorDrawable(-2013265920));
                        }
                    }
                }
            }
            audioFloatingLayout.setListener(this.floatingClickEvent);
            if (audioWindowParams == null) {
                audioWindowParams = getWindowParams(R.dimen.video_floating_width, R.dimen.video_floating_height);
            }
            audioFloatingLayout.setIsLauncher(this.rtcService.isCreator());
            audioFloatingLayout.setParams(audioWindowParams);
        }
    }

    private Drawable themeBackground(int i, int i2) {
        SignallingChannel mainSigChannel = this.rtcService.getMainSigChannel();
        if (mainSigChannel == null) {
            return null;
        }
        NVContext nVContext = Utils.getNVContext(this.context);
        this.context.getResources().getDisplayMetrics();
        return ((ThemePackService) nVContext.getService("themePack")).getDrawable(mainSigChannel.ndcId, ThemePackService.ThemeObject.BACKGROUND, i, i2);
    }

    private Drawable themeColor() {
        SignallingChannel mainSigChannel = this.rtcService.getMainSigChannel();
        if (mainSigChannel == null) {
            return null;
        }
        float[] fArr = new float[3];
        Color.colorToHSV(((ThemePackService) Utils.getNVContext(this.context).getService("themePack")).getThemeColor(mainSigChannel.ndcId), fArr);
        fArr[2] = fArr[2] * 0.85f;
        return new ColorDrawable(Color.HSVToColor(fArr));
    }

    public void showAudioFloatingWindow() {
        RtcService rtcService = this.rtcService;
        if (rtcService == null || rtcService.getMainSigChannel() == null) {
            return;
        }
        removeAllFloatingWindow();
        createAudioWindow();
        AudioFloatingLayout audioFloatingLayout2 = audioFloatingLayout;
        if (audioFloatingLayout2 == null) {
            Log.e(TAG, "create floating window for video error");
            return;
        }
        this.showingWindowType = 2;
        mWindowManager.addView(audioFloatingLayout2, audioWindowParams);
        recordMainSigChannel();
        audioFloatingLayout.notifyMutedListChanged(this.rtcService.getLocalMutedUserList());
        audioFloatingLayout.notifyUserWrapperListChanged(this.rtcService.getMainSigChannel(), this.rtcService.getMainChannelUserWrapperList());
        updatePrivateCallLayout();
        addLiveChannelRelatedListener(this.rtcService.getMainSigChannel().threadId);
        onCallStatusChanged(this.callScreenService.getCurStatus());
        this.callScreenService.addCallScreenStatusChangeListener(getCurLiveChannelThreadId(), this);
    }

    public void removeAllFloatingWindow() {
        removeAudioFloatingWindow();
        removeVideoFloatingWindow();
        removeSRFloatingWindow();
        removeThreadFloatingWindow();
    }

    public void removeAudioFloatingWindow() {
        RtcService rtcService = this.rtcService;
        if (rtcService != null && rtcService.getMainSigChannel() != null) {
            removeChannelRelatedListener(this.rtcService.getMainSigChannel().threadId);
        }
        CallScreenService callScreenService = this.callScreenService;
        if (callScreenService != null) {
            callScreenService.removeCallScreenStatusChangeListener(getCurLiveChannelThreadId(), this);
        }
        this.enterAutoEnding = false;
        Utils.handler.removeCallbacks(this.leaveChannelRunnable);
        AudioFloatingLayout audioFloatingLayout2 = audioFloatingLayout;
        if (audioFloatingLayout2 != null) {
            audioFloatingLayout2.setListener(null);
            getWindowManager(this.context).removeView(audioFloatingLayout);
            audioFloatingLayout = null;
        }
        this.showingWindowType = -1;
        this.floatingLiveChannel = null;
    }

    private void createVideoWindow() {
        if (videoFloatingLayout == null) {
            videoFloatingLayout = (VideoFloatingLayout) LayoutInflater.from(this.context).inflate(R.layout.floating_video_window, (ViewGroup) null);
            videoFloatingLayout.setListener(this.floatingClickEvent);
            if (videoWindowParams == null) {
                videoWindowParams = getWindowParams(R.dimen.video_floating_width, R.dimen.video_floating_height);
            }
            videoFloatingLayout.setIsLauncher(this.rtcService.isCreator());
            videoFloatingLayout.setParams(videoWindowParams);
        }
    }

    private void createSRWindow() {
        if (srFloatingLayout == null) {
            srFloatingLayout = (SRFloatingLayout) LayoutInflater.from(this.context).inflate(R.layout.floating_sr_window, (ViewGroup) null);
            srFloatingLayout.setListener(this.floatingClickEvent);
            if (srWindowParams == null) {
                srWindowParams = getWindowParams(R.dimen.sr_floating_width, R.dimen.sr_floating_height);
            }
            srFloatingLayout.setParams(srWindowParams);
        }
    }

    public CommunityThread getFloatingThread() {
        return this.floatingThread;
    }

    public void showThreadFloatingWindow(CommunityThread communityThread) {
        ChatThread chatThread;
        if (communityThread == null || (chatThread = communityThread.chatThread) == null || communityThread.ndcId == 0 || chatThread.author == null) {
            return;
        }
        removeAllFloatingWindow();
        this.floatingThread = communityThread;
        createThreadWindow();
        ThreadFloatingLayout threadFloatingLayout2 = threadFloatingLayout;
        if (threadFloatingLayout2 == null) {
            return;
        }
        threadFloatingLayout2.setThread(communityThread);
        mWindowManager.addView(threadFloatingLayout, threadWindowParams);
    }

    public void removeThreadFloatingWindow() {
        this.floatingThread = null;
        ThreadFloatingLayout threadFloatingLayout2 = threadFloatingLayout;
        if (threadFloatingLayout2 != null) {
            threadFloatingLayout2.setListener(null);
            getWindowManager(this.context).removeView(threadFloatingLayout);
            threadFloatingLayout = null;
        }
    }

    private void recordMainSigChannel() {
        RtcService rtcService = this.rtcService;
        if (rtcService == null) {
            return;
        }
        this.floatingLiveChannel = rtcService.getMainSigChannel();
    }

    private void createThreadWindow() {
        if (threadFloatingLayout == null) {
            threadFloatingLayout = (ThreadFloatingLayout) LayoutInflater.from(this.context).inflate(R.layout.floating_thread_window, (ViewGroup) null);
            threadFloatingLayout.setListener(new FloatingClickEvent() { // from class: com.narvii.chat.video.floating.FloatingManager.2
                @Override // com.narvii.video.ui.floating.FloatingClickEvent
                public void onCloseClicked() {
                    FloatingManager.this.removeThreadFloatingWindow();
                }

                @Override // com.narvii.video.ui.floating.FloatingClickEvent
                public void onTotalClicked() {
                    if (FloatingManager.this.floatingThread == null) {
                        return;
                    }
                    Intent intent = FragmentWrapperActivity.intent(ChatFragment.class);
                    intent.putExtra("__communityId", FloatingManager.this.floatingThread.ndcId);
                    intent.putExtra("id", FloatingManager.this.floatingThread.chatThread.id());
                    intent.putExtra("thread", JacksonUtils.writeAsString(FloatingManager.this.floatingThread.chatThread));
                    intent.putExtra("Source", "Text Floating");
                    intent.setFlags(C.ENCODING_PCM_MU_LAW);
                    FloatingManager.this.context.startActivity(intent);
                    FloatingManager.this.removeThreadFloatingWindow();
                }
            });
            if (threadWindowParams == null) {
                threadWindowParams = getWindowParams(R.dimen.thread_floating_width, R.dimen.thread_floating_height);
            }
            threadFloatingLayout.setParams(threadWindowParams);
        }
    }

    public void showSRFloatingWindow() {
        UserStatusData userStatusData;
        UserStatusData userStatusData2;
        RtcService rtcService = this.rtcService;
        if (rtcService == null || rtcService.getMainSigChannel() == null) {
            return;
        }
        removeAllFloatingWindow();
        createSRWindow();
        SRFloatingLayout sRFloatingLayout = srFloatingLayout;
        if (sRFloatingLayout == null) {
            Log.e(TAG, "create floating window for video error");
            return;
        }
        this.showingWindowType = 3;
        mWindowManager.addView(sRFloatingLayout, srWindowParams);
        recordMainSigChannel();
        ScreenRoomService screenRoomService = (ScreenRoomService) Utils.getNVContext(this.context).getService("screenRoom");
        if (this.rtcService.isScreenRoomHost()) {
            srFloatingLayout.setUpHostView(screenRoomService.getGlVideoView());
        } else {
            ChannelUserWrapper screenRoomHostUser = this.rtcService.getScreenRoomHostUser();
            ChannelUserWrapper mainChannelLocalUserWrapper = this.rtcService.getMainChannelLocalUserWrapper();
            SurfaceView surfaceView = null;
            SurfaceView surfaceView2 = (screenRoomHostUser == null || (userStatusData2 = screenRoomHostUser.userStatus) == null) ? null : userStatusData2.mView;
            if (mainChannelLocalUserWrapper != null && (userStatusData = mainChannelLocalUserWrapper.userStatus) != null) {
                surfaceView = userStatusData.mView;
            }
            srFloatingLayout.setUpViewerView(surfaceView2, surfaceView);
        }
        screenRoomService.addPlayListChangeListenter(srFloatingLayout);
        screenRoomService.addSRHostLoadingListener(srFloatingLayout);
        screenRoomService.addSRHostAudioOnlyListener(srFloatingLayout);
        screenRoomService.addVideoPlayListener(srFloatingLayout);
        srFloatingLayout.onPlayListChanged(screenRoomService.getPlayList());
        srFloatingLayout.onBuffering(screenRoomService.isBuffering());
        srFloatingLayout.onUserSeeked(screenRoomService.isCurrentUserSeeked());
        srFloatingLayout.onHostAudioOnlyChanged(screenRoomService.isCurrentPlayAudioOnly());
        addLiveChannelRelatedListener(this.rtcService.getMainSigChannel().threadId);
    }

    public void removeSRFloatingWindow() {
        RtcService rtcService = this.rtcService;
        if (rtcService != null && rtcService.getMainSigChannel() != null) {
            removeChannelRelatedListener(this.rtcService.getMainSigChannel().threadId);
            ScreenRoomService screenRoomService = (ScreenRoomService) Utils.getNVContext(this.context).getService("screenRoom");
            screenRoomService.removeVideoPlayListner(srFloatingLayout);
            screenRoomService.removePlayListChangeListener(srFloatingLayout);
            screenRoomService.removeSRHostLoadingListener(srFloatingLayout);
            screenRoomService.removeSRHostAudioOnlyListener(srFloatingLayout);
        }
        this.enterAutoEnding = false;
        Utils.handler.removeCallbacks(this.leaveChannelRunnable);
        SRFloatingLayout sRFloatingLayout = srFloatingLayout;
        if (sRFloatingLayout != null) {
            sRFloatingLayout.setListener(null);
            getWindowManager(this.context).removeView(srFloatingLayout);
            srFloatingLayout = null;
        }
        this.showingWindowType = -1;
        this.floatingLiveChannel = null;
    }

    public void showVideoFloatingWindow() {
        RtcService rtcService = this.rtcService;
        if (rtcService == null || rtcService.getMainSigChannel() == null) {
            return;
        }
        removeAllFloatingWindow();
        createVideoWindow();
        VideoFloatingLayout videoFloatingLayout2 = videoFloatingLayout;
        if (videoFloatingLayout2 == null) {
            Log.e(TAG, "create floating window for video error");
            return;
        }
        this.showingWindowType = 0;
        mWindowManager.addView(videoFloatingLayout2, videoWindowParams);
        recordMainSigChannel();
        videoFloatingLayout.notifyMutedListChanged(this.rtcService.getLocalMutedUserList());
        videoFloatingLayout.notifyUserWrapperListChanged(this.rtcService.getMainSigChannel(), this.rtcService.getMainChannelUserWrapperList());
        addLiveChannelRelatedListener(this.rtcService.getMainSigChannel().threadId);
        onCallStatusChanged(this.callScreenService.getCurStatus());
        this.callScreenService.addCallScreenStatusChangeListener(getCurLiveChannelThreadId(), this);
        updatePrivateCallLayout();
    }

    public void removeVideoFloatingWindow() {
        RtcService rtcService = this.rtcService;
        if (rtcService != null && rtcService.getMainSigChannel() != null) {
            removeChannelRelatedListener(this.rtcService.getMainSigChannel().threadId);
        }
        CallScreenService callScreenService = this.callScreenService;
        if (callScreenService != null) {
            callScreenService.removeCallScreenStatusChangeListener(getCurLiveChannelThreadId(), this);
        }
        this.enterAutoEnding = false;
        Utils.handler.removeCallbacks(this.leaveChannelRunnable);
        VideoFloatingLayout videoFloatingLayout2 = videoFloatingLayout;
        if (videoFloatingLayout2 != null) {
            videoFloatingLayout2.setListener(null);
            videoFloatingLayout.removeAllViews();
            mWindowManager.removeView(videoFloatingLayout);
            videoFloatingLayout = null;
        }
        this.showingWindowType = -1;
        this.floatingLiveChannel = null;
    }

    private String getCurLiveChannelThreadId() {
        Bundle curLiveChannelInfo = this.rtcService.getCurLiveChannelInfo();
        if (curLiveChannelInfo == null) {
            return null;
        }
        return curLiveChannelInfo.getString("threadId");
    }

    private static WindowManager getWindowManager(Context context) {
        if (mWindowManager == null) {
            mWindowManager = (WindowManager) context.getSystemService("window");
        }
        return mWindowManager;
    }

    private void updatePrivateCallLayout() {
        updatePrivateCallLayout(-1);
    }

    private void updatePrivateCallLayout(int i) {
        ChatThread mainChannelChatThread = this.rtcService.getMainChannelChatThread();
        int presenterCount = this.callHelper.getPresenterCount(this.rtcService.getMainSigChannel() == null ? null : this.rtcService.getMainSigChannel().userList);
        boolean z = this.isCreator && mainChannelChatThread != null && mainChannelChatThread.type == 0;
        User privateChatTargetUer = new ChatHelper(this.context).getPrivateChatTargetUer(mainChannelChatThread);
        AudioFloatingLayout audioFloatingLayout2 = audioFloatingLayout;
        if (audioFloatingLayout2 != null) {
            if (i == -1) {
                i = (this.rtcService.isPrivateMainChannelFullBefore() || ((float) presenterCount) == 2.0f) ? 2 : 1;
            }
            audioFloatingLayout2.updateVoiceViews(z, privateChatTargetUer, i);
        } else {
            VideoFloatingLayout videoFloatingLayout2 = videoFloatingLayout;
            if (videoFloatingLayout2 != null) {
                if (i == -1) {
                    i = (this.rtcService.isPrivateMainChannelFullBefore() || ((float) presenterCount) == 2.0f) ? 2 : 1;
                }
                videoFloatingLayout2.updateVideoViews(z, privateChatTargetUer, i);
            }
        }
    }

    @Override // com.narvii.chat.video.events.LiveChannelChangeListener
    public void onChannelForceQuit(SignallingChannel signallingChannel, int i) {
        CallScreenService callScreenService;
        ChatThread mainChannelChatThread = this.rtcService.getMainChannelChatThread();
        if (videoFloatingLayout == null || signallingChannel.channelType != 1 || (callScreenService = this.callScreenService) == null || !callScreenService.isEnding() || mainChannelChatThread == null || mainChannelChatThread.type != 0) {
            this.rtcService.exitLiveChannelKeepWindow(signallingChannel.ndcId, signallingChannel.threadId);
            VideoFloatingLayout videoFloatingLayout2 = videoFloatingLayout;
            if (videoFloatingLayout2 != null) {
                videoFloatingLayout2.notifyForceQuit(i);
            }
            AudioFloatingLayout audioFloatingLayout2 = audioFloatingLayout;
            if (audioFloatingLayout2 != null) {
                audioFloatingLayout2.notifyForceQuit(i);
            }
            SRFloatingLayout sRFloatingLayout = srFloatingLayout;
            if (sRFloatingLayout != null) {
                sRFloatingLayout.notifyForceQuit(i);
            }
            removeChannelRelatedListener(signallingChannel.threadId);
        }
    }

    public int getShowingWindowType() {
        return this.showingWindowType;
    }

    @Override // com.narvii.chat.call.CallStatusChangeListener
    public void onCallStatusChanged(int i) {
        if (i == 8) {
            RtcService rtcService = this.rtcService;
            if (rtcService != null && rtcService.getMainSigChannel() != null) {
                RtcService rtcService2 = this.rtcService;
                rtcService2.exitLiveChannel(rtcService2.getMainSigChannel().ndcId, this.rtcService.getMainSigChannel().threadId);
            }
            Context context = this.context;
            NVToast.makeText(context, context.getString(R.string.call_retry_hint), 1).show();
            this.callScreenService.sendNotAnswerRequest();
            updatePrivateCallLayout(i);
            return;
        }
        if (i == 7) {
            Context context2 = this.context;
            NVToast.makeText(context2, context2.getString(R.string.call_declined), 1).show();
            RtcService rtcService3 = this.rtcService;
            if (rtcService3 == null || rtcService3.getMainSigChannel() == null) {
                return;
            }
            RtcService rtcService4 = this.rtcService;
            rtcService4.exitLiveChannel(rtcService4.getMainSigChannel().ndcId, this.rtcService.getMainSigChannel().threadId);
            return;
        }
        if (i == 10) {
            Context context3 = this.context;
            NVToast.makeText(context3, context3.getString(R.string.call_other_user_busy), 1).show();
            RtcService rtcService5 = this.rtcService;
            if (rtcService5 == null || rtcService5.getMainSigChannel() == null) {
                return;
            }
            RtcService rtcService6 = this.rtcService;
            rtcService6.exitLiveChannel(rtcService6.getMainSigChannel().ndcId, this.rtcService.getMainSigChannel().threadId);
        }
    }

    @Override // com.narvii.chat.video.events.ChannelUserWrapperUpdateListener
    public void onUserWrapperStatusChanged(SignallingChannel signallingChannel, ChannelUserWrapper channelUserWrapper) {
        UserStatusData userStatusData;
        VideoFloatingLayout videoFloatingLayout2 = videoFloatingLayout;
        if (videoFloatingLayout2 != null) {
            videoFloatingLayout2.notifyUserDataChanged(this.rtcService.getMainSigChannel(), channelUserWrapper);
        }
        AudioFloatingLayout audioFloatingLayout2 = audioFloatingLayout;
        if (audioFloatingLayout2 != null) {
            audioFloatingLayout2.notifyUserDataChanged(this.rtcService.getMainSigChannel(), channelUserWrapper);
        }
        if (srFloatingLayout != null) {
            if (this.rtcService.isScreenRoomHost(channelUserWrapper) && (userStatusData = channelUserWrapper.userStatus) != null) {
                srFloatingLayout.onHostBadConnection(userStatusData.isBadNetwork());
            }
            srFloatingLayout.notifyUserDataChanged(this.rtcService.getMainSigChannel(), channelUserWrapper);
        }
    }

    private void addLiveChannelRelatedListener(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.rtcService.addLiveChannelChangeListener(str, this);
        this.rtcService.addAgoraUserVolumeChangeListener(str, this);
        this.rtcService.addChannelUserWrapperUpdateListener(str, this);
    }

    private void removeChannelRelatedListener(String str) {
        RtcService rtcService;
        if (TextUtils.isEmpty(str) || (rtcService = this.rtcService) == null) {
            return;
        }
        rtcService.removeLiveChannelChangeListener(str, this);
        this.rtcService.removeAgoraUserVolumeChangeListener(str, this);
        this.rtcService.removeChannelUserWrapperUpdateListener(str, this);
    }

    @Override // com.narvii.chat.video.events.LiveChannelChangeListener
    public void onChannelUserListChanged(SignallingChannel signallingChannel, Collection<? extends ChannelUser> collection, Collection<? extends ChannelUser> collection2, SparseArray<ChannelUserWrapper> sparseArray) {
        ChatThread mainChannelChatThread = this.rtcService.getMainChannelChatThread();
        if (this.isCreator && mainChannelChatThread != null && mainChannelChatThread.type == 0) {
            updatePrivateCallLayout();
        }
        VideoFloatingLayout videoFloatingLayout2 = videoFloatingLayout;
        if (videoFloatingLayout2 != null) {
            videoFloatingLayout2.notifyUserWrapperListChanged(this.rtcService.getMainSigChannel(), sparseArray);
        }
        AudioFloatingLayout audioFloatingLayout2 = audioFloatingLayout;
        if (audioFloatingLayout2 != null) {
            audioFloatingLayout2.notifyUserWrapperListChanged(this.rtcService.getMainSigChannel(), sparseArray);
        }
    }
}
