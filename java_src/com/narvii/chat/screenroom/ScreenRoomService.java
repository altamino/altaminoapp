package com.narvii.chat.screenroom;

import android.net.Uri;
import android.text.TextUtils;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.amino.mastes.R;
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

/* loaded from: classes2.dex */
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
    private final Runnable levelIndicator = new AnonymousClass24();
    private final Runnable hostMicMuteRunnable = new Runnable() { // from class: com.narvii.chat.screenroom.ScreenRoomService.25
        Callback<SRHostMicListener> callback = new Callback<SRHostMicListener>() { // from class: com.narvii.chat.screenroom.ScreenRoomService.25.1
            @Override // com.narvii.util.Callback
            public void call(SRHostMicListener sRHostMicListener) {
                sRHostMicListener.onMicMuted();
            }
        };

        @Override // java.lang.Runnable
        public void run() {
            if (!ScreenRoomService.this.muteHintInfoShown) {
                ScreenRoomService.this.muteHintInfoShown = true;
            }
            ScreenRoomService.this.srHostMicListenerEventDispatcher.dispatch(this.callback);
        }
    };
    final SRHostStatusCaller srHostStatusCaller = new SRHostStatusCaller();
    final SRAudioOnlyCaller srAudioOnlyCaller = new SRAudioOnlyCaller();

    private void initMuteConfig() {
    }

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onConnect(WsService wsService) {
    }

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onDisconnect(WsService wsService, Throwable th) {
    }

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onWsError(WsService wsService, WsError wsError) {
    }

    public void setGlVideoView(final GLVideoView gLVideoView) {
        this.glVideoView = gLVideoView;
        gLVideoView.getCurrentPosition();
        if (gLVideoView != null) {
            gLVideoView.setOnInfoListener(new MediaPlayer.OnInfoListener() { // from class: com.narvii.chat.screenroom.ScreenRoomService.1
                @Override // net.protyposis.android.mediaplayer.MediaPlayer.OnInfoListener
                public boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
                    if (i == 701) {
                        ScreenRoomService.this.setBuffering(true);
                    } else if (i == 702) {
                        ScreenRoomService.this.setBuffering(false);
                    }
                    return false;
                }
            });
            gLVideoView.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: com.narvii.chat.screenroom.ScreenRoomService.2
                @Override // net.protyposis.android.mediaplayer.MediaPlayer.OnPreparedListener
                public void onPrepared(MediaPlayer mediaPlayer) {
                    ScreenRoomService.this.setBuffering(false);
                }
            });
            gLVideoView.setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: com.narvii.chat.screenroom.ScreenRoomService.3
                @Override // net.protyposis.android.mediaplayer.MediaPlayer.OnErrorListener
                public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
                    Log.e("mediaPlayer", "what:" + i + "-extra:" + i2 + "-" + gLVideoView.getUri());
                    Utils.post(new Runnable() { // from class: com.narvii.chat.screenroom.ScreenRoomService.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            ScreenRoomService.this.onPlayError();
                        }
                    });
                    return true;
                }
            });
            gLVideoView.setOnSeekCompleteListener(new MediaPlayer.OnSeekCompleteListener() { // from class: com.narvii.chat.screenroom.ScreenRoomService.4
                @Override // net.protyposis.android.mediaplayer.MediaPlayer.OnSeekCompleteListener
                public void onSeekComplete(MediaPlayer mediaPlayer) {
                    ScreenRoomService.this.setBuffering(false);
                }
            });
            gLVideoView.setOnSeekListener(new MediaPlayer.OnSeekListener() { // from class: com.narvii.chat.screenroom.ScreenRoomService.5
                @Override // net.protyposis.android.mediaplayer.MediaPlayer.OnSeekListener
                public void onSeek(MediaPlayer mediaPlayer) {
                    ScreenRoomService.this.setBuffering(true);
                }
            });
            gLVideoView.setOnCompletionListener(this);
            gLVideoView.setVideoFrameAvailableListener(this);
            gLVideoView.setVolume(getMediaVolume());
        }
    }

    public void stopPlay() {
        GLVideoView gLVideoView = this.glVideoView;
        if (gLVideoView != null) {
            gLVideoView.stopPlayback();
        }
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
        this.videoPlayEventDispatcher.safeDispatch(new Callback<VideoPlayListener>() { // from class: com.narvii.chat.screenroom.ScreenRoomService.6
            @Override // com.narvii.util.Callback
            public void call(VideoPlayListener videoPlayListener) {
                ScreenRoomService.this.notifyPlayListener(videoPlayListener);
            }
        });
    }

    public void notifyVideoPlayChanged() {
        this.videoPlayEventDispatcher.safeDispatch(new Callback<VideoPlayListener>() { // from class: com.narvii.chat.screenroom.ScreenRoomService.7
            @Override // com.narvii.util.Callback
            public void call(VideoPlayListener videoPlayListener) {
                ScreenRoomService.this.notifyPlayListener(videoPlayListener);
            }
        });
    }

    public GLVideoView getGlVideoView() {
        return this.glVideoView;
    }

    public ScreenRoomService(NVContext nVContext) {
        this.context = nVContext;
        this.ws = (WsService) nVContext.getService("ws");
        this.ws.listeners.addListener(this);
        this.playList = new PlayList();
        this.playList.items = new ArrayList();
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

    public PlayList getPlayList() {
        return this.playList;
    }

    public List<PlayListItem> getPlayItemList() {
        return this.playList.items;
    }

    @Override // com.narvii.chat.screenroom.PlayActionListener
    public void startPlay() {
        playItem(this.currentPlayListItem);
    }

    public PlayListItem getCurrentPlayListItem() {
        return this.currentPlayListItem;
    }

    @Override // com.narvii.chat.screenroom.PlayActionListener
    public void playPrev() {
        playItem(getPrevPlayItem());
    }

    @Override // com.narvii.chat.screenroom.PlayActionListener
    public void playNext() {
        playItem(getNextPlayItem());
    }

    public void checkSRHostLoading(boolean z) {
        if (this.checkSRHostLoading == z) {
            return;
        }
        this.checkSRHostLoading = z;
        if (z) {
            onScreenRoomHostLoading(false);
            this.screenRoomHostLoadingCheckRunnable = new Runnable() { // from class: com.narvii.chat.screenroom.ScreenRoomService.8
                @Override // java.lang.Runnable
                public void run() {
                    ScreenRoomService screenRoomService = ScreenRoomService.this;
                    if (!screenRoomService.screenRoomHostDataCame) {
                        screenRoomService.onScreenRoomHostLoading(true);
                    }
                    ScreenRoomService screenRoomService2 = ScreenRoomService.this;
                    screenRoomService2.screenRoomHostDataCame = false;
                    Utils.handler.postDelayed(screenRoomService2.screenRoomHostLoadingCheckRunnable, 2000L);
                }
            };
            Utils.handler.removeCallbacks(this.screenRoomHostLoadingCheckRunnable);
            this.screenRoomHostDataCame = false;
            Utils.handler.postDelayed(this.screenRoomHostLoadingCheckRunnable, 2000L);
            return;
        }
        Utils.handler.removeCallbacks(this.screenRoomHostLoadingCheckRunnable);
        onScreenRoomHostLoading(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onScreenRoomHostLoading(final boolean z) {
        Log.d("loading", z + "");
        Utils.post(new Runnable() { // from class: com.narvii.chat.screenroom.ScreenRoomService.9
            @Override // java.lang.Runnable
            public void run() {
                ScreenRoomService.this.srHostLoadingListenerEventDispatcher.safeDispatch(new Callback<SRHostLoadingListener>() { // from class: com.narvii.chat.screenroom.ScreenRoomService.9.1
                    @Override // com.narvii.util.Callback
                    public void call(SRHostLoadingListener sRHostLoadingListener) {
                        sRHostLoadingListener.onHostLoading(z);
                    }
                });
            }
        });
    }

    public void addSRHostLoadingListener(SRHostLoadingListener sRHostLoadingListener) {
        this.srHostLoadingListenerEventDispatcher.addListener(sRHostLoadingListener);
    }

    public void removeSRHostLoadingListener(SRHostLoadingListener sRHostLoadingListener) {
        this.srHostLoadingListenerEventDispatcher.removeListener(sRHostLoadingListener);
    }

    @Override // com.narvii.chat.screenroom.PlayActionListener
    public void start() {
        if (this.currentPlayListItem != null) {
            this.isCurrentPlayStarted = true;
            this.playList.currentItemStatus = 2;
            onPlayStatusChanged();
            this.videoPlayEventDispatcher.safeDispatch(new Callback<VideoPlayListener>() { // from class: com.narvii.chat.screenroom.ScreenRoomService.10
                @Override // com.narvii.util.Callback
                public void call(VideoPlayListener videoPlayListener) {
                    ScreenRoomService.this.notifyPlayListener(videoPlayListener);
                }
            });
        }
    }

    @Override // com.narvii.chat.screenroom.PlayActionListener
    public void pause() {
        if (this.currentPlayListItem != null) {
            this.playList.currentItemStatus = 3;
            onPlayStatusChanged();
            this.videoPlayEventDispatcher.safeDispatch(new Callback<VideoPlayListener>() { // from class: com.narvii.chat.screenroom.ScreenRoomService.11
                @Override // com.narvii.util.Callback
                public void call(VideoPlayListener videoPlayListener) {
                    ScreenRoomService.this.notifyPlayListener(videoPlayListener);
                }
            });
        }
    }

    public boolean isHostInSRChannel() {
        ChannelUser channelUser;
        ChannelUserWrapper mainChannelLocalUserWrapper = this.rtcService.getMainChannelLocalUserWrapper();
        if (mainChannelLocalUserWrapper == null || (channelUser = mainChannelLocalUserWrapper.channelUser) == null) {
            return false;
        }
        return channelUser.isHost;
    }

    public void addPlayListChangeListenter(PlayListChangeListener playListChangeListener) {
        this.playListChangedDispatcher.addListener(playListChangeListener);
    }

    public void removePlayListChangeListener(PlayListChangeListener playListChangeListener) {
        this.playListChangedDispatcher.removeListener(playListChangeListener);
    }

    public void addVideoPlayListener(VideoPlayListener videoPlayListener) {
        this.videoPlayEventDispatcher.addListener(videoPlayListener);
    }

    public void removeVideoPlayListner(VideoPlayListener videoPlayListener) {
        this.videoPlayEventDispatcher.removeListener(videoPlayListener);
    }

    public void addSRHostStatusListener(SRHostStatusListener sRHostStatusListener) {
        this.srHostStatusListenerEventDispatcher.addListener(sRHostStatusListener);
    }

    public void removeSRHostStatusListener(SRHostStatusListener sRHostStatusListener) {
        this.srHostStatusListenerEventDispatcher.removeListener(sRHostStatusListener);
    }

    public void addSRHostAudioOnlyListener(SRHostAudioOnlyListener sRHostAudioOnlyListener) {
        this.srHostAudioOnlyListenerEventDispatcher.addListener(sRHostAudioOnlyListener);
    }

    public void removeSRHostAudioOnlyListener(SRHostAudioOnlyListener sRHostAudioOnlyListener) {
        this.srHostAudioOnlyListenerEventDispatcher.removeListener(sRHostAudioOnlyListener);
    }

    public void addSRPermissionListener(SRPermissionActionChangeListener sRPermissionActionChangeListener) {
        this.srActionChangeEventDispatcher.addListener(sRPermissionActionChangeListener);
    }

    public void removeSRPermissionListener(SRPermissionActionChangeListener sRPermissionActionChangeListener) {
        this.srActionChangeEventDispatcher.removeListener(sRPermissionActionChangeListener);
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

    private void onPlayStatusChanged() {
        updatePlayList(null);
        this.playListChangedDispatcher.dispatch(new Callback<PlayListChangeListener>() { // from class: com.narvii.chat.screenroom.ScreenRoomService.12
            @Override // com.narvii.util.Callback
            public void call(PlayListChangeListener playListChangeListener) {
                playListChangeListener.onPlayListChanged(ScreenRoomService.this.playList.m47clone());
            }
        });
    }

    private void setCurrentPlayListItem(PlayListItem playListItem) {
        this.currentPlayListItem = playListItem;
        if (playListItem == null) {
            this.playList.currentItemIndex = -1;
        } else {
            PlayList playList = this.playList;
            playList.currentItemIndex = playList.items.indexOf(this.currentPlayListItem);
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
        this.videoPlayEventDispatcher.safeDispatch(new Callback<VideoPlayListener>() { // from class: com.narvii.chat.screenroom.ScreenRoomService.13
            @Override // com.narvii.util.Callback
            public void call(VideoPlayListener videoPlayListener) {
                ScreenRoomService.this.notifyPlayListener(videoPlayListener);
            }
        });
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
        if (YoutubeUtils.isYtvScheme(playListItem.getMediaUrl())) {
            this.curYoutubeId = YoutubeUtils.getYoutubeVideoIdFromUrl(this.currentPlayListItem.getMediaUrl());
            setBuffering(true);
            this.youtubeService.exec(this.curYoutubeId, null, new YoutubeVideoCallback() { // from class: com.narvii.chat.screenroom.ScreenRoomService.14
                @Override // com.narvii.youtube.YoutubeVideoCallback
                public void onFinish(String str, YoutubeVideoList youtubeVideoList) {
                    if (ScreenRoomService.this.isCurrentVideoId(str)) {
                        Uri uri = Uri.parse(youtubeVideoList.getUrl());
                        ScreenRoomService.this.setBuffering(false);
                        ScreenRoomService.this.glVideoView.setVideoURI(uri);
                        ScreenRoomService.this.setBuffering(true);
                    }
                }

                @Override // com.narvii.youtube.YoutubeVideoCallback
                public void onFail(String str, int i, String str2) {
                    if (ScreenRoomService.this.isCurrentVideoId(str)) {
                        ScreenRoomService.this.setBuffering(false);
                        ScreenRoomService.this.isCurrentPlayStarted = false;
                    }
                }
            });
        } else {
            this.glVideoView.setVideoURI(Uri.parse(this.currentPlayListItem.getMediaUrl()));
            setBuffering(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setBuffering(final boolean z) {
        this.buffering = z;
        this.videoPlayEventDispatcher.safeDispatch(new Callback<VideoPlayListener>() { // from class: com.narvii.chat.screenroom.ScreenRoomService.15
            @Override // com.narvii.util.Callback
            public void call(VideoPlayListener videoPlayListener) {
                videoPlayListener.onBuffering(z);
            }
        });
    }

    public void setPlayListItems(List<PlayListItem> list) {
        boolean z = false;
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
                if ((playListItem2 == playListItem) & (this.playList.currentItemStatus == 1)) {
                    z = true;
                }
            }
            if (!z) {
                setCurrentPlayListItem(playListItem);
                setPlayStatusReady();
            }
        }
        updatePlayList(null);
        this.videoPlayEventDispatcher.safeDispatch(new Callback<VideoPlayListener>() { // from class: com.narvii.chat.screenroom.ScreenRoomService.16
            @Override // com.narvii.util.Callback
            public void call(VideoPlayListener videoPlayListener) {
                ScreenRoomService.this.notifyPlayListener(videoPlayListener);
            }
        });
    }

    public boolean isCurrentPlayStarted() {
        return this.isCurrentPlayStarted;
    }

    public boolean isCurrentPlayAudioOnly() {
        return this.isCurrentPlayAudioOnly;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyPlayListener(VideoPlayListener videoPlayListener) {
        videoPlayListener.onPlayListChanged(this.playList, getPrevPlayItem() != null, getNextPlayItem() != null);
    }

    public boolean hasPrevPlayItem() {
        return getPrevPlayItem() != null;
    }

    public boolean hasNextPlayItem() {
        return getNextPlayItem() != null;
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

    private PlayListItem getNextLoopPlayItem() {
        PlayListItem nextPlayItem = getNextPlayItem();
        return (nextPlayItem != null || this.playList.items.isEmpty()) ? nextPlayItem : this.playList.items.get(0);
    }

    @Override // com.narvii.chat.screenroom.widgets.GLVideoView.MediaFrameAvailableListener
    public void onVideoFrameAvailable(int i, int i2, EGLContext eGLContext, int i3, int i4, float[] fArr) {
        if (this.rtcService.getMeidaFramePusher() != null) {
            this.rtcService.getMeidaFramePusher().pushVideoFrame(eGLContext, i, i2, i3, i4, fArr);
        }
    }

    @Override // com.narvii.chat.screenroom.widgets.GLVideoView.MediaFrameAvailableListener
    public void onAudioFrameAvailable(byte[] bArr, int i, int i2, int i3, int i4) {
        synchronized (this.audioLock) {
            if (this.mixer != null) {
                int i5 = i2 / 2;
                short[] sArr = this.shortBuffer;
                if (sArr == null || sArr.length < i5) {
                    sArr = new short[i5];
                    this.shortBuffer = sArr;
                }
                ByteBuffer.wrap(bArr, i, i2).order(ByteOrder.LITTLE_ENDIAN).asShortBuffer().get(sArr, 0, i5);
                this.channelMixer.write(sArr, 0, i5, i4);
                short[] sArrBuffer = this.channelMixer.buffer;
                int i6 = this.channelMixer.length;
                try {
                    if (this.resamplerRate != i3) {
                        this.resampler = new Resampler(1, i3, RtcChatManager.SAMPLE_RATE, 4);
                        this.resamplerRate = i3;
                    }
                    int iPut = this.resampler.put(sArrBuffer, 0, i6);
                    sArrBuffer = this.resampler.buffer();
                    i6 = iPut;
                } catch (Throwable th) {
                    Log.e(TAG, "fail to resample audio frame", th);
                }
                this.mixer.pushMixBuffer(sArrBuffer, 0, i6);
            }
        }
    }

    @Override // com.narvii.chat.audio.Mixer.MixerListener
    public void onMixedBuffer(short[] sArr, int i, int i2) {
        if (this.rtcService.getMeidaFramePusher() != null) {
            byte[] bArr = this.bytesBuffer;
            if (bArr == null || bArr.length != i2 * 2) {
                bArr = new byte[i2 * 2];
                this.bytesBuffer = bArr;
            }
            ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN).asShortBuffer().put(sArr, i, i2);
            this.rtcService.getMeidaFramePusher().pushAudioFrame(bArr);
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

    private void fetchPlayList(int i, String str, final Callback callback) {
        WsRequest wsRequest = new WsRequest();
        wsRequest.type = 122;
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put(CommentPostActivity.COMMENT_POST_KEY_NDC_ID, i);
        objectNodeCreateObjectNode.put("threadId", str);
        wsRequest.object = objectNodeCreateObjectNode;
        wsRequest.callback = new Callback() { // from class: com.narvii.chat.screenroom.ScreenRoomService.17
            @Override // com.narvii.util.Callback
            public void call(Object obj) {
                if (obj instanceof WsMessage) {
                    PlayList playList = (PlayList) JacksonUtils.readAs(JacksonUtils.nodePath(((WsMessage) obj).object, ScreenRoomFragment.PLAYLIST_FRAGMENT_TAG).toString(), PlayList.class);
                    Callback callback2 = callback;
                    if (callback2 != null) {
                        callback2.call(playList);
                        return;
                    }
                    return;
                }
                Callback callback3 = callback;
                if (callback3 != null) {
                    callback3.call(obj);
                }
            }
        };
        this.ws.sendRequest(wsRequest);
    }

    private void updatePlayList(Callback callback) {
        SignallingChannel mainSigChannel = this.rtcService.getMainSigChannel();
        if (mainSigChannel == null) {
            Log.e("TAG", "can not fetch playlist in an empty channel");
        } else {
            updatePlayList(mainSigChannel.ndcId, mainSigChannel.threadId, callback);
        }
    }

    private void updatePlayList(int i, String str, final Callback callback) {
        WsRequest wsRequest = new WsRequest();
        wsRequest.type = 120;
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put(CommentPostActivity.COMMENT_POST_KEY_NDC_ID, i);
        objectNodeCreateObjectNode.put("threadId", str);
        objectNodeCreateObjectNode.put(ScreenRoomFragment.PLAYLIST_FRAGMENT_TAG, JacksonUtils.createObjectNode(JacksonUtils.writeAsString(this.playList)));
        wsRequest.object = objectNodeCreateObjectNode;
        wsRequest.tag = DONE;
        wsRequest.callback = new Callback() { // from class: com.narvii.chat.screenroom.ScreenRoomService.18
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
            this.videoPlayEventDispatcher.safeDispatch(new Callback<VideoPlayListener>() { // from class: com.narvii.chat.screenroom.ScreenRoomService.19
                @Override // com.narvii.util.Callback
                public void call(VideoPlayListener videoPlayListener) {
                    ScreenRoomService.this.notifyPlayListener(videoPlayListener);
                }
            });
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
        this.videoPlayEventDispatcher.safeDispatch(new Callback<VideoPlayListener>() { // from class: com.narvii.chat.screenroom.ScreenRoomService.20
            @Override // com.narvii.util.Callback
            public void call(VideoPlayListener videoPlayListener) {
                ScreenRoomService.this.notifyPlayListener(videoPlayListener);
            }
        });
    }

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onWsMessage(WsService wsService, WsMessage wsMessage) {
        final PlayList playList;
        if (wsMessage == null || wsMessage.tag == DONE || wsMessage.type != 119 || isHostInSRChannel() || this.rtcService.getMainSigChannel() == null || this.rtcService.getMainSigChannel().channelType != 5) {
            return;
        }
        if (Utils.isEqualsNotNull(JacksonUtils.nodeString(wsMessage.object, "threadId"), this.rtcService.getMainSigChannel().threadId)) {
            JsonNode jsonNodeNodePath = JacksonUtils.nodePath(wsMessage.object, ScreenRoomFragment.PLAYLIST_FRAGMENT_TAG);
            if (jsonNodeNodePath == null) {
                playList = new PlayList();
            } else {
                playList = (PlayList) JacksonUtils.readAs(jsonNodeNodePath.toString(), PlayList.class);
            }
            this.playList = playList;
            try {
                this.currentPlayListItem = playList.items.get(playList.currentItemIndex);
            } catch (Exception unused) {
            }
            if (playList.items == null) {
                playList.items = new ArrayList();
            }
            checkSRHostLoading(playList.currentItemStatus == 2);
            this.playListChangedDispatcher.dispatch(new Callback<PlayListChangeListener>() { // from class: com.narvii.chat.screenroom.ScreenRoomService.21
                @Override // com.narvii.util.Callback
                public void call(PlayListChangeListener playListChangeListener) {
                    playListChangeListener.onPlayListChanged(playList);
                }
            });
        }
    }

    public int getCurrentStatus() {
        return this.playList.currentItemStatus;
    }

    @Override // net.protyposis.android.mediaplayer.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        PlayListItem playListItem = this.currentPlayListItem;
        if (playListItem != null) {
            playListItem.isDone = true;
            playItem(getNextLoopPlayItem());
        }
    }

    @Override // com.narvii.youtube.YoutubeVideoCallback
    public void onFinish(String str, YoutubeVideoList youtubeVideoList) {
        if (isCurrentVideoId(str)) {
            String url = youtubeVideoList.getUrl();
            setBuffering(false);
            startPlayVideo(Uri.parse(url));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isCurrentVideoId(String str) {
        PlayListItem playListItem = this.currentPlayListItem;
        if (playListItem != null && YoutubeUtils.isYtvScheme(playListItem.getMediaUrl())) {
            return Utils.isEqualsNotNull(YoutubeUtils.getYoutubeVideoIdFromUrl(this.currentPlayListItem.getMediaUrl()), str);
        }
        return false;
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

    @Override // com.narvii.youtube.YoutubeVideoCallback
    public void onFail(String str, int i, String str2) {
        if (isCurrentVideoId(str)) {
            try {
                Log.e("mediaPlayer", "fetch youtube url fail:" + str + "--" + i + "--" + str2);
            } catch (Exception unused) {
            }
            Utils.post(new Runnable() { // from class: com.narvii.chat.screenroom.ScreenRoomService.22
                @Override // java.lang.Runnable
                public void run() {
                    ScreenRoomService.this.onPlayError();
                }
            });
        }
    }

    @Override // com.narvii.chat.screenroom.SRChannelStatusChangeListener
    public void onChannelStarted(boolean z) {
        Log.d(TAG, "onChannelStarted");
        initMuteConfig();
        if (z) {
            synchronized (this.audioLock) {
                if (this.mixer != null) {
                    this.mixer.stop();
                }
                this.mixer = new Mixer(RtcChatManager.SAMPLE_RATE, 7, 1);
                this.mixer.audioVolumn = this.mixerMediaVolume;
                this.mixer.micVolumn = this.mixerMicVolume;
                this.mixer.listener = this;
                this.mixer.start();
                this.channelMixer = ChannelMixer.getMixer(1);
            }
            return;
        }
        RtcService rtcService = this.rtcService;
        final int i = rtcService.screenRoomHostUid;
        rtcService.setVideoFrameAvailableListener(new VideoPreProcessing.FrameAvailableListener() { // from class: com.narvii.chat.screenroom.ScreenRoomService.23
            @Override // com.narvii.video.pro.VideoPreProcessing.FrameAvailableListener
            public void onFrameAvailable(final int i2) {
                Utils.post(new Runnable() { // from class: com.narvii.chat.screenroom.ScreenRoomService.23.1
                    @Override // java.lang.Runnable
                    public void run() {
                        int i3 = i2;
                        AnonymousClass23 anonymousClass23 = AnonymousClass23.this;
                        if (i3 == i) {
                            ScreenRoomService.this.onScreenRoomHostLoading(false);
                            ScreenRoomService.this.screenRoomHostDataCame = true;
                        }
                    }
                });
            }
        });
        this.rtcService.addDataStreamListener(this);
    }

    @Override // com.narvii.chat.screenroom.SRChannelStatusChangeListener
    public void onChannelEnd() {
        Log.d(TAG, "onChannelEnd");
        synchronized (this.audioLock) {
            if (this.mixer != null) {
                this.mixer.stop();
                this.mixer = null;
            }
            if (this.resampler != null) {
                this.resampler.close();
                this.resampler = null;
            }
            this.resamplerRate = 0;
        }
        leaveScreenRoom();
        this.rtcService.removeDataStreamListener(this);
        this.srHostMuted = false;
        this.srHostIndicatorLevel = 0.0f;
        this.srHostVideoProgress = 0.0f;
        this.srHostChangeFlags = 0;
    }

    public float getMediaVolume() {
        return this.mixerMediaVolume;
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

    public float getMicVolume() {
        return this.mixerMicVolume;
    }

    public void toggleHostMic() {
        setHostMicMuted(!getLocalMicMuted());
    }

    public boolean getLocalMicMuted() {
        return this.mixerMicVolume == 0.0f;
    }

    public void setHostMicMuted(boolean z) {
        this.mixerMicVolume = z ? 0.0f : 8.0f;
        this.muteHintInfoShown = false;
        Mixer mixer = this.mixer;
        if (mixer != null) {
            mixer.micVolumn = this.mixerMicVolume;
        }
    }

    public void setMicVolume(float f) {
        this.mixerMicVolume = f;
        Mixer mixer = this.mixer;
        if (mixer != null) {
            mixer.micVolumn = f;
        }
    }

    public float getHostVideoProgress() {
        return this.srHostVideoProgress;
    }

    @Override // com.narvii.chat.screenroom.SRRoleChangeListener
    public void onScreenRoomRoleChange(boolean z) {
        List<PlayListItem> listLoadPlayListItem;
        List<PlayListItem> list;
        if (z) {
            PlayList playList = this.playList;
            if ((playList == null || (list = playList.items) == null || list.isEmpty()) && (listLoadPlayListItem = this.playListSharedPreference.loadPlayListItem()) != null) {
                setPlayListItems(listLoadPlayListItem);
                return;
            }
            return;
        }
        fetchPlayList(null);
    }

    @Override // net.protyposis.android.mediaplayer.MediaPlayer.OnVideoSizeChangedListener
    public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
        if (this.rtcService.getRtcManager() != null) {
            this.rtcService.getRtcManager().setScreenRoomHostSwap(i2 > i);
        }
    }

    public float getSrHostMicLevelIndicator() {
        Mixer mixer = this.mixer;
        if (mixer == null) {
            return 0.0f;
        }
        return mixer.level;
    }

    @Override // com.narvii.chat.audio.Mixer.MixerListener
    public void onLevelIndicator(float f) {
        float[] fArr = this.micLevels;
        int i = this.micLevelIdx;
        this.micLevelIdx = i + 1;
        fArr[i % fArr.length] = f;
        Mixer mixer = this.mixer;
        if (mixer != null && mixer.micVolumn == 0.0f) {
            float f2 = 0.0f;
            for (float f3 : fArr) {
                f2 += f3;
            }
            if (f2 / this.micLevels.length > 0.3f) {
                Utils.post(this.hostMicMuteRunnable);
            }
        }
        Utils.handler.removeCallbacks(this.levelIndicator);
        Utils.post(this.levelIndicator);
        float currentPosition = this.glVideoView != null ? (r0.getCurrentPosition() * 1.0f) / this.glVideoView.getDuration() : 0.0f;
        this.tmpsb.setLength(0);
        this.tmpsb.append("{\"t\":1,\"mute\":");
        this.tmpsb.append(this.mixerMicVolume == 0.0f ? '1' : '0');
        this.tmpsb.append(",\"lv\":");
        this.tmpsb.append(this.NUM_FMT_2.format(f));
        this.tmpsb.append(",\"pr\":");
        this.tmpsb.append(this.NUM_FMT_3.format(currentPosition));
        this.tmpsb.append(",\"ao\":");
        this.tmpsb.append(this.isCurrentPlayAudioOnly);
        this.tmpsb.append('}');
        this.rtcService.sendDataStream(this.tmpsb.toString().getBytes(Utils.UTF_8));
    }

    /* renamed from: com.narvii.chat.screenroom.ScreenRoomService$24, reason: invalid class name */
    class AnonymousClass24 implements Runnable {
        Callback<SRHostMicListener> callback = new Callback<SRHostMicListener>() { // from class: com.narvii.chat.screenroom.ScreenRoomService.24.1
            @Override // com.narvii.util.Callback
            public void call(SRHostMicListener sRHostMicListener) {
                sRHostMicListener.onMicLevelIndicator(AnonymousClass24.this.v);
            }
        };
        float v;

        AnonymousClass24() {
        }

        @Override // java.lang.Runnable
        public void run() {
            this.v = ScreenRoomService.this.getSrHostMicLevelIndicator();
            ScreenRoomService.this.rtcService.updateLocalUserVolume(this.v);
            ScreenRoomService.this.srHostMicListenerEventDispatcher.dispatch(this.callback);
        }
    }

    @Override // com.narvii.chat.rtc.DataStreamListener
    public void onDataStreamReceived(int i, byte[] bArr, final ObjectNode objectNode) {
        Utils.post(new Runnable() { // from class: com.narvii.chat.screenroom.ScreenRoomService.26
            @Override // java.lang.Runnable
            public void run() {
                JsonNode jsonNode;
                ObjectNode objectNode2 = objectNode;
                if (objectNode2 == null || (jsonNode = objectNode2.get("t")) == null || jsonNode.asInt() != 1) {
                    return;
                }
                JsonNode jsonNode2 = objectNode.get("mute");
                boolean z = false;
                boolean z2 = jsonNode2 != null && jsonNode2.asBoolean();
                JsonNode jsonNode3 = objectNode.get("lv");
                float fFloatValue = jsonNode3 == null ? 0.0f : jsonNode3.floatValue();
                JsonNode jsonNode4 = objectNode.get("pr");
                float fFloatValue2 = jsonNode4 != null ? jsonNode4.floatValue() : 0.0f;
                JsonNode jsonNode5 = objectNode.get("ao");
                if (jsonNode5 != null && jsonNode5.booleanValue()) {
                    z = true;
                }
                ScreenRoomService screenRoomService = ScreenRoomService.this;
                if (z2 != screenRoomService.srHostMuted) {
                    screenRoomService.srHostChangeFlags = 1 | screenRoomService.srHostChangeFlags;
                }
                ScreenRoomService screenRoomService2 = ScreenRoomService.this;
                screenRoomService2.srHostMuted = z2;
                if (screenRoomService2.srHostIndicatorLevel != fFloatValue) {
                    screenRoomService2.srHostChangeFlags |= 2;
                }
                ScreenRoomService screenRoomService3 = ScreenRoomService.this;
                screenRoomService3.srHostIndicatorLevel = fFloatValue;
                if (fFloatValue2 != screenRoomService3.srHostVideoProgress) {
                    screenRoomService3.srHostChangeFlags |= 4;
                }
                ScreenRoomService screenRoomService4 = ScreenRoomService.this;
                screenRoomService4.srHostVideoProgress = fFloatValue2;
                if (screenRoomService4.srHostChangeFlags != 0) {
                    screenRoomService4.srHostStatusCaller.run();
                }
                ScreenRoomService screenRoomService5 = ScreenRoomService.this;
                if (z != screenRoomService5.isCurrentPlayAudioOnly) {
                    screenRoomService5.isCurrentPlayAudioOnly = z;
                    screenRoomService5.srAudioOnlyCaller.run();
                }
            }
        });
    }

    class SRHostStatusCaller implements Runnable, Callback<SRHostStatusListener> {
        SRHostStatusCaller() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ScreenRoomService.this.srHostStatusListenerEventDispatcher.dispatch(this);
            ScreenRoomService.this.srHostChangeFlags = 0;
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
    }

    class SRAudioOnlyCaller implements Runnable, Callback<SRHostAudioOnlyListener> {
        SRAudioOnlyCaller() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ScreenRoomService.this.srHostAudioOnlyListenerEventDispatcher.safeDispatch(this);
        }

        @Override // com.narvii.util.Callback
        public void call(SRHostAudioOnlyListener sRHostAudioOnlyListener) {
            sRHostAudioOnlyListener.onHostAudioOnlyChanged(ScreenRoomService.this.isCurrentPlayAudioOnly);
        }
    }

    public boolean isBuffering() {
        return this.buffering;
    }

    private void notifyUserSeekedWhenReady() {
        if (this.currentPlayListItem == null || this.playList.currentItemStatus != 1) {
            return;
        }
        this.videoPlayEventDispatcher.safeDispatch(new Callback<VideoPlayListener>() { // from class: com.narvii.chat.screenroom.ScreenRoomService.27
            @Override // com.narvii.util.Callback
            public void call(VideoPlayListener videoPlayListener) {
                videoPlayListener.onUserSeeked(ScreenRoomService.this.currentUserSeeked);
            }
        });
    }

    public boolean isCurrentUserSeeked() {
        return this.currentUserSeeked;
    }

    public boolean isSrHostMuted() {
        return this.srHostMuted;
    }

    @Override // com.narvii.chat.screenroom.widgets.SRVideoController.OnUserSeekPositionListener
    public void onUserSeeked() {
        this.currentUserSeeked = true;
        notifyUserSeekedWhenReady();
    }
}
