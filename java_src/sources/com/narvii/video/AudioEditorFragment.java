package com.narvii.video;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;
import com.narvii.media.MediaPickerFragment;
import com.narvii.media.online.audio.model.AssetCategory;
import com.narvii.media.online.audio.model.Sound;
import com.narvii.mediaeditor.databinding.FragmentAudioEditorBinding;
import com.narvii.model.Media;
import com.narvii.util.Callback;
import com.narvii.util.FragmentExtensionsKt;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.video.interfaces.IPreviewPlayer;
import com.narvii.video.interfaces.ITimelineClip;
import com.narvii.video.model.AVClipInfoPack;
import com.narvii.video.model.BaseClipInfoPack;
import com.narvii.video.services.FrameRetrieverManager;
import com.narvii.video.services.SceneMediaProcessor;
import com.narvii.video.widget.AudioEditorPanel;
import com.narvii.video.widget.MediaOptionPanel;
import com.narvii.video.widget.MediaTimeLineComponent;
import com.narvii.video.widget.VolumeProgressView;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class AudioEditorFragment extends BaseViceTimeLineFragment implements MediaPickerFragment.OnResultListener {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {kotlin.jvm.internal.q0.g(new kotlin.jvm.internal.g0(AudioEditorFragment.class, "binding", "getBinding()Lcom/narvii/mediaeditor/databinding/FragmentAudioEditorBinding;", 0))};
    private AudioEditorPanel audioEditorPanel;

    @Nullable
    private FrameRetrieverManager audioWaveRetrieverManager;
    private MediaPickerFragment mediaPickerFragment;

    @Nullable
    private String outputFolderPath;
    private int selectedAudioTrackIndex = -1;

    @NotNull
    private final kotlin.properties.d binding$delegate = FragmentExtensionsKt.viewBinding(this, AudioEditorFragment$binding$2.INSTANCE);

    @NotNull
    private final AudioEditorFragment$audioEditingPanelCallback$1 audioEditingPanelCallback = new MediaOptionPanel.OptionSelectedListener() { // from class: com.narvii.video.AudioEditorFragment$audioEditingPanelCallback$1
        @Override // com.narvii.video.widget.MediaOptionPanel.OptionSelectedListener
        public void onOptionCancel(int i10) {
            AudioEditorPanel audioEditorPanel = this.this$0.audioEditorPanel;
            if (audioEditorPanel == null) {
                kotlin.jvm.internal.t.B("audioEditorPanel");
                audioEditorPanel = null;
            }
            audioEditorPanel.setVisibility(8);
            FrameRetrieverManager frameRetrieverManager = this.this$0.audioWaveRetrieverManager;
            if (frameRetrieverManager != null) {
                FrameRetrieverManager.release$default(frameRetrieverManager, false, 1, null);
            }
            int size = this.this$0.getPreviewPlayer().getAudioClipInfoList().size();
            int i11 = this.this$0.selectedAudioTrackIndex;
            if (i11 >= 0 && i11 < size) {
                IPreviewPlayer previewPlayer = this.this$0.getPreviewPlayer();
                AVClipInfoPack aVClipInfoPack = this.this$0.getPreviewPlayer().getAudioClipInfoList().get(this.this$0.selectedAudioTrackIndex);
                kotlin.jvm.internal.t.i(aVClipInfoPack, "get(...)");
                previewPlayer.removeAudioClip(aVClipInfoPack);
            }
            this.this$0.updateAddMusicButton();
            int mainTrackPlaybackTime = this.this$0.getMainTrackPlaybackTime();
            ArrayList arrayList = new ArrayList();
            Iterator<AVClipInfoPack> it = this.this$0.getPreviewPlayer().getAudioClipInfoList().iterator();
            while (it.hasNext()) {
                arrayList.add(Integer.valueOf(mainTrackPlaybackTime - it.next().startOffsetToMainTrackInMs));
            }
            BaseViceTimeLineFragment.updateViceTimeLinePanel$default(this.this$0, true, arrayList, false, 4, null);
        }

        @Override // com.narvii.video.widget.MediaOptionPanel.OptionSelectedListener
        public void onOptionDone(int i10) {
            AudioEditorPanel audioEditorPanel = this.this$0.audioEditorPanel;
            if (audioEditorPanel == null) {
                kotlin.jvm.internal.t.B("audioEditorPanel");
                audioEditorPanel = null;
            }
            audioEditorPanel.setVisibility(8);
            FrameRetrieverManager frameRetrieverManager = this.this$0.audioWaveRetrieverManager;
            if (frameRetrieverManager != null) {
                FrameRetrieverManager.release$default(frameRetrieverManager, false, 1, null);
            }
            int mainTrackPlaybackTime = this.this$0.getMainTrackPlaybackTime();
            AVClipInfoPack aVClipInfoPack = this.this$0.getPreviewPlayer().getAudioClipInfoList().get(this.this$0.selectedAudioTrackIndex);
            kotlin.jvm.internal.t.i(aVClipInfoPack, "get(...)");
            AVClipInfoPack aVClipInfoPack2 = aVClipInfoPack;
            aVClipInfoPack2.visibleDurationInMs = aVClipInfoPack2.trimmedDurationInMs();
            this.this$0.getPreviewPlayer().resetAudioClip(aVClipInfoPack2);
            ArrayList arrayList = new ArrayList();
            Iterator<AVClipInfoPack> it = this.this$0.getPreviewPlayer().getAudioClipInfoList().iterator();
            while (it.hasNext()) {
                arrayList.add(Integer.valueOf(mainTrackPlaybackTime - it.next().startOffsetToMainTrackInMs));
            }
            BaseViceTimeLineFragment.updateViceTimeLinePanel$default(this.this$0, true, arrayList, false, 4, null);
        }

        @Override // com.narvii.video.widget.MediaOptionPanel.OptionSelectedListener
        public void onAddMusicSelected() {
            MediaOptionPanel.OptionSelectedListener.DefaultImpls.onAddMusicSelected(this);
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onActivityCreated$lambda$6(View view) {
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @NotNull
    public String getPageName() {
        return "scene_music_edit";
    }

    @Override // com.narvii.video.BaseViceTimeLineFragment
    public int getViceTrackDataType(int i10) {
        return 101;
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected boolean showPauseButton() {
        return true;
    }

    private final FragmentAudioEditorBinding getBinding() {
        return (FragmentAudioEditorBinding) this.binding$delegate.getValue(this, $$delegatedProperties[0]);
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment
    public void initFrameRetrieverManager() {
        String stringParam = getStringParam("frameRetrieverOutputFolder");
        this.outputFolderPath = stringParam;
        if (stringParam != null) {
            FrameRetrieverManager frameRetrieverManager = getFrameRetrieverManager();
            String str = this.outputFolderPath;
            kotlin.jvm.internal.t.g(str);
            FrameRetrieverManager.initRetriever$default(frameRetrieverManager, str, false, false, 6, null);
        } else {
            FrameRetrieverManager.initRetriever$default(getFrameRetrieverManager(), "timeline_tmp", "audio", false, false, 12, null);
        }
        this.audioWaveRetrieverManager = new FrameRetrieverManager(this);
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        kotlin.jvm.internal.t.j(inflater, "inflater");
        return getBinding().getRoot();
    }

    @Override // com.narvii.media.MediaPickerFragment.OnResultListener
    public void onPickMediaResult(@Nullable List<Media> list, @Nullable Bundle bundle) {
        if (list == null || list.isEmpty()) {
            return;
        }
        String string = bundle != null ? bundle.getString("soundDataList") : null;
        ArrayList listAs = !TextUtils.isEmpty(string) ? JacksonUtils.readListAs(string, Sound.class) : null;
        String string2 = bundle != null ? bundle.getString("category") : null;
        AssetCategory assetCategory = !TextUtils.isEmpty(string2) ? (AssetCategory) JacksonUtils.readAs(string2, AssetCategory.class) : null;
        String string3 = bundle != null ? bundle.getString("soundTypeList") : null;
        ArrayList listAs2 = !TextUtils.isEmpty(string3) ? JacksonUtils.readListAs(string3, Integer.TYPE) : null;
        final int mainTrackPlaybackTime = getMainTrackPlaybackTime();
        MediaTimeLineComponent mainTimeLineComponent = getMainTimeLineComponent();
        w7.u<Boolean, Integer> uVarIsTailFrameCellPlaying = mainTimeLineComponent != null ? mainTimeLineComponent.isTailFrameCellPlaying() : null;
        final ArrayList arrayList = new ArrayList();
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            Media media = list.get(i10);
            AVClipInfoPack aVClipInfoPack = new AVClipInfoPack();
            aVClipInfoPack.indexInScene = i10;
            aVClipInfoPack.inputPath = Uri.parse(media.url).getPath();
            aVClipInfoPack.author = media.author;
            aVClipInfoPack.fileName = media.fileName;
            if (listAs != null && listAs.size() == list.size() && assetCategory != null) {
                SceneMediaProcessor.INSTANCE.fillAudioClipMetadata(aVClipInfoPack, (Sound) listAs.get(i10), assetCategory);
            }
            if (listAs2 == null || listAs2.size() != list.size()) {
                aVClipInfoPack.isSfx = false;
            } else {
                Integer num = (Integer) listAs2.get(i10);
                aVClipInfoPack.isSfx = num != null && num.intValue() == 2;
            }
            aVClipInfoPack.startOffsetToMainTrackInMs = (uVarIsTailFrameCellPlaying == null || !uVarIsTailFrameCellPlaying.c().booleanValue()) ? mainTrackPlaybackTime : mainTrackPlaybackTime - 1000;
            arrayList.add(aVClipInfoPack);
        }
        BaseMediaEditorFragment.prepareAVClipList$default(this, arrayList, false, new Callback() { // from class: com.narvii.video.g
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                AudioEditorFragment.onPickMediaResult$lambda$9(this.f2874a, arrayList, mainTrackPlaybackTime, (Boolean) obj);
            }
        }, 2, null);
    }

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onTimeLineClicked(@NotNull ITimelineClip clipInfo) {
        kotlin.jvm.internal.t.j(clipInfo, "clipInfo");
        super.onTimeLineClicked(clipInfo);
        final AVClipInfoPack activeVideoClip = getActiveVideoClip();
        if (activeVideoClip != null) {
            VolumeProgressView videoVolumePanelProgressView = getBinding().videoVolumePanelProgressView;
            kotlin.jvm.internal.t.i(videoVolumePanelProgressView, "videoVolumePanelProgressView");
            VolumeProgressView.init$default(videoVolumePanelProgressView, (int) (activeVideoClip.trackVolume * 100), new VolumeProgressView.OnVolumeChangedListener() { // from class: com.narvii.video.AudioEditorFragment$onTimeLineClicked$1$1
                @Override // com.narvii.video.widget.VolumeProgressView.OnVolumeChangedListener
                public void onVolumeChanged(int i10) {
                    activeVideoClip.trackVolume = i10 / 100.0f;
                    this.getPreviewPlayer().setVolume(activeVideoClip, true);
                }
            }, false, 4, null);
        }
        Utils.post(new Runnable() { // from class: com.narvii.video.h
            @Override // java.lang.Runnable
            public final void run() {
                AudioEditorFragment.onTimeLineClicked$lambda$13(this.f2878a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onActivityCreated$lambda$2(AudioEditorFragment this$0, View view) {
        int mediaLengthInMs;
        String strWriteAsString;
        kotlin.jvm.internal.t.j(this$0, "this$0");
        Intent intent = new Intent();
        MediaTimeLineComponent mainTimeLineComponent = this$0.getMainTimeLineComponent();
        if (mainTimeLineComponent != null) {
            mediaLengthInMs = mainTimeLineComponent.getMediaLengthInMs();
        } else {
            mediaLengthInMs = 0;
        }
        int size = this$0.getPreviewPlayer().getAudioClipInfoList().size();
        for (int i10 = 0; i10 < size; i10++) {
            AVClipInfoPack aVClipInfoPack = this$0.getPreviewPlayer().getAudioClipInfoList().get(i10);
            kotlin.jvm.internal.t.i(aVClipInfoPack, "get(...)");
            AVClipInfoPack aVClipInfoPack2 = aVClipInfoPack;
            if (aVClipInfoPack2.trimmedDurationInMs() + aVClipInfoPack2.startOffsetToMainTrackInMs > mediaLengthInMs) {
                aVClipInfoPack2.trimEndInMs -= (aVClipInfoPack2.trimmedDurationInMs() + aVClipInfoPack2.startOffsetToMainTrackInMs) - mediaLengthInMs;
            }
        }
        if (this$0.getPreviewPlayer().getAudioClipInfoList().isEmpty()) {
            strWriteAsString = null;
        } else {
            strWriteAsString = JacksonUtils.writeAsString(this$0.getPreviewPlayer().getAudioClipInfoList());
        }
        intent.putExtra("clipInfoList", strWriteAsString);
        intent.putExtra("isVideoTrimming", false);
        ArrayList<AVClipInfoPack> videoClipInfoList = this$0.getPreviewPlayer().getVideoClipInfoList();
        ArrayList arrayList = new ArrayList(kotlin.collections.w.x(videoClipInfoList, 10));
        Iterator<T> it = videoClipInfoList.iterator();
        while (it.hasNext()) {
            arrayList.add(Float.valueOf(((AVClipInfoPack) it.next()).trackVolume));
        }
        intent.putExtra("videoVolumeList", JacksonUtils.writeAsString(arrayList));
        this$0.setResult(-1, intent);
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onActivityCreated$lambda$3(AudioEditorFragment this$0, View view) {
        MediaPickerFragment mediaPickerFragment;
        kotlin.jvm.internal.t.j(this$0, "this$0");
        BaseMediaEditorFragment.changeVideoPlaybackStatus$default(this$0, true, false, 2, null);
        this$0.setAutoPlaying(false);
        MediaPickerFragment mediaPickerFragment2 = this$0.mediaPickerFragment;
        if (mediaPickerFragment2 == null) {
            kotlin.jvm.internal.t.B("mediaPickerFragment");
            mediaPickerFragment = null;
        } else {
            mediaPickerFragment = mediaPickerFragment2;
        }
        mediaPickerFragment.pickMedia(null, null, 16902, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onActivityCreated$lambda$4(AudioEditorFragment this$0, View view) {
        MediaPickerFragment mediaPickerFragment;
        kotlin.jvm.internal.t.j(this$0, "this$0");
        BaseMediaEditorFragment.changeVideoPlaybackStatus$default(this$0, true, false, 2, null);
        this$0.setAutoPlaying(false);
        Bundle bundle = new Bundle();
        bundle.putString(MediaPickerFragment.PICK_ONLINE_AUDIO_TARGET_TAB, "SFX");
        MediaPickerFragment mediaPickerFragment2 = this$0.mediaPickerFragment;
        if (mediaPickerFragment2 == null) {
            kotlin.jvm.internal.t.B("mediaPickerFragment");
            mediaPickerFragment = null;
        } else {
            mediaPickerFragment = mediaPickerFragment2;
        }
        mediaPickerFragment.pickMedia(null, bundle, 16902, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onActivityCreated$lambda$5(AudioEditorFragment this$0, View view) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        view.setVisibility(8);
        this$0.updateMuteIcon();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onActivityCreated$lambda$7(AudioEditorFragment this$0, View view) {
        float f;
        kotlin.jvm.internal.t.j(this$0, "this$0");
        if (this$0.isAllVideoClipMute()) {
            f = 1.0f;
        } else {
            f = 0.0f;
        }
        this$0.setVideoInputClipListVolume(f);
        this$0.updateMuteIcon();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onPickMediaResult$lambda$9(AudioEditorFragment this$0, ArrayList audioClipList, int i10, Boolean bool) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        kotlin.jvm.internal.t.j(audioClipList, "$audioClipList");
        kotlin.jvm.internal.t.g(bool);
        if (bool.booleanValue()) {
            this$0.getPreviewPlayer().addAudioClipList(audioClipList);
            ArrayList arrayList = new ArrayList();
            Iterator<AVClipInfoPack> it = this$0.getPreviewPlayer().getAudioClipInfoList().iterator();
            while (it.hasNext()) {
                arrayList.add(Integer.valueOf(i10 - it.next().startOffsetToMainTrackInMs));
            }
            BaseViceTimeLineFragment.updateViceTimeLinePanel$default(this$0, true, arrayList, false, 4, null);
            this$0.updateAddMusicButton();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onTimeLineClicked$lambda$13(AudioEditorFragment this$0) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        BaseMediaEditorFragment.changeVideoPlaybackStatus$default(this$0, true, false, 2, null);
        this$0.setAutoPlaying(false);
        this$0.getBinding().videoVolumePanel.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViceTrackClicked$lambda$11(AudioEditorFragment this$0, AVClipInfoPack viceClip) {
        AudioEditorPanel audioEditorPanel;
        String strS;
        kotlin.jvm.internal.t.j(this$0, "this$0");
        kotlin.jvm.internal.t.j(viceClip, "$viceClip");
        BaseMediaEditorFragment.changeVideoPlaybackStatus$default(this$0, true, false, 2, null);
        this$0.setAutoPlaying(false);
        FrameRetrieverManager frameRetrieverManager = this$0.audioWaveRetrieverManager;
        if (frameRetrieverManager != null) {
            File inputFile = viceClip.getInputFile();
            if (inputFile == null || (strS = kotlin.io.n.s(inputFile)) == null) {
                strS = "default";
            }
            FrameRetrieverManager.initRetriever$default(frameRetrieverManager, strS, "audio_wave", false, true, 4, null);
        }
        AudioEditorPanel audioEditorPanel2 = this$0.audioEditorPanel;
        if (audioEditorPanel2 == null) {
            kotlin.jvm.internal.t.B("audioEditorPanel");
            audioEditorPanel2 = null;
        }
        audioEditorPanel2.setVisibility(0);
        FrameRetrieverManager frameRetrieverManager2 = this$0.audioWaveRetrieverManager;
        if (frameRetrieverManager2 != null) {
            AudioEditorPanel audioEditorPanel3 = this$0.audioEditorPanel;
            if (audioEditorPanel3 == null) {
                kotlin.jvm.internal.t.B("audioEditorPanel");
                audioEditorPanel = null;
            } else {
                audioEditorPanel = audioEditorPanel3;
            }
            audioEditorPanel.bind(viceClip, this$0.getTotalVisibleVideoDurationInMs().c().intValue(), this$0.getPreviewPlayer(), frameRetrieverManager2, this$0.audioEditingPanelCallback);
        }
    }

    private final void setVideoInputClipListVolume(float f) {
        for (AVClipInfoPack aVClipInfoPack : getPreviewPlayer().getVideoClipInfoList()) {
            aVClipInfoPack.trackVolume = f;
            getPreviewPlayer().setVolume(aVClipInfoPack, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateAddMusicButton() {
        boolean z6;
        float f;
        FragmentAudioEditorBinding binding = getBinding();
        if (getPreviewPlayer().getAudioClipInfoList().size() < 3) {
            z6 = true;
        } else {
            z6 = false;
        }
        ImageView imageView = binding.optionAddMusic;
        float f6 = 0.5f;
        if (z6) {
            f = 1.0f;
        } else {
            f = 0.5f;
        }
        imageView.setAlpha(f);
        binding.optionAddMusic.setClickable(z6);
        ImageView imageView2 = binding.optionAddSfx;
        if (z6) {
            f6 = 1.0f;
        }
        imageView2.setAlpha(f6);
        binding.optionAddSfx.setClickable(z6);
    }

    private final void updateMuteIcon() {
        int i10;
        ImageView imageView = getBinding().muteIv;
        if (isAllVideoClipMute()) {
            i10 = com.narvii.mediaeditor.R.drawable.ic_mute;
        } else {
            i10 = com.narvii.mediaeditor.R.drawable.ic_unmute;
        }
        imageView.setImageResource(i10);
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        if (Utils.isAndroidVersion8()) {
            return com.narvii.mediaeditor.R.style.AminoTheme_Overlay;
        }
        return com.narvii.mediaeditor.R.style.AminoTheme_Translucent_NoActionBar;
    }

    @Override // com.narvii.video.BaseViceTimeLineFragment
    @NotNull
    public List<BaseClipInfoPack> getTargetClipListForViceTracks() {
        int iIntValue = getTotalVisibleVideoDurationInMs().c().intValue();
        for (AVClipInfoPack aVClipInfoPack : getPreviewPlayer().getAudioClipInfoList()) {
            aVClipInfoPack.trimEndInMs = aVClipInfoPack.trimStartInMs + Math.min(aVClipInfoPack.trimmedDurationInMs(), iIntValue);
            aVClipInfoPack.visibleDurationInMs = aVClipInfoPack.trimmedDurationInMs();
        }
        return getPreviewPlayer().getAudioClipInfoList();
    }

    @Override // com.narvii.video.BaseViceTimeLineFragment, com.narvii.video.BaseMediaEditorFragment
    public void initComponent() {
        super.initComponent();
        FragmentAudioEditorBinding binding = getBinding();
        setVideoDurationText(binding.videoDuration);
        setVideoPlaybackTimeText(binding.videoPlaybackTime);
        setVideoPlaybackTimeDivider(binding.divider);
        setPreviewVideoView(binding.videoViewPlayer);
        setPlayerButton(binding.playerButton);
        AudioEditorPanel audioEditorPanel = binding.audioEditorPanel;
        kotlin.jvm.internal.t.i(audioEditorPanel, "audioEditorPanel");
        this.audioEditorPanel = audioEditorPanel;
        LinearLayout viceTimeLinePanel = binding.viceTimeLinePanel;
        kotlin.jvm.internal.t.i(viceTimeLinePanel, "viceTimeLinePanel");
        setViceTimeLinePanel(viceTimeLinePanel);
        setMainTimeLineComponent(binding.videoTimeLineComponent);
    }

    @Override // com.narvii.video.BaseViceTimeLineFragment, com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment
    protected void onAVClipsPrepared() {
        super.onAVClipsPrepared();
        updateAddMusicButton();
        getBinding().muteRl.setVisibility(0);
        updateMuteIcon();
    }

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        getBinding().optionDone.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.video.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AudioEditorFragment.onActivityCreated$lambda$2(this.f2853a, view);
            }
        });
        getBinding().optionAddMusic.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.video.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AudioEditorFragment.onActivityCreated$lambda$3(this.f2863a, view);
            }
        });
        getBinding().optionAddSfx.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.video.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AudioEditorFragment.onActivityCreated$lambda$4(this.f2865a, view);
            }
        });
        getBinding().videoVolumePanel.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.video.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AudioEditorFragment.onActivityCreated$lambda$5(this.f2867a, view);
            }
        });
        getBinding().videoVolumePanelProgressBackground.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.video.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AudioEditorFragment.onActivityCreated$lambda$6(view);
            }
        });
        getBinding().muteRl.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.video.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AudioEditorFragment.onActivityCreated$lambda$7(this.f2872a, view);
            }
        });
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        Fragment fragmentM0 = requireFragmentManager().m0("playListMediaPicker");
        MediaPickerFragment mediaPickerFragment = null;
        if (fragmentM0 instanceof MediaPickerFragment) {
            this.mediaPickerFragment = (MediaPickerFragment) fragmentM0;
        } else {
            this.mediaPickerFragment = new MediaPickerFragment();
            FragmentTransaction fragmentTransactionQ = requireFragmentManager().q();
            MediaPickerFragment mediaPickerFragment2 = this.mediaPickerFragment;
            if (mediaPickerFragment2 == null) {
                kotlin.jvm.internal.t.B("mediaPickerFragment");
                mediaPickerFragment2 = null;
            }
            fragmentTransactionQ.e(mediaPickerFragment2, "playListMediaPicker").k();
        }
        MediaPickerFragment mediaPickerFragment3 = this.mediaPickerFragment;
        if (mediaPickerFragment3 == null) {
            kotlin.jvm.internal.t.B("mediaPickerFragment");
        } else {
            mediaPickerFragment = mediaPickerFragment3;
        }
        mediaPickerFragment.addOnResultListener(this);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        MediaPickerFragment mediaPickerFragment = this.mediaPickerFragment;
        if (mediaPickerFragment == null) {
            kotlin.jvm.internal.t.B("mediaPickerFragment");
            mediaPickerFragment = null;
        }
        mediaPickerFragment.removeOnResultListener(this);
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
        FrameRetrieverManager frameRetrieverManager2 = this.audioWaveRetrieverManager;
        if (frameRetrieverManager2 != null) {
            FrameRetrieverManager.doClean$default(frameRetrieverManager2, false, 1, null);
        }
    }

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        if (!getInitSuccess()) {
            return;
        }
        getFrameRetrieverManager().abortFlyingFrameRetrievers();
        FrameRetrieverManager frameRetrieverManager = this.audioWaveRetrieverManager;
        if (frameRetrieverManager != null) {
            frameRetrieverManager.abortFlyingFrameRetrievers();
        }
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onResume() {
        MediaTimeLineComponent mainTimeLineComponent;
        super.onResume();
        if (getInitSuccess() && (mainTimeLineComponent = getMainTimeLineComponent()) != null) {
            mainTimeLineComponent.refreshTimeLine();
        }
    }

    @Override // com.narvii.video.BaseViceTimeLineFragment
    public void onViceTrackClicked(int i10) {
        AVClipInfoPack aVClipInfoPack = getPreviewPlayer().getAudioClipInfoList().get(i10);
        kotlin.jvm.internal.t.i(aVClipInfoPack, "get(...)");
        final AVClipInfoPack aVClipInfoPack2 = aVClipInfoPack;
        this.selectedAudioTrackIndex = i10;
        Utils.post(new Runnable() { // from class: com.narvii.video.i
            @Override // java.lang.Runnable
            public final void run() {
                AudioEditorFragment.onViceTrackClicked$lambda$11(this.f2880a, aVClipInfoPack2);
            }
        });
    }

    @Override // com.narvii.video.BaseViceTimeLineFragment
    public void onViceTrackOffsetChanged(int i10) {
        getPreviewPlayer().onAudioTrackOffsetChanged(i10);
    }
}
