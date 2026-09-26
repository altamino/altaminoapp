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
import e8.s;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.n0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
public abstract class BaseScenePlayer implements IScenePlayer {

    @Nullable
    private AVClipInfoPack globalBgmClipInfo;
    private boolean isPreciseOperation;

    @Nullable
    private IScenePlayer.OnPlayingListener onPlayListener;

    @Nullable
    private String playingSceneId;

    @NotNull
    private final ArrayList<SceneInfo> sceneList = new ArrayList<>();

    @NotNull
    private final ArrayList<VideoClip> videoClipList = new ArrayList<>();

    @NotNull
    private final Map<String, SceneClip> sceneClipMap = new LinkedHashMap();

    @NotNull
    private final ArrayList<Long> durationList = new ArrayList<>();

    @NotNull
    private final ArrayList<Long> totalDurationList = new ArrayList<>();
    private int stopLocationStatus = IScenePlayer.Companion.getBACK_TO_CURRENT_SCENE_BEGINNING();

    @Nullable
    private Long totalDuration = 0L;

    public static final class VideoClip {

        @Nullable
        private AVClipInfoPack clip;

        @Nullable
        private String sceneId;

        public VideoClip() {
        }

        @Nullable
        public final AVClipInfoPack getClip() {
            return this.clip;
        }

        @Nullable
        public final String getSceneId() {
            return this.sceneId;
        }

        public final void setClip(@Nullable AVClipInfoPack aVClipInfoPack) {
            this.clip = aVClipInfoPack;
        }

        public final void setSceneId(@Nullable String str) {
            this.sceneId = str;
        }

        public VideoClip(@NotNull String sceneId, @NotNull AVClipInfoPack clip) {
            t.j(sceneId, "sceneId");
            t.j(clip, "clip");
            this.sceneId = sceneId;
            this.clip = clip;
        }
    }

    /* JADX INFO: renamed from: com.narvii.video.player.BaseScenePlayer$setScenes$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements s<SceneInfo, AVClipInfoPack, Integer, Integer, Integer, l0> {
        final /* synthetic */ n0 $index;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(n0 n0Var) {
            super(5);
            this.$index = n0Var;
        }

        @Override // e8.s
        public /* bridge */ /* synthetic */ l0 invoke(SceneInfo sceneInfo, AVClipInfoPack aVClipInfoPack, Integer num, Integer num2, Integer num3) {
            invoke(sceneInfo, aVClipInfoPack, num.intValue(), num2.intValue(), num3.intValue());
            return l0.INSTANCE;
        }

        public final void invoke(@NotNull SceneInfo s, @NotNull AVClipInfoPack v5, int i10, int i11, int i12) {
            List<VideoClip> clips;
            t.j(s, "s");
            t.j(v5, "v");
            String id = s.id;
            t.i(id, "id");
            VideoClip videoClip = new VideoClip(id, v5);
            BaseScenePlayer.this.getVideoClipList().add(videoClip);
            if (BaseScenePlayer.this.getSceneClipMap().containsKey(s.id)) {
                SceneClip sceneClip = BaseScenePlayer.this.getSceneClipMap().get(s.id);
                if (sceneClip != null && (clips = sceneClip.getClips()) != null) {
                    clips.add(videoClip);
                }
            } else {
                Map<String, SceneClip> sceneClipMap = BaseScenePlayer.this.getSceneClipMap();
                String id2 = s.id;
                t.i(id2, "id");
                n0 n0Var = this.$index;
                int i13 = n0Var.element;
                n0Var.element = i13 + 1;
                sceneClipMap.put(id2, new SceneClip(videoClip, i13));
            }
            SceneClip sceneClip2 = BaseScenePlayer.this.getSceneClipMap().get(s.id);
            if (sceneClip2 != null) {
                sceneClip2.setStartOffSet(i11);
            }
            SceneClip sceneClip3 = BaseScenePlayer.this.getSceneClipMap().get(s.id);
            if (sceneClip3 != null) {
                sceneClip3.setEndOffSet(i12);
            }
            BaseScenePlayer.this.updateDuration(i10);
            if (BaseScenePlayer.this.getSceneList().contains(s)) {
                return;
            }
            BaseScenePlayer.this.getSceneList().add(s);
        }
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer
    @NotNull
    public String getCurrentSceneId() {
        String str = this.playingSceneId;
        return str == null ? "" : str;
    }

    @NotNull
    protected final ArrayList<Long> getDurationList() {
        return this.durationList;
    }

    @Nullable
    protected final AVClipInfoPack getGlobalBgmClipInfo() {
        return this.globalBgmClipInfo;
    }

    @Nullable
    public final IScenePlayer.OnPlayingListener getOnPlayListener() {
        return this.onPlayListener;
    }

    @Nullable
    public final String getPlayingSceneId() {
        return this.playingSceneId;
    }

    @NotNull
    protected final Map<String, SceneClip> getSceneClipMap() {
        return this.sceneClipMap;
    }

    @NotNull
    protected final ArrayList<SceneInfo> getSceneList() {
        return this.sceneList;
    }

    protected final int getStopLocationStatus() {
        return this.stopLocationStatus;
    }

    @Nullable
    /* JADX INFO: renamed from: getTotalDuration, reason: collision with other method in class */
    public final Long m1639getTotalDuration() {
        return this.totalDuration;
    }

    @NotNull
    protected final ArrayList<Long> getTotalDurationList() {
        return this.totalDurationList;
    }

    @NotNull
    protected final ArrayList<VideoClip> getVideoClipList() {
        return this.videoClipList;
    }

    protected final boolean isPreciseOperation() {
        return this.isPreciseOperation;
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer
    public void release() {
        clearData();
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer
    public void setBackgroundMusic(@NotNull Context context, @Nullable AVClipInfoPack aVClipInfoPack) {
        t.j(context, "context");
        this.globalBgmClipInfo = aVClipInfoPack;
    }

    public abstract void setClipInfoList(@NotNull List<VideoClip> list, @NotNull ArrayList<AVClipInfoPack> arrayList, @NotNull ArrayList<Caption> arrayList2, @NotNull ArrayList<StickerInfoPack> arrayList3, @NotNull ArrayList<PipInfoPack> arrayList4);

    protected final void setGlobalBgmClipInfo(@Nullable AVClipInfoPack aVClipInfoPack) {
        this.globalBgmClipInfo = aVClipInfoPack;
    }

    public final void setOnPlayListener(@Nullable IScenePlayer.OnPlayingListener onPlayingListener) {
        this.onPlayListener = onPlayingListener;
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer
    public void setOnPlayingListener(@Nullable IScenePlayer.OnPlayingListener onPlayingListener) {
        this.onPlayListener = onPlayingListener;
    }

    public final void setPlayingSceneId(@Nullable String str) {
        this.playingSceneId = str;
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer
    public void setPreciseControl(boolean z6) {
        this.isPreciseOperation = z6;
    }

    protected final void setPreciseOperation(boolean z6) {
        this.isPreciseOperation = z6;
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer
    public void setStopLocation(int i10) {
        this.stopLocationStatus = i10;
    }

    protected final void setStopLocationStatus(int i10) {
        this.stopLocationStatus = i10;
    }

    public final void setTotalDuration(@Nullable Long l) {
        this.totalDuration = l;
    }

    public static final class SceneClip {

        @NotNull
        private List<VideoClip> clips;
        private int endOffSet;
        private int index;

        @Nullable
        private String sceneId;
        private int startOffSet;

        public SceneClip() {
            this.clips = new ArrayList();
            this.startOffSet = -1;
            this.endOffSet = -1;
        }

        @NotNull
        public final List<VideoClip> getClips() {
            return this.clips;
        }

        public final int getEndOffSet() {
            return this.endOffSet;
        }

        public final int getIndex() {
            return this.index;
        }

        @Nullable
        public final String getSceneId() {
            return this.sceneId;
        }

        public final int getStartOffSet() {
            return this.startOffSet;
        }

        public final void setClips(@NotNull List<VideoClip> list) {
            t.j(list, "<set-?>");
            this.clips = list;
        }

        public final void setEndOffSet(int i10) {
            this.endOffSet = i10;
        }

        public final void setIndex(int i10) {
            this.index = i10;
        }

        public final void setSceneId(@Nullable String str) {
            this.sceneId = str;
        }

        public final void setStartOffSet(int i10) {
            this.startOffSet = i10;
        }

        public SceneClip(@NotNull VideoClip clip, int i10) {
            t.j(clip, "clip");
            this.clips = new ArrayList();
            this.startOffSet = -1;
            this.endOffSet = -1;
            this.sceneId = clip.getSceneId();
            this.clips.add(clip);
            this.index = i10;
        }
    }

    private final void clearData() {
        this.sceneClipMap.clear();
        this.sceneList.clear();
        this.videoClipList.clear();
        this.durationList.clear();
        this.totalDurationList.clear();
        this.totalDuration = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateDuration(long j6) {
        if (j6 > 0) {
            this.durationList.add(Long.valueOf(j6));
            Long l = this.totalDuration;
            Long lValueOf = Long.valueOf((l != null ? l.longValue() : 0L) + j6);
            this.totalDuration = lValueOf;
            this.totalDurationList.add(Long.valueOf(lValueOf != null ? lValueOf.longValue() : 0L));
        }
    }

    protected final int getCurrentClipIndex(long j6) {
        int i10 = 0;
        for (Object obj : this.totalDurationList) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                kotlin.collections.v.w();
            }
            if (((Number) obj).longValue() >= j6) {
                return i10;
            }
            i10 = i11;
        }
        return -1;
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
        int i10 = 0;
        for (Object obj2 : arrayList2) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                kotlin.collections.v.w();
            }
            if (TextUtils.equals(getCurrentSceneId(), ((SceneInfo) obj2).id)) {
                return i10;
            }
            i10 = i11;
        }
        return 0;
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

    protected final int getSceneFirstClipIndex(@Nullable String str) {
        if (str == null) {
            return -1;
        }
        int i10 = 0;
        for (Object obj : this.videoClipList) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                kotlin.collections.v.w();
            }
            if (TextUtils.equals(((VideoClip) obj).getSceneId(), str)) {
                return i10;
            }
            i10 = i11;
        }
        return -1;
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
    public void release(@NotNull Object... args) {
        t.j(args, "args");
        clearData();
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer
    public void seekScene(@NotNull String sceneId, boolean z6) {
        t.j(sceneId, "sceneId");
        this.playingSceneId = sceneId;
        int sceneFirstClipIndex = getSceneFirstClipIndex(sceneId);
        if (sceneFirstClipIndex != -1) {
            seek(sceneFirstClipIndex, 0L, z6);
            return;
        }
        IScenePlayer.OnPlayingListener onPlayingListener = this.onPlayListener;
        if (onPlayingListener != null) {
            onPlayingListener.onSeekingError(sceneId, new Exception());
        }
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer
    public void setScenes(@NotNull Context context, @NotNull List<SceneInfo> sceneInfoList) {
        t.j(context, "context");
        t.j(sceneInfoList, "sceneInfoList");
        clearData();
        SceneCorrectUtils.SceneMaterial sceneMaterialCorrectSceneList = SceneCorrectUtils.INSTANCE.correctSceneList(sceneInfoList, true, (s<? super SceneInfo, ? super AVClipInfoPack, ? super Integer, ? super Integer, ? super Integer, l0>) new AnonymousClass1(new n0()));
        ArrayList<AVClipInfoPack> arrayListComponent2 = sceneMaterialCorrectSceneList.component2();
        ArrayList<Caption> arrayListComponent3 = sceneMaterialCorrectSceneList.component3();
        ArrayList<StickerInfoPack> arrayListComponent4 = sceneMaterialCorrectSceneList.component4();
        ArrayList<PipInfoPack> arrayListComponent5 = sceneMaterialCorrectSceneList.component5();
        if (this.videoClipList.size() > 0) {
            this.playingSceneId = this.videoClipList.get(0).getSceneId();
        }
        setClipInfoList(this.videoClipList, arrayListComponent2, arrayListComponent3, arrayListComponent4, arrayListComponent5);
    }

    private final int getMaxSceneDuration() {
        return SceneConstant.getMaxSceneLengthMs();
    }

    @Nullable
    protected final String getSceneIdByPosition(long j6) {
        int currentClipIndex = getCurrentClipIndex(j6);
        if (currentClipIndex <= this.videoClipList.size() - 1 && currentClipIndex != -1) {
            return this.videoClipList.get(currentClipIndex).getSceneId();
        }
        return null;
    }
}
