package com.narvii.pip;

import android.content.Intent;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.RectF;
import android.graphics.Region;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;
import com.narvii.amino.BuildConfig;
import com.narvii.app.FragmentRegister;
import com.narvii.media.MediaPickerFragment;
import com.narvii.mediaeditor.R;
import com.narvii.mediaeditor.databinding.FragmentPipEditorBinding;
import com.narvii.model.Media;
import com.narvii.photos.PhotoManager;
import com.narvii.pre_editing.MediaPreEditingActivityKt;
import com.narvii.scene.SceneConstant;
import com.narvii.util.Callback;
import com.narvii.util.FragmentExtensionsKt;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.text.TextUtils;
import com.narvii.video.BaseMediaEditorFragment;
import com.narvii.video.BaseViceTimeLineFragment;
import com.narvii.video.attachment.DrawRectView;
import com.narvii.video.interfaces.IPreviewPlayer;
import com.narvii.video.model.AVClipInfoPack;
import com.narvii.video.model.BaseClipInfoPack;
import com.narvii.video.services.FrameRetrieverManager;
import com.narvii.video.widget.videoview.NVEditorPreviewVideoVIew;
import com.safedk.android.utils.Logger;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.d0;
import kotlin.collections.v;
import kotlin.jvm.internal.g0;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.q0;
import kotlin.jvm.internal.t;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.m;
import w7.o;

/* JADX INFO: loaded from: classes7.dex */
public final class PipEditorFragment extends BaseViceTimeLineFragment implements DrawRectView.OnDrawRectTouchListener, DrawRectView.onPipVideoMuteListener, MediaPickerFragment.OnResultListener {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {q0.g(new g0(PipEditorFragment.class, "binding", "getBinding()Lcom/narvii/mediaeditor/databinding/FragmentPipEditorBinding;", 0))};

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int PIP_VIDEO_MAX_SIZE = 1;
    private static final int REQUEST_CODE_VIDEO_PIP = 12346;

    @NotNull
    private static final String TAG = "PipEditorFragment";
    private static final float VOLUME_MIN_VALUE = 0.02f;
    private int currPipVideoIndex;
    private File intermediateFolder;
    private MediaPickerFragment mediaPickerFragment;

    @Nullable
    private String outputFolderPath;

    @NotNull
    private final m fragmentRegister$delegate = o.a(new PipEditorFragment$fragmentRegister$2(this));

    @NotNull
    private final m photoManager$delegate = o.a(new PipEditorFragment$photoManager$2(this));

    @NotNull
    private final kotlin.properties.d binding$delegate = FragmentExtensionsKt.viewBinding(this, PipEditorFragment$binding$2.INSTANCE);
    private long lastViceTrackClickTime = System.currentTimeMillis();
    private long lastTouchDownTime = System.currentTimeMillis();

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
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

    public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
        if (p1 == null) {
            return;
        }
        p0.startActivityForResult(p1, p5);
    }

    @Override // com.narvii.video.BaseViceTimeLineFragment
    public int getViceTrackDataType(int i10) {
        return 104;
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, @Nullable Intent intent) {
        if (i11 != -1) {
            return;
        }
        if (i10 == 12346) {
            if (i11 == -1 && i10 == 64816 && intent != null) {
                Media media = (Media) JacksonUtils.readAs(intent.getStringExtra("media"), Media.class);
                Bundle bundleExtra = intent.getBundleExtra(BuildConfig.BUILD_TYPE);
                if (bundleExtra == null) {
                    bundleExtra = new Bundle();
                }
                t.g(bundleExtra);
                t.g(media);
                onPickMediaResult(v.s(media), bundleExtra);
                return;
            }
            return;
        }
        if (i10 != getREQUEST_CODE_SCENE_EDITOR()) {
            if (i11 == -1 && i10 == 64816 && intent != null) {
                Media media2 = (Media) JacksonUtils.readAs(intent.getStringExtra("media"), Media.class);
                Bundle bundleExtra2 = intent.getBundleExtra(BuildConfig.BUILD_TYPE);
                if (bundleExtra2 == null) {
                    bundleExtra2 = new Bundle();
                }
                t.g(bundleExtra2);
                t.g(media2);
                onPickerResult(v.s(media2));
                return;
            }
            return;
        }
        String stringExtra = intent != null ? intent.getStringExtra("clipInfoList") : null;
        if (stringExtra != null) {
            ArrayList listAs = JacksonUtils.readListAs(stringExtra, AVClipInfoPack.class);
            t.g(listAs);
            if (!listAs.isEmpty()) {
                AVClipInfoPack aVClipInfoPack = (AVClipInfoPack) listAs.get(0);
                PipInfoPack pipInfoPackCopy = getPreviewPlayer().getPipVideoList().get(this.currPipVideoIndex).copy();
                t.h(pipInfoPackCopy, "null cannot be cast to non-null type com.narvii.pip.PipInfoPack");
                pipInfoPackCopy.volume = aVClipInfoPack.trackVolume;
                pipInfoPackCopy.trimStartInMs = aVClipInfoPack.trimStartInMs;
                pipInfoPackCopy.trimEndInMs = aVClipInfoPack.trimStartInMs + Math.min(aVClipInfoPack.trimmedDurationInMs(), getTotalVisibleVideoDurationInMs().c().intValue());
                pipInfoPackCopy.visibleDurationInMs = pipInfoPackCopy.trimmedDurationInMs();
                pipInfoPackCopy.mute = intent.getBooleanExtra("mute", false);
                onDel(4);
                addPipVideos(pipInfoPackCopy);
                if (pipInfoPackCopy.mute || pipInfoPackCopy.volume < VOLUME_MIN_VALUE) {
                    onPipVideoMute(false);
                } else {
                    getBinding().drawRect.setPipVideoMute(false);
                }
                updatePipVideoTimeLine();
                int i12 = pipInfoPackCopy.startOffsetToMainTrackInMs;
                int i13 = pipInfoPackCopy.visibleDurationInMs + i12;
                int mainTrackPlaybackTime = getMainTrackPlaybackTime();
                if (i12 > mainTrackPlaybackTime || mainTrackPlaybackTime > i13) {
                    getBinding().drawRect.setDrawRect(null, 4);
                }
            }
        }
    }

    @Override // com.narvii.video.attachment.DrawRectView.OnDrawRectTouchListener
    public void onBeyondDrawRectClick(int i10) {
    }

    @Override // com.narvii.video.attachment.DrawRectView.OnDrawRectTouchListener
    public void onHorizFlipClick(int i10) {
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected boolean showPauseButton() {
        return true;
    }

    private final void addNewPipVideo() {
        MediaPickerFragment mediaPickerFragment = this.mediaPickerFragment;
        if (mediaPickerFragment == null) {
            t.B("mediaPickerFragment");
            mediaPickerFragment = null;
        }
        MediaPreEditingActivityKt.pickVideoFromGalleryAndYoutube(mediaPickerFragment, "", 1, 12346, false);
    }

    private final void calculatePipVideoDefaultCoord(PipInfoPack pipInfoPack) {
        float f;
        float f6;
        if (pipInfoPack.videoWidth < 0 || pipInfoPack.videoHeight < 0) {
            IPreviewPlayer previewPlayer = getPreviewPlayer();
            String inputPath = pipInfoPack.inputPath;
            t.i(inputPath, "inputPath");
            Point videoSize = previewPlayer.getVideoSize(inputPath);
            pipInfoPack.videoWidth = videoSize.x;
            pipInfoPack.videoHeight = videoSize.y;
        }
        float width = getPreviewPlayer().getVideoView().getWidth();
        float height = getPreviewPlayer().getVideoView().getHeight();
        float f7 = (width * 1.0f) / height;
        float f10 = (pipInfoPack.videoWidth * 1.0f) / pipInfoPack.videoHeight;
        if (f10 > f7) {
            f6 = pipInfoPack.scaleX * width;
            f = f6 / f10;
        } else {
            f = height * pipInfoPack.scaleX;
            f6 = f * f10;
        }
        float f11 = (width - f6) / 2.0f;
        float f12 = (height - f) / 2.0f;
        pipInfoPack.vertexCoord.add(new PointF(f11, f12));
        float f13 = (width + f6) / 2.0f;
        pipInfoPack.vertexCoord.add(new PointF(f13, f12));
        float f14 = (height + f) / 2.0f;
        pipInfoPack.vertexCoord.add(new PointF(f13, f14));
        pipInfoPack.vertexCoord.add(new PointF(f11, f14));
    }

    private final void calculatePipVideoRealTimeCoord(PipInfoPack pipInfoPack) {
        float f;
        float f6;
        float f7 = pipInfoPack.scaleX;
        double d = ((-pipInfoPack.rotation) * 3.141592653589793d) / ((double) 180);
        PointF pointF = pipInfoPack.translation;
        float f10 = pointF.x;
        float f11 = pointF.y;
        float width = getPreviewPlayer().getVideoView().getWidth();
        float height = getPreviewPlayer().getVideoView().getHeight();
        float f12 = (width * 1.0f) / height;
        float f13 = (pipInfoPack.videoWidth * 1.0f) / pipInfoPack.videoHeight;
        float width2 = 720.0f / getPreviewPlayer().getVideoView().getWidth();
        if (f13 > f12) {
            f6 = f7 * width;
            f = f6 / f13;
        } else {
            f = height * f7;
            f6 = f * f13;
        }
        float f14 = width / 2.0f;
        float f15 = height / 2.0f;
        float f16 = (width - f6) / 2.0f;
        float f17 = (height - f) / 2.0f;
        pipInfoPack.vertexCoord.set(0, new PointF(f16, f17));
        float f18 = (width + f6) / 2.0f;
        pipInfoPack.vertexCoord.set(1, new PointF(f18, f17));
        float f19 = (height + f) / 2.0f;
        pipInfoPack.vertexCoord.set(2, new PointF(f18, f19));
        pipInfoPack.vertexCoord.set(3, new PointF(f16, f19));
        List<PointF> vertexCoord = pipInfoPack.vertexCoord;
        t.i(vertexCoord, "vertexCoord");
        int i10 = 0;
        for (Object obj : vertexCoord) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                v.w();
            }
            PointF pointF2 = (PointF) obj;
            float f20 = f14;
            pipInfoPack.vertexCoord.set(i10, new PointF((((pointF2.x - f14) * ((float) Math.cos(d))) - ((pointF2.y - f15) * ((float) Math.sin(d)))) + f20, ((pointF2.x - f20) * ((float) Math.sin(d))) + ((pointF2.y - f15) * ((float) Math.cos(d))) + f15));
            i10 = i11;
            f14 = f20;
            width2 = width2;
        }
        float f21 = width2;
        List<PointF> vertexCoord2 = pipInfoPack.vertexCoord;
        t.i(vertexCoord2, "vertexCoord");
        int i12 = 0;
        for (Object obj2 : vertexCoord2) {
            int i13 = i12 + 1;
            if (i12 < 0) {
                v.w();
            }
            PointF pointF3 = (PointF) obj2;
            pipInfoPack.vertexCoord.set(i12, new PointF(pointF3.x + (f10 / f21), pointF3.y - (f11 / f21)));
            i12 = i13;
        }
        getBinding().drawRect.setDrawRect(pipInfoPack.vertexCoord, 4);
    }

    private final void checkScale(PipInfoPack pipInfoPack) {
        if (pipInfoPack.scaleX > 1.5f) {
            pipInfoPack.scaleX = 1.5f;
        }
        if (pipInfoPack.scaleY > 1.5f) {
            pipInfoPack.scaleY = 1.5f;
        }
    }

    private final FragmentPipEditorBinding getBinding() {
        return (FragmentPipEditorBinding) this.binding$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final FragmentRegister getFragmentRegister() {
        return (FragmentRegister) this.fragmentRegister$delegate.getValue();
    }

    private final PhotoManager getPhotoManager() {
        return (PhotoManager) this.photoManager$delegate.getValue();
    }

    private final void onPickerResult(List<Media> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        final AVClipInfoPack aVClipInfoPack = new AVClipInfoPack();
        String absolutePath = getPhotoManager().getPath(list.get(0).getMediaUrl()).getAbsolutePath();
        aVClipInfoPack.inputPath = absolutePath;
        aVClipInfoPack.originalInputPath = absolutePath;
        prepareAVClipList(v.g(aVClipInfoPack), false, new Callback() { // from class: com.narvii.pip.f
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                PipEditorFragment.onPickerResult$lambda$20(aVClipInfoPack, this, (Boolean) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onPickerResult$lambda$20(AVClipInfoPack avClipInfoPack, PipEditorFragment this$0, Boolean bool) {
        t.j(avClipInfoPack, "$avClipInfoPack");
        t.j(this$0, "this$0");
        if (t.e(bool, Boolean.TRUE)) {
            PipInfoPack pipInfoPack = new PipInfoPack();
            pipInfoPack.inputPath = avClipInfoPack.inputPath;
            pipInfoPack.streamInfo = avClipInfoPack.streamInfo;
            pipInfoPack.trimEndInMs = pipInfoPack.trimStartInMs + avClipInfoPack.visibleDurationInMs;
            pipInfoPack.startOffsetToMainTrackInMs = this$0.getMainTrackPlaybackTime();
            pipInfoPack.visibleDurationInMs = avClipInfoPack.visibleDurationInMs;
            pipInfoPack.orgDurationInMs = avClipInfoPack.orgDurationInMs;
            Iterator<T> it = this$0.getVideoInputClipList().iterator();
            int i10 = 0;
            while (it.hasNext()) {
                i10 += ((AVClipInfoPack) it.next()).visibleDurationInMs;
            }
            int i11 = pipInfoPack.startOffsetToMainTrackInMs;
            if (i11 < i10 && pipInfoPack.visibleDurationInMs + i11 > i10) {
                pipInfoPack.trimEndInMs = (i10 - i11) + pipInfoPack.trimStartInMs;
            }
            this$0.addPipVideos(pipInfoPack);
            this$0.updatePipVideoTimeLine();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$1(PipEditorFragment this$0, View view) {
        t.j(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$2(PipEditorFragment this$0, View view) {
        t.j(this$0, "this$0");
        if (this$0.canAddPipVideo()) {
            this$0.addNewPipVideo();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$4(PipEditorFragment this$0, View view) {
        t.j(this$0, "this$0");
        Intent intent = new Intent();
        Iterator<T> it = this$0.getVideoInputClipList().iterator();
        int i10 = 0;
        while (it.hasNext()) {
            i10 += ((AVClipInfoPack) it.next()).visibleDurationInMs;
        }
        if (!this$0.getPreviewPlayer().getPipVideoList().isEmpty()) {
            int size = this$0.getPreviewPlayer().getPipVideoList().size();
            int i11 = this$0.currPipVideoIndex;
            if (i11 >= 0 && i11 < size) {
                PipInfoPack pipInfoPack = this$0.getPreviewPlayer().getPipVideoList().get(this$0.currPipVideoIndex);
                t.i(pipInfoPack, "get(...)");
                PipInfoPack pipInfoPack2 = pipInfoPack;
                int i12 = pipInfoPack2.startOffsetToMainTrackInMs;
                if (i12 < i10 && pipInfoPack2.visibleDurationInMs + i12 > i10) {
                    pipInfoPack2.trimEndInMs = (i10 - i12) + pipInfoPack2.trimStartInMs;
                }
            }
        }
        intent.putExtra("pipList", JacksonUtils.writeAsString(this$0.getPreviewPlayer().getPipVideoList()));
        this$0.setResult(-1, intent);
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showEditView$lambda$6(final PipEditorFragment this$0, PipInfoPack pipInfoPack) {
        t.j(this$0, "this$0");
        t.j(pipInfoPack, "$pipInfoPack");
        this$0.getPreviewPlayer().updatePipVideoTransform(pipInfoPack);
        Utils.postDelayed(new Runnable() { // from class: com.narvii.pip.d
            @Override // java.lang.Runnable
            public final void run() {
                PipEditorFragment.showEditView$lambda$6$lambda$5(this.f2584a);
            }
        }, 200L);
        this$0.getBinding().drawRect.setShowEdit(true);
        if (pipInfoPack.vertexCoord.size() == 0) {
            this$0.calculatePipVideoDefaultCoord(pipInfoPack);
            this$0.getBinding().drawRect.setDrawRect(pipInfoPack.vertexCoord, 4);
        } else {
            this$0.calculatePipVideoRealTimeCoord(pipInfoPack);
        }
        if (pipInfoPack.volume < VOLUME_MIN_VALUE) {
            this$0.onPipVideoMute(false);
        }
        this$0.updateAddPipVideoBtn();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showEditView$lambda$6$lambda$5(PipEditorFragment this$0) {
        t.j(this$0, "this$0");
        this$0.getPreviewPlayer().seekTimeLineTo(this$0.getPreviewPlayer().getCurrentVideoPositionInTimeline());
    }

    private final void updatePipVideoTimeLine() {
        ArrayList arrayList = new ArrayList();
        int mainTrackPlaybackTime = getMainTrackPlaybackTime();
        Iterator<PipInfoPack> it = getPreviewPlayer().getPipVideoList().iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(mainTrackPlaybackTime - it.next().startOffsetToMainTrackInMs));
        }
        BaseViceTimeLineFragment.updateViceTimeLinePanel$default(this, true, arrayList, false, 4, null);
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment
    public void initFrameRetrieverManager() {
        String stringParam = getStringParam("frameRetrieverOutputFolder");
        this.outputFolderPath = stringParam;
        if (stringParam == null) {
            FrameRetrieverManager.initRetriever$default(getFrameRetrieverManager(), "timeline_tmp", "video", false, false, 12, null);
            return;
        }
        FrameRetrieverManager frameRetrieverManager = getFrameRetrieverManager();
        String str = this.outputFolderPath;
        t.g(str);
        FrameRetrieverManager.initRetriever$default(frameRetrieverManager, str, false, false, 6, null);
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        t.j(inflater, "inflater");
        return getBinding().getRoot();
    }

    @Override // com.narvii.media.MediaPickerFragment.OnResultListener
    public void onPickMediaResult(@Nullable List<Media> list, @Nullable Bundle bundle) {
        Media media;
        if (list == null || !(!list.isEmpty()) || (media = (Media) d0.j0(list)) == null || TextUtils.isEmpty(media.url) || bundle == null) {
            return;
        }
        int i10 = media.type;
        File file = null;
        if (i10 == 103) {
            StringBuilder sb = new StringBuilder();
            File file2 = this.intermediateFolder;
            if (file2 == null) {
                t.B("intermediateFolder");
            } else {
                file = file2;
            }
            sb.append(file.getAbsolutePath());
            sb.append(File.separator);
            MediaPreEditingActivityKt.startPreEditActivity(this, media, bundle, sb.toString());
            return;
        }
        if (i10 != 123 || media.duration <= 60999) {
            onPickerResult(list);
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        File file3 = this.intermediateFolder;
        if (file3 == null) {
            t.B("intermediateFolder");
        } else {
            file = file3;
        }
        sb2.append(file.getAbsolutePath());
        sb2.append(File.separator);
        MediaPreEditingActivityKt.startPreEditActivity(this, media, bundle, sb2.toString());
    }

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        t.j(view, "view");
        super.onViewCreated(view, bundle);
        getBinding().optionCancel.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.pip.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PipEditorFragment.onViewCreated$lambda$1(this.f2581a, view2);
            }
        });
        getBinding().optionAddPipVideo.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.pip.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PipEditorFragment.onViewCreated$lambda$2(this.f2582a, view2);
            }
        });
        getBinding().optionDone.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.pip.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PipEditorFragment.onViewCreated$lambda$4(this.f2583a, view2);
            }
        });
    }

    private final void addPipVideos(PipInfoPack pipInfoPack) {
        getPreviewPlayer().addPipVideo(pipInfoPack);
        showEditView(pipInfoPack);
    }

    private final boolean canAddPipVideo() {
        if (getPreviewPlayer().getPipVideoList().size() < 1) {
            return true;
        }
        return false;
    }

    private final void pauseVideoWhenTouch() {
        if (getInPlay()) {
            setAutoPlaying(false);
            BaseMediaEditorFragment.changeVideoPlaybackStatus$default(this, true, false, 2, null);
            getPreviewPlayer().refreshCurrentPosition();
        }
    }

    private final void showEditView(final PipInfoPack pipInfoPack) {
        NVEditorPreviewVideoVIew previewVideoView = getPreviewVideoView();
        if (previewVideoView != null) {
            previewVideoView.post(new Runnable() { // from class: com.narvii.pip.e
                @Override // java.lang.Runnable
                public final void run() {
                    PipEditorFragment.showEditView$lambda$6(this.f2585a, pipInfoPack);
                }
            });
        }
    }

    private final void updateAddPipVideoBtn() {
        float f;
        ImageView imageView = getBinding().optionAddPipVideo;
        if (canAddPipVideo()) {
            f = 1.0f;
        } else {
            f = 0.5f;
        }
        imageView.setAlpha(f);
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment
    protected void changeVideoPlaybackStatus(boolean z6, boolean z10) {
        super.changeVideoPlaybackStatus(z6, z10);
        if (!z6) {
            getBinding().drawRect.setDrawRect(null, 4);
            return;
        }
        ArrayList<PipInfoPack> pipVideoList = getPreviewPlayer().getPipVideoList();
        int size = pipVideoList.size();
        int i10 = this.currPipVideoIndex;
        if (i10 >= 0 && i10 < size) {
            PipInfoPack pipInfoPack = pipVideoList.get(i10);
            t.i(pipInfoPack, "get(...)");
            PipInfoPack pipInfoPack2 = pipInfoPack;
            int i11 = pipInfoPack2.startOffsetToMainTrackInMs;
            int i12 = pipInfoPack2.visibleDurationInMs + i11;
            int mainTrackPlaybackTime = getMainTrackPlaybackTime();
            if (i11 <= mainTrackPlaybackTime && mainTrackPlaybackTime < i12) {
                getBinding().drawRect.setDrawRect(pipInfoPack2.vertexCoord, 4);
            }
        }
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        if (Utils.isAndroidVersion8()) {
            return R.style.AminoTheme_Overlay;
        }
        return R.style.AminoTheme_Translucent_NoActionBar;
    }

    @Override // com.narvii.video.BaseViceTimeLineFragment
    @NotNull
    public List<BaseClipInfoPack> getTargetClipListForViceTracks() {
        int iIntValue = getTotalVisibleVideoDurationInMs().c().intValue();
        for (PipInfoPack pipInfoPack : getPreviewPlayer().getPipVideoList()) {
            if (!pipInfoPack.isTrimSectionValid()) {
                pipInfoPack.trimEndInMs = pipInfoPack.trimStartInMs + Math.min(pipInfoPack.trimmedDurationInMs(), iIntValue);
                pipInfoPack.visibleDurationInMs = pipInfoPack.trimmedDurationInMs();
            }
        }
        return getPreviewPlayer().getPipVideoList();
    }

    @Override // com.narvii.video.BaseViceTimeLineFragment, com.narvii.video.BaseMediaEditorFragment
    public void initComponent() {
        FragmentPipEditorBinding binding = getBinding();
        super.initComponent();
        setVideoDurationText(binding.videoDuration);
        setVideoPlaybackTimeText(binding.videoPlaybackTime);
        setVideoPlaybackTimeDivider(binding.divider);
        setPreviewVideoView(binding.videoViewPlayer);
        setPlayerButton(binding.playerButton);
        setMainTimeLineComponent(binding.videoTimeLineComponent);
        LinearLayout viceTimeLinePanel = binding.viceTimeLinePanel;
        t.i(viceTimeLinePanel, "viceTimeLinePanel");
        setViceTimeLinePanel(viceTimeLinePanel);
    }

    @Override // com.narvii.video.BaseViceTimeLineFragment, com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment
    protected void onAVClipsPrepared() {
        super.onAVClipsPrepared();
        ArrayList<PipInfoPack> pipVideoList = getPreviewPlayer().getPipVideoList();
        if (!pipVideoList.isEmpty()) {
            PipInfoPack pipInfoPack = pipVideoList.get(pipVideoList.size() - 1);
            t.i(pipInfoPack, "get(...)");
            PipInfoPack pipInfoPack2 = pipInfoPack;
            if (pipInfoPack2.startOffsetToMainTrackInMs <= getMainTrackPlaybackTime()) {
                showEditView(pipInfoPack2);
            }
            getBinding().drawRect.setPipVideoMute(pipInfoPack2.mute);
            getBinding().drawRect.setOnDrawRectTouchListener(this);
            getBinding().drawRect.setPipVideoMuteListener(this);
        }
    }

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        setOutputFileDir(new File(getStringParam("outputFileDir")));
        File file = new File(getOutputFileDir(), SceneConstant.SCENE_INTERMEDIATE_FILE);
        this.intermediateFolder = file;
        file.mkdirs();
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        Fragment fragmentM0 = requireFragmentManager().m0("playListMediaPicker");
        if (fragmentM0 instanceof MediaPickerFragment) {
            this.mediaPickerFragment = (MediaPickerFragment) fragmentM0;
            return;
        }
        this.mediaPickerFragment = new MediaPickerFragment();
        FragmentTransaction fragmentTransactionQ = requireFragmentManager().q();
        MediaPickerFragment mediaPickerFragment = this.mediaPickerFragment;
        MediaPickerFragment mediaPickerFragment2 = null;
        if (mediaPickerFragment == null) {
            t.B("mediaPickerFragment");
            mediaPickerFragment = null;
        }
        fragmentTransactionQ.e(mediaPickerFragment, "playListMediaPicker").k();
        MediaPickerFragment mediaPickerFragment3 = this.mediaPickerFragment;
        if (mediaPickerFragment3 == null) {
            t.B("mediaPickerFragment");
        } else {
            mediaPickerFragment2 = mediaPickerFragment3;
        }
        mediaPickerFragment2.listenerEventDispatcher.add(this);
    }

    @Override // com.narvii.video.attachment.DrawRectView.OnDrawRectTouchListener
    public void onDel(int i10) {
        ArrayList<PipInfoPack> pipVideoList = getPreviewPlayer().getPipVideoList();
        if (!pipVideoList.isEmpty()) {
            int size = pipVideoList.size();
            int i11 = this.currPipVideoIndex;
            if (i11 >= 0 && i11 < size) {
                pauseVideoWhenTouch();
                IPreviewPlayer previewPlayer = getPreviewPlayer();
                PipInfoPack pipInfoPack = pipVideoList.get(this.currPipVideoIndex);
                t.i(pipInfoPack, "get(...)");
                previewPlayer.removePipVideo(pipInfoPack, this.currPipVideoIndex);
                getBinding().drawRect.setDrawRect(v.m(), 4);
                if (!getInPlay()) {
                    getPreviewPlayer().seekTimeLineTo(getPreviewPlayer().getCurrentVideoPositionInTimeline());
                }
                updateAddPipVideoBtn();
                updatePipVideoTimeLine();
            }
        }
    }

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        boolean z6;
        super.onDestroyView();
        if (!getInitSuccess()) {
            return;
        }
        FrameRetrieverManager frameRetrieverManager = getFrameRetrieverManager();
        if (this.outputFolderPath == null) {
            z6 = true;
        } else {
            z6 = false;
        }
        frameRetrieverManager.doClean(z6);
    }

    @Override // com.narvii.video.attachment.DrawRectView.OnDrawRectTouchListener
    public void onDrag(@Nullable PointF pointF, @Nullable PointF pointF2, int i10) {
        ArrayList<PipInfoPack> pipVideoList = getPreviewPlayer().getPipVideoList();
        if (!pipVideoList.isEmpty()) {
            int size = pipVideoList.size();
            int i11 = this.currPipVideoIndex;
            if (i11 >= 0 && i11 < size && pointF != null && pointF2 != null) {
                float width = 720.0f / getPreviewPlayer().getVideoView().getWidth();
                PipInfoPack pipInfoPack = pipVideoList.get(this.currPipVideoIndex);
                t.i(pipInfoPack, "get(...)");
                PipInfoPack pipInfoPack2 = pipInfoPack;
                int i12 = pipInfoPack2.startOffsetToMainTrackInMs;
                int i13 = pipInfoPack2.visibleDurationInMs + i12;
                int mainTrackPlaybackTime = getMainTrackPlaybackTime();
                if (i12 <= mainTrackPlaybackTime && mainTrackPlaybackTime < i13) {
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
            }
        }
    }

    @Override // com.narvii.video.attachment.DrawRectView.OnDrawRectTouchListener
    public void onEdit(int i10) {
        FragmentRegister fragmentRegister;
        Uri fragmentDeepLinkUri;
        ArrayList<PipInfoPack> pipVideoList = getPreviewPlayer().getPipVideoList();
        if (!pipVideoList.isEmpty()) {
            int size = pipVideoList.size();
            int i11 = this.currPipVideoIndex;
            if (i11 >= 0 && i11 < size && (fragmentRegister = getFragmentRegister()) != null && (fragmentDeepLinkUri = fragmentRegister.getFragmentDeepLinkUri("mediaEditor")) != null) {
                Intent intent = new Intent("android.intent.action.VIEW", fragmentDeepLinkUri);
                AVClipInfoPack aVClipInfoPack = new AVClipInfoPack();
                PipInfoPack pipInfoPack = pipVideoList.get(this.currPipVideoIndex);
                t.i(pipInfoPack, "get(...)");
                PipInfoPack pipInfoPack2 = pipInfoPack;
                aVClipInfoPack.trimStartInMs = pipInfoPack2.trimStartInMs;
                aVClipInfoPack.trimEndInMs = pipInfoPack2.trimEndInMs;
                aVClipInfoPack.trackVolume = pipInfoPack2.volume;
                String inputPath = pipInfoPack2.inputPath;
                t.i(inputPath, "inputPath");
                if (kotlin.text.t.K(inputPath, "file://", false, 2, null)) {
                    String inputPath2 = pipInfoPack2.inputPath;
                    t.i(inputPath2, "inputPath");
                    String strSubstring = inputPath2.substring(7, pipInfoPack2.inputPath.length());
                    t.i(strSubstring, "substring(...)");
                    aVClipInfoPack.inputPath = strSubstring;
                } else {
                    aVClipInfoPack.inputPath = pipInfoPack2.inputPath;
                }
                intent.putExtra("clipInfoPack", JacksonUtils.writeAsString(aVClipInfoPack));
                intent.putExtra("isVideoTrimming", true);
                intent.putExtra("minOutputLength", 1000);
                intent.putExtra("showVolume", true);
                intent.putExtra("mute", pipInfoPack2.mute);
                safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(this, intent, getREQUEST_CODE_SCENE_EDITOR());
            }
        }
    }

    @Override // com.narvii.video.attachment.DrawRectView.onPipVideoMuteListener
    public void onPipVideoMute(boolean z6) {
        float f;
        ArrayList<PipInfoPack> pipVideoList = getPreviewPlayer().getPipVideoList();
        if (!pipVideoList.isEmpty()) {
            int size = pipVideoList.size();
            int i10 = this.currPipVideoIndex;
            if (i10 >= 0 && i10 < size) {
                getBinding().drawRect.setPipVideoMute(!z6);
                PipInfoPack pipInfoPack = pipVideoList.get(this.currPipVideoIndex);
                t.i(pipInfoPack, "get(...)");
                PipInfoPack pipInfoPack2 = pipInfoPack;
                pipInfoPack2.mute = !z6;
                IPreviewPlayer previewPlayer = getPreviewPlayer();
                PipInfoPack pipInfoPack3 = pipVideoList.get(this.currPipVideoIndex);
                t.i(pipInfoPack3, "get(...)");
                PipInfoPack pipInfoPack4 = pipInfoPack3;
                if (getBinding().drawRect.isPipVideoMute()) {
                    f = 0.0f;
                } else {
                    f = pipInfoPack2.volume;
                }
                previewPlayer.setPipVideoVolume(pipInfoPack4, f, this.currPipVideoIndex);
            }
        }
    }

    @Override // com.narvii.video.attachment.DrawRectView.OnDrawRectTouchListener
    public void onScaleAndRotate(float f, @Nullable PointF pointF, float f6, int i10) {
        ArrayList<PipInfoPack> pipVideoList = getPreviewPlayer().getPipVideoList();
        if (!pipVideoList.isEmpty()) {
            int size = pipVideoList.size();
            int i11 = this.currPipVideoIndex;
            if (i11 >= 0 && i11 < size) {
                PipInfoPack pipInfoPack = pipVideoList.get(i11);
                t.i(pipInfoPack, "get(...)");
                PipInfoPack pipInfoPack2 = pipInfoPack;
                int i12 = pipInfoPack2.startOffsetToMainTrackInMs;
                int i13 = pipInfoPack2.visibleDurationInMs + i12;
                int mainTrackPlaybackTime = getMainTrackPlaybackTime();
                if (i12 <= mainTrackPlaybackTime && mainTrackPlaybackTime < i13) {
                    pauseVideoWhenTouch();
                    float f7 = pipInfoPack2.scaleX * f;
                    pipInfoPack2.scaleX = f7;
                    pipInfoPack2.scaleY = f7;
                    checkScale(pipInfoPack2);
                    pipInfoPack2.rotation += f6;
                    getPreviewPlayer().updatePipVideoTransform(pipInfoPack2);
                    if (!getInPlay()) {
                        getPreviewPlayer().seekTimeLineTo(getPreviewPlayer().getCurrentVideoPositionInTimeline());
                    }
                    calculatePipVideoRealTimeCoord(pipInfoPack2);
                }
            }
        }
    }

    @Override // com.narvii.video.attachment.DrawRectView.OnDrawRectTouchListener
    public void onTouchDown(@Nullable PointF pointF, int i10) {
        ArrayList<PipInfoPack> pipVideoList = getPreviewPlayer().getPipVideoList();
        int size = pipVideoList.size();
        int i11 = this.currPipVideoIndex;
        if (i11 >= 0 && i11 < size) {
            PipInfoPack pipInfoPack = pipVideoList.get(i11);
            t.i(pipInfoPack, "get(...)");
            PipInfoPack pipInfoPack2 = pipInfoPack;
            if (!pointInCurrPipVideo(pipInfoPack2, pointF)) {
                return;
            }
            int i12 = pipInfoPack2.startOffsetToMainTrackInMs;
            int i13 = pipInfoPack2.visibleDurationInMs + i12;
            int mainTrackPlaybackTime = getMainTrackPlaybackTime();
            if (i12 <= mainTrackPlaybackTime && mainTrackPlaybackTime < i13) {
                getBinding().drawRect.setDrawRect(pipVideoList.get(this.currPipVideoIndex).vertexCoord, 4);
                getBinding().drawRect.setShowEdit(true);
                pauseVideoWhenTouch();
                long jCurrentTimeMillis = System.currentTimeMillis() - this.lastTouchDownTime;
                if (30 <= jCurrentTimeMillis && jCurrentTimeMillis < 401) {
                    onEdit(4);
                }
            } else {
                return;
            }
        }
        this.lastTouchDownTime = System.currentTimeMillis();
    }

    @Override // com.narvii.video.BaseViceTimeLineFragment
    public void onViceTrackClicked(int i10) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.lastViceTrackClickTime <= 1000) {
            return;
        }
        this.lastViceTrackClickTime = jCurrentTimeMillis;
        pauseVideoWhenTouch();
        ArrayList<PipInfoPack> pipVideoList = getPreviewPlayer().getPipVideoList();
        if (!pipVideoList.isEmpty()) {
            PipInfoPack pipInfoPack = pipVideoList.get(pipVideoList.size() - 1);
            t.i(pipInfoPack, "get(...)");
            showEditView(pipInfoPack);
            PipInfoPack pipInfoPack2 = pipVideoList.get(i10);
            t.i(pipInfoPack2, "get(...)");
            PipInfoPack pipInfoPack3 = pipInfoPack2;
            int i11 = pipInfoPack3.startOffsetToMainTrackInMs;
            int i12 = pipInfoPack3.visibleDurationInMs + i11;
            int mainTrackPlaybackTime = getMainTrackPlaybackTime();
            if (i11 > mainTrackPlaybackTime || mainTrackPlaybackTime >= i12) {
                moveMainTrackTo(pipInfoPack3.startOffsetToMainTrackInMs);
                updatePipVideoTimeLine();
            }
            onEdit(4);
        }
    }

    @Override // com.narvii.video.BaseViceTimeLineFragment
    public void onViceTrackOffsetChanged(int i10) {
        getPreviewPlayer().onPipVideoOffsetChanged(i10);
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected void onVideoSeekingPositionChanged(long j6) {
        ArrayList<PipInfoPack> pipVideoList = getPreviewPlayer().getPipVideoList();
        if (!pipVideoList.isEmpty()) {
            int size = pipVideoList.size();
            int i10 = this.currPipVideoIndex;
            if (i10 >= 0 && i10 < size) {
                PipInfoPack pipInfoPack = pipVideoList.get(i10);
                int i11 = pipInfoPack.startOffsetToMainTrackInMs;
                if (i11 > j6 || i11 + pipInfoPack.visibleDurationInMs < j6) {
                    getBinding().drawRect.setDrawRect(null, 4);
                }
            }
        }
    }
}
