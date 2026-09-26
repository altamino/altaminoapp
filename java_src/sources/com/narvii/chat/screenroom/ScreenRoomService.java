package com.narvii.chat.screenroom;

import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.chat.audio.ChannelMixer;
import com.narvii.chat.audio.Mixer;
import com.narvii.chat.audio.Resampler;
import com.narvii.chat.rtc.ChannelUserWrapper;
import com.narvii.chat.rtc.DataStreamListener;
import com.narvii.chat.rtc.RtcService;
import com.narvii.chat.screenroom.playlist.PlayListChangeListener;
import com.narvii.chat.screenroom.utils.PlayListSharedPreference;
import com.narvii.chat.screenroom.widgets.GLVideoView;
import com.narvii.chat.screenroom.widgets.SRVideoController;
import com.narvii.chat.signalling.ChannelUser;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.chat.video.RtcChatManager;
import com.narvii.chat.video.fragments.ScreenRoomFragment;
import com.narvii.comment.post.CommentPostActivity;
import com.narvii.model.ChatThread;
import com.narvii.model.ExternalSourceOrigin;
import com.narvii.model.PlayList;
import com.narvii.model.PlayListItem;
import com.narvii.permisson.PermissionUtils;
import com.narvii.util.Callback;
import com.narvii.util.CollectionUtils;
import com.narvii.util.EventDispatcher;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.Tag;
import com.narvii.util.Utils;
import com.narvii.util.YoutubeUtils;
import com.narvii.util.ws.WsError;
import com.narvii.util.ws.WsMessage;
import com.narvii.util.ws.WsRequest;
import com.narvii.util.ws.WsService;
import com.narvii.video.pro.VideoPreProcessing;
import com.narvii.youtube.YoutubeService;
import com.narvii.youtube.YoutubeVideoCallback;
import com.narvii.youtube.YoutubeVideoList;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import javax.microedition.khronos.egl.EGLContext;
import net.protyposis.android.mediaplayer.MediaPlayer;

/* JADX INFO: loaded from: classes5.dex */
public class ScreenRoomService implements GLVideoView.MediaFrameAvailableListener, WsService.WsListener, PlayActionListener, MediaPlayer.OnCompletionListener, YoutubeVideoCallback, SRChannelStatusChangeListener, DataStreamListener, Mixer.MixerListener, SRRoleChangeListener, MediaPlayer.OnVideoSizeChangedListener, SRVideoController.OnUserSeekPositionListener {
    public static final float DEFAULT_MIC_VOLUME = 8.0f;
    private static final Tag DONE = new Tag("done");
    private static final float MIC_MUTE_THRESHOLD = 0.3f;
    private static final int SR_HOST_LOADING_CHECK_INTERVAL = 2000;
    private static final String TAG = "ScreenRoomService";
    public static final int TYPE_PARTICIPANT_OPTION_NONE = 0;
    public static final int TYPE_PARTICIPANT_OPTION_VIDEO = 1;
    public static final int TYPE_PARTICIPANT_OPTION_VOICE = 2;
    final DecimalFormat NUM_FMT_2;
    final DecimalFormat NUM_FMT_3;
    boolean buffering;
    private byte[] bytesBuffer;
    private ChannelMixer channelMixer;
    private NVContext context;
    public ChatThread curChatThread;
    private String curYoutubeId;
    PlayListItem currentPlayListItem;
    boolean currentUserSeeked;
    boolean everPlayed;
    GLVideoView glVideoView;
    boolean isCurrentPlayAudioOnly;
    boolean isCurrentPlayStarted;
    public boolean isEchoHintShowed;
    private Mixer mixer;
    private boolean muteHintInfoShown;
    public int participantOption;
    PlayList playList;
    private final PlayListSharedPreference playListSharedPreference;
    private Resampler resampler;
    private int resamplerRate;
    RtcService rtcService;
    public boolean screenRoomHostDataCame;
    public Runnable screenRoomHostLoadingCheckRunnable;
    private short[] shortBuffer;
    int srHostChangeFlags;
    WsService ws;
    YoutubeService youtubeService;
    boolean checkSRHostLoading = false;
    private EventDispatcher<PlayListChangeListener> playListChangedDispatcher = new EventDispatcher<>();
    private EventDispatcher<VideoPlayListener> videoPlayEventDispatcher = new EventDispatcher<>();
    private EventDispatcher<SRHostMicListener> srHostMicListenerEventDispatcher = new EventDispatcher<>();
    private EventDispatcher<SRHostStatusListener> srHostStatusListenerEventDispatcher = new EventDispatcher<>();
    private EventDispatcher<SRPermissionActionChangeListener> srActionChangeEventDispatcher = new EventDispatcher<>();
    private EventDispatcher<SRHostLoadingListener> srHostLoadingListenerEventDispatcher = new EventDispatcher<>();
    private EventDispatcher<SRHostAudioOnlyListener> srHostAudioOnlyListenerEventDispatcher = new EventDispatcher<>();
    public int curScreenRoomDefaultAction = -1;
    private final Object audioLock = new Object();
    private float mixerMediaVolume = 1.0f;
    private float mixerMicVolume = 0.0f;
    boolean srHostMuted = true;
    float srHostIndicatorLevel = 0.0f;
    float srHostVideoProgress = 0.0f;
    final float[] micLevels = new float[5];
    int micLevelIdx = 0;
    final StringBuilder tmpsb = new StringBuilder(32);
    private final Runnable levelIndicator = new AnonymousClass10();
    private final Runnable hostMicMuteRunnable = new AnonymousClass11();
    final SRHostStatusCaller srHostStatusCaller = new SRHostStatusCaller();
    final SRAudioOnlyCaller srAudioOnlyCaller = new SRAudioOnlyCaller();

    /* JADX INFO: renamed from: com.narvii.chat.screenroom.ScreenRoomService$10, reason: invalid class name */
    class AnonymousClass10 implements Runnable {
        Callback<SRHostMicListener> callback = new Callback<SRHostMicListener>() { // from class: com.narvii.chat.screenroom.ScreenRoomService.10.1
            @Override // com.narvii.util.Callback
            public void call(SRHostMicListener sRHostMicListener) {
                sRHostMicListener.onMicLevelIndicator(AnonymousClass10.this.f2019v);
            }
        };

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        float f2019v;

        AnonymousClass10() {
        }

        @Override // java.lang.Runnable
        public void run() {
            float srHostMicLevelIndicator = ScreenRoomService.this.getSrHostMicLevelIndicator();
            this.f2019v = srHostMicLevelIndicator;
            ScreenRoomService.this.rtcService.updateLocalUserVolume(srHostMicLevelIndicator);
            ScreenRoomService.this.srHostMicListenerEventDispatcher.dispatch(this.callback);
        }
    }

    /* JADX INFO: renamed from: com.narvii.chat.screenroom.ScreenRoomService$11, reason: invalid class name */
    class AnonymousClass11 implements Runnable {
        Callback<SRHostMicListener> callback = new Callback() { // from class: com.narvii.chat.screenroom.q
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                ((SRHostMicListener) obj).onMicMuted();
            }
        };

        AnonymousClass11() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!ScreenRoomService.this.muteHintInfoShown) {
                ScreenRoomService.this.muteHintInfoShown = true;
            }
            ScreenRoomService.this.srHostMicListenerEventDispatcher.dispatch(this.callback);
        }
    }

    /* JADX INFO: renamed from: com.narvii.chat.screenroom.ScreenRoomService$4, reason: invalid class name */
    class AnonymousClass4 implements Runnable {
        final /* synthetic */ boolean val$loading;

        AnonymousClass4(boolean z6) {
            this.val$loading = z6;
        }

        @Override // java.lang.Runnable
        public void run() {
            EventDispatcher eventDispatcher = ScreenRoomService.this.srHostLoadingListenerEventDispatcher;
            final boolean z6 = this.val$loading;
            eventDispatcher.safeDispatch(new Callback() { // from class: com.narvii.chat.screenroom.r
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    ((SRHostLoadingListener) obj).onHostLoading(z6);
                }
            });
        }
    }

    class SRAudioOnlyCaller implements Runnable, Callback<SRHostAudioOnlyListener> {
        SRAudioOnlyCaller() {
        }

        @Override // com.narvii.util.Callback
        public void call(SRHostAudioOnlyListener sRHostAudioOnlyListener) {
            sRHostAudioOnlyListener.onHostAudioOnlyChanged(ScreenRoomService.this.isCurrentPlayAudioOnly);
        }

        @Override // java.lang.Runnable
        public void run() {
            ScreenRoomService.this.srHostAudioOnlyListenerEventDispatcher.safeDispatch(this);
        }
    }

    class SRHostStatusCaller implements Runnable, Callback<SRHostStatusListener> {
        SRHostStatusCaller() {
        }

        @Override // com.narvii.util.Callback
        public void call(SRHostStatusListener sRHostStatusListener) {
            ScreenRoomService screenRoomService = ScreenRoomService.this;
            if ((screenRoomService.srHostChangeFlags & 1) != 0) {
                sRHostStatusListener.onHostMutedChanged(screenRoomService.srHostMuted);
            }
            ScreenRoomService screenRoomService2 = ScreenRoomService.this;
            if ((screenRoomService2.srHostChangeFlags & 2) != 0) {
                sRHostStatusListener.onHostMicIndicatorLevelChanged(screenRoomService2.srHostIndicatorLevel);
            }
            ScreenRoomService screenRoomService3 = ScreenRoomService.this;
            if ((screenRoomService3.srHostChangeFlags & 4) != 0) {
                sRHostStatusListener.onHostVideoProgress(screenRoomService3.srHostVideoProgress);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            ScreenRoomService.this.srHostStatusListenerEventDispatcher.dispatch(this);
            ScreenRoomService.this.srHostChangeFlags = 0;
        }
    }

    private void initMuteConfig() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setGlVideoView$1(MediaPlayer mediaPlayer) {
        setBuffering(false);
    }

    private void onPlayStatusChanged() {
        updatePlayList(null);
        this.playListChangedDispatcher.dispatch(new Callback() { // from class: com.narvii.chat.screenroom.g
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                this.f2026a.lambda$onPlayStatusChanged$6((PlayListChangeListener) obj);
            }
        });
    }

    private void updatePlayList(Callback callback) {
        SignallingChannel mainSigChannel = this.rtcService.getMainSigChannel();
        if (mainSigChannel == null) {
            Log.e("TAG", "can not fetch playlist in an empty channel");
        } else {
            updatePlayList(mainSigChannel.ndcId, mainSigChannel.threadId, callback);
        }
    }

    public void fetchPlayList(Callback callback) {
        SignallingChannel mainSigChannel = this.rtcService.getMainSigChannel();
        if (mainSigChannel == null) {
            Log.e("TAG", "can not fetch playlist in an empty channel");
        } else {
            fetchPlayList(mainSigChannel.ndcId, mainSigChannel.threadId, callback);
        }
    }

    public PlayListItem getCurrentPlayListItem() {
        return this.currentPlayListItem;
    }

    public GLVideoView getGlVideoView() {
        return this.glVideoView;
    }

    public float getHostVideoProgress() {
        return this.srHostVideoProgress;
    }

    public boolean getLocalMicMuted() {
        return this.mixerMicVolume == 0.0f;
    }

    public float getMediaVolume() {
        return this.mixerMediaVolume;
    }

    public float getMicVolume() {
        return this.mixerMicVolume;
    }

    public PlayList getPlayList() {
        return this.playList;
    }

    public boolean isBuffering() {
        return this.buffering;
    }

    public boolean isCurrentPlayAudioOnly() {
        return this.isCurrentPlayAudioOnly;
    }

    public boolean isCurrentPlayStarted() {
        return this.isCurrentPlayStarted;
    }

    public boolean isCurrentUserSeeked() {
        return this.currentUserSeeked;
    }

    public boolean isSrHostMuted() {
        return this.srHostMuted;
    }

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onConnect(WsService wsService) {
    }

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onDisconnect(WsService wsService, Throwable th) {
    }

    @Override // com.narvii.chat.screenroom.widgets.SRVideoController.OnUserSeekPositionListener
    public void onUserSeeked() {
        this.currentUserSeeked = true;
        notifyUserSeekedWhenReady();
    }

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onWsError(WsService wsService, WsError wsError) {
    }

    private PlayListItem getNextPlayItem() {
        PlayListItem playListItem = this.currentPlayListItem;
        if (playListItem == null) {
            return null;
        }
        int iIndexOf = this.playList.items.indexOf(playListItem);
        if (iIndexOf == -1) {
            iIndexOf = 0;
        }
        if (iIndexOf < this.playList.items.size() - 1) {
            return this.playList.items.get(iIndexOf + 1);
        }
        return null;
    }

    private PlayListItem getPrevPlayItem() {
        PlayListItem playListItem = this.currentPlayListItem;
        if (playListItem == null) {
            return null;
        }
        int iIndexOf = this.playList.items.indexOf(playListItem);
        if (iIndexOf == -1) {
            iIndexOf = 0;
        }
        if (iIndexOf > 0) {
            return this.playList.items.get(iIndexOf - 1);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isCurrentVideoId(String str) {
        PlayListItem playListItem = this.currentPlayListItem;
        if (playListItem != null && YoutubeUtils.isYtvScheme(playListItem.getMediaUrl())) {
            return Utils.isEqualsNotNull(YoutubeUtils.getYoutubeVideoIdFromUrl(this.currentPlayListItem.getMediaUrl()), str);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkSRHostLoading$3() {
        if (!this.screenRoomHostDataCame) {
            onScreenRoomHostLoading(true);
        }
        this.screenRoomHostDataCame = false;
        Utils.handler.postDelayed(this.screenRoomHostLoadingCheckRunnable, 2000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$notifyUserSeekedWhenReady$13(VideoPlayListener videoPlayListener) {
        videoPlayListener.onUserSeeked(this.currentUserSeeked);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onChannelStarted$12(final int i10, final int i11) {
        Utils.post(new Runnable() { // from class: com.narvii.chat.screenroom.ScreenRoomService.9
            @Override // java.lang.Runnable
            public void run() {
                if (i11 == i10) {
                    ScreenRoomService.this.onScreenRoomHostLoading(false);
                    ScreenRoomService.this.screenRoomHostDataCame = true;
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onPlayStatusChanged$6(PlayListChangeListener playListChangeListener) {
        playListChangeListener.onPlayListChanged(this.playList.m1623clone());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$setGlVideoView$0(MediaPlayer mediaPlayer, int i10, int i11) {
        if (i10 == 701) {
            setBuffering(true);
        } else if (i10 == 702) {
            setBuffering(false);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$setGlVideoView$2(GLVideoView gLVideoView, MediaPlayer mediaPlayer, int i10, int i11) {
        Log.e("mediaPlayer", "what:" + i10 + "-extra:" + i11 + "-" + gLVideoView.getUri());
        Utils.post(new Runnable() { // from class: com.narvii.chat.screenroom.ScreenRoomService.1
            @Override // java.lang.Runnable
            public void run() {
                ScreenRoomService.this.onPlayError();
            }
        });
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: notifyPlayListener, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public void lambda$start$4(VideoPlayListener videoPlayListener) {
        videoPlayListener.onPlayListChanged(this.playList, getPrevPlayItem() != null, getNextPlayItem() != null);
    }

    private void notifyUserSeekedWhenReady() {
        if (this.currentPlayListItem == null || this.playList.currentItemStatus != 1) {
            return;
        }
        this.videoPlayEventDispatcher.safeDispatch(new Callback() { // from class: com.narvii.chat.screenroom.b
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                this.f2021a.lambda$notifyUserSeekedWhenReady$13((VideoPlayListener) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPlayError() {
        if (this.glVideoView == null) {
            return;
        }
        if (PermissionUtils.hasSelfPermission(this.context.getContext(), "android.permission.READ_EXTERNAL_STORAGE")) {
            NVToast.makeText(this.context.getContext(), R.string.fail_play_video, 1).show();
        }
        setBuffering(false);
        this.isCurrentPlayStarted = false;
        this.glVideoView.stopPlayback();
        this.playList.currentItemStatus = 1;
        this.currentUserSeeked = false;
        notifyUserSeekedWhenReady();
        onPlayStatusChanged();
        this.videoPlayEventDispatcher.safeDispatch(new k(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onScreenRoomHostLoading(boolean z6) {
        Log.d("loading", z6 + "");
        Utils.post(new AnonymousClass4(z6));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setBuffering(final boolean z6) {
        this.buffering = z6;
        this.videoPlayEventDispatcher.safeDispatch(new Callback() { // from class: com.narvii.chat.screenroom.d
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                ((VideoPlayListener) obj).onBuffering(z6);
            }
        });
    }

    private void setCurrentPlayListItem(PlayListItem playListItem) {
        this.currentPlayListItem = playListItem;
        if (playListItem == null) {
            this.playList.currentItemIndex = -1;
        } else {
            PlayList playList = this.playList;
            playList.currentItemIndex = playList.items.indexOf(playListItem);
        }
    }

    private void setPlayStatusReady() {
        PlayListItem playListItem;
        GLVideoView gLVideoView = this.glVideoView;
        if (gLVideoView == null) {
            Log.e("screenRoomService", "glVideoView is null when setPlayStatusReady");
            return;
        }
        gLVideoView.stopPlayback();
        this.playList.currentItemStatus = 1;
        setBuffering(false);
        this.currentUserSeeked = false;
        notifyUserSeekedWhenReady();
        if (this.youtubeService != null && !TextUtils.isEmpty(this.curYoutubeId)) {
            this.youtubeService.abort(this.curYoutubeId, null);
        }
        this.glVideoView.clearSurfaceView();
        if (this.glVideoView == null || (playListItem = this.currentPlayListItem) == null) {
            return;
        }
        if (!YoutubeUtils.isYtvScheme(playListItem.getMediaUrl())) {
            this.glVideoView.setVideoURI(Uri.parse(this.currentPlayListItem.getMediaUrl()));
            setBuffering(true);
        } else {
            this.curYoutubeId = YoutubeUtils.getYoutubeVideoIdFromUrl(this.currentPlayListItem.getMediaUrl());
            setBuffering(true);
            this.youtubeService.exec(this.curYoutubeId, null, new YoutubeVideoCallback() { // from class: com.narvii.chat.screenroom.ScreenRoomService.5
                @Override // com.narvii.youtube.YoutubeVideoCallback
                public void onFail(String str, int i10, String str2) {
                    if (ScreenRoomService.this.isCurrentVideoId(str)) {
                        ScreenRoomService.this.setBuffering(false);
                        ScreenRoomService.this.isCurrentPlayStarted = false;
                    }
                }

                @Override // com.narvii.youtube.YoutubeVideoCallback
                public void onFinish(String str, YoutubeVideoList youtubeVideoList) {
                    if (ScreenRoomService.this.isCurrentVideoId(str)) {
                        Uri uri = Uri.parse(youtubeVideoList.getUrl());
                        ScreenRoomService.this.setBuffering(false);
                        ScreenRoomService.this.glVideoView.setVideoURI(uri);
                        ScreenRoomService.this.setBuffering(true);
                    }
                }
            });
        }
    }

    private void startPlayVideo(Uri uri) {
        GLVideoView gLVideoView = this.glVideoView;
        if (gLVideoView == null) {
            return;
        }
        gLVideoView.setVideoURI(uri);
        this.glVideoView.start();
        setBuffering(true);
    }

    public void addPlayListChangeListenter(PlayListChangeListener playListChangeListener) {
        this.playListChangedDispatcher.addListener(playListChangeListener);
    }

    public void addSRHostAudioOnlyListener(SRHostAudioOnlyListener sRHostAudioOnlyListener) {
        this.srHostAudioOnlyListenerEventDispatcher.addListener(sRHostAudioOnlyListener);
    }

    public void addSRHostLoadingListener(SRHostLoadingListener sRHostLoadingListener) {
        this.srHostLoadingListenerEventDispatcher.addListener(sRHostLoadingListener);
    }

    public void addSRHostStatusListener(SRHostStatusListener sRHostStatusListener) {
        this.srHostStatusListenerEventDispatcher.addListener(sRHostStatusListener);
    }

    public void addSRPermissionListener(SRPermissionActionChangeListener sRPermissionActionChangeListener) {
        this.srActionChangeEventDispatcher.addListener(sRPermissionActionChangeListener);
    }

    public void addVideoPlayListener(VideoPlayListener videoPlayListener) {
        this.videoPlayEventDispatcher.addListener(videoPlayListener);
    }

    public void checkSRHostLoading(boolean z6) {
        if (this.checkSRHostLoading == z6) {
            return;
        }
        this.checkSRHostLoading = z6;
        if (!z6) {
            Utils.handler.removeCallbacks(this.screenRoomHostLoadingCheckRunnable);
            onScreenRoomHostLoading(false);
            return;
        }
        onScreenRoomHostLoading(false);
        Runnable runnable = new Runnable() { // from class: com.narvii.chat.screenroom.c
            @Override // java.lang.Runnable
            public final void run() {
                this.f2022a.lambda$checkSRHostLoading$3();
            }
        };
        this.screenRoomHostLoadingCheckRunnable = runnable;
        Handler handler = Utils.handler;
        handler.removeCallbacks(runnable);
        this.screenRoomHostDataCame = false;
        handler.postDelayed(this.screenRoomHostLoadingCheckRunnable, 2000L);
    }

    public int getCurrentStatus() {
        return this.playList.currentItemStatus;
    }

    public List<PlayListItem> getPlayItemList() {
        return this.playList.items;
    }

    public float getSrHostMicLevelIndicator() {
        Mixer mixer = this.mixer;
        if (mixer == null) {
            return 0.0f;
        }
        return mixer.level;
    }

    public boolean isHostInSRChannel() {
        ChannelUser channelUser;
        ChannelUserWrapper mainChannelLocalUserWrapper = this.rtcService.getMainChannelLocalUserWrapper();
        if (mainChannelLocalUserWrapper == null || (channelUser = mainChannelLocalUserWrapper.channelUser) == null) {
            return false;
        }
        return channelUser.isHost;
    }

    public void leaveScreenRoom() {
        this.rtcService.setVideoFrameAvailableListener(null);
        checkSRHostLoading(false);
        this.currentPlayListItem = null;
        this.isCurrentPlayStarted = false;
        this.everPlayed = false;
        this.playList.items = new ArrayList();
        this.playList.currentItemIndex = -1;
        this.videoPlayEventDispatcher = new EventDispatcher<>();
        this.playListChangedDispatcher = new EventDispatcher<>();
        this.isCurrentPlayAudioOnly = false;
        this.buffering = false;
        this.mixerMicVolume = 0.0f;
        this.mixerMediaVolume = 1.0f;
        this.srHostMuted = false;
        this.srHostIndicatorLevel = 0.0f;
        this.srHostVideoProgress = 0.0f;
        this.srHostChangeFlags = 0;
        this.curScreenRoomDefaultAction = -1;
        this.curChatThread = null;
        this.muteHintInfoShown = false;
        this.isEchoHintShowed = false;
        this.participantOption = 0;
        GLVideoView gLVideoView = this.glVideoView;
        if (gLVideoView != null) {
            gLVideoView.stopPlayback(true);
            this.glVideoView = null;
        }
    }

    public void notifyVideoPlayChanged() {
        this.videoPlayEventDispatcher.safeDispatch(new k(this));
    }

    @Override // com.narvii.chat.screenroom.widgets.GLVideoView.MediaFrameAvailableListener
    public void onAudioFrameAvailable(byte[] bArr, int i10, int i11, int i12, int i13) {
        synchronized (this.audioLock) {
            try {
                if (this.mixer != null) {
                    int i14 = i11 / 2;
                    short[] sArr = this.shortBuffer;
                    if (sArr == null || sArr.length < i14) {
                        sArr = new short[i14];
                        this.shortBuffer = sArr;
                    }
                    ByteBuffer.wrap(bArr, i10, i11).order(ByteOrder.LITTLE_ENDIAN).asShortBuffer().get(sArr, 0, i14);
                    this.channelMixer.write(sArr, 0, i14, i13);
                    ChannelMixer channelMixer = this.channelMixer;
                    short[] sArrBuffer = channelMixer.buffer;
                    int i15 = channelMixer.length;
                    try {
                        if (this.resamplerRate != i12) {
                            this.resampler = new Resampler(1, i12, RtcChatManager.SAMPLE_RATE, 4);
                            this.resamplerRate = i12;
                        }
                        int iPut = this.resampler.put(sArrBuffer, 0, i15);
                        sArrBuffer = this.resampler.buffer();
                        i15 = iPut;
                    } catch (Throwable th) {
                        Log.e(TAG, "fail to resample audio frame", th);
                    }
                    this.mixer.pushMixBuffer(sArrBuffer, 0, i15);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.narvii.chat.screenroom.SRChannelStatusChangeListener
    public void onChannelEnd() {
        Log.d(TAG, "onChannelEnd");
        synchronized (this.audioLock) {
            try {
                Mixer mixer = this.mixer;
                if (mixer != null) {
                    mixer.stop();
                    this.mixer = null;
                }
                Resampler resampler = this.resampler;
                if (resampler != null) {
                    resampler.close();
                    this.resampler = null;
                }
                this.resamplerRate = 0;
            } catch (Throwable th) {
                throw th;
            }
        }
        leaveScreenRoom();
        this.rtcService.removeDataStreamListener(this);
        this.srHostMuted = false;
        this.srHostIndicatorLevel = 0.0f;
        this.srHostVideoProgress = 0.0f;
        this.srHostChangeFlags = 0;
    }

    @Override // com.narvii.chat.screenroom.SRChannelStatusChangeListener
    public void onChannelStarted(boolean z6) {
        Log.d(TAG, "onChannelStarted");
        initMuteConfig();
        if (!z6) {
            RtcService rtcService = this.rtcService;
            final int i10 = rtcService.screenRoomHostUid;
            rtcService.setVideoFrameAvailableListener(new VideoPreProcessing.FrameAvailableListener() { // from class: com.narvii.chat.screenroom.i
                @Override // com.narvii.video.pro.VideoPreProcessing.FrameAvailableListener
                public final void onFrameAvailable(int i11) {
                    this.f2028a.lambda$onChannelStarted$12(i10, i11);
                }
            });
            this.rtcService.addDataStreamListener(this);
            return;
        }
        synchronized (this.audioLock) {
            try {
                Mixer mixer = this.mixer;
                if (mixer != null) {
                    mixer.stop();
                }
                Mixer mixer2 = new Mixer(RtcChatManager.SAMPLE_RATE, 7, 1);
                this.mixer = mixer2;
                mixer2.audioVolumn = this.mixerMediaVolume;
                mixer2.micVolumn = this.mixerMicVolume;
                mixer2.listener = this;
                mixer2.start();
                this.channelMixer = ChannelMixer.getMixer(1);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // net.protyposis.android.mediaplayer.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        PlayListItem playListItem = this.currentPlayListItem;
        if (playListItem != null) {
            playListItem.isDone = true;
            playItem(getNextLoopPlayItem());
        }
    }

    @Override // com.narvii.chat.rtc.DataStreamListener
    public void onDataStreamReceived(int i10, byte[] bArr, final ObjectNode objectNode) {
        Utils.post(new Runnable() { // from class: com.narvii.chat.screenroom.ScreenRoomService.12
            @Override // java.lang.Runnable
            public void run() {
                JsonNode jsonNode;
                ObjectNode objectNode2 = objectNode;
                if (objectNode2 == null || (jsonNode = objectNode2.get("t")) == null || jsonNode.asInt() != 1) {
                    return;
                }
                JsonNode jsonNode2 = objectNode.get("mute");
                boolean z6 = false;
                boolean z10 = jsonNode2 != null && jsonNode2.asBoolean();
                JsonNode jsonNode3 = objectNode.get("lv");
                float fFloatValue = jsonNode3 == null ? 0.0f : jsonNode3.floatValue();
                JsonNode jsonNode4 = objectNode.get("pr");
                float fFloatValue2 = jsonNode4 != null ? jsonNode4.floatValue() : 0.0f;
                JsonNode jsonNode5 = objectNode.get("ao");
                if (jsonNode5 != null && jsonNode5.booleanValue()) {
                    z6 = true;
                }
                ScreenRoomService screenRoomService = ScreenRoomService.this;
                if (z10 != screenRoomService.srHostMuted) {
                    screenRoomService.srHostChangeFlags = 1 | screenRoomService.srHostChangeFlags;
                }
                screenRoomService.srHostMuted = z10;
                if (screenRoomService.srHostIndicatorLevel != fFloatValue) {
                    screenRoomService.srHostChangeFlags |= 2;
                }
                screenRoomService.srHostIndicatorLevel = fFloatValue;
                if (fFloatValue2 != screenRoomService.srHostVideoProgress) {
                    screenRoomService.srHostChangeFlags |= 4;
                }
                screenRoomService.srHostVideoProgress = fFloatValue2;
                if (screenRoomService.srHostChangeFlags != 0) {
                    screenRoomService.srHostStatusCaller.run();
                }
                ScreenRoomService screenRoomService2 = ScreenRoomService.this;
                if (z6 != screenRoomService2.isCurrentPlayAudioOnly) {
                    screenRoomService2.isCurrentPlayAudioOnly = z6;
                    screenRoomService2.srAudioOnlyCaller.run();
                }
            }
        });
    }

    @Override // com.narvii.youtube.YoutubeVideoCallback
    public void onFail(String str, int i10, String str2) {
        if (isCurrentVideoId(str)) {
            try {
                Log.e("mediaPlayer", "fetch youtube url fail:" + str + "--" + i10 + "--" + str2);
            } catch (Exception unused) {
            }
            Utils.post(new Runnable() { // from class: com.narvii.chat.screenroom.a
                @Override // java.lang.Runnable
                public final void run() {
                    this.f2020a.onPlayError();
                }
            });
        }
    }

    @Override // com.narvii.chat.audio.Mixer.MixerListener
    public void onLevelIndicator(float f) {
        float[] fArr = this.micLevels;
        int i10 = this.micLevelIdx;
        this.micLevelIdx = i10 + 1;
        fArr[i10 % fArr.length] = f;
        Mixer mixer = this.mixer;
        if (mixer != null && mixer.micVolumn == 0.0f) {
            float f6 = 0.0f;
            for (float f7 : fArr) {
                f6 += f7;
            }
            if (f6 / this.micLevels.length > 0.3f) {
                Utils.post(this.hostMicMuteRunnable);
            }
        }
        Utils.handler.removeCallbacks(this.levelIndicator);
        Utils.post(this.levelIndicator);
        GLVideoView gLVideoView = this.glVideoView;
        float currentPosition = gLVideoView != null ? (gLVideoView.getCurrentPosition() * 1.0f) / this.glVideoView.getDuration() : 0.0f;
        this.tmpsb.setLength(0);
        this.tmpsb.append("{\"t\":1,\"mute\":");
        this.tmpsb.append(this.mixerMicVolume == 0.0f ? '1' : '0');
        this.tmpsb.append(",\"lv\":");
        this.tmpsb.append(this.NUM_FMT_2.format(f));
        this.tmpsb.append(",\"pr\":");
        this.tmpsb.append(this.NUM_FMT_3.format(currentPosition));
        this.tmpsb.append(",\"ao\":");
        this.tmpsb.append(this.isCurrentPlayAudioOnly);
        this.tmpsb.append(kotlinx.serialization.json.internal.b.END_OBJ);
        this.rtcService.sendDataStream(this.tmpsb.toString().getBytes(Utils.UTF_8));
    }

    @Override // com.narvii.chat.audio.Mixer.MixerListener
    public void onMixedBuffer(short[] sArr, int i10, int i11) {
        if (this.rtcService.getMeidaFramePusher() != null) {
            byte[] bArr = this.bytesBuffer;
            if (bArr == null || bArr.length != i11 * 2) {
                bArr = new byte[i11 * 2];
                this.bytesBuffer = bArr;
            }
            ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN).asShortBuffer().put(sArr, i10, i11);
            this.rtcService.getMeidaFramePusher().pushAudioFrame(bArr);
        }
    }

    public void onPlayItemClear() {
        GLVideoView gLVideoView = this.glVideoView;
        if (gLVideoView == null) {
            return;
        }
        this.isCurrentPlayStarted = false;
        gLVideoView.stopPlayback();
        this.playList.items.clear();
        setCurrentPlayListItem(null);
        setPlayStatusReady();
        onPlayStatusChanged();
        this.videoPlayEventDispatcher.safeDispatch(new Callback() { // from class: com.narvii.chat.screenroom.l
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                this.f2032a.lambda$onPlayItemClear$10((VideoPlayListener) obj);
            }
        });
    }

    public void onPlayItemDeleted(PlayListItem playListItem) {
        GLVideoView gLVideoView = this.glVideoView;
        if (gLVideoView != null && playListItem == this.currentPlayListItem) {
            this.isCurrentPlayStarted = false;
            gLVideoView.stopPlayback();
            this.playList.items.remove(playListItem);
            if (getNextLoopPlayItem() == playListItem) {
                setCurrentPlayListItem(null);
            } else {
                setCurrentPlayListItem(getNextLoopPlayItem());
            }
            setPlayStatusReady();
            onPlayStatusChanged();
            this.videoPlayEventDispatcher.safeDispatch(new Callback<VideoPlayListener>() { // from class: com.narvii.chat.screenroom.ScreenRoomService.8
                @Override // com.narvii.util.Callback
                public void call(VideoPlayListener videoPlayListener) {
                    ScreenRoomService.this.lambda$start$4(videoPlayListener);
                }
            });
        }
    }

    @Override // com.narvii.chat.screenroom.SRRoleChangeListener
    public void onScreenRoomRoleChange(boolean z6) {
        List<PlayListItem> listLoadPlayListItem;
        List<PlayListItem> list;
        if (!z6) {
            fetchPlayList(null);
            return;
        }
        PlayList playList = this.playList;
        if ((playList == null || (list = playList.items) == null || list.isEmpty()) && (listLoadPlayListItem = this.playListSharedPreference.loadPlayListItem()) != null) {
            setPlayListItems(listLoadPlayListItem);
        }
    }

    @Override // com.narvii.chat.screenroom.widgets.GLVideoView.MediaFrameAvailableListener
    public void onVideoFrameAvailable(int i10, int i11, EGLContext eGLContext, int i12, int i13, float[] fArr) {
        if (this.rtcService.getMeidaFramePusher() != null) {
            this.rtcService.getMeidaFramePusher().pushVideoFrame(eGLContext, i10, i11, i12, i13, fArr);
        }
    }

    @Override // net.protyposis.android.mediaplayer.MediaPlayer.OnVideoSizeChangedListener
    public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i10, int i11) {
        if (this.rtcService.getRtcManager() != null) {
            this.rtcService.getRtcManager().setScreenRoomHostSwap(i11 > i10);
        }
    }

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onWsMessage(WsService wsService, WsMessage wsMessage) {
        if (wsMessage == null || wsMessage.tag == DONE || wsMessage.type != 119 || isHostInSRChannel() || this.rtcService.getMainSigChannel() == null || this.rtcService.getMainSigChannel().channelType != 5 || !Utils.isEqualsNotNull(JacksonUtils.nodeString(wsMessage.object, "threadId"), this.rtcService.getMainSigChannel().threadId)) {
            return;
        }
        JsonNode jsonNodeNodePath = JacksonUtils.nodePath(wsMessage.object, ScreenRoomFragment.PLAYLIST_FRAGMENT_TAG);
        final PlayList playList = jsonNodeNodePath == null ? new PlayList() : (PlayList) JacksonUtils.readAs(jsonNodeNodePath.toString(), PlayList.class);
        this.playList = playList;
        try {
            this.currentPlayListItem = playList.items.get(playList.currentItemIndex);
        } catch (Exception unused) {
        }
        if (playList.items == null) {
            playList.items = new ArrayList();
        }
        checkSRHostLoading(playList.currentItemStatus == 2);
        this.playListChangedDispatcher.dispatch(new Callback() { // from class: com.narvii.chat.screenroom.f
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                ((PlayListChangeListener) obj).onPlayListChanged(playList);
            }
        });
    }

    @Override // com.narvii.chat.screenroom.PlayActionListener
    public void pause() {
        if (this.currentPlayListItem != null) {
            this.playList.currentItemStatus = 3;
            onPlayStatusChanged();
            this.videoPlayEventDispatcher.safeDispatch(new Callback() { // from class: com.narvii.chat.screenroom.j
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    this.f2030a.lambda$pause$5((VideoPlayListener) obj);
                }
            });
        }
    }

    public void playItem(PlayListItem playListItem) {
        if (playListItem == null || this.glVideoView == null) {
            return;
        }
        this.everPlayed = true;
        setCurrentPlayListItem(playListItem);
        this.isCurrentPlayAudioOnly = playListItem.type == 3;
        this.playList.currentItemStatus = 2;
        onPlayStatusChanged();
        this.glVideoView.stopPlayback();
        this.isCurrentPlayStarted = true;
        if (this.youtubeService != null && !TextUtils.isEmpty(this.curYoutubeId)) {
            this.youtubeService.abort(this.curYoutubeId, null);
        }
        this.glVideoView.clearSurfaceView();
        if (this.glVideoView != null) {
            if (YoutubeUtils.isYtvScheme(playListItem.getMediaUrl())) {
                this.curYoutubeId = YoutubeUtils.getYoutubeVideoIdFromUrl(playListItem.getMediaUrl());
                setBuffering(true);
                this.youtubeService.exec(this.curYoutubeId, null, this);
            } else {
                startPlayVideo(Uri.parse(playListItem.getMediaUrl()));
            }
        }
        this.videoPlayEventDispatcher.safeDispatch(new Callback() { // from class: com.narvii.chat.screenroom.m
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                this.f2033a.lambda$playItem$7((VideoPlayListener) obj);
            }
        });
    }

    public void removePlayListChangeListener(PlayListChangeListener playListChangeListener) {
        this.playListChangedDispatcher.removeListener(playListChangeListener);
    }

    public void removeSRHostAudioOnlyListener(SRHostAudioOnlyListener sRHostAudioOnlyListener) {
        this.srHostAudioOnlyListenerEventDispatcher.removeListener(sRHostAudioOnlyListener);
    }

    public void removeSRHostLoadingListener(SRHostLoadingListener sRHostLoadingListener) {
        this.srHostLoadingListenerEventDispatcher.removeListener(sRHostLoadingListener);
    }

    public void removeSRHostStatusListener(SRHostStatusListener sRHostStatusListener) {
        this.srHostStatusListenerEventDispatcher.removeListener(sRHostStatusListener);
    }

    public void removeSRPermissionListener(SRPermissionActionChangeListener sRPermissionActionChangeListener) {
        this.srActionChangeEventDispatcher.removeListener(sRPermissionActionChangeListener);
    }

    public void removeVideoPlayListner(VideoPlayListener videoPlayListener) {
        this.videoPlayEventDispatcher.removeListener(videoPlayListener);
    }

    public void setGlVideoView(final GLVideoView gLVideoView) {
        this.glVideoView = gLVideoView;
        gLVideoView.getCurrentPosition();
        gLVideoView.setOnInfoListener(new MediaPlayer.OnInfoListener() { // from class: com.narvii.chat.screenroom.n
            @Override // net.protyposis.android.mediaplayer.MediaPlayer.OnInfoListener
            public final boolean onInfo(MediaPlayer mediaPlayer, int i10, int i11) {
                return this.f2034a.lambda$setGlVideoView$0(mediaPlayer, i10, i11);
            }
        });
        gLVideoView.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: com.narvii.chat.screenroom.o
            @Override // net.protyposis.android.mediaplayer.MediaPlayer.OnPreparedListener
            public final void onPrepared(MediaPlayer mediaPlayer) {
                this.f2035a.lambda$setGlVideoView$1(mediaPlayer);
            }
        });
        gLVideoView.setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: com.narvii.chat.screenroom.p
            @Override // net.protyposis.android.mediaplayer.MediaPlayer.OnErrorListener
            public final boolean onError(MediaPlayer mediaPlayer, int i10, int i11) {
                return this.f2036a.lambda$setGlVideoView$2(gLVideoView, mediaPlayer, i10, i11);
            }
        });
        gLVideoView.setOnSeekCompleteListener(new MediaPlayer.OnSeekCompleteListener() { // from class: com.narvii.chat.screenroom.ScreenRoomService.2
            @Override // net.protyposis.android.mediaplayer.MediaPlayer.OnSeekCompleteListener
            public void onSeekComplete(MediaPlayer mediaPlayer) {
                ScreenRoomService.this.setBuffering(false);
            }
        });
        gLVideoView.setOnSeekListener(new MediaPlayer.OnSeekListener() { // from class: com.narvii.chat.screenroom.ScreenRoomService.3
            @Override // net.protyposis.android.mediaplayer.MediaPlayer.OnSeekListener
            public void onSeek(MediaPlayer mediaPlayer) {
                ScreenRoomService.this.setBuffering(true);
            }
        });
        gLVideoView.setOnCompletionListener(this);
        gLVideoView.setVideoFrameAvailableListener(this);
        gLVideoView.setVolume(getMediaVolume());
    }

    public void setHostMicMuted(boolean z6) {
        float f = z6 ? 0.0f : 8.0f;
        this.mixerMicVolume = f;
        this.muteHintInfoShown = false;
        Mixer mixer = this.mixer;
        if (mixer != null) {
            mixer.micVolumn = f;
        }
    }

    public void setMediaVolume(float f) {
        this.mixerMediaVolume = f;
        Mixer mixer = this.mixer;
        if (mixer != null) {
            mixer.audioVolumn = f;
        }
        GLVideoView gLVideoView = this.glVideoView;
        if (gLVideoView != null) {
            gLVideoView.setVolume(f);
        }
    }

    public void setMicVolume(float f) {
        this.mixerMicVolume = f;
        Mixer mixer = this.mixer;
        if (mixer != null) {
            mixer.micVolumn = f;
        }
    }

    @Override // com.narvii.chat.screenroom.PlayActionListener
    public void start() {
        if (this.currentPlayListItem != null) {
            this.isCurrentPlayStarted = true;
            this.playList.currentItemStatus = 2;
            onPlayStatusChanged();
            this.videoPlayEventDispatcher.safeDispatch(new Callback() { // from class: com.narvii.chat.screenroom.h
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    this.f2027a.lambda$start$4((VideoPlayListener) obj);
                }
            });
        }
    }

    @Override // com.narvii.chat.screenroom.PlayActionListener
    public void startPlay() {
        playItem(this.currentPlayListItem);
    }

    public void stopPlay() {
        GLVideoView gLVideoView = this.glVideoView;
        if (gLVideoView != null) {
            gLVideoView.stopPlayback();
        }
    }

    public ScreenRoomService(NVContext nVContext) {
        this.context = nVContext;
        WsService wsService = (WsService) nVContext.getService("ws");
        this.ws = wsService;
        wsService.listeners.addListener(this);
        PlayList playList = new PlayList();
        this.playList = playList;
        playList.items = new ArrayList();
        this.rtcService = (RtcService) nVContext.getService("rtc");
        this.youtubeService = (YoutubeService) nVContext.getService(ExternalSourceOrigin.EXTERNAL_SOURCE_ORIGIN_YOUTUBE);
        this.rtcService.addSRChannelStatusChangeListener(this);
        this.rtcService.addSRRoleChangeListener(this);
        this.playListSharedPreference = new PlayListSharedPreference(nVContext);
        DecimalFormatSymbols decimalFormatSymbols = new DecimalFormatSymbols(Locale.US);
        decimalFormatSymbols.setDecimalSeparator('.');
        this.NUM_FMT_2 = new DecimalFormat("0.##", decimalFormatSymbols);
        this.NUM_FMT_3 = new DecimalFormat("0.###", decimalFormatSymbols);
    }

    private PlayListItem getNextLoopPlayItem() {
        PlayListItem nextPlayItem = getNextPlayItem();
        if (nextPlayItem == null && !this.playList.items.isEmpty()) {
            return this.playList.items.get(0);
        }
        return nextPlayItem;
    }

    public boolean hasNextPlayItem() {
        if (getNextPlayItem() != null) {
            return true;
        }
        return false;
    }

    public boolean hasPrevPlayItem() {
        if (getPrevPlayItem() != null) {
            return true;
        }
        return false;
    }

    @Override // com.narvii.youtube.YoutubeVideoCallback
    public void onFinish(String str, YoutubeVideoList youtubeVideoList) {
        if (isCurrentVideoId(str)) {
            String url = youtubeVideoList.getUrl();
            setBuffering(false);
            startPlayVideo(Uri.parse(url));
        }
    }

    @Override // com.narvii.chat.screenroom.PlayActionListener
    public void playNext() {
        playItem(getNextPlayItem());
    }

    @Override // com.narvii.chat.screenroom.PlayActionListener
    public void playPrev() {
        playItem(getPrevPlayItem());
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0054  */
    public void setPlayListItems(List<PlayListItem> list) {
        boolean z6;
        boolean z10 = false;
        if (CollectionUtils.isEmpty(list)) {
            this.everPlayed = false;
        }
        this.playListSharedPreference.savePlaylist(list);
        this.playList.items = new ArrayList(list);
        PlayList playList = this.playList;
        playList.currentItemIndex = playList.items.indexOf(this.currentPlayListItem);
        if (!this.everPlayed && !this.isCurrentPlayStarted && !this.playList.items.isEmpty()) {
            PlayListItem playListItem = this.playList.items.get(0);
            PlayListItem playListItem2 = this.currentPlayListItem;
            if (playListItem2 != null) {
                if (playListItem2 == playListItem) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (this.playList.currentItemStatus == 1) {
                    z10 = true;
                }
                if (!(z6 & z10)) {
                    setCurrentPlayListItem(playListItem);
                    setPlayStatusReady();
                }
            } else {
                setCurrentPlayListItem(playListItem);
                setPlayStatusReady();
            }
        }
        updatePlayList(null);
        this.videoPlayEventDispatcher.safeDispatch(new Callback() { // from class: com.narvii.chat.screenroom.e
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                this.f2024a.lambda$setPlayListItems$9((VideoPlayListener) obj);
            }
        });
    }

    public void toggleHostMic() {
        setHostMicMuted(!getLocalMicMuted());
    }

    private void fetchPlayList(int i10, String str, final Callback callback) {
        WsRequest wsRequest = new WsRequest();
        wsRequest.type = 122;
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put(CommentPostActivity.COMMENT_POST_KEY_NDC_ID, i10);
        objectNodeCreateObjectNode.put("threadId", str);
        wsRequest.object = objectNodeCreateObjectNode;
        wsRequest.callback = new Callback() { // from class: com.narvii.chat.screenroom.ScreenRoomService.6
            @Override // com.narvii.util.Callback
            public void call(Object obj) {
                if (!(obj instanceof WsMessage)) {
                    Callback callback2 = callback;
                    if (callback2 != null) {
                        callback2.call(obj);
                        return;
                    }
                    return;
                }
                PlayList playList = (PlayList) JacksonUtils.readAs(JacksonUtils.nodePath(((WsMessage) obj).object, ScreenRoomFragment.PLAYLIST_FRAGMENT_TAG).toString(), PlayList.class);
                Callback callback3 = callback;
                if (callback3 != null) {
                    callback3.call(playList);
                }
            }
        };
        this.ws.sendRequest(wsRequest);
    }

    private void updatePlayList(int i10, String str, final Callback callback) {
        WsRequest wsRequest = new WsRequest();
        wsRequest.type = 120;
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put(CommentPostActivity.COMMENT_POST_KEY_NDC_ID, i10);
        objectNodeCreateObjectNode.put("threadId", str);
        objectNodeCreateObjectNode.put(ScreenRoomFragment.PLAYLIST_FRAGMENT_TAG, JacksonUtils.createObjectNode(JacksonUtils.writeAsString(this.playList)));
        wsRequest.object = objectNodeCreateObjectNode;
        wsRequest.tag = DONE;
        wsRequest.callback = new Callback() { // from class: com.narvii.chat.screenroom.ScreenRoomService.7
            @Override // com.narvii.util.Callback
            public void call(Object obj) {
                Callback callback2;
                if ((obj instanceof WsMessage) || (callback2 = callback) == null) {
                    return;
                }
                callback2.call(obj);
            }
        };
        this.ws.sendRequest(wsRequest);
    }
}
