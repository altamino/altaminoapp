package com.narvii.video.player;

import android.content.Context;
import android.text.TextUtils;
import com.narvii.pip.PipInfoPack;
import com.narvii.scene.SceneConstant;
import com.narvii.scene.helper.SceneCorrectUtils;
import com.narvii.scene.interfaces.IScenePlayer;
import com.narvii.scene.model.SceneInfo;
import com.narvii.video.model.AVClipInfoPack;
import com.narvii.video.model.Caption;
import com.narvii.video.model.StickerInfoPack;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$IntRef;

/* compiled from: BaseScenePlayer.kt */
/* loaded from: classes3.dex */
public abstract class BaseScenePlayer implements IScenePlayer {
    private AVClipInfoPack globalBgmClipInfo;
    private boolean isPreciseOperation;
    private IScenePlayer.OnPlayingListener onPlayListener;
    private String playingSceneId;
    private final ArrayList<SceneInfo> sceneList = new ArrayList<>();
    private final ArrayList<VideoClip> videoClipList = new ArrayList<>();
    private final Map<String, SceneClip> sceneClipMap = new LinkedHashMap();
    private final ArrayList<Long> durationList = new ArrayList<>();
    private final ArrayList<Long> totalDurationList = new ArrayList<>();
    private int stopLocationStatus = IScenePlayer.Companion.getBACK_TO_CURRENT_SCENE_BEGINNING();
    private Long totalDuration = 0L;

    public abstract void setClipInfoList(List<VideoClip> list, ArrayList<AVClipInfoPack> arrayList, ArrayList<Caption> arrayList2, ArrayList<StickerInfoPack> arrayList3, ArrayList<PipInfoPack> arrayList4);

    protected final ArrayList<SceneInfo> getSceneList() {
        return this.sceneList;
    }

    protected final ArrayList<VideoClip> getVideoClipList() {
        return this.videoClipList;
    }

    protected final Map<String, SceneClip> getSceneClipMap() {
        return this.sceneClipMap;
    }

    protected final ArrayList<Long> getDurationList() {
        return this.durationList;
    }

    protected final ArrayList<Long> getTotalDurationList() {
        return this.totalDurationList;
    }

    protected final AVClipInfoPack getGlobalBgmClipInfo() {
        return this.globalBgmClipInfo;
    }

    protected final void setGlobalBgmClipInfo(AVClipInfoPack aVClipInfoPack) {
        this.globalBgmClipInfo = aVClipInfoPack;
    }

    protected final int getStopLocationStatus() {
        return this.stopLocationStatus;
    }

    protected final void setStopLocationStatus(int i) {
        this.stopLocationStatus = i;
    }

    protected final boolean isPreciseOperation() {
        return this.isPreciseOperation;
    }

    protected final void setPreciseOperation(boolean z) {
        this.isPreciseOperation = z;
    }

    public final IScenePlayer.OnPlayingListener getOnPlayListener() {
        return this.onPlayListener;
    }

    public final void setOnPlayListener(IScenePlayer.OnPlayingListener onPlayingListener) {
        this.onPlayListener = onPlayingListener;
    }

    /* renamed from: getTotalDuration, reason: collision with other method in class */
    public final Long m60getTotalDuration() {
        return this.totalDuration;
    }

    public final void setTotalDuration(Long l) {
        this.totalDuration = l;
    }

    public final String getPlayingSceneId() {
        return this.playingSceneId;
    }

    public final void setPlayingSceneId(String str) {
        this.playingSceneId = str;
    }

    private final void clearData() {
        this.sceneClipMap.clear();
        this.sceneList.clear();
        this.videoClipList.clear();
        this.durationList.clear();
        this.totalDurationList.clear();
        this.totalDuration = 0L;
    }

    private final int getMaxSceneDuration() {
        return SceneConstant.getMaxSceneLengthMs();
    }

    protected final int getSceneFirstClipIndex(String str) {
        if (str == null) {
            return -1;
        }
        int i = 0;
        for (Object obj : this.videoClipList) {
            int i2 = i + 1;
            if (i >= 0) {
                if (TextUtils.equals(((VideoClip) obj).getSceneId(), str)) {
                    return i;
                }
                i = i2;
            } else {
                CollectionsKt.throwIndexOverflow();
                throw null;
            }
        }
        return -1;
    }

    protected final int getCurrentClipIndex(long j) {
        int i = 0;
        for (Object obj : this.totalDurationList) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
                throw null;
            }
            if (((Number) obj).longValue() >= j) {
                return i;
            }
            i = i2;
        }
        return -1;
    }

    protected final String getSceneIdByPosition(long j) {
        int currentClipIndex = getCurrentClipIndex(j);
        if (currentClipIndex > this.videoClipList.size() - 1 || currentClipIndex == -1) {
            return null;
        }
        return this.videoClipList.get(currentClipIndex).getSceneId();
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer
    public void release() {
        clearData();
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer
    public void release(Object... args) {
        Intrinsics.checkParameterIsNotNull(args, "args");
        clearData();
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer
    public void setScenes(Context context, List<SceneInfo> sceneInfoList) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(sceneInfoList, "sceneInfoList");
        clearData();
        final Ref$IntRef ref$IntRef = new Ref$IntRef();
        ref$IntRef.element = 0;
        SceneCorrectUtils.SceneMaterial sceneMaterialCorrectSceneList = SceneCorrectUtils.INSTANCE.correctSceneList(sceneInfoList, true, (Function5<? super SceneInfo, ? super AVClipInfoPack, ? super Integer, ? super Integer, ? super Integer, Unit>) new Function5<SceneInfo, AVClipInfoPack, Integer, Integer, Integer, Unit>() { // from class: com.narvii.video.player.BaseScenePlayer.setScenes.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(5);
            }

            @Override // kotlin.jvm.functions.Function5
            public /* bridge */ /* synthetic */ Unit invoke(SceneInfo sceneInfo, AVClipInfoPack aVClipInfoPack, Integer num, Integer num2, Integer num3) {
                invoke(sceneInfo, aVClipInfoPack, num.intValue(), num2.intValue(), num3.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(SceneInfo s, AVClipInfoPack v, int i, int i2, int i3) {
                List<VideoClip> clips;
                Intrinsics.checkParameterIsNotNull(s, "s");
                Intrinsics.checkParameterIsNotNull(v, "v");
                String str = s.id;
                Intrinsics.checkExpressionValueIsNotNull(str, "s.id");
                VideoClip videoClip = new VideoClip(str, v);
                BaseScenePlayer.this.getVideoClipList().add(videoClip);
                if (BaseScenePlayer.this.getSceneClipMap().containsKey(s.id)) {
                    SceneClip sceneClip = BaseScenePlayer.this.getSceneClipMap().get(s.id);
                    if (sceneClip != null && (clips = sceneClip.getClips()) != null) {
                        clips.add(videoClip);
                    }
                } else {
                    Map<String, SceneClip> sceneClipMap = BaseScenePlayer.this.getSceneClipMap();
                    String str2 = s.id;
                    Intrinsics.checkExpressionValueIsNotNull(str2, "s.id");
                    Ref$IntRef ref$IntRef2 = ref$IntRef;
                    int i4 = ref$IntRef2.element;
                    ref$IntRef2.element = i4 + 1;
                    sceneClipMap.put(str2, new SceneClip(videoClip, i4));
                }
                SceneClip sceneClip2 = BaseScenePlayer.this.getSceneClipMap().get(s.id);
                if (sceneClip2 != null) {
                    sceneClip2.setStartOffSet(i2);
                }
                SceneClip sceneClip3 = BaseScenePlayer.this.getSceneClipMap().get(s.id);
                if (sceneClip3 != null) {
                    sceneClip3.setEndOffSet(i3);
                }
                BaseScenePlayer.this.updateDuration(i);
                if (BaseScenePlayer.this.getSceneList().contains(s)) {
                    return;
                }
                BaseScenePlayer.this.getSceneList().add(s);
            }
        });
        ArrayList<AVClipInfoPack> arrayListComponent2 = sceneMaterialCorrectSceneList.component2();
        ArrayList<Caption> arrayListComponent3 = sceneMaterialCorrectSceneList.component3();
        ArrayList<StickerInfoPack> arrayListComponent4 = sceneMaterialCorrectSceneList.component4();
        ArrayList<PipInfoPack> arrayListComponent5 = sceneMaterialCorrectSceneList.component5();
        if (this.videoClipList.size() > 0) {
            this.playingSceneId = this.videoClipList.get(0).getSceneId();
        }
        setClipInfoList(this.videoClipList, arrayListComponent2, arrayListComponent3, arrayListComponent4, arrayListComponent5);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateDuration(long j) {
        if (j > 0) {
            this.durationList.add(Long.valueOf(j));
            Long l = this.totalDuration;
            this.totalDuration = Long.valueOf((l != null ? l.longValue() : 0L) + j);
            ArrayList<Long> arrayList = this.totalDurationList;
            Long l2 = this.totalDuration;
            arrayList.add(Long.valueOf(l2 != null ? l2.longValue() : 0L));
        }
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer
    public void setBackgroundMusic(Context context, AVClipInfoPack aVClipInfoPack) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.globalBgmClipInfo = aVClipInfoPack;
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer
    public void setStopLocation(int i) {
        this.stopLocationStatus = i;
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer
    public void setPreciseControl(boolean z) {
        this.isPreciseOperation = z;
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer
    public void seekScene(String sceneId, boolean z) {
        Intrinsics.checkParameterIsNotNull(sceneId, "sceneId");
        this.playingSceneId = sceneId;
        int sceneFirstClipIndex = getSceneFirstClipIndex(sceneId);
        if (sceneFirstClipIndex != -1) {
            seek(sceneFirstClipIndex, 0L, z);
            return;
        }
        IScenePlayer.OnPlayingListener onPlayingListener = this.onPlayListener;
        if (onPlayingListener != null) {
            onPlayingListener.onSeekingError(sceneId, new Exception());
        }
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer
    public int getSceneCount() {
        return this.sceneList.size();
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer
    public int getSceneCountIgnoreEmpty() {
        ArrayList<SceneInfo> arrayList = this.sceneList;
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (!((SceneInfo) obj).isEmpty()) {
                arrayList2.add(obj);
            }
        }
        return arrayList2.size();
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer
    public int getCurrentSceneIndex() {
        for (SceneInfo sceneInfo : this.sceneList) {
            if (TextUtils.equals(getCurrentSceneId(), sceneInfo.id)) {
                return this.sceneList.indexOf(sceneInfo);
            }
        }
        return 0;
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer
    public int getCurrentSceneIndexIgnoreEmpty() {
        ArrayList<SceneInfo> arrayList = this.sceneList;
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (!((SceneInfo) obj).isEmpty()) {
                arrayList2.add(obj);
            }
        }
        int i = 0;
        for (Object obj2 : arrayList2) {
            int i2 = i + 1;
            if (i >= 0) {
                if (TextUtils.equals(getCurrentSceneId(), ((SceneInfo) obj2).id)) {
                    return i;
                }
                i = i2;
            } else {
                CollectionsKt.throwIndexOverflow();
                throw null;
            }
        }
        return 0;
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer
    public String getCurrentSceneId() {
        String str = this.playingSceneId;
        return str != null ? str : "";
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer
    public long getTotalDuration() {
        Long l = this.totalDuration;
        if (l != null) {
            return l.longValue();
        }
        return 0L;
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer
    public void setOnPlayingListener(IScenePlayer.OnPlayingListener onPlayingListener) {
        this.onPlayListener = onPlayingListener;
    }

    /* compiled from: BaseScenePlayer.kt */
    public static final class SceneClip {
        private List<VideoClip> clips;
        private int endOffSet;
        private int index;
        private String sceneId;
        private int startOffSet;

        public final String getSceneId() {
            return this.sceneId;
        }

        public final void setSceneId(String str) {
            this.sceneId = str;
        }

        public final List<VideoClip> getClips() {
            return this.clips;
        }

        public final void setClips(List<VideoClip> list) {
            Intrinsics.checkParameterIsNotNull(list, "<set-?>");
            this.clips = list;
        }

        public final int getIndex() {
            return this.index;
        }

        public final void setIndex(int i) {
            this.index = i;
        }

        public final int getStartOffSet() {
            return this.startOffSet;
        }

        public final void setStartOffSet(int i) {
            this.startOffSet = i;
        }

        public final int getEndOffSet() {
            return this.endOffSet;
        }

        public final void setEndOffSet(int i) {
            this.endOffSet = i;
        }

        public SceneClip() {
            this.clips = new ArrayList();
            this.startOffSet = -1;
            this.endOffSet = -1;
        }

        public SceneClip(VideoClip clip, int i) {
            Intrinsics.checkParameterIsNotNull(clip, "clip");
            this.clips = new ArrayList();
            this.startOffSet = -1;
            this.endOffSet = -1;
            this.sceneId = clip.getSceneId();
            this.clips.add(clip);
            this.index = i;
        }
    }

    /* compiled from: BaseScenePlayer.kt */
    public static final class VideoClip {
        private AVClipInfoPack clip;
        private String sceneId;

        public final String getSceneId() {
            return this.sceneId;
        }

        public final void setSceneId(String str) {
            this.sceneId = str;
        }

        public final AVClipInfoPack getClip() {
            return this.clip;
        }

        public final void setClip(AVClipInfoPack aVClipInfoPack) {
            this.clip = aVClipInfoPack;
        }

        public VideoClip() {
        }

        public VideoClip(String sceneId, AVClipInfoPack clip) {
            Intrinsics.checkParameterIsNotNull(sceneId, "sceneId");
            Intrinsics.checkParameterIsNotNull(clip, "clip");
            this.sceneId = sceneId;
            this.clip = clip;
        }
    }
}
