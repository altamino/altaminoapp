package com.narvii.pip;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.RectF;
import android.graphics.Region;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.narvii.amino.BuildConfig;
import com.narvii.app.FragmentRegister;
import com.narvii.media.MediaPickerFragment;
import com.narvii.mediaeditor.R;
import com.narvii.model.Media;
import com.narvii.photos.PhotoManager;
import com.narvii.pre_editing.MediaPreEditingActivityKt;
import com.narvii.scene.SceneConstant;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.text.TextUtils;
import com.narvii.util.ws.WsMessage;
import com.narvii.video.BaseMediaEditorFragment;
import com.narvii.video.BaseViceTimeLineFragment;
import com.narvii.video.attachment.DrawRectView;
import com.narvii.video.interfaces.IPreviewPlayer;
import com.narvii.video.model.AVClipInfoPack;
import com.narvii.video.model.BaseClipInfoPack;
import com.narvii.video.services.FrameRetrieverManager;
import com.narvii.video.widget.MediaTimeLineComponent;
import com.narvii.video.widget.videoview.NVEditorPreviewVideoVIew;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.text.StringsKt__StringsJVMKt;

/* compiled from: PipEditorFragment.kt */
/* loaded from: classes3.dex */
public final class PipEditorFragment extends BaseViceTimeLineFragment implements DrawRectView.OnDrawRectTouchListener, DrawRectView.onPipVideoMuteListener, MediaPickerFragment.OnResultListener {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(PipEditorFragment.class), "fragmentRegister", "getFragmentRegister()Lcom/narvii/app/FragmentRegister;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(PipEditorFragment.class), "photoManager", "getPhotoManager()Lcom/narvii/photos/PhotoManager;"))};
    public static final Companion Companion = new Companion(null);
    private static final int PIP_VIDEO_MAX_SIZE = 1;
    private static final int REQUEST_CODE_VIDEO_PIP = 12346;
    private static final String TAG = "PipEditorFragment";
    private static final float VOLUME_MIN_VALUE = 0.02f;
    private HashMap _$_findViewCache;
    private int currPipVideoIndex;
    private File intermediateFolder;
    private MediaPickerFragment mediaPickerFragment;
    private String outputFolderPath;
    private final Lazy fragmentRegister$delegate = LazyKt__LazyJVMKt.lazy(new Function0<FragmentRegister>() { // from class: com.narvii.pip.PipEditorFragment$fragmentRegister$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final FragmentRegister invoke() {
            return (FragmentRegister) this.this$0.getService("fragmentRegister");
        }
    });
    private final Lazy photoManager$delegate = LazyKt__LazyJVMKt.lazy(new Function0<PhotoManager>() { // from class: com.narvii.pip.PipEditorFragment$photoManager$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final PhotoManager invoke() {
            return (PhotoManager) this.this$0.getService("photo");
        }
    });
    private long lastViceTrackClickTime = System.currentTimeMillis();
    private long lastTouchDownTime = System.currentTimeMillis();

    private final FragmentRegister getFragmentRegister() {
        Lazy lazy = this.fragmentRegister$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (FragmentRegister) lazy.getValue();
    }

    private final PhotoManager getPhotoManager() {
        Lazy lazy = this.photoManager$delegate;
        KProperty kProperty = $$delegatedProperties[1];
        return (PhotoManager) lazy.getValue();
    }

    @Override // com.narvii.video.BaseViceTimeLineFragment, com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment, com.narvii.app.theme.NVThemeFragment
    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    @Override // com.narvii.video.BaseViceTimeLineFragment, com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment, com.narvii.app.theme.NVThemeFragment
    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View view2 = getView();
        if (view2 == null) {
            return null;
        }
        View viewFindViewById = view2.findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    @Override // com.narvii.video.BaseViceTimeLineFragment
    public int getViceTrackDataType(int i) {
        return 104;
    }

    @Override // com.narvii.video.attachment.DrawRectView.OnDrawRectTouchListener
    public void onBeyondDrawRectClick(int i) {
    }

    @Override // com.narvii.video.attachment.DrawRectView.OnDrawRectTouchListener
    public void onHorizFlipClick(int i) {
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected boolean showPauseButton() {
        return true;
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        FragmentManager fragmentManager = getFragmentManager();
        if (fragmentManager == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        Fragment fragmentFindFragmentByTag = fragmentManager.findFragmentByTag("playListMediaPicker");
        if (fragmentFindFragmentByTag instanceof MediaPickerFragment) {
            this.mediaPickerFragment = (MediaPickerFragment) fragmentFindFragmentByTag;
            return;
        }
        this.mediaPickerFragment = new MediaPickerFragment();
        FragmentManager fragmentManager2 = getFragmentManager();
        if (fragmentManager2 == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        FragmentTransaction fragmentTransactionBeginTransaction = fragmentManager2.beginTransaction();
        MediaPickerFragment mediaPickerFragment = this.mediaPickerFragment;
        if (mediaPickerFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mediaPickerFragment");
            throw null;
        }
        fragmentTransactionBeginTransaction.add(mediaPickerFragment, "playListMediaPicker").commitAllowingStateLoss();
        MediaPickerFragment mediaPickerFragment2 = this.mediaPickerFragment;
        if (mediaPickerFragment2 != null) {
            mediaPickerFragment2.listenerEventDispatcher.add(this);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("mediaPickerFragment");
            throw null;
        }
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return getLayoutInflater().inflate(R.layout.fragment_pip_editor, viewGroup, false);
    }

    @Override // com.narvii.video.BaseViceTimeLineFragment, com.narvii.video.BaseMediaEditorFragment
    public void initComponent() {
        super.initComponent();
        setVideoDurationText((TextView) _$_findCachedViewById(R.id.video_duration));
        setVideoPlaybackTimeText((TextView) _$_findCachedViewById(R.id.video_playback_time));
        setVideoPlaybackTimeDivider(_$_findCachedViewById(R.id.divider));
        setPreviewVideoView((NVEditorPreviewVideoVIew) _$_findCachedViewById(R.id.video_view_player));
        setPlayerButton((ImageView) _$_findCachedViewById(R.id.player_button));
        setMainTimeLineComponent((MediaTimeLineComponent) _$_findCachedViewById(R.id.video_time_line_component));
        LinearLayout vice_time_line_panel = (LinearLayout) _$_findCachedViewById(R.id.vice_time_line_panel);
        Intrinsics.checkExpressionValueIsNotNull(vice_time_line_panel, "vice_time_line_panel");
        setViceTimeLinePanel(vice_time_line_panel);
    }

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        ((ImageView) _$_findCachedViewById(R.id.option_cancel)).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.pip.PipEditorFragment.onViewCreated.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PipEditorFragment.this.finish();
            }
        });
        ((ImageView) _$_findCachedViewById(R.id.option_add_pip_video)).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.pip.PipEditorFragment.onViewCreated.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                if (PipEditorFragment.this.canAddPipVideo()) {
                    PipEditorFragment.this.addNewPipVideo();
                }
            }
        });
        ((ImageView) _$_findCachedViewById(R.id.option_done)).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.pip.PipEditorFragment.onViewCreated.3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                Intent intent = new Intent();
                Iterator it = PipEditorFragment.this.getVideoInputClipList().iterator();
                int i = 0;
                while (it.hasNext()) {
                    i += ((AVClipInfoPack) it.next()).visibleDurationInMs;
                }
                if (!PipEditorFragment.this.getPreviewPlayer().getPipVideoList().isEmpty()) {
                    int size = PipEditorFragment.this.getPreviewPlayer().getPipVideoList().size();
                    int i2 = PipEditorFragment.this.currPipVideoIndex;
                    if (i2 >= 0 && size > i2) {
                        PipInfoPack pipInfoPack = PipEditorFragment.this.getPreviewPlayer().getPipVideoList().get(PipEditorFragment.this.currPipVideoIndex);
                        Intrinsics.checkExpressionValueIsNotNull(pipInfoPack, "previewPlayer.getPipVideoList()[currPipVideoIndex]");
                        PipInfoPack pipInfoPack2 = pipInfoPack;
                        int i3 = pipInfoPack2.startOffsetToMainTrackInMs;
                        if (i3 < i && pipInfoPack2.visibleDurationInMs + i3 > i) {
                            pipInfoPack2.trimEndInMs = (i - i3) + pipInfoPack2.trimStartInMs;
                        }
                    }
                }
                intent.putExtra("pipList", JacksonUtils.writeAsString(PipEditorFragment.this.getPreviewPlayer().getPipVideoList()));
                PipEditorFragment.this.setResult(-1, intent);
                PipEditorFragment.this.finish();
            }
        });
    }

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onActivityCreated(bundle);
        setOutputFileDir(new File(getStringParam("outputFileDir")));
        this.intermediateFolder = new File(getOutputFileDir(), SceneConstant.SCENE_INTERMEDIATE_FILE);
        File file = this.intermediateFolder;
        if (file != null) {
            file.mkdirs();
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("intermediateFolder");
            throw null;
        }
    }

    @Override // com.narvii.video.BaseViceTimeLineFragment
    public void onViceTrackClicked(int i) throws Resources.NotFoundException {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.lastViceTrackClickTime <= 1000) {
            return;
        }
        this.lastViceTrackClickTime = jCurrentTimeMillis;
        pauseVideoWhenTouch();
        ArrayList<PipInfoPack> pipVideoList = getPreviewPlayer().getPipVideoList();
        if (!pipVideoList.isEmpty()) {
            PipInfoPack pipInfoPack = pipVideoList.get(pipVideoList.size() - 1);
            Intrinsics.checkExpressionValueIsNotNull(pipInfoPack, "pipClipList[pipClipList.size - 1]");
            showEditView(pipInfoPack);
            PipInfoPack pipInfoPack2 = pipVideoList.get(i);
            Intrinsics.checkExpressionValueIsNotNull(pipInfoPack2, "pipClipList[trackIndex]");
            PipInfoPack pipInfoPack3 = pipInfoPack2;
            int i2 = pipInfoPack3.startOffsetToMainTrackInMs;
            int i3 = pipInfoPack3.visibleDurationInMs + i2;
            int mainTrackPlaybackTime = getMainTrackPlaybackTime();
            if (i2 > mainTrackPlaybackTime || i3 <= mainTrackPlaybackTime) {
                moveMainTrackTo(pipInfoPack3.startOffsetToMainTrackInMs);
                updatePipVideoTimeLine();
            }
            onEdit(4);
        }
    }

    @Override // com.narvii.video.BaseViceTimeLineFragment
    public List<BaseClipInfoPack> getTargetClipListForViceTracks() {
        int iIntValue = getTotalVisibleVideoDurationInMs().getFirst().intValue();
        Iterator<PipInfoPack> it = getPreviewPlayer().getPipVideoList().iterator();
        while (it.hasNext()) {
            PipInfoPack next = it.next();
            if (!next.isTrimSectionValid()) {
                next.trimEndInMs = next.trimStartInMs + Math.min(next.trimmedDurationInMs(), iIntValue);
                next.visibleDurationInMs = next.trimmedDurationInMs();
            }
        }
        return getPreviewPlayer().getPipVideoList();
    }

    @Override // com.narvii.video.BaseViceTimeLineFragment
    public void onViceTrackOffsetChanged(int i) {
        getPreviewPlayer().onPipVideoOffsetChanged(i);
    }

    @Override // com.narvii.video.BaseViceTimeLineFragment, com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment
    protected void onAVClipsPrepared() throws Resources.NotFoundException {
        super.onAVClipsPrepared();
        ArrayList<PipInfoPack> pipVideoList = getPreviewPlayer().getPipVideoList();
        if (!pipVideoList.isEmpty()) {
            PipInfoPack pipInfoPack = pipVideoList.get(pipVideoList.size() - 1);
            Intrinsics.checkExpressionValueIsNotNull(pipInfoPack, "pipClipList[pipClipList.size - 1]");
            PipInfoPack pipInfoPack2 = pipInfoPack;
            if (pipInfoPack2.startOffsetToMainTrackInMs <= getMainTrackPlaybackTime()) {
                showEditView(pipInfoPack2);
            }
            DrawRectView draw_rect = (DrawRectView) _$_findCachedViewById(R.id.draw_rect);
            Intrinsics.checkExpressionValueIsNotNull(draw_rect, "draw_rect");
            draw_rect.setPipVideoMute(pipInfoPack2.mute);
            ((DrawRectView) _$_findCachedViewById(R.id.draw_rect)).setOnDrawRectTouchListener(this);
            ((DrawRectView) _$_findCachedViewById(R.id.draw_rect)).setPipVideoMuteListener(this);
        }
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment
    public void initFrameRetrieverManager() throws Resources.NotFoundException {
        this.outputFolderPath = getStringParam("frameRetrieverOutputFolder");
        if (this.outputFolderPath != null) {
            FrameRetrieverManager frameRetrieverManager = getFrameRetrieverManager();
            String str = this.outputFolderPath;
            if (str != null) {
                FrameRetrieverManager.initRetriever$default(frameRetrieverManager, str, false, false, 6, null);
                return;
            } else {
                Intrinsics.throwNpe();
                throw null;
            }
        }
        FrameRetrieverManager.initRetriever$default(getFrameRetrieverManager(), "timeline_tmp", "video", false, false, 12, null);
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return Utils.isAndroidVersion8() ? R.style.AminoTheme_Overlay : R.style.AminoTheme_Translucent_NoActionBar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void addPipVideos(PipInfoPack pipInfoPack) {
        getPreviewPlayer().addPipVideo(pipInfoPack);
        showEditView(pipInfoPack);
    }

    private final void showEditView(final PipInfoPack pipInfoPack) {
        NVEditorPreviewVideoVIew previewVideoView = getPreviewVideoView();
        if (previewVideoView != null) {
            previewVideoView.post(new Runnable() { // from class: com.narvii.pip.PipEditorFragment.showEditView.1
                @Override // java.lang.Runnable
                public final void run() {
                    PipEditorFragment.this.getPreviewPlayer().updatePipVideoTransform(pipInfoPack);
                    Utils.postDelayed(new Runnable() { // from class: com.narvii.pip.PipEditorFragment.showEditView.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            PipEditorFragment.this.getPreviewPlayer().seekTimeLineTo(PipEditorFragment.this.getPreviewPlayer().getCurrentVideoPositionInTimeline());
                        }
                    }, 200L);
                    ((DrawRectView) PipEditorFragment.this._$_findCachedViewById(R.id.draw_rect)).setShowEdit(true);
                    if (pipInfoPack.vertexCoord.size() == 0) {
                        PipEditorFragment.this.calculatePipVideoDefaultCoord(pipInfoPack);
                        ((DrawRectView) PipEditorFragment.this._$_findCachedViewById(R.id.draw_rect)).setDrawRect(pipInfoPack.vertexCoord, 4);
                    } else {
                        PipEditorFragment.this.calculatePipVideoRealTimeCoord(pipInfoPack);
                    }
                    if (pipInfoPack.volume < PipEditorFragment.VOLUME_MIN_VALUE) {
                        PipEditorFragment.this.onPipVideoMute(false);
                    }
                    PipEditorFragment.this.updateAddPipVideoBtn();
                }
            });
        }
    }

    @Override // com.narvii.video.attachment.DrawRectView.OnDrawRectTouchListener
    public void onDrag(PointF pointF, PointF pointF2, int i) {
        ArrayList<PipInfoPack> pipVideoList = getPreviewPlayer().getPipVideoList();
        if (pipVideoList.isEmpty()) {
            return;
        }
        int size = pipVideoList.size();
        int i2 = this.currPipVideoIndex;
        if (i2 < 0 || size <= i2 || pointF == null || pointF2 == null) {
            return;
        }
        float width = 720.0f / getPreviewPlayer().getVideoView().getWidth();
        PipInfoPack pipInfoPack = pipVideoList.get(this.currPipVideoIndex);
        Intrinsics.checkExpressionValueIsNotNull(pipInfoPack, "pipInfoPackList[currPipVideoIndex]");
        PipInfoPack pipInfoPack2 = pipInfoPack;
        int i3 = pipInfoPack2.startOffsetToMainTrackInMs;
        int i4 = pipInfoPack2.visibleDurationInMs + i3;
        int mainTrackPlaybackTime = getMainTrackPlaybackTime();
        if (i3 > mainTrackPlaybackTime || i4 <= mainTrackPlaybackTime) {
            return;
        }
        pauseVideoWhenTouch();
        float f = (pointF2.x - pointF.x) * width;
        PointF pointF3 = pipInfoPack2.translation;
        pipInfoPack2.translation = new PointF(f + pointF3.x, ((pointF.y - pointF2.y) * width) + pointF3.y);
        getPreviewPlayer().updatePipVideoTransform(pipInfoPack2);
        if (!getInPlay()) {
            getPreviewPlayer().seekTimeLineTo(getPreviewPlayer().getCurrentVideoPositionInTimeline());
        }
        calculatePipVideoRealTimeCoord(pipInfoPack2);
    }

    @Override // com.narvii.video.attachment.DrawRectView.OnDrawRectTouchListener
    public void onScaleAndRotate(float f, PointF pointF, float f2, int i) {
        ArrayList<PipInfoPack> pipVideoList = getPreviewPlayer().getPipVideoList();
        if (pipVideoList.isEmpty()) {
            return;
        }
        int size = pipVideoList.size();
        int i2 = this.currPipVideoIndex;
        if (i2 < 0 || size <= i2) {
            return;
        }
        PipInfoPack pipInfoPack = pipVideoList.get(i2);
        Intrinsics.checkExpressionValueIsNotNull(pipInfoPack, "pipInfoPackList[currPipVideoIndex]");
        PipInfoPack pipInfoPack2 = pipInfoPack;
        int i3 = pipInfoPack2.startOffsetToMainTrackInMs;
        int i4 = pipInfoPack2.visibleDurationInMs + i3;
        int mainTrackPlaybackTime = getMainTrackPlaybackTime();
        if (i3 > mainTrackPlaybackTime || i4 <= mainTrackPlaybackTime) {
            return;
        }
        pauseVideoWhenTouch();
        pipInfoPack2.scaleX *= f;
        pipInfoPack2.scaleY = pipInfoPack2.scaleX;
        checkScale(pipInfoPack2);
        pipInfoPack2.rotation += f2;
        getPreviewPlayer().updatePipVideoTransform(pipInfoPack2);
        if (!getInPlay()) {
            getPreviewPlayer().seekTimeLineTo(getPreviewPlayer().getCurrentVideoPositionInTimeline());
        }
        calculatePipVideoRealTimeCoord(pipInfoPack2);
    }

    @Override // com.narvii.video.attachment.DrawRectView.OnDrawRectTouchListener
    public void onDel(int i) throws Resources.NotFoundException {
        ArrayList<PipInfoPack> pipVideoList = getPreviewPlayer().getPipVideoList();
        if (pipVideoList.isEmpty()) {
            return;
        }
        int size = pipVideoList.size();
        int i2 = this.currPipVideoIndex;
        if (i2 < 0 || size <= i2) {
            return;
        }
        pauseVideoWhenTouch();
        IPreviewPlayer previewPlayer = getPreviewPlayer();
        PipInfoPack pipInfoPack = pipVideoList.get(this.currPipVideoIndex);
        Intrinsics.checkExpressionValueIsNotNull(pipInfoPack, "pipInfoPackList[currPipVideoIndex]");
        previewPlayer.removePipVideo(pipInfoPack, this.currPipVideoIndex);
        ((DrawRectView) _$_findCachedViewById(R.id.draw_rect)).setDrawRect(CollectionsKt__CollectionsKt.emptyList(), 4);
        if (!getInPlay()) {
            getPreviewPlayer().seekTimeLineTo(getPreviewPlayer().getCurrentVideoPositionInTimeline());
        }
        updateAddPipVideoBtn();
        updatePipVideoTimeLine();
    }

    @Override // com.narvii.video.attachment.DrawRectView.OnDrawRectTouchListener
    public void onTouchDown(PointF pointF, int i) {
        ArrayList<PipInfoPack> pipVideoList = getPreviewPlayer().getPipVideoList();
        int size = pipVideoList.size();
        int i2 = this.currPipVideoIndex;
        if (i2 >= 0 && size > i2) {
            PipInfoPack pipInfoPack = pipVideoList.get(i2);
            Intrinsics.checkExpressionValueIsNotNull(pipInfoPack, "pipInfoPackList[currPipVideoIndex]");
            PipInfoPack pipInfoPack2 = pipInfoPack;
            if (!pointInCurrPipVideo(pipInfoPack2, pointF)) {
                return;
            }
            int i3 = pipInfoPack2.startOffsetToMainTrackInMs;
            int i4 = pipInfoPack2.visibleDurationInMs + i3;
            int mainTrackPlaybackTime = getMainTrackPlaybackTime();
            if (i3 > mainTrackPlaybackTime || i4 <= mainTrackPlaybackTime) {
                return;
            }
            ((DrawRectView) _$_findCachedViewById(R.id.draw_rect)).setDrawRect(pipVideoList.get(this.currPipVideoIndex).vertexCoord, 4);
            ((DrawRectView) _$_findCachedViewById(R.id.draw_rect)).setShowEdit(true);
            pauseVideoWhenTouch();
            long jCurrentTimeMillis = System.currentTimeMillis();
            long j = WsMessage.LIVE_LAYER_USER_JOINED_EVENT;
            long j2 = 30;
            long j3 = jCurrentTimeMillis - this.lastTouchDownTime;
            if (j2 <= j3 && j >= j3) {
                onEdit(4);
            }
        }
        this.lastTouchDownTime = System.currentTimeMillis();
    }

    private final boolean pointInCurrPipVideo(PipInfoPack pipInfoPack, PointF pointF) {
        if (pointF == null) {
            return false;
        }
        RectF rectF = new RectF();
        Path path = new Path();
        path.moveTo(pipInfoPack.vertexCoord.get(0).x, pipInfoPack.vertexCoord.get(0).y);
        path.lineTo(pipInfoPack.vertexCoord.get(1).x, pipInfoPack.vertexCoord.get(1).y);
        path.lineTo(pipInfoPack.vertexCoord.get(2).x, pipInfoPack.vertexCoord.get(2).y);
        path.lineTo(pipInfoPack.vertexCoord.get(3).x, pipInfoPack.vertexCoord.get(3).y);
        path.close();
        path.computeBounds(rectF, true);
        Region region = new Region();
        region.setPath(path, new Region((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom));
        return region.contains((int) pointF.x, (int) pointF.y);
    }

    @Override // com.narvii.video.attachment.DrawRectView.OnDrawRectTouchListener
    public void onEdit(int i) {
        FragmentRegister fragmentRegister;
        Uri fragmentDeepLinkUri;
        ArrayList<PipInfoPack> pipVideoList = getPreviewPlayer().getPipVideoList();
        if (pipVideoList.isEmpty()) {
            return;
        }
        int size = pipVideoList.size();
        int i2 = this.currPipVideoIndex;
        if (i2 < 0 || size <= i2 || (fragmentRegister = getFragmentRegister()) == null || (fragmentDeepLinkUri = fragmentRegister.getFragmentDeepLinkUri("mediaEditor")) == null) {
            return;
        }
        Intent intent = new Intent("android.intent.action.VIEW", fragmentDeepLinkUri);
        AVClipInfoPack aVClipInfoPack = new AVClipInfoPack();
        PipInfoPack pipInfoPack = pipVideoList.get(this.currPipVideoIndex);
        Intrinsics.checkExpressionValueIsNotNull(pipInfoPack, "pipInfoPackList[currPipVideoIndex]");
        PipInfoPack pipInfoPack2 = pipInfoPack;
        aVClipInfoPack.trimStartInMs = pipInfoPack2.trimStartInMs;
        aVClipInfoPack.trimEndInMs = pipInfoPack2.trimEndInMs;
        aVClipInfoPack.trackVolume = pipInfoPack2.volume;
        String str = pipInfoPack2.inputPath;
        Intrinsics.checkExpressionValueIsNotNull(str, "pipInfoPack.inputPath");
        if (StringsKt__StringsJVMKt.startsWith$default(str, "file://", false, 2, null)) {
            String str2 = pipInfoPack2.inputPath;
            Intrinsics.checkExpressionValueIsNotNull(str2, "pipInfoPack.inputPath");
            int length = pipInfoPack2.inputPath.length();
            if (str2 == null) {
                throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
            }
            String strSubstring = str2.substring(7, length);
            Intrinsics.checkExpressionValueIsNotNull(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            aVClipInfoPack.inputPath = strSubstring;
        } else {
            aVClipInfoPack.inputPath = pipInfoPack2.inputPath;
        }
        intent.putExtra("clipInfoPack", JacksonUtils.writeAsString(aVClipInfoPack));
        intent.putExtra("isVideoTrimming", true);
        intent.putExtra("minOutputLength", 1000);
        intent.putExtra("showVolume", true);
        intent.putExtra("mute", pipInfoPack2.mute);
        startActivityForResult(intent, getREQUEST_CODE_SCENE_EDITOR());
    }

    @Override // com.narvii.video.attachment.DrawRectView.onPipVideoMuteListener
    public void onPipVideoMute(boolean z) {
        ArrayList<PipInfoPack> pipVideoList = getPreviewPlayer().getPipVideoList();
        if (pipVideoList.isEmpty()) {
            return;
        }
        int size = pipVideoList.size();
        int i = this.currPipVideoIndex;
        if (i < 0 || size <= i) {
            return;
        }
        DrawRectView draw_rect = (DrawRectView) _$_findCachedViewById(R.id.draw_rect);
        Intrinsics.checkExpressionValueIsNotNull(draw_rect, "draw_rect");
        draw_rect.setPipVideoMute(!z);
        PipInfoPack pipInfoPack = pipVideoList.get(this.currPipVideoIndex);
        Intrinsics.checkExpressionValueIsNotNull(pipInfoPack, "pipInfoPackList[currPipVideoIndex]");
        PipInfoPack pipInfoPack2 = pipInfoPack;
        pipInfoPack2.mute = !z;
        IPreviewPlayer previewPlayer = getPreviewPlayer();
        PipInfoPack pipInfoPack3 = pipVideoList.get(this.currPipVideoIndex);
        Intrinsics.checkExpressionValueIsNotNull(pipInfoPack3, "pipInfoPackList[currPipVideoIndex]");
        PipInfoPack pipInfoPack4 = pipInfoPack3;
        DrawRectView draw_rect2 = (DrawRectView) _$_findCachedViewById(R.id.draw_rect);
        Intrinsics.checkExpressionValueIsNotNull(draw_rect2, "draw_rect");
        previewPlayer.setPipVideoVolume(pipInfoPack4, draw_rect2.isPipVideoMute() ? 0.0f : pipInfoPack2.volume, this.currPipVideoIndex);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void calculatePipVideoDefaultCoord(PipInfoPack pipInfoPack) {
        float f;
        float f2;
        if (pipInfoPack.videoWidth < 0 || pipInfoPack.videoHeight < 0) {
            IPreviewPlayer previewPlayer = getPreviewPlayer();
            String str = pipInfoPack.inputPath;
            Intrinsics.checkExpressionValueIsNotNull(str, "pipInfoPack.inputPath");
            Point videoSize = previewPlayer.getVideoSize(str);
            pipInfoPack.videoWidth = videoSize.x;
            pipInfoPack.videoHeight = videoSize.y;
        }
        float width = getPreviewPlayer().getVideoView().getWidth();
        float height = getPreviewPlayer().getVideoView().getHeight();
        float f3 = (pipInfoPack.videoWidth * 1.0f) / pipInfoPack.videoHeight;
        if (f3 > (width * 1.0f) / height) {
            f2 = pipInfoPack.scaleX * width;
            f = f2 / f3;
        } else {
            f = height * pipInfoPack.scaleX;
            f2 = f * f3;
        }
        float f4 = (width - f2) / 2.0f;
        float f5 = (height - f) / 2.0f;
        pipInfoPack.vertexCoord.add(new PointF(f4, f5));
        float f6 = (width + f2) / 2.0f;
        pipInfoPack.vertexCoord.add(new PointF(f6, f5));
        float f7 = (height + f) / 2.0f;
        pipInfoPack.vertexCoord.add(new PointF(f6, f7));
        pipInfoPack.vertexCoord.add(new PointF(f4, f7));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void calculatePipVideoRealTimeCoord(PipInfoPack pipInfoPack) {
        float f;
        float f2;
        float f3 = pipInfoPack.scaleX;
        double d = pipInfoPack.rotation;
        Double.isNaN(d);
        double d2 = 180;
        Double.isNaN(d2);
        double d3 = ((-d) * 3.141592653589793d) / d2;
        PointF pointF = pipInfoPack.translation;
        float f4 = pointF.x;
        float f5 = pointF.y;
        float width = getPreviewPlayer().getVideoView().getWidth();
        float height = getPreviewPlayer().getVideoView().getHeight();
        float f6 = (pipInfoPack.videoWidth * 1.0f) / pipInfoPack.videoHeight;
        float width2 = 720.0f / getPreviewPlayer().getVideoView().getWidth();
        if (f6 > (width * 1.0f) / height) {
            f2 = f3 * width;
            f = f2 / f6;
        } else {
            f = height * f3;
            f2 = f * f6;
        }
        float f7 = width / 2.0f;
        float f8 = height / 2.0f;
        float f9 = (width - f2) / 2.0f;
        float f10 = (height - f) / 2.0f;
        pipInfoPack.vertexCoord.set(0, new PointF(f9, f10));
        float f11 = (width + f2) / 2.0f;
        pipInfoPack.vertexCoord.set(1, new PointF(f11, f10));
        float f12 = (height + f) / 2.0f;
        pipInfoPack.vertexCoord.set(2, new PointF(f11, f12));
        pipInfoPack.vertexCoord.set(3, new PointF(f9, f12));
        List<PointF> list = pipInfoPack.vertexCoord;
        Intrinsics.checkExpressionValueIsNotNull(list, "pipInfoPack.vertexCoord");
        int i = 0;
        for (Object obj : list) {
            int i2 = i + 1;
            if (i >= 0) {
                PointF pointF2 = (PointF) obj;
                float f13 = f7;
                pipInfoPack.vertexCoord.set(i, new PointF((((pointF2.x - f7) * ((float) Math.cos(d3))) - ((pointF2.y - f8) * ((float) Math.sin(d3)))) + f13, ((pointF2.x - f13) * ((float) Math.sin(d3))) + ((pointF2.y - f8) * ((float) Math.cos(d3))) + f8));
                i = i2;
                f7 = f13;
                width2 = width2;
            } else {
                CollectionsKt.throwIndexOverflow();
                throw null;
            }
        }
        float f14 = width2;
        List<PointF> list2 = pipInfoPack.vertexCoord;
        Intrinsics.checkExpressionValueIsNotNull(list2, "pipInfoPack.vertexCoord");
        int i3 = 0;
        for (Object obj2 : list2) {
            int i4 = i3 + 1;
            if (i3 >= 0) {
                PointF pointF3 = (PointF) obj2;
                pipInfoPack.vertexCoord.set(i3, new PointF(pointF3.x + (f4 / f14), pointF3.y - (f5 / f14)));
                i3 = i4;
            } else {
                CollectionsKt.throwIndexOverflow();
                throw null;
            }
        }
        ((DrawRectView) _$_findCachedViewById(R.id.draw_rect)).setDrawRect(pipInfoPack.vertexCoord, 4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void addNewPipVideo() {
        MediaPickerFragment mediaPickerFragment = this.mediaPickerFragment;
        if (mediaPickerFragment != null) {
            MediaPreEditingActivityKt.pickVideoFromGalleryAndYoutube(mediaPickerFragment, "", 1, 12346, false);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("mediaPickerFragment");
            throw null;
        }
    }

    private final void pauseVideoWhenTouch() {
        if (getInPlay()) {
            setAutoPlaying(false);
            BaseMediaEditorFragment.changeVideoPlaybackStatus$default(this, true, false, 2, null);
            getPreviewPlayer().refreshCurrentPosition();
        }
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) throws Resources.NotFoundException {
        if (i2 != -1) {
            return;
        }
        if (i == 12346) {
            if (i2 == -1 && i == 64816 && intent != null) {
                Media media = (Media) JacksonUtils.readAs(intent.getStringExtra("media"), Media.class);
                Bundle bundle = intent.getBundleExtra(BuildConfig.BUILD_TYPE);
                Intrinsics.checkExpressionValueIsNotNull(media, "media");
                Intrinsics.checkExpressionValueIsNotNull(bundle, "bundle");
                onPickMediaResult(CollectionsKt__CollectionsKt.mutableListOf(media), bundle);
                return;
            }
            return;
        }
        if (i != getREQUEST_CODE_SCENE_EDITOR()) {
            if (i2 == -1 && i == 64816 && intent != null) {
                Media media2 = (Media) JacksonUtils.readAs(intent.getStringExtra("media"), Media.class);
                Bundle bundle2 = intent.getBundleExtra(BuildConfig.BUILD_TYPE);
                Intrinsics.checkExpressionValueIsNotNull(media2, "media");
                Intrinsics.checkExpressionValueIsNotNull(bundle2, "bundle");
                onPickerResult(CollectionsKt__CollectionsKt.mutableListOf(media2));
                return;
            }
            return;
        }
        String stringExtra = intent != null ? intent.getStringExtra("clipInfoList") : null;
        if (stringExtra != null) {
            ArrayList clipInfoList = JacksonUtils.readListAs(stringExtra, AVClipInfoPack.class);
            Intrinsics.checkExpressionValueIsNotNull(clipInfoList, "clipInfoList");
            if (!clipInfoList.isEmpty()) {
                AVClipInfoPack aVClipInfoPack = (AVClipInfoPack) clipInfoList.get(0);
                PipInfoPack pipInfoPackCopy = getPreviewPlayer().getPipVideoList().get(this.currPipVideoIndex).copy();
                if (pipInfoPackCopy == null) {
                    throw new TypeCastException("null cannot be cast to non-null type com.narvii.pip.PipInfoPack");
                }
                pipInfoPackCopy.volume = aVClipInfoPack.trackVolume;
                pipInfoPackCopy.trimStartInMs = aVClipInfoPack.trimStartInMs;
                pipInfoPackCopy.trimEndInMs = aVClipInfoPack.trimStartInMs + Math.min(aVClipInfoPack.trimmedDurationInMs(), getTotalVisibleVideoDurationInMs().getFirst().intValue());
                pipInfoPackCopy.visibleDurationInMs = pipInfoPackCopy.trimmedDurationInMs();
                pipInfoPackCopy.mute = intent.getBooleanExtra("mute", false);
                onDel(4);
                addPipVideos(pipInfoPackCopy);
                if (pipInfoPackCopy.mute || pipInfoPackCopy.volume < VOLUME_MIN_VALUE) {
                    onPipVideoMute(false);
                } else {
                    DrawRectView draw_rect = (DrawRectView) _$_findCachedViewById(R.id.draw_rect);
                    Intrinsics.checkExpressionValueIsNotNull(draw_rect, "draw_rect");
                    draw_rect.setPipVideoMute(false);
                }
                updatePipVideoTimeLine();
                int i3 = pipInfoPackCopy.startOffsetToMainTrackInMs;
                int i4 = pipInfoPackCopy.visibleDurationInMs + i3;
                int mainTrackPlaybackTime = getMainTrackPlaybackTime();
                if (i3 > mainTrackPlaybackTime || i4 < mainTrackPlaybackTime) {
                    ((DrawRectView) _$_findCachedViewById(R.id.draw_rect)).setDrawRect(null, 4);
                }
            }
        }
    }

    @Override // com.narvii.media.MediaPickerFragment.OnResultListener
    public void onPickMediaResult(List<Media> list, Bundle bundle) {
        Media media;
        StringBuilder sb;
        File file;
        if (list == null || !(!list.isEmpty()) || (media = (Media) CollectionsKt.first(list)) == null || TextUtils.isEmpty(media.url) || bundle == null) {
            return;
        }
        int i = media.type;
        if (i == 103) {
            sb = new StringBuilder();
            file = this.intermediateFolder;
            if (file == null) {
                Intrinsics.throwUninitializedPropertyAccessException("intermediateFolder");
                throw null;
            }
        } else if (i == 123 && media.duration > MediaPreEditingActivityKt.MIN_DURATION_MS_FOR_ENTERING_PRE_EDIT_ACTIVITY) {
            sb = new StringBuilder();
            file = this.intermediateFolder;
            if (file == null) {
                Intrinsics.throwUninitializedPropertyAccessException("intermediateFolder");
                throw null;
            }
        } else {
            onPickerResult(list);
            return;
        }
        sb.append(file.getAbsolutePath());
        sb.append(File.separator);
        MediaPreEditingActivityKt.startPreEditActivity(this, media, bundle, sb.toString());
    }

    private final void onPickerResult(List<Media> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        final AVClipInfoPack aVClipInfoPack = new AVClipInfoPack();
        File path = getPhotoManager().getPath(list.get(0).getMediaUrl());
        Intrinsics.checkExpressionValueIsNotNull(path, "photoManager.getPath(list[0].mediaUrl)");
        String absolutePath = path.getAbsolutePath();
        aVClipInfoPack.inputPath = absolutePath;
        aVClipInfoPack.originalInputPath = absolutePath;
        prepareAVClipList(CollectionsKt__CollectionsKt.arrayListOf(aVClipInfoPack), false, new Callback<Boolean>() { // from class: com.narvii.pip.PipEditorFragment.onPickerResult.1
            @Override // com.narvii.util.Callback
            public final void call(Boolean bool) throws Resources.NotFoundException {
                if (Intrinsics.areEqual((Object) bool, (Object) true)) {
                    PipInfoPack pipInfoPack = new PipInfoPack();
                    AVClipInfoPack aVClipInfoPack2 = aVClipInfoPack;
                    pipInfoPack.inputPath = aVClipInfoPack2.inputPath;
                    pipInfoPack.streamInfo = aVClipInfoPack2.streamInfo;
                    pipInfoPack.trimEndInMs = pipInfoPack.trimStartInMs + aVClipInfoPack2.visibleDurationInMs;
                    pipInfoPack.startOffsetToMainTrackInMs = PipEditorFragment.this.getMainTrackPlaybackTime();
                    AVClipInfoPack aVClipInfoPack3 = aVClipInfoPack;
                    pipInfoPack.visibleDurationInMs = aVClipInfoPack3.visibleDurationInMs;
                    pipInfoPack.orgDurationInMs = aVClipInfoPack3.orgDurationInMs;
                    int i = 0;
                    Iterator<T> it = PipEditorFragment.this.getVideoInputClipList().iterator();
                    while (it.hasNext()) {
                        i += ((AVClipInfoPack) it.next()).visibleDurationInMs;
                    }
                    int i2 = pipInfoPack.startOffsetToMainTrackInMs;
                    if (i2 < i && pipInfoPack.visibleDurationInMs + i2 > i) {
                        pipInfoPack.trimEndInMs = (i - i2) + pipInfoPack.trimStartInMs;
                    }
                    PipEditorFragment.this.addPipVideos(pipInfoPack);
                    PipEditorFragment.this.updatePipVideoTimeLine();
                }
            }
        });
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment
    protected void changeVideoPlaybackStatus(boolean z, boolean z2) {
        super.changeVideoPlaybackStatus(z, z2);
        if (!z) {
            ((DrawRectView) _$_findCachedViewById(R.id.draw_rect)).setDrawRect(null, 4);
            return;
        }
        ArrayList<PipInfoPack> pipVideoList = getPreviewPlayer().getPipVideoList();
        int size = pipVideoList.size();
        int i = this.currPipVideoIndex;
        if (i >= 0 && size > i) {
            PipInfoPack pipInfoPack = pipVideoList.get(i);
            Intrinsics.checkExpressionValueIsNotNull(pipInfoPack, "pipInfoPackList[currPipVideoIndex]");
            PipInfoPack pipInfoPack2 = pipInfoPack;
            int i2 = pipInfoPack2.startOffsetToMainTrackInMs;
            int i3 = pipInfoPack2.visibleDurationInMs + i2;
            int mainTrackPlaybackTime = getMainTrackPlaybackTime();
            if (i2 <= mainTrackPlaybackTime && i3 > mainTrackPlaybackTime) {
                ((DrawRectView) _$_findCachedViewById(R.id.draw_rect)).setDrawRect(pipInfoPack2.vertexCoord, 4);
            }
        }
    }

    @Override // com.narvii.video.BaseViceTimeLineFragment, com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        if (!getInitSuccess()) {
            _$_clearFindViewByIdCache();
        } else {
            getFrameRetrieverManager().doClean(this.outputFolderPath == null);
            _$_clearFindViewByIdCache();
        }
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected void onVideoSeekingPositionChanged(long j) {
        ArrayList<PipInfoPack> pipVideoList = getPreviewPlayer().getPipVideoList();
        if (pipVideoList.isEmpty()) {
            return;
        }
        int size = pipVideoList.size();
        int i = this.currPipVideoIndex;
        if (i < 0 || size <= i) {
            return;
        }
        if (pipVideoList.get(i).startOffsetToMainTrackInMs > j || r1 + r0.visibleDurationInMs < j) {
            ((DrawRectView) _$_findCachedViewById(R.id.draw_rect)).setDrawRect(null, 4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean canAddPipVideo() {
        return getPreviewPlayer().getPipVideoList().size() < 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateAddPipVideoBtn() {
        ImageView option_add_pip_video = (ImageView) _$_findCachedViewById(R.id.option_add_pip_video);
        Intrinsics.checkExpressionValueIsNotNull(option_add_pip_video, "option_add_pip_video");
        option_add_pip_video.setAlpha(canAddPipVideo() ? 1.0f : 0.5f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updatePipVideoTimeLine() throws Resources.NotFoundException {
        ArrayList arrayList = new ArrayList();
        int mainTrackPlaybackTime = getMainTrackPlaybackTime();
        Iterator<PipInfoPack> it = getPreviewPlayer().getPipVideoList().iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(mainTrackPlaybackTime - it.next().startOffsetToMainTrackInMs));
        }
        BaseViceTimeLineFragment.updateViceTimeLinePanel$default(this, true, arrayList, false, 4, null);
    }

    private final void checkScale(PipInfoPack pipInfoPack) {
        if (pipInfoPack.scaleX > 1.5f) {
            pipInfoPack.scaleX = 1.5f;
        }
        if (pipInfoPack.scaleY > 1.5f) {
            pipInfoPack.scaleY = 1.5f;
        }
    }

    /* compiled from: PipEditorFragment.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }
}
