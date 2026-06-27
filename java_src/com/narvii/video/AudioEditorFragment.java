package com.narvii.video;

import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.narvii.media.MediaPickerFragment;
import com.narvii.media.online.audio.model.AssetCategory;
import com.narvii.media.online.audio.model.Sound;
import com.narvii.model.Media;
import com.narvii.util.Callback;
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
import com.narvii.video.widget.videoview.NVEditorPreviewVideoVIew;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.io.FilesKt__UtilsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AudioEditorFragment.kt */
/* loaded from: classes3.dex */
public final class AudioEditorFragment extends BaseViceTimeLineFragment implements MediaPickerFragment.OnResultListener {
    private HashMap _$_findViewCache;
    private AudioEditorPanel audioEditorPanel;
    private FrameRetrieverManager audioWaveRetrieverManager;
    private MediaPickerFragment mediaPickerFragment;
    private String outputFolderPath;
    private int selectedAudioTrackIndex = -1;
    private final AudioEditorFragment$audioEditingPanelCallback$1 audioEditingPanelCallback = new MediaOptionPanel.OptionSelectedListener() { // from class: com.narvii.video.AudioEditorFragment$audioEditingPanelCallback$1
        @Override // com.narvii.video.widget.MediaOptionPanel.OptionSelectedListener
        public void onAddMusicSelected() {
            MediaOptionPanel.OptionSelectedListener.DefaultImpls.onAddMusicSelected(this);
        }

        @Override // com.narvii.video.widget.MediaOptionPanel.OptionSelectedListener
        public void onOptionDone(int i) throws Resources.NotFoundException {
            AudioEditorFragment.access$getAudioEditorPanel$p(this.this$0).setVisibility(8);
            FrameRetrieverManager frameRetrieverManager = this.this$0.audioWaveRetrieverManager;
            if (frameRetrieverManager != null) {
                FrameRetrieverManager.release$default(frameRetrieverManager, false, 1, null);
            }
            int mainTrackPlaybackTime = this.this$0.getMainTrackPlaybackTime();
            AVClipInfoPack aVClipInfoPack = this.this$0.getPreviewPlayer().getAudioClipInfoList().get(this.this$0.selectedAudioTrackIndex);
            Intrinsics.checkExpressionValueIsNotNull(aVClipInfoPack, "previewPlayer.getAudioCl…[selectedAudioTrackIndex]");
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
        public void onOptionCancel(int i) throws Resources.NotFoundException {
            AudioEditorFragment.access$getAudioEditorPanel$p(this.this$0).setVisibility(8);
            FrameRetrieverManager frameRetrieverManager = this.this$0.audioWaveRetrieverManager;
            if (frameRetrieverManager != null) {
                FrameRetrieverManager.release$default(frameRetrieverManager, false, 1, null);
            }
            int size = this.this$0.getPreviewPlayer().getAudioClipInfoList().size();
            int i2 = this.this$0.selectedAudioTrackIndex;
            if (i2 >= 0 && size > i2) {
                IPreviewPlayer previewPlayer = this.this$0.getPreviewPlayer();
                AVClipInfoPack aVClipInfoPack = this.this$0.getPreviewPlayer().getAudioClipInfoList().get(this.this$0.selectedAudioTrackIndex);
                Intrinsics.checkExpressionValueIsNotNull(aVClipInfoPack, "previewPlayer.getAudioCl…[selectedAudioTrackIndex]");
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
    };

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

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "SceneMusicEdit";
    }

    @Override // com.narvii.video.BaseViceTimeLineFragment
    public int getViceTrackDataType(int i) {
        return 101;
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected boolean showPauseButton() {
        return true;
    }

    public static final /* synthetic */ AudioEditorPanel access$getAudioEditorPanel$p(AudioEditorFragment audioEditorFragment) {
        AudioEditorPanel audioEditorPanel = audioEditorFragment.audioEditorPanel;
        if (audioEditorPanel != null) {
            return audioEditorPanel;
        }
        Intrinsics.throwUninitializedPropertyAccessException("audioEditorPanel");
        throw null;
    }

    public static final /* synthetic */ MediaPickerFragment access$getMediaPickerFragment$p(AudioEditorFragment audioEditorFragment) {
        MediaPickerFragment mediaPickerFragment = audioEditorFragment.mediaPickerFragment;
        if (mediaPickerFragment != null) {
            return mediaPickerFragment;
        }
        Intrinsics.throwUninitializedPropertyAccessException("mediaPickerFragment");
        throw null;
    }

    @Override // com.narvii.video.BaseViceTimeLineFragment, com.narvii.video.BaseMediaEditorFragment
    public void initComponent() {
        super.initComponent();
        setVideoDurationText((TextView) _$_findCachedViewById(com.narvii.mediaeditor.R.id.video_duration));
        setVideoPlaybackTimeText((TextView) _$_findCachedViewById(com.narvii.mediaeditor.R.id.video_playback_time));
        setVideoPlaybackTimeDivider(_$_findCachedViewById(com.narvii.mediaeditor.R.id.divider));
        setPreviewVideoView((NVEditorPreviewVideoVIew) _$_findCachedViewById(com.narvii.mediaeditor.R.id.video_view_player));
        setPlayerButton((ImageView) _$_findCachedViewById(com.narvii.mediaeditor.R.id.player_button));
        AudioEditorPanel audio_editor_panel = (AudioEditorPanel) _$_findCachedViewById(com.narvii.mediaeditor.R.id.audio_editor_panel);
        Intrinsics.checkExpressionValueIsNotNull(audio_editor_panel, "audio_editor_panel");
        this.audioEditorPanel = audio_editor_panel;
        LinearLayout vice_time_line_panel = (LinearLayout) _$_findCachedViewById(com.narvii.mediaeditor.R.id.vice_time_line_panel);
        Intrinsics.checkExpressionValueIsNotNull(vice_time_line_panel, "vice_time_line_panel");
        setViceTimeLinePanel(vice_time_line_panel);
        setMainTimeLineComponent((MediaTimeLineComponent) _$_findCachedViewById(com.narvii.mediaeditor.R.id.video_time_line_component));
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment
    public void initFrameRetrieverManager() throws Resources.NotFoundException {
        this.outputFolderPath = getStringParam("frameRetrieverOutputFolder");
        if (this.outputFolderPath != null) {
            FrameRetrieverManager frameRetrieverManager = getFrameRetrieverManager();
            String str = this.outputFolderPath;
            if (str == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            FrameRetrieverManager.initRetriever$default(frameRetrieverManager, str, false, false, 6, null);
        } else {
            FrameRetrieverManager.initRetriever$default(getFrameRetrieverManager(), "timeline_tmp", "audio", false, false, 12, null);
        }
        this.audioWaveRetrieverManager = new FrameRetrieverManager(this);
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return Utils.isAndroidVersion8() ? com.narvii.mediaeditor.R.style.AminoTheme_Overlay : com.narvii.mediaeditor.R.style.AminoTheme_Translucent_NoActionBar;
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
        } else {
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
        }
        MediaPickerFragment mediaPickerFragment2 = this.mediaPickerFragment;
        if (mediaPickerFragment2 != null) {
            mediaPickerFragment2.addOnResultListener(this);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("mediaPickerFragment");
            throw null;
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        MediaPickerFragment mediaPickerFragment = this.mediaPickerFragment;
        if (mediaPickerFragment != null) {
            mediaPickerFragment.removeOnResultListener(this);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("mediaPickerFragment");
            throw null;
        }
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return inflater.inflate(com.narvii.mediaeditor.R.layout.fragment_audio_editor, viewGroup, false);
    }

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onActivityCreated(bundle);
        ((ImageView) _$_findCachedViewById(com.narvii.mediaeditor.R.id.option_done)).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.video.AudioEditorFragment.onActivityCreated.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Intent intent = new Intent();
                MediaTimeLineComponent mainTimeLineComponent = AudioEditorFragment.this.getMainTimeLineComponent();
                int mediaLengthInMs = mainTimeLineComponent != null ? mainTimeLineComponent.getMediaLengthInMs() : 0;
                int size = AudioEditorFragment.this.getPreviewPlayer().getAudioClipInfoList().size();
                for (int i = 0; i < size; i++) {
                    AVClipInfoPack aVClipInfoPack = AudioEditorFragment.this.getPreviewPlayer().getAudioClipInfoList().get(i);
                    Intrinsics.checkExpressionValueIsNotNull(aVClipInfoPack, "previewPlayer.getAudioClipInfoList()[index]");
                    AVClipInfoPack aVClipInfoPack2 = aVClipInfoPack;
                    if (aVClipInfoPack2.trimmedDurationInMs() + aVClipInfoPack2.startOffsetToMainTrackInMs > mediaLengthInMs) {
                        aVClipInfoPack2.trimEndInMs -= (aVClipInfoPack2.trimmedDurationInMs() + aVClipInfoPack2.startOffsetToMainTrackInMs) - mediaLengthInMs;
                    }
                }
                intent.putExtra("clipInfoList", AudioEditorFragment.this.getPreviewPlayer().getAudioClipInfoList().isEmpty() ? null : JacksonUtils.writeAsString(AudioEditorFragment.this.getPreviewPlayer().getAudioClipInfoList()));
                intent.putExtra("isVideoTrimming", false);
                ArrayList<AVClipInfoPack> videoClipInfoList = AudioEditorFragment.this.getPreviewPlayer().getVideoClipInfoList();
                ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(videoClipInfoList, 10));
                Iterator<T> it = videoClipInfoList.iterator();
                while (it.hasNext()) {
                    arrayList.add(Float.valueOf(((AVClipInfoPack) it.next()).trackVolume));
                }
                intent.putExtra("videoVolumeList", JacksonUtils.writeAsString(arrayList));
                AudioEditorFragment.this.setResult(-1, intent);
                AudioEditorFragment.this.finish();
            }
        });
        ((ImageView) _$_findCachedViewById(com.narvii.mediaeditor.R.id.option_add_music)).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.video.AudioEditorFragment.onActivityCreated.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BaseMediaEditorFragment.changeVideoPlaybackStatus$default(AudioEditorFragment.this, true, false, 2, null);
                AudioEditorFragment.this.setAutoPlaying(false);
                AudioEditorFragment.access$getMediaPickerFragment$p(AudioEditorFragment.this).pickMedia(null, null, 16902, 1, null);
            }
        });
        ((ImageView) _$_findCachedViewById(com.narvii.mediaeditor.R.id.option_add_sfx)).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.video.AudioEditorFragment.onActivityCreated.3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BaseMediaEditorFragment.changeVideoPlaybackStatus$default(AudioEditorFragment.this, true, false, 2, null);
                AudioEditorFragment.this.setAutoPlaying(false);
                Bundle bundle2 = new Bundle();
                bundle2.putString(MediaPickerFragment.PICK_ONLINE_AUDIO_TARGET_TAB, "SFX");
                AudioEditorFragment.access$getMediaPickerFragment$p(AudioEditorFragment.this).pickMedia(null, bundle2, 16902, 1, null);
            }
        });
        ((FrameLayout) _$_findCachedViewById(com.narvii.mediaeditor.R.id.video_volume_panel)).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.video.AudioEditorFragment.onActivityCreated.4
            @Override // android.view.View.OnClickListener
            public final void onClick(View v) {
                Intrinsics.checkExpressionValueIsNotNull(v, "v");
                v.setVisibility(8);
                AudioEditorFragment.this.updateMuteIcon();
            }
        });
        ((FrameLayout) _$_findCachedViewById(com.narvii.mediaeditor.R.id.video_volume_panel_progress_background)).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.video.AudioEditorFragment.onActivityCreated.5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
            }
        });
        ((RelativeLayout) _$_findCachedViewById(com.narvii.mediaeditor.R.id.mute_rl)).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.video.AudioEditorFragment.onActivityCreated.6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AudioEditorFragment.this.setVideoInputClipListVolume(AudioEditorFragment.this.isAllVideoClipMute() ? 1.0f : 0.0f);
                AudioEditorFragment.this.updateMuteIcon();
            }
        });
    }

    @Override // com.narvii.video.BaseViceTimeLineFragment, com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment
    protected void onAVClipsPrepared() throws Resources.NotFoundException {
        super.onAVClipsPrepared();
        updateAddMusicButton();
        RelativeLayout mute_rl = (RelativeLayout) _$_findCachedViewById(com.narvii.mediaeditor.R.id.mute_rl);
        Intrinsics.checkExpressionValueIsNotNull(mute_rl, "mute_rl");
        mute_rl.setVisibility(0);
        updateMuteIcon();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateAddMusicButton() {
        boolean z = getPreviewPlayer().getAudioClipInfoList().size() < 3;
        ImageView option_add_music = (ImageView) _$_findCachedViewById(com.narvii.mediaeditor.R.id.option_add_music);
        Intrinsics.checkExpressionValueIsNotNull(option_add_music, "option_add_music");
        option_add_music.setAlpha(z ? 1.0f : 0.5f);
        ImageView option_add_music2 = (ImageView) _$_findCachedViewById(com.narvii.mediaeditor.R.id.option_add_music);
        Intrinsics.checkExpressionValueIsNotNull(option_add_music2, "option_add_music");
        option_add_music2.setClickable(z);
        ImageView option_add_sfx = (ImageView) _$_findCachedViewById(com.narvii.mediaeditor.R.id.option_add_sfx);
        Intrinsics.checkExpressionValueIsNotNull(option_add_sfx, "option_add_sfx");
        option_add_sfx.setAlpha(z ? 1.0f : 0.5f);
        ImageView option_add_sfx2 = (ImageView) _$_findCachedViewById(com.narvii.mediaeditor.R.id.option_add_sfx);
        Intrinsics.checkExpressionValueIsNotNull(option_add_sfx2, "option_add_sfx");
        option_add_sfx2.setClickable(z);
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onResume() {
        MediaTimeLineComponent mainTimeLineComponent;
        super.onResume();
        if (getInitSuccess() && (mainTimeLineComponent = getMainTimeLineComponent()) != null) {
            mainTimeLineComponent.refreshTimeLine();
        }
    }

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onPause() {
        super.onPause();
        if (getInitSuccess()) {
            getFrameRetrieverManager().abortFlyingFrameRetrievers();
            FrameRetrieverManager frameRetrieverManager = this.audioWaveRetrieverManager;
            if (frameRetrieverManager != null) {
                frameRetrieverManager.abortFlyingFrameRetrievers();
            }
        }
    }

    @Override // com.narvii.video.BaseViceTimeLineFragment, com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        if (!getInitSuccess()) {
            _$_clearFindViewByIdCache();
            return;
        }
        getFrameRetrieverManager().doClean(this.outputFolderPath == null);
        FrameRetrieverManager frameRetrieverManager = this.audioWaveRetrieverManager;
        if (frameRetrieverManager != null) {
            FrameRetrieverManager.doClean$default(frameRetrieverManager, false, 1, null);
        }
        _$_clearFindViewByIdCache();
    }

    @Override // com.narvii.media.MediaPickerFragment.OnResultListener
    public void onPickMediaResult(List<Media> list, Bundle bundle) {
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
        Pair<Boolean, Integer> pairIsTailFrameCellPlaying = mainTimeLineComponent != null ? mainTimeLineComponent.isTailFrameCellPlaying() : null;
        final ArrayList arrayList = new ArrayList();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Media media = list.get(i);
            AVClipInfoPack aVClipInfoPack = new AVClipInfoPack();
            aVClipInfoPack.indexInScene = i;
            Uri uri = Uri.parse(media.url);
            Intrinsics.checkExpressionValueIsNotNull(uri, "Uri.parse(media.url)");
            aVClipInfoPack.inputPath = uri.getPath();
            aVClipInfoPack.author = media.author;
            aVClipInfoPack.fileName = media.fileName;
            if (listAs != null && listAs.size() == list.size() && assetCategory != null) {
                SceneMediaProcessor.INSTANCE.fillAudioClipMetadata(aVClipInfoPack, (Sound) listAs.get(i), assetCategory);
            }
            if (listAs2 != null && listAs2.size() == list.size()) {
                Integer num = (Integer) listAs2.get(i);
                aVClipInfoPack.isSfx = num != null && num.intValue() == 2;
            } else {
                aVClipInfoPack.isSfx = false;
            }
            aVClipInfoPack.startOffsetToMainTrackInMs = (pairIsTailFrameCellPlaying == null || !pairIsTailFrameCellPlaying.getFirst().booleanValue()) ? mainTrackPlaybackTime : mainTrackPlaybackTime - 1000;
            arrayList.add(aVClipInfoPack);
        }
        BaseMediaEditorFragment.prepareAVClipList$default(this, arrayList, false, new Callback<Boolean>() { // from class: com.narvii.video.AudioEditorFragment.onPickMediaResult.1
            @Override // com.narvii.util.Callback
            public final void call(Boolean it) throws Resources.NotFoundException {
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                if (it.booleanValue()) {
                    AudioEditorFragment.this.getPreviewPlayer().addAudioClipList(arrayList);
                    ArrayList arrayList2 = new ArrayList();
                    Iterator<AVClipInfoPack> it2 = AudioEditorFragment.this.getPreviewPlayer().getAudioClipInfoList().iterator();
                    while (it2.hasNext()) {
                        arrayList2.add(Integer.valueOf(mainTrackPlaybackTime - it2.next().startOffsetToMainTrackInMs));
                    }
                    BaseViceTimeLineFragment.updateViceTimeLinePanel$default(AudioEditorFragment.this, true, arrayList2, false, 4, null);
                    AudioEditorFragment.this.updateAddMusicButton();
                }
            }
        }, 2, null);
    }

    @Override // com.narvii.video.BaseViceTimeLineFragment
    public void onViceTrackClicked(int i) {
        AVClipInfoPack aVClipInfoPack = getPreviewPlayer().getAudioClipInfoList().get(i);
        Intrinsics.checkExpressionValueIsNotNull(aVClipInfoPack, "previewPlayer.getAudioClipInfoList()[trackIndex]");
        final AVClipInfoPack aVClipInfoPack2 = aVClipInfoPack;
        this.selectedAudioTrackIndex = i;
        Utils.post(new Runnable() { // from class: com.narvii.video.AudioEditorFragment.onViceTrackClicked.1
            @Override // java.lang.Runnable
            public final void run() throws Resources.NotFoundException {
                String nameWithoutExtension;
                BaseMediaEditorFragment.changeVideoPlaybackStatus$default(AudioEditorFragment.this, true, false, 2, null);
                AudioEditorFragment.this.setAutoPlaying(false);
                FrameRetrieverManager frameRetrieverManager = AudioEditorFragment.this.audioWaveRetrieverManager;
                if (frameRetrieverManager != null) {
                    File inputFile = aVClipInfoPack2.getInputFile();
                    if (inputFile == null || (nameWithoutExtension = FilesKt__UtilsKt.getNameWithoutExtension(inputFile)) == null) {
                        nameWithoutExtension = "default";
                    }
                    FrameRetrieverManager.initRetriever$default(frameRetrieverManager, nameWithoutExtension, "audio_wave", false, true, 4, null);
                }
                AudioEditorFragment.access$getAudioEditorPanel$p(AudioEditorFragment.this).setVisibility(0);
                FrameRetrieverManager frameRetrieverManager2 = AudioEditorFragment.this.audioWaveRetrieverManager;
                if (frameRetrieverManager2 != null) {
                    AudioEditorFragment.access$getAudioEditorPanel$p(AudioEditorFragment.this).bind(aVClipInfoPack2, AudioEditorFragment.this.getTotalVisibleVideoDurationInMs().getFirst().intValue(), AudioEditorFragment.this.getPreviewPlayer(), frameRetrieverManager2, AudioEditorFragment.this.audioEditingPanelCallback);
                }
            }
        });
    }

    @Override // com.narvii.video.BaseViceTimeLineFragment
    public List<BaseClipInfoPack> getTargetClipListForViceTracks() {
        int iIntValue = getTotalVisibleVideoDurationInMs().getFirst().intValue();
        Iterator<AVClipInfoPack> it = getPreviewPlayer().getAudioClipInfoList().iterator();
        while (it.hasNext()) {
            AVClipInfoPack next = it.next();
            next.trimEndInMs = next.trimStartInMs + Math.min(next.trimmedDurationInMs(), iIntValue);
            next.visibleDurationInMs = next.trimmedDurationInMs();
        }
        return getPreviewPlayer().getAudioClipInfoList();
    }

    @Override // com.narvii.video.BaseViceTimeLineFragment
    public void onViceTrackOffsetChanged(int i) {
        getPreviewPlayer().onAudioTrackOffsetChanged(i);
    }

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onTimeLineClicked(ITimelineClip clipInfo) throws Resources.NotFoundException {
        Intrinsics.checkParameterIsNotNull(clipInfo, "clipInfo");
        super.onTimeLineClicked(clipInfo);
        final AVClipInfoPack activeVideoClip = getActiveVideoClip();
        if (activeVideoClip != null) {
            VolumeProgressView.init$default((VolumeProgressView) _$_findCachedViewById(com.narvii.mediaeditor.R.id.video_volume_panel_progress_view), (int) (activeVideoClip.trackVolume * 100), new VolumeProgressView.OnVolumeChangedListener() { // from class: com.narvii.video.AudioEditorFragment$onTimeLineClicked$$inlined$let$lambda$1
                @Override // com.narvii.video.widget.VolumeProgressView.OnVolumeChangedListener
                public void onVolumeChanged(int i) {
                    activeVideoClip.trackVolume = i / 100.0f;
                    this.getPreviewPlayer().setVolume(activeVideoClip, true);
                }
            }, false, 4, null);
        }
        Utils.post(new Runnable() { // from class: com.narvii.video.AudioEditorFragment.onTimeLineClicked.2
            @Override // java.lang.Runnable
            public final void run() {
                BaseMediaEditorFragment.changeVideoPlaybackStatus$default(AudioEditorFragment.this, true, false, 2, null);
                AudioEditorFragment.this.setAutoPlaying(false);
                FrameLayout video_volume_panel = (FrameLayout) AudioEditorFragment.this._$_findCachedViewById(com.narvii.mediaeditor.R.id.video_volume_panel);
                Intrinsics.checkExpressionValueIsNotNull(video_volume_panel, "video_volume_panel");
                video_volume_panel.setVisibility(0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setVideoInputClipListVolume(float f) {
        for (AVClipInfoPack aVClipInfoPack : getPreviewPlayer().getVideoClipInfoList()) {
            aVClipInfoPack.trackVolume = f;
            getPreviewPlayer().setVolume(aVClipInfoPack, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateMuteIcon() {
        ((ImageView) _$_findCachedViewById(com.narvii.mediaeditor.R.id.mute_iv)).setImageResource(isAllVideoClipMute() ? com.narvii.mediaeditor.R.drawable.ic_mute : com.narvii.mediaeditor.R.drawable.ic_unmute);
    }
}
