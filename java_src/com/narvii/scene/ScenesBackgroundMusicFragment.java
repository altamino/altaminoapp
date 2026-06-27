package com.narvii.scene;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.NVActivity;
import com.narvii.app.NVFragment;
import com.narvii.mediaeditor.R;
import com.narvii.scene.interfaces.IScenePlayer;
import com.narvii.scene.model.SceneDraft;
import com.narvii.scene.view.AudioOptionPanel;
import com.narvii.scene.view.BalanceSeekBar;
import com.narvii.scene.view.EditSceneBGMLayout;
import com.narvii.scene.view.ScenePreviewLayout;
import com.narvii.util.JacksonUtils;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.video.interfaces.ITimelineClip;
import com.narvii.video.model.AVClipInfoPack;
import com.narvii.video.model.StreamInfo;
import com.narvii.video.services.FrameRetrieverManager;
import com.narvii.video.services.VideoManager;
import com.narvii.video.widget.MediaTimeLineComponent;

/* loaded from: classes3.dex */
public class ScenesBackgroundMusicFragment extends NVFragment implements BalanceSeekBar.OnSeekListener, AudioOptionPanel.OnOptionClickListener, MediaTimeLineComponent.TimeLineCallback, FragmentOnBackListener, IScenePlayer.OnPlayingListener, EditSceneBGMLayout.OnFadeListener {
    private static final String TAG = ScenesBackgroundMusicFragment.class.getSimpleName();
    private AVClipInfoPack bgmClip;
    private EditSceneBGMLayout editSceneBGMLayout;
    private FrameRetrieverManager frameRetrieverManager;
    private ScenePreviewLayout previewLayout;
    private AVClipInfoPack resultBgmClip;
    private SceneDraft sceneDraft;
    private StreamInfo streamInfo;
    private VideoManager videoManager;
    private View videoPlayButton;
    private boolean waitTrackDrag = false;
    private boolean isWaitingPlaying = false;
    private int resultCode = 0;

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "StoryBackgroundMusicEdit";
    }

    @Override // com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onControllerActive() {
    }

    @Override // com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onPlayerTick(long j, long j2) {
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer.OnPlayingListener
    public void onPrepared() {
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer.OnPlayingListener
    public void onSceneChanged(String str, int i) {
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer.OnPlayingListener
    public void onSceneEnd(String str, int i) {
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer.OnPlayingListener
    public void onSeekingError(String str, Exception exc) {
    }

    @Override // com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onTimeLineClicked(ITimelineClip iTimelineClip) {
    }

    @Override // com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onTimeLineLayout() {
    }

    @Override // com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onTimeLineScrolledOffsetChanged(int i) {
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return R.style.AminoTheme_Overlay;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            this.sceneDraft = (SceneDraft) JacksonUtils.readAs(getStringParam("sceneDraft"), SceneDraft.class);
            this.bgmClip = (AVClipInfoPack) JacksonUtils.readAs(getStringParam("bgMusicClip"), AVClipInfoPack.class);
        } else {
            this.sceneDraft = (SceneDraft) JacksonUtils.readAs(bundle.getString("sceneDraft"), SceneDraft.class);
            this.bgmClip = (AVClipInfoPack) JacksonUtils.readAs(bundle.getString("bgMusicClip"), AVClipInfoPack.class);
        }
        SceneDraft sceneDraft = this.sceneDraft;
        if (sceneDraft != null) {
            sceneDraft.bgMusicClip = this.bgmClip;
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("sceneDraft", JacksonUtils.writeAsString(this.sceneDraft));
        bundle.putString("bgMusicClip", JacksonUtils.writeAsString(this.bgmClip));
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onActivityCreated(bundle);
        setTitle("");
        setActionBarLeftView(null);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        this.previewLayout.toResume(this.isWaitingPlaying);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onPause() {
        this.isWaitingPlaying = this.previewLayout.isPlaying();
        this.previewLayout.toPause();
        super.onPause();
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.scenes_background_music_layout, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        this.videoManager = (VideoManager) getService("videoManager");
        this.previewLayout = (ScenePreviewLayout) view.findViewById(R.id.preview_layout);
        this.editSceneBGMLayout = (EditSceneBGMLayout) view.findViewById(R.id.edit_scene_BGM_Layout);
        this.videoPlayButton = view.findViewById(R.id.video_play_button);
        this.streamInfo = null;
        if (this.bgmClip.getInputFile() != null) {
            this.streamInfo = this.videoManager.fetchStreamInfoSync(this.bgmClip.getInputFile().getAbsolutePath());
        }
        StreamInfo streamInfo = this.streamInfo;
        if (streamInfo != null && streamInfo.aCodecType != null && streamInfo.isACodecInWhiteList()) {
            this.editSceneBGMLayout.setOnSeekListener(this);
            this.editSceneBGMLayout.setOnOptionClickListener(this);
            this.editSceneBGMLayout.setTimelineCallback(this);
            this.editSceneBGMLayout.setOnFadeListener(this);
            this.frameRetrieverManager = new FrameRetrieverManager(this);
            this.frameRetrieverManager.initRetriever(this.sceneDraft.draftId, "audio_wave", false, true);
            this.editSceneBGMLayout.post(new Runnable() { // from class: com.narvii.scene.ScenesBackgroundMusicFragment.1
                @Override // java.lang.Runnable
                public void run() {
                    ScenesBackgroundMusicFragment.this.previewLayout.setOnPlayingListener(ScenesBackgroundMusicFragment.this);
                    ScenesBackgroundMusicFragment.this.previewLayout.setBackToBeginningWhenStop(true);
                    ScenesBackgroundMusicFragment.this.previewLayout.setSceneDraft(ScenesBackgroundMusicFragment.this.sceneDraft);
                    ScenesBackgroundMusicFragment.this.bgmClip.trimEndInMs = (int) (ScenesBackgroundMusicFragment.this.bgmClip.trimStartInMs + ScenesBackgroundMusicFragment.this.getEditDuration());
                    ScenesBackgroundMusicFragment.this.editSceneBGMLayout.init(ScenesBackgroundMusicFragment.this.frameRetrieverManager);
                    ScenesBackgroundMusicFragment.this.editSceneBGMLayout.setBGMusicClip(ScenesBackgroundMusicFragment.this.bgmClip, ScenesBackgroundMusicFragment.this.getEditDuration());
                    Log.d(ScenesBackgroundMusicFragment.TAG, "editSceneBGMLayout init >>> duration : " + ScenesBackgroundMusicFragment.this.getEditDuration());
                }
            });
            return;
        }
        AlertDialog alertDialog = new AlertDialog(getContext());
        alertDialog.setMessage(R.string.invalid_input);
        alertDialog.addButton(android.R.string.ok, 0, new View.OnClickListener() { // from class: com.narvii.scene.ScenesBackgroundMusicFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                ScenesBackgroundMusicFragment.this.sceneDraft.bgMusicClip = null;
                ScenesBackgroundMusicFragment scenesBackgroundMusicFragment = ScenesBackgroundMusicFragment.this;
                scenesBackgroundMusicFragment.onBackPressed((NVActivity) scenesBackgroundMusicFragment.getActivity());
            }
        });
        alertDialog.setCancelable(false);
        alertDialog.show();
    }

    protected long getEditDuration() {
        return Math.min(this.previewLayout.getTotalDuration(), this.bgmClip.visibleDurationInMs);
    }

    private void showInvalidDialog() {
        AlertDialog alertDialog = new AlertDialog(getActivity());
        alertDialog.setMessage(R.string.invalid_input);
        alertDialog.addButton(android.R.string.ok, 0, new View.OnClickListener() { // from class: com.narvii.scene.ScenesBackgroundMusicFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ScenesBackgroundMusicFragment scenesBackgroundMusicFragment = ScenesBackgroundMusicFragment.this;
                scenesBackgroundMusicFragment.onBackPressed((NVActivity) scenesBackgroundMusicFragment.getActivity());
            }
        });
        alertDialog.setCancelable(false);
        alertDialog.show();
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onDestroyView() {
        FrameRetrieverManager frameRetrieverManager = this.frameRetrieverManager;
        if (frameRetrieverManager != null) {
            frameRetrieverManager.release(true);
        }
        super.onDestroyView();
    }

    @Override // com.narvii.scene.view.BalanceSeekBar.OnSeekListener
    public void onSeek(float f) {
        this.bgmClip.trackVolume = f > 1.0f ? 1.0f : f;
        this.previewLayout.setVolume(f, 1.0f - f);
    }

    @Override // com.narvii.scene.view.BalanceSeekBar.OnSeekListener
    public void onSeekFinish(float f) {
        this.bgmClip.trackVolume = f;
        this.previewLayout.setVolume(f, 1.0f - f);
    }

    @Override // com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onFrameLocatedDuringMove(int i, int i2) {
        if (this.previewLayout.isPlaying()) {
            this.previewLayout.pause();
            this.waitTrackDrag = true;
        }
    }

    @Override // com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onReplayTriggered(int i, int i2, int i3) {
        if (i3 == 3) {
            AVClipInfoPack aVClipInfoPack = this.bgmClip;
            aVClipInfoPack.trimStartInMs = i;
            aVClipInfoPack.trimEndInMs = i2;
            this.previewLayout.setBackgroundMusicClip(aVClipInfoPack);
            this.previewLayout.seekScene(this.sceneDraft.sceneInfos.get(0), this.waitTrackDrag);
            if (this.waitTrackDrag) {
                onPlayingStart();
                this.waitTrackDrag = false;
            }
        }
    }

    @Override // com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(NVActivity nVActivity) {
        ScenePreviewLayout scenePreviewLayout = this.previewLayout;
        if (scenePreviewLayout != null) {
            scenePreviewLayout.release();
        }
        EditSceneBGMLayout editSceneBGMLayout = this.editSceneBGMLayout;
        if (editSceneBGMLayout != null) {
            editSceneBGMLayout.release();
        }
        Intent intent = new Intent();
        intent.putExtra("bgMusicClip", JacksonUtils.writeAsString(this.resultBgmClip));
        setResult(this.resultCode, intent);
        finish();
        return true;
    }

    @Override // com.narvii.scene.view.AudioOptionPanel.OnOptionClickListener
    public void onOptionSubmit(View view) {
        this.resultBgmClip = this.bgmClip;
        this.resultCode = -1;
        onBackPressed((NVActivity) getActivity());
    }

    @Override // com.narvii.scene.view.AudioOptionPanel.OnOptionClickListener
    public void onOptionDelete(View view) {
        this.resultBgmClip = null;
        this.resultCode = -1;
        onBackPressed((NVActivity) getActivity());
    }

    @Override // com.narvii.scene.view.EditSceneBGMLayout.OnFadeListener
    public void onFade(boolean z, boolean z2) {
        AVClipInfoPack aVClipInfoPack = this.bgmClip;
        aVClipInfoPack.fadeIn = z;
        aVClipInfoPack.fadeOut = z2;
        this.previewLayout.fadeBackgroundMusic(z, z2);
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer.OnPlayingListener
    public void onPlayingProgress(long j, long j2) {
        int i;
        this.editSceneBGMLayout.updatePlaybackTime(this.bgmClip.trimStartInMs + j);
        StreamInfo streamInfo = this.streamInfo;
        if (streamInfo == null || (i = streamInfo.durationInMs) <= 0 || i >= j2 || j <= i) {
            return;
        }
        this.previewLayout.pause();
        this.previewLayout.seekPoint(0L);
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer.OnPlayingListener
    public void onPlayingError(Exception exc) {
        showInvalidDialog();
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer.OnPlayingListener
    public void onPlayingPause() {
        this.videoPlayButton.setVisibility(0);
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer.OnPlayingListener
    public void onPlayingStart() {
        this.videoPlayButton.setVisibility(8);
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer.OnPlayingListener
    public void onPlayingStop() {
        this.videoPlayButton.setVisibility(0);
    }
}
