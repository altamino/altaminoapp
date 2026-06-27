package com.narvii.editor.player;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.RectF;
import android.graphics.Region;
import android.media.AudioManager;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.meicam.sdk.NvsAudioClip;
import com.meicam.sdk.NvsAudioTrack;
import com.meicam.sdk.NvsLiveWindow;
import com.meicam.sdk.NvsRational;
import com.meicam.sdk.NvsStreamingContext;
import com.meicam.sdk.NvsTimeline;
import com.meicam.sdk.NvsTimelineAnimatedSticker;
import com.meicam.sdk.NvsTimelineCaption;
import com.meicam.sdk.NvsVideoClip;
import com.meicam.sdk.NvsVideoTrack;
import com.meicam.sdk.NvsVolume;
import com.narvii.editor.attachment.AttachmentUtils;
import com.narvii.editor.utils.TimelineUtils;
import com.narvii.pip.PipInfoPack;
import com.narvii.scene.model.SceneInfo;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.video.attachment.caption.AttachmentDrawRect;
import com.narvii.video.exception.FileFormatSupportException;
import com.narvii.video.interfaces.IEditorAudioPlayer;
import com.narvii.video.interfaces.IMediaEventListener;
import com.narvii.video.interfaces.IPlayingEventListener;
import com.narvii.video.interfaces.IPreviewPlayer;
import com.narvii.video.interfaces.OnSeekingPositionListener;
import com.narvii.video.model.AVClipInfoPack;
import com.narvii.video.model.Caption;
import com.narvii.video.model.StickerInfoPack;
import com.narvii.video.player.BaseEditorPreviewPlayer;
import com.narvii.video.player.ExtraAudioTrackPlugin;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import kotlin.Pair;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MeiShePreviewPlayer.kt */
/* loaded from: classes2.dex */
public final class MeiShePreviewPlayer extends BaseEditorPreviewPlayer implements NvsStreamingContext.PlaybackCallback2, NvsStreamingContext.PlaybackCallback, NvsStreamingContext.StreamingEngineCallback, NvsStreamingContext.SeekingCallback, NvsStreamingContext.PlaybackExceptionCallback, NvsStreamingContext.HardwareErrorCallback {
    public static final Companion Companion = new Companion(null);
    public static final int MAX_VOLUME = 2;
    public static final String TAG = "MeiShePreviewPlayer";
    public static final String TRANSFORM_TAG = "Transform 2D";
    private final Comparator<NvsTimelineCaption> COMPARE_CAPTION_ZVALUE;
    private final Comparator<NvsTimelineAnimatedSticker> COMPARE_STICKER_ZVALUE;
    private IEditorAudioPlayer attachedExtraAudioPlayer;
    private final Map<String, NvsAudioClip> audioClipMap;
    private final List<NvsAudioTrack> audioTrackList;
    private float audioTrackVolume;
    private NvsVideoTrack backgroundTrack;
    private final Map<String, NvsVideoClip> bgClipMap;
    private final Context context;
    private int currentClipIndex;
    private final ExtraAudioTrackPlugin extraAudioTrackPlugin;
    private NvsAudioTrack globalAudioTrack;
    private final String id;
    private boolean isInMute;
    private float lastVolumeRate;
    private final NvsLiveWindow liveWindow;
    private MeisheListenerManage meisheListenerManage;
    private final List<NvsAudioClip> msAudioClipList;
    private final List<NvsVideoClip> msBgClipList;
    private final List<NvsVideoClip> msVideoClipList;
    private boolean onVideoPrepared;
    private final ArrayList<NvsVideoTrack> pipTrackList;
    private boolean seeking;
    private NvsStreamingContext streamingContext;
    private NvsTimeline timeline;
    private final ArrayList<NvsTimelineCaption> timelineCaptionList;
    private final ArrayList<NvsTimelineAnimatedSticker> timelineStickerList;
    private final Map<String, NvsVideoClip> videoClipMap;
    private NvsVideoTrack videoTrack;
    private float videoTrackVolume;

    @Override // com.meicam.sdk.NvsStreamingContext.StreamingEngineCallback
    public void onFirstVideoFramePresented(NvsTimeline nvsTimeline) {
    }

    @Override // com.meicam.sdk.NvsStreamingContext.StreamingEngineCallback
    public void onStreamingEngineStateChanged(int i) {
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public boolean pauseWhenNextSeek() {
        return false;
    }

    public MeiShePreviewPlayer(Context context) {
        NvsVolume volumeGain;
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.context = context;
        String string = UUID.randomUUID().toString();
        Intrinsics.checkExpressionValueIsNotNull(string, "UUID.randomUUID().toString()");
        this.id = string;
        this.msVideoClipList = new ArrayList();
        this.videoClipMap = new HashMap();
        this.msBgClipList = new ArrayList();
        this.bgClipMap = new HashMap();
        this.msAudioClipList = new ArrayList();
        this.audioClipMap = new HashMap();
        this.liveWindow = new NvsLiveWindow(this.context);
        this.audioTrackList = new ArrayList();
        this.lastVolumeRate = -1.0f;
        this.timelineCaptionList = new ArrayList<>();
        this.timelineStickerList = new ArrayList<>();
        this.pipTrackList = new ArrayList<>();
        this.extraAudioTrackPlugin = new ExtraAudioTrackPlugin(this.context);
        this.COMPARE_CAPTION_ZVALUE = new Comparator<NvsTimelineCaption>() { // from class: com.narvii.editor.player.MeiShePreviewPlayer$COMPARE_CAPTION_ZVALUE$1
            @Override // java.util.Comparator
            public final int compare(NvsTimelineCaption o1, NvsTimelineCaption o2) {
                Intrinsics.checkExpressionValueIsNotNull(o2, "o2");
                float zValue = o2.getZValue();
                Intrinsics.checkExpressionValueIsNotNull(o1, "o1");
                float zValue2 = zValue - o1.getZValue();
                if (zValue2 == 0.0f) {
                    return 0;
                }
                return zValue2 < ((float) 0) ? -1 : 1;
            }
        };
        this.COMPARE_STICKER_ZVALUE = new Comparator<NvsTimelineAnimatedSticker>() { // from class: com.narvii.editor.player.MeiShePreviewPlayer$COMPARE_STICKER_ZVALUE$1
            @Override // java.util.Comparator
            public final int compare(NvsTimelineAnimatedSticker o1, NvsTimelineAnimatedSticker o2) {
                Intrinsics.checkExpressionValueIsNotNull(o2, "o2");
                float zValue = o2.getZValue();
                Intrinsics.checkExpressionValueIsNotNull(o1, "o1");
                float zValue2 = zValue - o1.getZValue();
                if (zValue2 == 0.0f) {
                    return 0;
                }
                return zValue2 < ((float) 0) ? -1 : 1;
            }
        };
        Log.d(TAG, "init >>> ");
        this.streamingContext = NvsStreamingContext.getInstance();
        NvsStreamingContext nvsStreamingContext = this.streamingContext;
        if (nvsStreamingContext != null) {
            nvsStreamingContext.setDefaultCaptionFade(false);
        }
        this.timeline = TimelineUtils.INSTANCE.createTimeline();
        NvsTimeline nvsTimeline = this.timeline;
        this.backgroundTrack = nvsTimeline != null ? nvsTimeline.appendVideoTrack() : null;
        NvsTimeline nvsTimeline2 = this.timeline;
        this.videoTrack = nvsTimeline2 != null ? nvsTimeline2.appendVideoTrack() : null;
        NvsVideoTrack nvsVideoTrack = this.videoTrack;
        this.videoTrackVolume = (nvsVideoTrack == null || (volumeGain = nvsVideoTrack.getVolumeGain()) == null) ? 0.0f : volumeGain.leftVolume;
        this.audioTrackVolume = this.videoTrackVolume;
        setMeisheListener();
        this.liveWindow.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        this.liveWindow.setFillMode(1);
        NvsStreamingContext nvsStreamingContext2 = this.streamingContext;
        if (nvsStreamingContext2 != null) {
            nvsStreamingContext2.connectTimelineWithLiveWindow(this.timeline, this.liveWindow);
        }
    }

    public final Context getContext() {
        return this.context;
    }

    /* compiled from: MeiShePreviewPlayer.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public final String getId() {
        return this.id;
    }

    private final AudioManager getAudioManager() {
        Object systemService = this.context.getSystemService("audio");
        if (systemService != null) {
            return (AudioManager) systemService;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.media.AudioManager");
    }

    private final void setMeisheListener() {
        this.meisheListenerManage = MeisheListenerManage.Companion.getInstance();
        MeisheListenerManage meisheListenerManage = this.meisheListenerManage;
        if (meisheListenerManage != null) {
            meisheListenerManage.registerPlaybackCallback(this);
        }
        MeisheListenerManage meisheListenerManage2 = this.meisheListenerManage;
        if (meisheListenerManage2 != null) {
            meisheListenerManage2.registerPlaybackCallback2(this);
        }
        MeisheListenerManage meisheListenerManage3 = this.meisheListenerManage;
        if (meisheListenerManage3 != null) {
            meisheListenerManage3.registerStreamingEngineCallback(this);
        }
        MeisheListenerManage meisheListenerManage4 = this.meisheListenerManage;
        if (meisheListenerManage4 != null) {
            meisheListenerManage4.registerSeekingCallback(this);
        }
        MeisheListenerManage meisheListenerManage5 = this.meisheListenerManage;
        if (meisheListenerManage5 != null) {
            meisheListenerManage5.registerPlaybackExceptionCallback(this);
        }
        MeisheListenerManage meisheListenerManage6 = this.meisheListenerManage;
        if (meisheListenerManage6 != null) {
            meisheListenerManage6.registerHardwareErrorCallback(this);
        }
    }

    private final void clearMeisheListener() {
        MeisheListenerManage meisheListenerManage = this.meisheListenerManage;
        if (meisheListenerManage != null) {
            meisheListenerManage.unRegisterPlaybackCallback(this);
        }
        MeisheListenerManage meisheListenerManage2 = this.meisheListenerManage;
        if (meisheListenerManage2 != null) {
            meisheListenerManage2.unRegisterPlaybackCallback2(this);
        }
        MeisheListenerManage meisheListenerManage3 = this.meisheListenerManage;
        if (meisheListenerManage3 != null) {
            meisheListenerManage3.unRegisterStreamingEngineCallback(this);
        }
        MeisheListenerManage meisheListenerManage4 = this.meisheListenerManage;
        if (meisheListenerManage4 != null) {
            meisheListenerManage4.unRegisterSeekingCallback(this);
        }
        MeisheListenerManage meisheListenerManage5 = this.meisheListenerManage;
        if (meisheListenerManage5 != null) {
            meisheListenerManage5.unRegisterPlaybackExceptionCallback(this);
        }
        MeisheListenerManage meisheListenerManage6 = this.meisheListenerManage;
        if (meisheListenerManage6 != null) {
            meisheListenerManage6.unRegisterHardwareErrorCallback(this);
        }
    }

    private final long getPosition(int i, int i2) {
        if (i < this.msVideoClipList.size()) {
            i2 += ((int) this.msVideoClipList.get(i).getInPoint()) / 1000;
        }
        return i2 + (i > 0 ? 1 : 0);
    }

    static /* synthetic */ int getCurrentVideoClipIndex$default(MeiShePreviewPlayer meiShePreviewPlayer, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = -1;
        }
        return meiShePreviewPlayer.getCurrentVideoClipIndex(i);
    }

    private final int getCurrentVideoClipIndex(int i) {
        if (i == -1) {
            i = getCurrentVideoPositionInTimeline();
        }
        int size = getVideoClipList().size();
        int iTrimmedDurationInMsWithSpeed = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            AVClipInfoPack aVClipInfoPack = getVideoClipList().get(i3);
            Intrinsics.checkExpressionValueIsNotNull(aVClipInfoPack, "videoClipList[i]");
            iTrimmedDurationInMsWithSpeed += aVClipInfoPack.trimmedDurationInMsWithSpeed();
            if (i <= iTrimmedDurationInMsWithSpeed) {
                return i3;
            }
            i2 = i3;
        }
        return i2;
    }

    private final void correctVideoTrackVolume(NvsVideoTrack nvsVideoTrack, float f, float f2) {
        if (f2 != -1.0f) {
            f /= f2;
        }
        if (nvsVideoTrack != null) {
            int clipCount = nvsVideoTrack.getClipCount();
            for (int i = 0; i < clipCount; i++) {
                NvsVideoClip clip = nvsVideoTrack.getClipByIndex(i);
                Intrinsics.checkExpressionValueIsNotNull(clip, "clip");
                clip.setVolumeGain(clip.getVolumeGain().leftVolume * f, clip.getVolumeGain().rightVolume * f);
            }
        }
    }

    private final void correctAudioTrackVolume(NvsAudioTrack nvsAudioTrack, float f, float f2) {
        if (f2 != -1.0f) {
            f /= f2;
        }
        if (nvsAudioTrack != null) {
            int clipCount = nvsAudioTrack.getClipCount();
            for (int i = 0; i < clipCount; i++) {
                NvsAudioClip clip = nvsAudioTrack.getClipByIndex(i);
                Intrinsics.checkExpressionValueIsNotNull(clip, "clip");
                clip.setVolumeGain(clip.getVolumeGain().leftVolume * f, clip.getVolumeGain().rightVolume * f);
            }
        }
    }

    private final void onDoNextVideoSeek() {
        Iterator<IMediaEventListener> it = getMediaEventListeners().iterator();
        while (it.hasNext()) {
            it.next().onDoNextVideoSeek();
        }
    }

    private final void correctVolume(float f) {
        if (f >= 1) {
            f = 0.99f;
        } else if (f <= 0) {
            f = 0.01f;
        }
        correctVideoTrackVolume(this.videoTrack, f, this.lastVolumeRate);
        Iterator<T> it = this.pipTrackList.iterator();
        while (it.hasNext()) {
            correctVideoTrackVolume((NvsVideoTrack) it.next(), f, this.lastVolumeRate);
        }
        Iterator<T> it2 = this.audioTrackList.iterator();
        while (it2.hasNext()) {
            correctAudioTrackVolume((NvsAudioTrack) it2.next(), f, this.lastVolumeRate);
        }
        this.lastVolumeRate = f;
    }

    private final void appendVideoClip(AVClipInfoPack aVClipInfoPack) {
        this.seeking = false;
        Pair<NvsVideoClip, NvsVideoClip> pairAppendVideoIntoTimeline = TimelineUtils.INSTANCE.appendVideoIntoTimeline(aVClipInfoPack, this.videoTrack, this.backgroundTrack);
        NvsVideoClip nvsVideoClipComponent1 = pairAppendVideoIntoTimeline.component1();
        NvsVideoClip nvsVideoClipComponent2 = pairAppendVideoIntoTimeline.component2();
        if (nvsVideoClipComponent1 != null) {
            Map<String, NvsVideoClip> map = this.videoClipMap;
            String str = aVClipInfoPack.clipId;
            Intrinsics.checkExpressionValueIsNotNull(str, "clip.clipId");
            map.put(str, nvsVideoClipComponent1);
            this.msVideoClipList.add(nvsVideoClipComponent1);
        }
        if (nvsVideoClipComponent2 != null) {
            Map<String, NvsVideoClip> map2 = this.bgClipMap;
            String str2 = aVClipInfoPack.clipId;
            Intrinsics.checkExpressionValueIsNotNull(str2, "clip.clipId");
            map2.put(str2, nvsVideoClipComponent2);
            this.msBgClipList.add(nvsVideoClipComponent2);
        }
        if (nvsVideoClipComponent1 == null) {
            Iterator<IMediaEventListener> it = getMediaEventListeners().iterator();
            while (it.hasNext()) {
                it.next().onVideoError(new FileFormatSupportException(aVClipInfoPack.inputPath, "not support this format"));
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("appendVideoClip >>> path = ");
        sb.append(aVClipInfoPack.inputPath);
        sb.append("  startMs = ");
        long j = 1000;
        sb.append((nvsVideoClipComponent1 != null ? nvsVideoClipComponent1.getTrimIn() : 0L) / j);
        sb.append("  endMs = ");
        sb.append((nvsVideoClipComponent1 != null ? nvsVideoClipComponent1.getTrimOut() : 0L) / j);
        sb.append("  volume = ");
        sb.append(aVClipInfoPack.trackVolume);
        Log.d(TAG, sb.toString());
    }

    private final void appendAudioClip(AVClipInfoPack aVClipInfoPack, boolean z) {
        NvsAudioTrack nvsAudioTrack;
        Log.d(TAG, "addAudioClip >>> path = " + aVClipInfoPack.inputPath + "   startMs = " + aVClipInfoPack.trimStartInMs + "  endMs = " + aVClipInfoPack.trimEndInMs + "  offset = " + aVClipInfoPack.startOffsetToMainTrackInMs + "  indexInScene = " + aVClipInfoPack.indexInScene + " isGlobal = " + z);
        this.seeking = false;
        if (z) {
            if (this.globalAudioTrack == null) {
                NvsTimeline nvsTimeline = this.timeline;
                this.globalAudioTrack = nvsTimeline != null ? nvsTimeline.appendAudioTrack() : null;
            }
            NvsAudioTrack nvsAudioTrack2 = this.globalAudioTrack;
            if (nvsAudioTrack2 != null) {
                nvsAudioTrack2.removeAllClips();
            }
            nvsAudioTrack = this.globalAudioTrack;
        } else {
            while (aVClipInfoPack.indexInScene >= this.audioTrackList.size()) {
                NvsTimeline nvsTimeline2 = this.timeline;
                NvsAudioTrack nvsAudioTrackAppendAudioTrack = nvsTimeline2 != null ? nvsTimeline2.appendAudioTrack() : null;
                if (nvsAudioTrackAppendAudioTrack != null) {
                    this.audioTrackList.add(nvsAudioTrackAppendAudioTrack);
                }
            }
            nvsAudioTrack = this.audioTrackList.get(aVClipInfoPack.indexInScene);
        }
        NvsAudioClip nvsAudioClipAppendAudioIntoTimeline = TimelineUtils.INSTANCE.appendAudioIntoTimeline(aVClipInfoPack, nvsAudioTrack);
        if (nvsAudioClipAppendAudioIntoTimeline != null) {
            Map<String, NvsAudioClip> map = this.audioClipMap;
            String str = aVClipInfoPack.clipId;
            Intrinsics.checkExpressionValueIsNotNull(str, "clip.clipId");
            map.put(str, nvsAudioClipAppendAudioIntoTimeline);
            this.msAudioClipList.add(nvsAudioClipAppendAudioIntoTimeline);
        }
        if (nvsAudioClipAppendAudioIntoTimeline == null) {
            Iterator<IMediaEventListener> it = getMediaEventListeners().iterator();
            while (it.hasNext()) {
                it.next().onVideoError(new FileFormatSupportException(aVClipInfoPack.inputPath, "not support this format"));
            }
        }
        if (z) {
            correctVolume(1 - aVClipInfoPack.trackVolume);
        }
    }

    @Override // com.narvii.video.player.BaseEditorPreviewPlayer, com.narvii.video.interfaces.IPreviewPlayer
    public AVClipInfoPack addVideoClipList(ArrayList<AVClipInfoPack> clipList) {
        Intrinsics.checkParameterIsNotNull(clipList, "clipList");
        Log.d(TAG, "addVideoClipList >>> clipList = " + clipList.size() + ' ');
        Iterator<T> it = clipList.iterator();
        while (it.hasNext()) {
            appendVideoClip((AVClipInfoPack) it.next());
        }
        NvsVideoTrack nvsVideoTrack = this.videoTrack;
        int i = 0;
        int clipCount = nvsVideoTrack != null ? nvsVideoTrack.getClipCount() : 0;
        if (clipCount >= 0) {
            int i2 = 0;
            while (true) {
                NvsVideoTrack nvsVideoTrack2 = this.videoTrack;
                if (nvsVideoTrack2 != null) {
                    nvsVideoTrack2.setBuiltinTransition(i2, "");
                }
                if (i2 == clipCount) {
                    break;
                }
                i2++;
            }
        }
        NvsVideoTrack nvsVideoTrack3 = this.backgroundTrack;
        int clipCount2 = nvsVideoTrack3 != null ? nvsVideoTrack3.getClipCount() : 0;
        if (clipCount2 >= 0) {
            while (true) {
                NvsVideoTrack nvsVideoTrack4 = this.backgroundTrack;
                if (nvsVideoTrack4 != null) {
                    nvsVideoTrack4.setBuiltinTransition(i, "");
                }
                if (i == clipCount2) {
                    break;
                }
                i++;
            }
        }
        return super.addVideoClipList(clipList);
    }

    @Override // com.narvii.video.player.BaseEditorPreviewPlayer, com.narvii.video.interfaces.IPreviewPlayer
    public AVClipInfoPack resetVideoClipList(ArrayList<AVClipInfoPack> clipList, int i, int i2) {
        Intrinsics.checkParameterIsNotNull(clipList, "clipList");
        Log.d(TAG, "resetVideoClipList >>> list size = " + clipList.size() + ' ');
        this.lastVolumeRate = -1.0f;
        NvsVideoTrack nvsVideoTrack = this.videoTrack;
        if (nvsVideoTrack != null) {
            nvsVideoTrack.removeAllClips();
        }
        NvsVideoTrack nvsVideoTrack2 = this.backgroundTrack;
        if (nvsVideoTrack2 != null) {
            nvsVideoTrack2.removeAllClips();
        }
        this.videoClipMap.clear();
        this.msVideoClipList.clear();
        this.bgClipMap.clear();
        this.msBgClipList.clear();
        Iterator<T> it = clipList.iterator();
        while (it.hasNext()) {
            appendVideoClip((AVClipInfoPack) it.next());
        }
        TimelineUtils.INSTANCE.clearTransitionEffects(this.videoTrack);
        TimelineUtils.INSTANCE.clearTransitionEffects(this.backgroundTrack);
        seekTimeLineTo(i, i2);
        this.currentClipIndex = i;
        return super.resetVideoClipList(clipList, i, i2);
    }

    @Override // com.narvii.video.player.BaseEditorPreviewPlayer, com.narvii.video.interfaces.IPreviewPlayer
    public ArrayList<AVClipInfoPack> addVideoClip(AVClipInfoPack clip) {
        Intrinsics.checkParameterIsNotNull(clip, "clip");
        Log.d(TAG, "addVideoClip >>> path = " + clip.inputPath + "   startMs = " + clip.trimStartInMs + "  endMs = " + clip.trimEndInMs);
        appendVideoClip(clip);
        return super.addVideoClip(clip);
    }

    @Override // com.narvii.video.player.BaseEditorPreviewPlayer, com.narvii.video.interfaces.IPreviewPlayer
    public ArrayList<AVClipInfoPack> removeVideoClip(AVClipInfoPack clip) {
        int iIndexOf;
        int iIndexOf2;
        Intrinsics.checkParameterIsNotNull(clip, "clip");
        Log.d(TAG, "removeVideoClip >>> clipList = " + clip + ' ');
        NvsVideoClip nvsVideoClipRemove = this.videoClipMap.remove(clip.clipId);
        if (nvsVideoClipRemove != null && (iIndexOf2 = this.msVideoClipList.indexOf(nvsVideoClipRemove)) > 0) {
            NvsVideoTrack nvsVideoTrack = this.videoTrack;
            if (nvsVideoTrack != null) {
                nvsVideoTrack.removeClip(iIndexOf2, true);
            }
            this.msVideoClipList.remove(iIndexOf2);
        }
        NvsVideoClip nvsVideoClipRemove2 = this.bgClipMap.remove(clip.clipId);
        if (nvsVideoClipRemove2 != null && (iIndexOf = this.msBgClipList.indexOf(nvsVideoClipRemove2)) > 0) {
            NvsVideoTrack nvsVideoTrack2 = this.backgroundTrack;
            if (nvsVideoTrack2 != null) {
                nvsVideoTrack2.removeClip(iIndexOf, true);
            }
            this.msBgClipList.remove(iIndexOf);
        }
        return super.removeVideoClip(clip);
    }

    @Override // com.narvii.video.player.BaseEditorPreviewPlayer, com.narvii.video.interfaces.IPreviewPlayer
    public void removeAllVideos() {
        Log.d(TAG, "removeAllVideos >>> ");
        NvsVideoTrack nvsVideoTrack = this.videoTrack;
        if (nvsVideoTrack != null) {
            nvsVideoTrack.removeAllClips();
        }
        NvsVideoTrack nvsVideoTrack2 = this.backgroundTrack;
        if (nvsVideoTrack2 != null) {
            nvsVideoTrack2.removeAllClips();
        }
        this.msVideoClipList.clear();
        this.videoClipMap.clear();
        this.bgClipMap.clear();
        this.msBgClipList.clear();
        super.removeAllVideos();
    }

    @Override // com.narvii.video.player.BaseEditorPreviewPlayer
    public void onAudioClipListChanged(boolean z, int i) {
        super.onAudioClipListChanged(z, i);
    }

    @Override // com.narvii.video.player.BaseEditorPreviewPlayer, com.narvii.video.interfaces.IPreviewPlayer
    public void resetAudioClipList(List<? extends AVClipInfoPack> clipList) {
        Intrinsics.checkParameterIsNotNull(clipList, "clipList");
        super.resetAudioClipList(clipList);
        Log.d(TAG, "resetAudioClipList >>> list size = " + clipList.size() + ' ');
        this.lastVolumeRate = -1.0f;
        Iterator<T> it = this.audioTrackList.iterator();
        while (it.hasNext()) {
            ((NvsAudioTrack) it.next()).removeAllClips();
        }
        this.audioClipMap.clear();
        this.msAudioClipList.clear();
        Iterator<T> it2 = clipList.iterator();
        while (it2.hasNext()) {
            appendAudioClip((AVClipInfoPack) it2.next(), false);
        }
    }

    @Override // com.narvii.video.player.BaseEditorPreviewPlayer, com.narvii.video.interfaces.IPreviewPlayer
    public void addAudioClipList(ArrayList<AVClipInfoPack> clipList) {
        Intrinsics.checkParameterIsNotNull(clipList, "clipList");
        super.addAudioClipList(clipList);
        Log.d(TAG, "addAudioClipList >>> clipList = " + clipList + ' ');
        Iterator<T> it = clipList.iterator();
        while (it.hasNext()) {
            appendAudioClip((AVClipInfoPack) it.next(), false);
        }
    }

    @Override // com.narvii.video.player.BaseEditorPreviewPlayer, com.narvii.video.interfaces.IPreviewPlayer
    public ArrayList<AVClipInfoPack> addAudioClip(AVClipInfoPack clip, boolean z) {
        Intrinsics.checkParameterIsNotNull(clip, "clip");
        ArrayList<AVClipInfoPack> arrayListAddAudioClip = super.addAudioClip(clip, z);
        appendAudioClip(clip, z);
        return arrayListAddAudioClip;
    }

    @Override // com.narvii.video.player.BaseEditorPreviewPlayer, com.narvii.video.interfaces.IPreviewPlayer
    public void resetAudioClip(AVClipInfoPack clip) {
        int i;
        Intrinsics.checkParameterIsNotNull(clip, "clip");
        super.resetAudioClip(clip);
        if (this.audioClipMap.remove(clip.clipId) == null || (i = clip.indexInScene) < 0 || i >= this.audioTrackList.size()) {
            return;
        }
        NvsAudioTrack nvsAudioTrack = this.audioTrackList.get(clip.indexInScene);
        Iterator<AVClipInfoPack> it = getAdditionalAudioClipList().iterator();
        int i2 = 0;
        while (it.hasNext()) {
            AVClipInfoPack next = it.next();
            if (TextUtils.equals(next.clipId, clip.clipId)) {
                break;
            } else if (next.indexInScene == clip.indexInScene) {
                i2++;
            }
        }
        nvsAudioTrack.removeClip(i2, true);
        appendAudioClip(clip, false);
    }

    @Override // com.narvii.video.player.BaseEditorPreviewPlayer, com.narvii.video.interfaces.IPreviewPlayer
    public ArrayList<AVClipInfoPack> removeAudioClip(AVClipInfoPack clip) {
        int i;
        Intrinsics.checkParameterIsNotNull(clip, "clip");
        ArrayList<AVClipInfoPack> arrayListRemoveAudioClip = super.removeAudioClip(clip);
        Log.d(TAG, "removeAudioClip >>> clipList = " + clip + ' ');
        if (this.audioClipMap.remove(clip.clipId) != null && (i = clip.indexInScene) >= 0 && i < this.audioTrackList.size()) {
            NvsAudioTrack nvsAudioTrack = this.audioTrackList.get(clip.indexInScene);
            int i2 = 0;
            Iterator<AVClipInfoPack> it = getAdditionalAudioClipList().iterator();
            while (it.hasNext()) {
                AVClipInfoPack next = it.next();
                if (TextUtils.equals(next.clipId, clip.clipId)) {
                    break;
                }
                if (next.indexInScene == clip.indexInScene) {
                    i2++;
                }
            }
            nvsAudioTrack.removeClip(i2, true);
        }
        return arrayListRemoveAudioClip;
    }

    @Override // com.narvii.video.player.BaseEditorPreviewPlayer, com.narvii.video.interfaces.IPreviewPlayer
    public void removeAllAudios() {
        super.removeAllAudios();
        Log.d(TAG, "removeAllAudios >>> ");
        Iterator<T> it = this.audioTrackList.iterator();
        while (it.hasNext()) {
            ((NvsAudioTrack) it.next()).removeAllClips();
        }
        removeGlobalAudioClip();
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void removeGlobalAudioClip() {
        NvsAudioTrack nvsAudioTrack = this.globalAudioTrack;
        if (nvsAudioTrack != null) {
            nvsAudioTrack.removeAllClips();
        }
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void setGlobalBgmFade(boolean z, boolean z2) {
        NvsAudioTrack nvsAudioTrack = this.globalAudioTrack;
        if (nvsAudioTrack != null) {
            int clipCount = nvsAudioTrack.getClipCount();
            for (int i = 0; i < clipCount; i++) {
                if (i == 0) {
                    NvsAudioClip clipByIndex = nvsAudioTrack.getClipByIndex(i);
                    Intrinsics.checkExpressionValueIsNotNull(clipByIndex, "it.getClipByIndex(i)");
                    clipByIndex.setFadeInDuration(z ? 4000000L : 0L);
                }
                if (i == nvsAudioTrack.getClipCount() - 1) {
                    NvsAudioClip clipByIndex2 = nvsAudioTrack.getClipByIndex(i);
                    Intrinsics.checkExpressionValueIsNotNull(clipByIndex2, "it.getClipByIndex(i)");
                    clipByIndex2.setFadeOutDuration(z ? 4000000L : 0L);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x008b  */
    @Override // com.narvii.video.player.BaseEditorPreviewPlayer, com.narvii.video.interfaces.IPreviewPlayer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.ArrayList<com.narvii.video.model.StickerInfoPack> addSticker(com.narvii.video.model.StickerInfoPack r12, boolean r13) {
        /*
            r11 = this;
            java.lang.String r0 = "sticker"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r12, r0)
            java.util.ArrayList r0 = super.addSticker(r12, r13)
            r1 = 0
            r11.seeking = r1
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "addSticker >>> sticker id = "
            r2.append(r3)
            java.lang.String r3 = r12.stickerId
            r2.append(r3)
            java.lang.String r3 = "  "
            r2.append(r3)
            java.lang.String r2 = r2.toString()
            java.lang.String r3 = "MeiShePreviewPlayer"
            com.narvii.util.Log.d(r3, r2)
            int r2 = r0.size()
            int r3 = r12.indexInScene
            if (r3 >= 0) goto L33
            goto La6
        L33:
            if (r2 <= r3) goto La6
            java.lang.String r2 = r12.installedPath
            r3 = 0
            if (r2 == 0) goto L5e
            java.io.File r4 = new java.io.File
            r4.<init>(r2)
            boolean r2 = r4.exists()
            if (r2 == 0) goto L5e
            com.meicam.sdk.NvsTimeline r4 = r11.timeline
            if (r4 == 0) goto L5e
            int r2 = r12.startOffsetToMainTrackInMs
            long r5 = (long) r2
            r7 = 1000(0x3e8, double:4.94E-321)
            long r5 = r5 * r7
            int r2 = r12.visibleDurationInMs
            long r9 = (long) r2
            long r7 = r7 * r9
            java.lang.String r9 = r12.templateUuid
            java.lang.String r10 = r12.installedPath
            com.meicam.sdk.NvsTimelineAnimatedSticker r2 = r4.addCustomAnimatedSticker(r5, r7, r9, r10)
            goto L5f
        L5e:
            r2 = r3
        L5f:
            if (r2 == 0) goto L91
            java.util.ArrayList r1 = r11.getStickers()
            java.util.ArrayList r3 = r11.getCaptions()
            java.util.List r1 = kotlin.collections.CollectionsKt.plus(r1, r3)
            float r1 = r11.getLatestAttachmentZVal(r1)
            r12.zValue = r1
            com.narvii.editor.attachment.AttachmentUtils.updateTimelineSticker(r2, r12)
            if (r13 == 0) goto L8b
            java.util.ArrayList<com.meicam.sdk.NvsTimelineAnimatedSticker> r13 = r11.timelineStickerList
            int r13 = r13.size()
            int r12 = r12.indexInScene
            if (r12 >= 0) goto L83
            goto L8b
        L83:
            if (r13 <= r12) goto L8b
            java.util.ArrayList<com.meicam.sdk.NvsTimelineAnimatedSticker> r13 = r11.timelineStickerList
            r13.add(r12, r2)
            goto La6
        L8b:
            java.util.ArrayList<com.meicam.sdk.NvsTimelineAnimatedSticker> r12 = r11.timelineStickerList
            r12.add(r2)
            goto La6
        L91:
            int r12 = r12.indexInScene
            r0.remove(r12)
            java.util.ArrayList r12 = r11.getStickers()
            java.util.ArrayList r13 = r11.getCaptions()
            java.util.List r12 = kotlin.collections.CollectionsKt.plus(r12, r13)
            r13 = 2
            com.narvii.video.player.BaseEditorPreviewPlayer.updateIndexInMixedAttachmentList$default(r11, r12, r1, r13, r3)
        La6:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.editor.player.MeiShePreviewPlayer.addSticker(com.narvii.video.model.StickerInfoPack, boolean):java.util.ArrayList");
    }

    @Override // com.narvii.video.player.BaseEditorPreviewPlayer, com.narvii.video.interfaces.IPreviewPlayer
    public ArrayList<StickerInfoPack> removeSticker(StickerInfoPack sticker) {
        Intrinsics.checkParameterIsNotNull(sticker, "sticker");
        ArrayList<StickerInfoPack> arrayListRemoveSticker = super.removeSticker(sticker);
        Log.d(TAG, "removeSticker >>> sticker id = " + sticker.stickerId + "  ");
        int size = this.timelineStickerList.size();
        int i = sticker.indexInScene;
        if (i >= 0 && size > i) {
            NvsTimelineAnimatedSticker nvsTimelineAnimatedStickerRemove = this.timelineStickerList.remove(i);
            Intrinsics.checkExpressionValueIsNotNull(nvsTimelineAnimatedStickerRemove, "timelineStickerList.removeAt(sticker.indexInScene)");
            NvsTimelineAnimatedSticker nvsTimelineAnimatedSticker = nvsTimelineAnimatedStickerRemove;
            NvsTimeline nvsTimeline = this.timeline;
            if (nvsTimeline != null) {
                nvsTimeline.removeAnimatedSticker(nvsTimelineAnimatedSticker);
            }
        }
        return arrayListRemoveSticker;
    }

    @Override // com.narvii.video.player.BaseEditorPreviewPlayer, com.narvii.video.interfaces.IPreviewPlayer
    public void resetSticker(StickerInfoPack sticker) {
        Intrinsics.checkParameterIsNotNull(sticker, "sticker");
        super.resetSticker(sticker);
        this.seeking = false;
        Log.d(TAG, "resetSticker >>> sticker id = " + sticker.stickerId + "  ");
        NvsTimelineAnimatedSticker timelineSticker = getTimelineSticker(sticker);
        if (timelineSticker != null) {
            NvsTimeline nvsTimeline = this.timeline;
            if (nvsTimeline != null) {
                nvsTimeline.removeAnimatedSticker(timelineSticker);
            }
            this.timelineStickerList.remove(timelineSticker);
            getStickers().remove(sticker);
            addSticker(sticker, true);
        }
    }

    @Override // com.narvii.video.player.BaseEditorPreviewPlayer, com.narvii.video.interfaces.IPreviewPlayer
    public void resetStickerList(List<? extends StickerInfoPack> stickerList) {
        Intrinsics.checkParameterIsNotNull(stickerList, "stickerList");
        Log.d(TAG, "resetStickerList >>> sticker list size = " + stickerList.size() + "  ");
        this.seeking = false;
        Iterator<NvsTimelineAnimatedSticker> it = this.timelineStickerList.iterator();
        while (it.hasNext()) {
            NvsTimelineAnimatedSticker next = it.next();
            NvsTimeline nvsTimeline = this.timeline;
            if (nvsTimeline != null) {
                nvsTimeline.removeAnimatedSticker(next);
            }
        }
        this.timelineStickerList.clear();
        Iterator<? extends StickerInfoPack> it2 = stickerList.iterator();
        while (it2.hasNext()) {
            IPreviewPlayer.DefaultImpls.addSticker$default(this, it2.next(), false, 2, null);
        }
        super.resetStickerList(stickerList);
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void scaleSticker(StickerInfoPack sticker, float f, PointF pointF) {
        Intrinsics.checkParameterIsNotNull(sticker, "sticker");
        NvsTimelineAnimatedSticker timelineSticker = getTimelineSticker(sticker);
        if (timelineSticker != null) {
            timelineSticker.scaleAnimatedSticker(f, pointF);
            sticker.scaleX = timelineSticker.getScale();
            sticker.scaleY = timelineSticker.getScale();
            sticker.translation = timelineSticker.getTranslation();
        }
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void translateSticker(StickerInfoPack sticker, PointF pointF) {
        Intrinsics.checkParameterIsNotNull(sticker, "sticker");
        NvsTimelineAnimatedSticker timelineSticker = getTimelineSticker(sticker);
        if (timelineSticker != null) {
            timelineSticker.translateAnimatedSticker(pointF);
            sticker.translation = timelineSticker.getTranslation();
        }
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void rotateSticker(StickerInfoPack sticker, float f) {
        Intrinsics.checkParameterIsNotNull(sticker, "sticker");
        NvsTimelineAnimatedSticker timelineSticker = getTimelineSticker(sticker);
        if (timelineSticker != null) {
            timelineSticker.rotateAnimatedSticker(f);
            sticker.rotation = timelineSticker.getRotationZ();
        }
    }

    @Override // com.narvii.video.player.BaseEditorPreviewPlayer, com.narvii.video.interfaces.IPreviewPlayer
    public ArrayList<Caption> addCaption(Caption caption) {
        Intrinsics.checkParameterIsNotNull(caption, "caption");
        ArrayList<Caption> arrayListAddCaption = super.addCaption(caption);
        this.seeking = false;
        Log.d(TAG, "addCaption >>> caption text = " + caption.text + "  ");
        NvsTimeline nvsTimeline = this.timeline;
        NvsTimelineCaption nvsTimelineCaptionAddCaption = nvsTimeline != null ? nvsTimeline.addCaption(caption.text, caption.startOffsetToMainTrackInMs * 1000, 1000 * caption.visibleDurationInMs, null) : null;
        if (nvsTimelineCaptionAddCaption != null) {
            caption.zValue = getLatestAttachmentZVal(CollectionsKt___CollectionsKt.plus(getStickers(), getCaptions()));
            AttachmentUtils.updateTimelineCaption(nvsTimelineCaptionAddCaption, caption);
            this.timelineCaptionList.add(nvsTimelineCaptionAddCaption);
        } else {
            arrayListAddCaption.remove(arrayListAddCaption.size() - 1);
            BaseEditorPreviewPlayer.updateIndexInMixedAttachmentList$default(this, CollectionsKt___CollectionsKt.plus(getStickers(), getCaptions()), false, 2, null);
        }
        return arrayListAddCaption;
    }

    @Override // com.narvii.video.player.BaseEditorPreviewPlayer, com.narvii.video.interfaces.IPreviewPlayer
    public ArrayList<Caption> removeCaption(Caption caption) {
        Intrinsics.checkParameterIsNotNull(caption, "caption");
        ArrayList<Caption> arrayListRemoveCaption = super.removeCaption(caption);
        Log.d(TAG, "removeCaption >>> caption text = " + caption.text + "  ");
        int i = caption.indexInScene;
        if (i >= 0 && i < this.timelineCaptionList.size()) {
            NvsTimelineCaption nvsTimelineCaptionRemove = this.timelineCaptionList.remove(caption.indexInScene);
            Intrinsics.checkExpressionValueIsNotNull(nvsTimelineCaptionRemove, "timelineCaptionList.removeAt(caption.indexInScene)");
            NvsTimelineCaption nvsTimelineCaption = nvsTimelineCaptionRemove;
            NvsTimeline nvsTimeline = this.timeline;
            if (nvsTimeline != null) {
                nvsTimeline.removeCaption(nvsTimelineCaption);
            }
        }
        return arrayListRemoveCaption;
    }

    @Override // com.narvii.video.player.BaseEditorPreviewPlayer, com.narvii.video.interfaces.IPreviewPlayer
    public void resetCaption(Caption caption, boolean z) {
        Intrinsics.checkParameterIsNotNull(caption, "caption");
        super.resetCaption(caption, false);
        this.seeking = false;
        Log.d(TAG, "resetCaption >>> caption text = " + caption.text + "  ");
        AttachmentUtils.updateTimelineCaption(getTimelineCaption(caption), caption, z);
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void scaleCaption(Caption caption, float f, PointF pointF) {
        Intrinsics.checkParameterIsNotNull(caption, "caption");
        NvsTimelineCaption timelineCaption = getTimelineCaption(caption);
        if (timelineCaption != null) {
            timelineCaption.scaleCaption(f, pointF);
            caption.scaleX = timelineCaption.getScaleX();
            caption.scaleY = timelineCaption.getScaleY();
            caption.anchor = timelineCaption.getAnchorPoint();
            caption.translation = timelineCaption.getCaptionTranslation();
        }
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void translateCaption(Caption caption, PointF pointF) {
        Intrinsics.checkParameterIsNotNull(caption, "caption");
        NvsTimelineCaption timelineCaption = getTimelineCaption(caption);
        if (timelineCaption != null) {
            timelineCaption.translateCaption(pointF);
            caption.translation = timelineCaption.getCaptionTranslation();
        }
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void rotateCaption(Caption caption, float f) {
        Intrinsics.checkParameterIsNotNull(caption, "caption");
        NvsTimelineCaption timelineCaption = getTimelineCaption(caption);
        if (timelineCaption != null) {
            timelineCaption.rotateCaption(f);
            caption.rotation = timelineCaption.getRotationZ();
            caption.translation = timelineCaption.getCaptionTranslation();
        }
    }

    @Override // com.narvii.video.player.BaseEditorPreviewPlayer, com.narvii.video.interfaces.IPreviewPlayer
    public void resetCaptionList(List<? extends Caption> captionList) {
        Intrinsics.checkParameterIsNotNull(captionList, "captionList");
        Log.d(TAG, "resetCaptionList >>> caption list size = " + captionList.size() + "  ");
        this.seeking = false;
        Iterator<NvsTimelineCaption> it = this.timelineCaptionList.iterator();
        while (it.hasNext()) {
            NvsTimelineCaption next = it.next();
            NvsTimeline nvsTimeline = this.timeline;
            if (nvsTimeline != null) {
                nvsTimeline.removeCaption(next);
            }
        }
        this.timelineCaptionList.clear();
        Iterator<? extends Caption> it2 = captionList.iterator();
        while (it2.hasNext()) {
            addCaption(it2.next());
        }
        super.resetCaptionList(captionList);
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void updateClipTransform(AVClipInfoPack clip) {
        Intrinsics.checkParameterIsNotNull(clip, "clip");
        NvsVideoClip nvsVideoClip = this.videoClipMap.get(clip.clipId);
        if (nvsVideoClip != null) {
            TimelineUtils.INSTANCE.updateTransform2D(clip, nvsVideoClip);
        }
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void refreshBackgroundTrack() {
        NvsVideoTrack nvsVideoTrack = this.backgroundTrack;
        if (nvsVideoTrack != null) {
            nvsVideoTrack.removeAllClips();
        }
        this.msBgClipList.clear();
        this.bgClipMap.clear();
        int size = getVideoClipList().size();
        for (int i = 0; i < size; i++) {
            AVClipInfoPack aVClipInfoPack = getVideoClipList().get(i);
            Intrinsics.checkExpressionValueIsNotNull(aVClipInfoPack, "videoClipList[index]");
            AVClipInfoPack aVClipInfoPack2 = aVClipInfoPack;
            NvsVideoTrack nvsVideoTrack2 = this.backgroundTrack;
            NvsVideoClip nvsVideoClipAppendClip = nvsVideoTrack2 != null ? nvsVideoTrack2.appendClip(aVClipInfoPack2.getBgColor()) : null;
            if (nvsVideoClipAppendClip != null) {
                Map<String, NvsVideoClip> map = this.bgClipMap;
                String str = aVClipInfoPack2.clipId;
                Intrinsics.checkExpressionValueIsNotNull(str, "clip.clipId");
                map.put(str, nvsVideoClipAppendClip);
                this.msBgClipList.add(nvsVideoClipAppendClip);
            }
            NvsVideoClip nvsVideoClip = this.videoClipMap.get(aVClipInfoPack2.clipId);
            if (nvsVideoClip != null) {
                NvsVideoTrack nvsVideoTrack3 = this.backgroundTrack;
                if (nvsVideoTrack3 != null) {
                    nvsVideoTrack3.changeInPoint(i, nvsVideoClip.getInPoint());
                }
                NvsVideoTrack nvsVideoTrack4 = this.backgroundTrack;
                if (nvsVideoTrack4 != null) {
                    nvsVideoTrack4.changeOutPoint(i, nvsVideoClip.getOutPoint());
                }
            }
        }
        TimelineUtils.INSTANCE.clearTransitionEffects(this.backgroundTrack);
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public int getCurrentVideoPositionInClip() {
        int currentVideoPositionInTimeline = getCurrentVideoPositionInTimeline();
        Iterator<AVClipInfoPack> it = getVideoClipList().iterator();
        int iTrimmedDurationInMsWithSpeed = 0;
        while (it.hasNext()) {
            AVClipInfoPack next = it.next();
            if (currentVideoPositionInTimeline <= next.trimmedDurationInMsWithSpeed() + iTrimmedDurationInMsWithSpeed) {
                break;
            }
            iTrimmedDurationInMsWithSpeed += next.trimmedDurationInMsWithSpeed();
        }
        return currentVideoPositionInTimeline - iTrimmedDurationInMsWithSpeed;
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public int getCurrentVideoRawPositionInClip() {
        int currentVideoPositionInTimeline = getCurrentVideoPositionInTimeline();
        Iterator<AVClipInfoPack> it = getVideoClipList().iterator();
        int i = 0;
        int iTrimmedDurationInMs = 0;
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            AVClipInfoPack next = it.next();
            if (currentVideoPositionInTimeline > next.trimmedDurationInMs() + iTrimmedDurationInMs) {
                iTrimmedDurationInMs += next.trimmedDurationInMs();
            } else {
                i = next.trimStartInMs;
                break;
            }
        }
        return (currentVideoPositionInTimeline - iTrimmedDurationInMs) + i;
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public int getCurrentVideoPositionInTimeline() {
        NvsStreamingContext nvsStreamingContext = this.streamingContext;
        return (nvsStreamingContext != null ? (int) nvsStreamingContext.getTimelineCurrentPosition(this.timeline) : 0) / 1000;
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public int getCurrentAudioPositionInClip(int i) {
        return getCurrentVideoPositionInClip();
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public int getCurrentAudioRawPositionInClip(int i) {
        return getCurrentVideoRawPositionInClip();
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public int getCurrentAudioPositionInTimeline(int i) {
        return getCurrentVideoPositionInTimeline();
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void seekTimeLineTo(int i) {
        NvsTimeline nvsTimeline = this.timeline;
        long j = 1000;
        int duration = (int) ((nvsTimeline != null ? nvsTimeline.getDuration() : 0L) / j);
        if (duration <= 0) {
            return;
        }
        if (i >= duration) {
            i = duration - 10;
        }
        int iMax = Math.max(i, 0);
        Log.d(TAG, "seekTimeLineTo >>> millis = " + iMax + ' ');
        this.seeking = true;
        NvsStreamingContext nvsStreamingContext = this.streamingContext;
        if (nvsStreamingContext != null) {
            nvsStreamingContext.seekTimeline(this.timeline, iMax * j, 1, 2);
        }
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void seekTimeLineTo(int i, int i2) {
        Log.d(TAG, "seekTimeLineTo >>> clipIndex = " + i + "  millis = " + i2 + " position = " + getPosition(i, i2));
        seekTimeLineTo((int) getPosition(i, i2));
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void onAudioTrackOffsetChanged(int i) {
        Log.d(TAG, "onAudioTrackOffsetChanged >>> trackIndex = " + i);
        if (i < 0 || i >= getAdditionalAudioClipList().size()) {
            return;
        }
        AVClipInfoPack aVClipInfoPack = getAdditionalAudioClipList().get(i);
        Intrinsics.checkExpressionValueIsNotNull(aVClipInfoPack, "additionalAudioClipList[trackIndex]");
        AVClipInfoPack aVClipInfoPack2 = aVClipInfoPack;
        if (i < this.audioTrackList.size()) {
            this.audioTrackList.get(i).removeAllClips();
            appendAudioClip(aVClipInfoPack2, false);
        }
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public List<PointF> getCaptionViewPoints(Caption caption) {
        Intrinsics.checkParameterIsNotNull(caption, "caption");
        NvsTimelineCaption timelineCaption = getTimelineCaption(caption);
        ArrayList arrayList = null;
        List<PointF> boundingRectangleVertices = timelineCaption != null ? timelineCaption.getBoundingRectangleVertices() : null;
        if (boundingRectangleVertices != null && boundingRectangleVertices.size() >= 4) {
            arrayList = new ArrayList();
            Iterator<PointF> it = boundingRectangleVertices.iterator();
            while (it.hasNext()) {
                arrayList.add(this.liveWindow.mapCanonicalToView(it.next()));
            }
        }
        return arrayList;
    }

    private final NvsTimelineCaption getTimelineCaption(Caption caption) {
        int size = this.timelineCaptionList.size();
        int i = caption.indexInScene;
        if (i < 0 || size <= i) {
            return null;
        }
        return this.timelineCaptionList.get(i);
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public List<PointF> getStickerViewPoints(StickerInfoPack sticker) {
        Intrinsics.checkParameterIsNotNull(sticker, "sticker");
        NvsTimelineAnimatedSticker timelineSticker = getTimelineSticker(sticker);
        ArrayList arrayList = null;
        List<PointF> boundingRectangleVertices = timelineSticker != null ? timelineSticker.getBoundingRectangleVertices() : null;
        if (boundingRectangleVertices != null && boundingRectangleVertices.size() >= 4) {
            arrayList = new ArrayList();
            Iterator<PointF> it = boundingRectangleVertices.iterator();
            while (it.hasNext()) {
                arrayList.add(this.liveWindow.mapCanonicalToView(it.next()));
            }
        }
        return arrayList;
    }

    private final NvsTimelineAnimatedSticker getTimelineSticker(StickerInfoPack stickerInfoPack) {
        int size = this.timelineStickerList.size();
        int i = stickerInfoPack.indexInScene;
        if (i < 0 || size <= i) {
            return null;
        }
        return this.timelineStickerList.get(i);
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public PointF mapViewToCanonical(PointF pointF) {
        if (pointF == null) {
            return null;
        }
        return this.liveWindow.mapViewToCanonical(pointF);
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public AttachmentDrawRect getAttachmentDrawRectByTimelinePosition(int i, PointF curPoint) {
        long j;
        List<NvsTimelineCaption> captionsByTimelinePosition;
        List<NvsTimelineAnimatedSticker> animatedStickersByTimelinePosition;
        Intrinsics.checkParameterIsNotNull(curPoint, "curPoint");
        NvsTimeline nvsTimeline = this.timeline;
        if (nvsTimeline == null || (captionsByTimelinePosition = nvsTimeline.getCaptionsByTimelinePosition((j = i * 1000))) == null) {
            return null;
        }
        Collections.sort(captionsByTimelinePosition, this.COMPARE_CAPTION_ZVALUE);
        ArrayList arrayList = new ArrayList();
        Caption caption = null;
        for (NvsTimelineCaption caption2 : captionsByTimelinePosition) {
            Intrinsics.checkExpressionValueIsNotNull(caption2, "caption");
            List<PointF> boundingRectangleVertices = caption2.getBoundingRectangleVertices();
            ArrayList<PointF> arrayList2 = new ArrayList<>();
            Iterator<PointF> it = boundingRectangleVertices.iterator();
            while (it.hasNext()) {
                arrayList2.add(this.liveWindow.mapCanonicalToView(it.next()));
            }
            if (isTouchInTargetRect(arrayList2, curPoint)) {
                Iterator<Caption> it2 = getCaptions().iterator();
                while (true) {
                    if (it2.hasNext()) {
                        Caption next = it2.next();
                        if (next.zValue == caption2.getZValue()) {
                            arrayList.addAll(arrayList2);
                            caption = next;
                            break;
                        }
                    }
                }
            }
        }
        NvsTimeline nvsTimeline2 = this.timeline;
        if (nvsTimeline2 == null || (animatedStickersByTimelinePosition = nvsTimeline2.getAnimatedStickersByTimelinePosition(j)) == null) {
            return null;
        }
        Collections.sort(animatedStickersByTimelinePosition, this.COMPARE_STICKER_ZVALUE);
        ArrayList arrayList3 = new ArrayList();
        StickerInfoPack stickerInfoPack = null;
        for (NvsTimelineAnimatedSticker sticker : animatedStickersByTimelinePosition) {
            Intrinsics.checkExpressionValueIsNotNull(sticker, "sticker");
            List<PointF> boundingRectangleVertices2 = sticker.getBoundingRectangleVertices();
            ArrayList<PointF> arrayList4 = new ArrayList<>();
            Iterator<PointF> it3 = boundingRectangleVertices2.iterator();
            while (it3.hasNext()) {
                arrayList4.add(this.liveWindow.mapCanonicalToView(it3.next()));
            }
            if (isTouchInTargetRect(arrayList4, curPoint)) {
                Iterator<StickerInfoPack> it4 = getStickers().iterator();
                while (true) {
                    if (it4.hasNext()) {
                        StickerInfoPack next2 = it4.next();
                        if (next2.zValue == sticker.getZValue()) {
                            arrayList3.addAll(arrayList4);
                            stickerInfoPack = next2;
                            break;
                        }
                    }
                }
            }
        }
        if (caption == null && stickerInfoPack == null) {
            return null;
        }
        if (caption == null) {
            return new AttachmentDrawRect(1, stickerInfoPack, arrayList3);
        }
        if (stickerInfoPack == null) {
            return new AttachmentDrawRect(0, caption, arrayList);
        }
        if (caption.indexInMixedAttachmentList > stickerInfoPack.indexInMixedAttachmentList) {
            return new AttachmentDrawRect(0, caption, arrayList);
        }
        return new AttachmentDrawRect(1, stickerInfoPack, arrayList3);
    }

    private final boolean isTouchInTargetRect(ArrayList<PointF> arrayList, PointF pointF) {
        RectF rectF = new RectF();
        Path path = new Path();
        path.moveTo(arrayList.get(0).x, arrayList.get(0).y);
        path.lineTo(arrayList.get(1).x, arrayList.get(1).y);
        path.lineTo(arrayList.get(2).x, arrayList.get(2).y);
        path.lineTo(arrayList.get(3).x, arrayList.get(3).y);
        path.close();
        path.computeBounds(rectF, true);
        Region region = new Region();
        region.setPath(path, new Region((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom));
        return region.contains((int) pointF.x, (int) pointF.y);
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void start() {
        start(-1L);
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void start(long j) {
        if (!isVideoPlaying() && !this.seeking) {
            Log.d(TAG, "start >>> ");
            NvsStreamingContext nvsStreamingContext = this.streamingContext;
            playbackTimeline(nvsStreamingContext != null ? nvsStreamingContext.getTimelineCurrentPosition(this.timeline) : 0L, j);
        }
        int currentVideoClipIndex$default = getCurrentVideoClipIndex$default(this, 0, 1, null);
        if (this.currentClipIndex != currentVideoClipIndex$default) {
            this.currentClipIndex = currentVideoClipIndex$default;
            Iterator<IMediaEventListener> it = getMediaEventListeners().iterator();
            while (it.hasNext()) {
                it.next().onVideoWindowIndexChanged(this.currentClipIndex, false);
            }
        }
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void startFromBeginning() {
        startFromBeginning(-1L);
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void startFromBeginning(long j) {
        Log.d(TAG, "start from beginning >>> ");
        playbackTimeline(0L, j);
    }

    private final void requestAudioFocus() {
        getAudioManager().requestAudioFocus(null, 3, 1);
    }

    private final void abandonAudioFocus() {
        getAudioManager().abandonAudioFocus(null);
    }

    private final void playbackTimeline(long j) {
        playbackTimeline(j, -1L);
    }

    private final void playbackTimeline(long j, long j2) {
        requestAudioFocus();
        NvsStreamingContext nvsStreamingContext = this.streamingContext;
        if (nvsStreamingContext != null) {
            nvsStreamingContext.playbackTimeline(this.timeline, j, j2, 1, true, 0);
        }
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void pause() {
        Log.d(TAG, "pause >>> ");
        this.seeking = false;
        NvsStreamingContext nvsStreamingContext = this.streamingContext;
        if (nvsStreamingContext != null) {
            nvsStreamingContext.stop();
        }
        abandonAudioFocus();
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void stop() {
        Log.d(TAG, "stop >>> ");
        pause();
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public boolean isAudioPlaying(int i) {
        NvsStreamingContext nvsStreamingContext = this.streamingContext;
        return nvsStreamingContext != null && nvsStreamingContext.getStreamingEngineState() == 3;
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public boolean isVideoPlaying() {
        NvsStreamingContext nvsStreamingContext = this.streamingContext;
        return nvsStreamingContext != null && nvsStreamingContext.getStreamingEngineState() == 3;
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public boolean isSeeking() {
        return this.seeking;
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void updateGlobalAudioVolumeContrast(float f) {
        NvsAudioTrack nvsAudioTrack = this.globalAudioTrack;
        if (nvsAudioTrack != null) {
            int clipCount = nvsAudioTrack.getClipCount();
            for (int i = 0; i < clipCount; i++) {
                NvsAudioClip clipByIndex = nvsAudioTrack.getClipByIndex(i);
                if (clipByIndex != null) {
                    float f2 = 2 * f;
                    clipByIndex.setVolumeGain(f2, f2);
                }
            }
        }
        correctVolume(1 - f);
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void setVolume(AVClipInfoPack clip, boolean z) {
        Intrinsics.checkParameterIsNotNull(clip, "clip");
        if (z) {
            NvsVideoClip nvsVideoClip = this.videoClipMap.get(clip.clipId);
            if (nvsVideoClip != null) {
                float f = clip.trackVolume;
                float f2 = 2;
                nvsVideoClip.setVolumeGain(f * f2, f * f2);
                return;
            }
            return;
        }
        NvsAudioClip nvsAudioClip = this.audioClipMap.get(clip.clipId);
        if (nvsAudioClip != null) {
            float f3 = clip.trackVolume;
            float f4 = 2;
            nvsAudioClip.setVolumeGain(f3 * f4, f3 * f4);
        }
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void refreshCurrentPosition() {
        seekTimeLineTo(getCurrentVideoPositionInTimeline());
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void updateClipSpeed(AVClipInfoPack clip) {
        Intrinsics.checkParameterIsNotNull(clip, "clip");
        NvsVideoClip nvsVideoClip = this.videoClipMap.get(clip.clipId);
        if (nvsVideoClip != null) {
            double currentVideoPositionInTimeline = getCurrentVideoPositionInTimeline();
            double speed = nvsVideoClip.getSpeed();
            Double.isNaN(currentVideoPositionInTimeline);
            double d = currentVideoPositionInTimeline * speed;
            double d2 = clip.speed;
            double d3 = d / d2;
            nvsVideoClip.changeSpeed(d2, true);
            refreshBackgroundTrack();
            seekTimeLineTo((int) d3);
            Iterator<IPlayingEventListener> it = getPlayingEventListeners().iterator();
            while (it.hasNext()) {
                IPlayingEventListener next = it.next();
                long j = (long) d3;
                NvsTimeline nvsTimeline = this.timeline;
                next.onPlayingProgress(j, (nvsTimeline != null ? nvsTimeline.getDuration() : 0L) / 1000);
            }
        }
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void mute() {
        Log.d(TAG, "mute >>> ");
        this.isInMute = true;
        setVolumePercent(0.0f);
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public Bitmap getSnapShot(SceneInfo sceneInfo) {
        Bitmap bitmapGrabImageFromTimeline = null;
        if (sceneInfo == null) {
            return null;
        }
        NvsStreamingContext nvsStreamingContext = this.streamingContext;
        if (nvsStreamingContext != null) {
            NvsTimeline nvsTimelineCreateTimelineWithoutDurationLimit = TimelineUtils.INSTANCE.createTimelineWithoutDurationLimit(sceneInfo);
            NvsStreamingContext nvsStreamingContext2 = this.streamingContext;
            bitmapGrabImageFromTimeline = nvsStreamingContext.grabImageFromTimeline(nvsTimelineCreateTimelineWithoutDurationLimit, nvsStreamingContext2 != null ? nvsStreamingContext2.getTimelineCurrentPosition(this.timeline) : 0L, new NvsRational(1, 1));
        }
        return bitmapGrabImageFromTimeline == null ? this.liveWindow.takeScreenshot() : bitmapGrabImageFromTimeline;
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void unMute() {
        Log.d(TAG, "unMute >>> ");
        this.isInMute = false;
        setVolumePercent(1.0f);
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void setVolumePercent(float f) {
        float f2 = this.videoTrackVolume * f;
        NvsVideoTrack nvsVideoTrack = this.videoTrack;
        if (nvsVideoTrack != null) {
            nvsVideoTrack.setVolumeGain(f2, f2);
        }
        float f3 = f * this.audioTrackVolume;
        NvsAudioTrack nvsAudioTrack = this.globalAudioTrack;
        if (nvsAudioTrack != null) {
            nvsAudioTrack.setVolumeGain(f3, f3);
        }
        Iterator<T> it = this.audioTrackList.iterator();
        while (it.hasNext()) {
            ((NvsAudioTrack) it.next()).setVolumeGain(f3, f3);
        }
    }

    @Override // com.narvii.video.player.BaseEditorPreviewPlayer
    public void onActiveVideoClipChanged(boolean z, int i) {
        int i2;
        Log.d(TAG, "onActiveVideoClipChanged >>> clipListChanged = " + z + ' ');
        AVClipInfoPack activeVideoClip = getActiveVideoClip();
        this.currentClipIndex = activeVideoClip != null ? activeVideoClip.indexInScene : -1;
        Iterator<IMediaEventListener> it = getMediaEventListeners().iterator();
        while (it.hasNext()) {
            IMediaEventListener next = it.next();
            if (getActiveVideoClip() == null) {
                i2 = -1;
            } else {
                AVClipInfoPack activeVideoClip2 = getActiveVideoClip();
                if (activeVideoClip2 == null) {
                    Intrinsics.throwNpe();
                    throw null;
                }
                i2 = activeVideoClip2.indexInScene;
            }
            next.onVideoWindowIndexChanged(i2, true);
        }
        if (getActiveVideoClip() == null) {
            stop();
            return;
        }
        if (z) {
            return;
        }
        AVClipInfoPack activeVideoClip3 = getActiveVideoClip();
        if (activeVideoClip3 != null) {
            seekTimeLineTo(activeVideoClip3.indexInScene, i);
        } else {
            Intrinsics.throwNpe();
            throw null;
        }
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void restoreStates() {
        this.seeking = false;
        setMeisheListener();
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public View getVideoView() {
        Log.d(TAG, "getVideoView >>> ");
        return this.liveWindow;
    }

    @Override // com.narvii.video.interfaces.IExtraAudioTrackPlugin
    public IEditorAudioPlayer openSingleAudio(AVClipInfoPack audioClip, boolean z) {
        Intrinsics.checkParameterIsNotNull(audioClip, "audioClip");
        Log.d(TAG, "openSingleAudio >>> ");
        this.attachedExtraAudioPlayer = this.extraAudioTrackPlugin.openSingleAudio(audioClip, z);
        return this.attachedExtraAudioPlayer;
    }

    @Override // com.narvii.video.player.BaseEditorPreviewPlayer, com.narvii.video.interfaces.IPreviewPlayer
    public void release() {
        Log.d(TAG, "release >>> ");
        this.seeking = false;
        this.onVideoPrepared = false;
        NvsStreamingContext nvsStreamingContext = this.streamingContext;
        if (nvsStreamingContext != null) {
            nvsStreamingContext.removeTimeline(this.timeline);
        }
        IEditorAudioPlayer iEditorAudioPlayer = this.attachedExtraAudioPlayer;
        if (iEditorAudioPlayer != null) {
            iEditorAudioPlayer.release();
        }
        ViewParent parent = this.liveWindow.getParent();
        if (parent != null && (parent instanceof ViewGroup)) {
            ((ViewGroup) parent).removeView(this.liveWindow);
        }
        clearMeisheListener();
    }

    @Override // com.narvii.video.player.BaseEditorPreviewPlayer, com.narvii.video.interfaces.IPreviewPlayer
    public void release(Object... args) {
        Intrinsics.checkParameterIsNotNull(args, "args");
        Log.d(TAG, "release >>> ");
        this.seeking = false;
        this.onVideoPrepared = false;
        MeisheTimelineManage.Companion.getInstance().addUnuseTimeline(this.timeline);
        IEditorAudioPlayer iEditorAudioPlayer = this.attachedExtraAudioPlayer;
        if (iEditorAudioPlayer != null) {
            iEditorAudioPlayer.release();
        }
        ViewParent parent = this.liveWindow.getParent();
        if (parent != null && (parent instanceof ViewGroup)) {
            ((ViewGroup) parent).removeView(this.liveWindow);
        }
        clearMeisheListener();
    }

    @Override // com.meicam.sdk.NvsStreamingContext.PlaybackCallback2
    public void onPlaybackTimelinePosition(NvsTimeline nvsTimeline, long j) {
        Iterator<IPlayingEventListener> it = getPlayingEventListeners().iterator();
        while (it.hasNext()) {
            long j2 = 1000;
            it.next().onPlayingProgress(j / j2, (nvsTimeline != null ? nvsTimeline.getDuration() : 0L) / j2);
        }
        int currentVideoClipIndex = getCurrentVideoClipIndex((int) (j / 1000));
        if (currentVideoClipIndex != this.currentClipIndex) {
            this.currentClipIndex = currentVideoClipIndex;
            Iterator<IMediaEventListener> it2 = getMediaEventListeners().iterator();
            while (it2.hasNext()) {
                it2.next().onVideoWindowIndexChanged(this.currentClipIndex, false);
            }
        }
    }

    @Override // com.meicam.sdk.NvsStreamingContext.PlaybackCallback
    public void onPlaybackEOF(NvsTimeline nvsTimeline) {
        Log.d(TAG, "onPlaybackEOF >>> ");
        Iterator<IMediaEventListener> it = getMediaEventListeners().iterator();
        while (it.hasNext()) {
            it.next().onVideoCompleted();
        }
        Iterator<IPlayingEventListener> it2 = getPlayingEventListeners().iterator();
        while (it2.hasNext()) {
            IPlayingEventListener next = it2.next();
            next.onPlayingEOF();
            if (nvsTimeline != null) {
                long j = 1000;
                next.onPlayingProgress(nvsTimeline.getDuration() / j, nvsTimeline.getDuration() / j);
            }
        }
    }

    @Override // com.meicam.sdk.NvsStreamingContext.PlaybackCallback
    public void onPlaybackPreloadingCompletion(NvsTimeline nvsTimeline) {
        Utils.post(new Runnable() { // from class: com.narvii.editor.player.MeiShePreviewPlayer.onPlaybackPreloadingCompletion.1
            @Override // java.lang.Runnable
            public final void run() {
                if (MeiShePreviewPlayer.this.onVideoPrepared) {
                    return;
                }
                Log.d(MeiShePreviewPlayer.TAG, "onPlaybackPreloadingCompletion >>> ");
                MeiShePreviewPlayer.this.onVideoPrepared = true;
                Iterator it = MeiShePreviewPlayer.this.getMediaEventListeners().iterator();
                while (it.hasNext()) {
                    IMediaEventListener iMediaEventListener = (IMediaEventListener) it.next();
                    iMediaEventListener.onVideoPrepared();
                    iMediaEventListener.onAudioTrackAllPrepared();
                }
            }
        });
    }

    @Override // com.meicam.sdk.NvsStreamingContext.PlaybackCallback
    public void onPlaybackStopped(NvsTimeline nvsTimeline) {
        Log.d(TAG, "onPlaybackStopped >>> ");
        Iterator<IPlayingEventListener> it = getPlayingEventListeners().iterator();
        while (it.hasNext()) {
            it.next().onPlayingStopped();
        }
    }

    @Override // com.meicam.sdk.NvsStreamingContext.SeekingCallback
    public void onSeekingTimelinePosition(NvsTimeline nvsTimeline, long j) {
        if (this.seeking) {
            Log.d(TAG, "onSeekingTimelinePosition >>> " + j + ' ');
            onDoNextVideoSeek();
            this.seeking = false;
            Iterator<OnSeekingPositionListener> it = getSeekingPositionListeners().iterator();
            while (it.hasNext()) {
                it.next().onSeekingPositionChanged(j / 1000);
            }
            int currentVideoClipIndex = getCurrentVideoClipIndex((int) (j / 1000));
            if (this.currentClipIndex != currentVideoClipIndex) {
                this.currentClipIndex = currentVideoClipIndex;
                Iterator<IMediaEventListener> it2 = getMediaEventListeners().iterator();
                while (it2.hasNext()) {
                    it2.next().onVideoWindowIndexChanged(this.currentClipIndex, false);
                }
            }
        }
    }

    @Override // com.meicam.sdk.NvsStreamingContext.PlaybackExceptionCallback
    public void onPlaybackException(NvsTimeline nvsTimeline, int i, String str) {
        Log.e(TAG, "onPlaybackException  >>>  exceptionType = " + i + "   exceptionString = " + str);
        this.onVideoPrepared = false;
        Iterator<IMediaEventListener> it = getMediaEventListeners().iterator();
        while (it.hasNext()) {
            it.next().onVideoError(new Exception(str));
        }
    }

    @Override // com.meicam.sdk.NvsStreamingContext.HardwareErrorCallback
    public void onHardwareError(int i, String str) {
        Log.e(TAG, "onHardwareError >>> errorType = " + i + "   errorString = " + str);
        Iterator<IMediaEventListener> it = getMediaEventListeners().iterator();
        while (it.hasNext()) {
            it.next().onVideoError(new Exception(str));
        }
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void playVideo(int i, int i2) {
        NvsStreamingContext nvsStreamingContext = this.streamingContext;
        if (nvsStreamingContext != null) {
            nvsStreamingContext.playbackTimeline(this.timeline, i * 1000, 1000 * i2, 1, true, 0);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!Intrinsics.areEqual(MeiShePreviewPlayer.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        if (obj != null) {
            return !(Intrinsics.areEqual(this.id, ((MeiShePreviewPlayer) obj).id) ^ true);
        }
        throw new TypeCastException("null cannot be cast to non-null type com.narvii.editor.player.MeiShePreviewPlayer");
    }

    public int hashCode() {
        return this.id.hashCode();
    }

    @Override // com.narvii.video.player.BaseEditorPreviewPlayer, com.narvii.video.interfaces.IPreviewPlayer
    public ArrayList<PipInfoPack> addPipVideo(PipInfoPack pipVideo) {
        Intrinsics.checkParameterIsNotNull(pipVideo, "pipVideo");
        ArrayList<PipInfoPack> arrayListAddPipVideo = super.addPipVideo(pipVideo);
        NvsVideoTrack nvsVideoTrackAddPipVideo = TimelineUtils.INSTANCE.addPipVideo(this.timeline, pipVideo);
        if (nvsVideoTrackAddPipVideo != null) {
            this.pipTrackList.add(nvsVideoTrackAddPipVideo);
        }
        return arrayListAddPipVideo;
    }

    @Override // com.narvii.video.player.BaseEditorPreviewPlayer, com.narvii.video.interfaces.IPreviewPlayer
    public ArrayList<PipInfoPack> removePipVideo(PipInfoPack pipVideo, int i) {
        Intrinsics.checkParameterIsNotNull(pipVideo, "pipVideo");
        ArrayList<PipInfoPack> arrayListRemovePipVideo = super.removePipVideo(pipVideo, i);
        NvsVideoTrack nvsVideoTrack = this.pipTrackList.get(i);
        Intrinsics.checkExpressionValueIsNotNull(nvsVideoTrack, "pipTrackList[index]");
        NvsVideoTrack nvsVideoTrack2 = nvsVideoTrack;
        nvsVideoTrack2.removeAllClips();
        NvsTimeline nvsTimeline = this.timeline;
        if (nvsTimeline != null) {
            nvsTimeline.removeVideoTrack(nvsVideoTrack2.getIndex());
        }
        this.pipTrackList.remove(i);
        return arrayListRemovePipVideo;
    }

    @Override // com.narvii.video.player.BaseEditorPreviewPlayer, com.narvii.video.interfaces.IPreviewPlayer
    public void resetPipVideoList(List<? extends PipInfoPack> pipVideoList) {
        Intrinsics.checkParameterIsNotNull(pipVideoList, "pipVideoList");
        Log.d(TAG, "resetPipVideoList >>> pip list size = " + pipVideoList.size() + "  ");
        this.seeking = false;
        Iterator<NvsVideoTrack> it = this.pipTrackList.iterator();
        while (it.hasNext()) {
            NvsVideoTrack timelinePip = it.next();
            NvsTimeline nvsTimeline = this.timeline;
            if (nvsTimeline != null) {
                Intrinsics.checkExpressionValueIsNotNull(timelinePip, "timelinePip");
                nvsTimeline.removeVideoTrack(timelinePip.getIndex());
            }
        }
        this.pipTrackList.clear();
        getPipVideos().clear();
        for (PipInfoPack pipInfoPack : pipVideoList) {
            addPipVideo(pipInfoPack);
            updatePipVideoTransform(pipInfoPack);
        }
        super.resetPipVideoList(pipVideoList);
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void updatePipVideoTransform(PipInfoPack pipVideo) {
        Intrinsics.checkParameterIsNotNull(pipVideo, "pipVideo");
        NvsVideoTrack timelinePipVideo = getTimelinePipVideo(pipVideo);
        if (timelinePipVideo != null) {
            TimelineUtils.INSTANCE.updatePipVideoTransform(timelinePipVideo, pipVideo);
        }
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void setPipVideoVolume(PipInfoPack pipVideo, float f, int i) {
        Intrinsics.checkParameterIsNotNull(pipVideo, "pipVideo");
        NvsVideoTrack nvsVideoTrack = this.pipTrackList.get(i);
        Intrinsics.checkExpressionValueIsNotNull(nvsVideoTrack, "pipTrackList[index]");
        NvsVideoTrack nvsVideoTrack2 = nvsVideoTrack;
        int clipCount = nvsVideoTrack2.getClipCount();
        for (int i2 = 0; i2 < clipCount; i2++) {
            float f2 = 2 * f;
            nvsVideoTrack2.getClipByIndex(i2).setVolumeGain(f2, f2);
        }
    }

    @Override // com.narvii.video.player.BaseEditorPreviewPlayer, com.narvii.video.interfaces.IPreviewPlayer
    public void onPipVideoOffsetChanged(int i) {
        Log.d(TAG, "onPipVideoOffsetChanged >>> trackIndex = " + i);
        if (i < 0 || i >= this.pipTrackList.size() || i >= getPipVideos().size()) {
            return;
        }
        PipInfoPack pipInfoPack = getPipVideos().get(i);
        Intrinsics.checkExpressionValueIsNotNull(pipInfoPack, "pipVideos[index]");
        PipInfoPack pipInfoPack2 = pipInfoPack;
        removePipVideo(pipInfoPack2, i);
        addPipVideo(pipInfoPack2);
        updatePipVideoTransform(pipInfoPack2);
        seekTimeLineTo(getCurrentVideoPositionInTimeline());
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public Point getVideoSize(String path) {
        Intrinsics.checkParameterIsNotNull(path, "path");
        return TimelineUtils.INSTANCE.getVideoSize(path);
    }

    private final NvsVideoTrack getTimelinePipVideo(PipInfoPack pipInfoPack) {
        int size = this.pipTrackList.size();
        int i = pipInfoPack.indexInScene;
        if (i < 0 || size <= i) {
            return null;
        }
        return this.pipTrackList.get(i);
    }
}
