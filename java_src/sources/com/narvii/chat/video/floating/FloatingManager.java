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
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.SurfaceView;
import android.view.ViewGroup;
import android.view.WindowManager;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
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
import com.narvii.headlines.ExternalPostPreviewFragment;
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
import com.safedk.android.utils.Logger;
import java.util.Collection;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
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

    private void updatePrivateCallLayout() {
        updatePrivateCallLayout(-1);
    }

    public String getCommunityString() {
        return this.communityString;
    }

    public SignallingChannel getFloatingLiveChannel() {
        return this.floatingLiveChannel;
    }

    public CommunityThread getFloatingThread() {
        return this.floatingThread;
    }

    public boolean getIsChannelCreator() {
        return this.isCreator;
    }

    public int getShowingWindowType() {
        return this.showingWindowType;
    }

    public boolean isFromGlobalChat() {
        return this.fromGlobalChat;
    }

    public boolean isHideDrawer() {
        return this.hideDrawer;
    }

    @Override // com.narvii.chat.video.events.LiveChannelChangeListener
    public void onChannelStatusChanged(@NotNull SignallingChannel signallingChannel) {
    }

    @Override // com.narvii.chat.video.events.AgoraUserVolumeChangeListener
    public void onTotalVolumeChanged(@NotNull SignallingChannel signallingChannel, int i10) {
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

    public void setCommunityString(String str) {
        this.communityString = str;
    }

    public void setFloatingClickEvent(FloatingClickEvent floatingClickEvent) {
        this.floatingClickEvent = floatingClickEvent;
    }

    public void setHideDrawer(boolean z6) {
        this.hideDrawer = z6;
    }

    public void setIsChannelCreator(boolean z6) {
        this.isCreator = z6;
    }

    public void setIsFromGlobalChat(boolean z6) {
        this.fromGlobalChat = z6;
    }

    private void createSRWindow() {
        if (srFloatingLayout == null) {
            SRFloatingLayout sRFloatingLayout = (SRFloatingLayout) LayoutInflater.from(this.context).inflate(R.layout.floating_sr_window, (ViewGroup) null);
            srFloatingLayout = sRFloatingLayout;
            sRFloatingLayout.setListener(this.floatingClickEvent);
            if (srWindowParams == null) {
                srWindowParams = getWindowParams(R.dimen.sr_floating_width, R.dimen.sr_floating_height);
            }
            srFloatingLayout.setParams(srWindowParams);
        }
    }

    private void createThreadWindow() {
        if (threadFloatingLayout == null) {
            ThreadFloatingLayout threadFloatingLayout2 = (ThreadFloatingLayout) LayoutInflater.from(this.context).inflate(R.layout.floating_thread_window, (ViewGroup) null);
            threadFloatingLayout = threadFloatingLayout2;
            threadFloatingLayout2.setListener(new FloatingClickEvent() { // from class: com.narvii.chat.video.floating.FloatingManager.2
                public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
                    Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
                    if (p1 == null) {
                        return;
                    }
                    p0.startActivity(p1);
                }

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
                    intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Text Floating");
                    intent.setFlags(268435456);
                    safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(FloatingManager.this.context, intent);
                    FloatingManager.this.removeThreadFloatingWindow();
                }
            });
            if (threadWindowParams == null) {
                threadWindowParams = getWindowParams(R.dimen.thread_floating_width, R.dimen.thread_floating_height);
            }
            threadFloatingLayout.setParams(threadWindowParams);
        }
    }

    private void createVideoWindow() {
        if (videoFloatingLayout == null) {
            VideoFloatingLayout videoFloatingLayout2 = (VideoFloatingLayout) LayoutInflater.from(this.context).inflate(R.layout.floating_video_window, (ViewGroup) null);
            videoFloatingLayout = videoFloatingLayout2;
            videoFloatingLayout2.setListener(this.floatingClickEvent);
            if (videoWindowParams == null) {
                videoWindowParams = getWindowParams(R.dimen.video_floating_width, R.dimen.video_floating_height);
            }
            videoFloatingLayout.setIsLauncher(this.rtcService.isCreator());
            videoFloatingLayout.setParams(videoWindowParams);
        }
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

    private WindowManager.LayoutParams getWindowParams(int i10, int i11) {
        WindowManager windowManager = getWindowManager(this.context);
        int width = windowManager.getDefaultDisplay().getWidth();
        int height = windowManager.getDefaultDisplay().getHeight();
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        int i12 = Build.VERSION.SDK_INT;
        if (i12 >= 26) {
            layoutParams.type = 2038;
        } else {
            layoutParams.type = 2002;
        }
        layoutParams.flags = TypedValues.CycleType.TYPE_WAVE_OFFSET;
        if (i12 >= 28) {
            layoutParams.layoutInDisplayCutoutMode = 1;
        }
        layoutParams.gravity = 51;
        layoutParams.format = -2;
        layoutParams.width = this.context.getResources().getDimensionPixelSize(i10);
        layoutParams.height = this.context.getResources().getDimensionPixelSize(i11);
        layoutParams.y = (height - this.context.getResources().getDimensionPixelSize(i11)) - this.context.getResources().getDimensionPixelSize(R.dimen.floating_window_margin_bottom);
        layoutParams.x = (width - this.context.getResources().getDimensionPixelSize(i10)) - this.context.getResources().getDimensionPixelSize(R.dimen.floating_window_margin);
        return layoutParams;
    }

    private void recordMainSigChannel() {
        RtcService rtcService = this.rtcService;
        if (rtcService == null) {
            return;
        }
        this.floatingLiveChannel = rtcService.getMainSigChannel();
    }

    private Drawable themeBackground(int i10, int i11) {
        SignallingChannel mainSigChannel = this.rtcService.getMainSigChannel();
        if (mainSigChannel == null) {
            return null;
        }
        NVContext nVContext = Utils.getNVContext(this.context);
        this.context.getResources().getDisplayMetrics();
        return ((ThemePackService) nVContext.getService("themePack")).getDrawable(mainSigChannel.ndcId, ThemePackService.ThemeObject.BACKGROUND, i10, i11);
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

    private void updatePrivateCallLayout(int i10) {
        ChatThread mainChannelChatThread = this.rtcService.getMainChannelChatThread();
        int presenterCount = this.callHelper.getPresenterCount(this.rtcService.getMainSigChannel() == null ? null : this.rtcService.getMainSigChannel().userList);
        boolean z6 = this.isCreator && mainChannelChatThread != null && mainChannelChatThread.type == 0;
        User privateChatTargetUer = new ChatHelper(this.context).getPrivateChatTargetUer(mainChannelChatThread);
        AudioFloatingLayout audioFloatingLayout2 = audioFloatingLayout;
        if (audioFloatingLayout2 != null) {
            if (i10 == -1) {
                i10 = (this.rtcService.isPrivateMainChannelFullBefore() || ((float) presenterCount) == 2.0f) ? 2 : 1;
            }
            audioFloatingLayout2.updateVoiceViews(z6, privateChatTargetUer, i10);
        } else {
            VideoFloatingLayout videoFloatingLayout2 = videoFloatingLayout;
            if (videoFloatingLayout2 != null) {
                if (i10 == -1) {
                    i10 = (this.rtcService.isPrivateMainChannelFullBefore() || ((float) presenterCount) == 2.0f) ? 2 : 1;
                }
                videoFloatingLayout2.updateVideoViews(z6, privateChatTargetUer, i10);
            }
        }
    }

    public void createAudioWindow() {
        if (audioFloatingLayout == null) {
            AudioFloatingLayout audioFloatingLayout2 = (AudioFloatingLayout) LayoutInflater.from(this.context).inflate(R.layout.floating_audio_window, (ViewGroup) null);
            audioFloatingLayout = audioFloatingLayout2;
            audioFloatingLayout2.setChatThread(this.rtcService.getMainChannelChatThread());
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

    public void destroy() {
        if (this.requireAccountReceiver != null) {
            LocalBroadcastManager.b(this.context).f(this.requireAccountReceiver);
        }
    }

    @Override // com.narvii.chat.call.CallStatusChangeListener
    public void onCallStatusChanged(int i10) {
        if (i10 == 8) {
            RtcService rtcService = this.rtcService;
            if (rtcService != null && rtcService.getMainSigChannel() != null) {
                RtcService rtcService2 = this.rtcService;
                rtcService2.exitLiveChannel(rtcService2.getMainSigChannel().ndcId, this.rtcService.getMainSigChannel().threadId);
            }
            Context context = this.context;
            NVToast.makeText(context, context.getString(R.string.call_retry_hint), 1).show();
            this.callScreenService.sendNotAnswerRequest();
            updatePrivateCallLayout(i10);
            return;
        }
        if (i10 == 7) {
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
        if (i10 == 10) {
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

    @Override // com.narvii.chat.video.events.LiveChannelChangeListener
    public void onChannelForceQuit(SignallingChannel signallingChannel, int i10) {
        CallScreenService callScreenService;
        ChatThread mainChannelChatThread = this.rtcService.getMainChannelChatThread();
        if (videoFloatingLayout == null || signallingChannel.channelType != 1 || (callScreenService = this.callScreenService) == null || !callScreenService.isEnding() || mainChannelChatThread == null || mainChannelChatThread.type != 0) {
            this.rtcService.exitLiveChannelKeepWindow(signallingChannel.ndcId, signallingChannel.threadId);
            VideoFloatingLayout videoFloatingLayout2 = videoFloatingLayout;
            if (videoFloatingLayout2 != null) {
                videoFloatingLayout2.notifyForceQuit(i10);
            }
            AudioFloatingLayout audioFloatingLayout2 = audioFloatingLayout;
            if (audioFloatingLayout2 != null) {
                audioFloatingLayout2.notifyForceQuit(i10);
            }
            SRFloatingLayout sRFloatingLayout = srFloatingLayout;
            if (sRFloatingLayout != null) {
                sRFloatingLayout.notifyForceQuit(i10);
            }
            removeChannelRelatedListener(signallingChannel.threadId);
        }
    }

    @Override // com.narvii.chat.video.events.LiveChannelChangeListener
    public void onChannelUserListChanged(@NotNull SignallingChannel signallingChannel, @NotNull Collection<? extends ChannelUser> collection, @NotNull Collection<? extends ChannelUser> collection2, @Nullable SparseArray<ChannelUserWrapper> sparseArray) {
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

    @Override // com.narvii.chat.video.events.ChannelUserWrapperUpdateListener
    public void onUserWrapperStatusChanged(@NotNull SignallingChannel signallingChannel, @NotNull ChannelUserWrapper channelUserWrapper) {
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

    public FloatingManager(Context context, RtcService rtcService, CallScreenService callScreenService) {
        this.context = context;
        this.rtcService = rtcService;
        this.callScreenService = callScreenService;
        this.callHelper = new VoiceCallHelper(context);
        LocalBroadcastManager.b(context).c(this.requireAccountReceiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
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
        if (!TextUtils.isEmpty(str) && (rtcService = this.rtcService) != null) {
            rtcService.removeLiveChannelChangeListener(str, this);
            this.rtcService.removeAgoraUserVolumeChangeListener(str, this);
            this.rtcService.removeChannelUserWrapperUpdateListener(str, this);
        }
    }

    public void removeAllFloatingWindow() {
        removeAudioFloatingWindow();
        removeVideoFloatingWindow();
        removeSRFloatingWindow();
        removeThreadFloatingWindow();
    }
}
