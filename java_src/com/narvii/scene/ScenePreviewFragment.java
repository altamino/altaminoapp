package com.narvii.scene;

import android.content.res.Resources;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.NVActivity;
import com.narvii.app.NVFragment;
import com.narvii.mediaeditor.R;
import com.narvii.model.PollAttach;
import com.narvii.model.PollOption;
import com.narvii.model.QuizOption;
import com.narvii.model.QuizQuestion;
import com.narvii.model.story.ScenePollOrQuizHost;
import com.narvii.scene.interfaces.IScenePlayer;
import com.narvii.scene.model.SceneDraft;
import com.narvii.scene.model.SceneInfo;
import com.narvii.scene.poll.PollExtensionKt;
import com.narvii.scene.view.ScenePreviewLayout;
import com.narvii.util.JacksonUtils;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.widgets.IStoryPollQuizPlayListener;
import com.narvii.widgets.StoryProgressBar;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.UUID;

/* loaded from: classes3.dex */
public class ScenePreviewFragment extends NVFragment implements View.OnClickListener, FragmentOnBackListener, IScenePlayer.OnPlayingListener, ScenePlayListener, IStoryPollQuizPlayListener {
    private static float VOLUME_WHEN_PLAY_POLL_QUIZ = 0.5f;
    private ViewGroup pollQuizContainer;
    private ScenePreviewLayout previewLayout;
    private SceneDraft sceneDraft;
    private ScenePollQuizHelper scenePollQuizHelper;
    private StoryProgressBar storyProgressBar;
    private boolean isWaitingPlaying = false;
    private boolean isPlayingGame = false;
    HashMap<String, ScenePlayRecord> pollPlayRecordHashMap = new HashMap<>();
    HashMap<String, ScenePlayRecord> quizPlayRecordHashMap = new HashMap<>();

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "ScenePreview";
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer.OnPlayingListener
    public void onPlayingPause() {
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer.OnPlayingListener
    public void onPlayingProgress(long j, long j2) {
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer.OnPlayingListener
    public void onPlayingStart() {
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer.OnPlayingListener
    public void onPlayingStop() {
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer.OnPlayingListener
    public void onPrepared() {
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer.OnPlayingListener
    public void onSeekingError(String str, Exception exc) {
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return R.style.AminoTheme_Overlay;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        List<SceneInfo> list;
        List<PollOption> list2;
        List<QuizOption> listQuizOptions;
        super.onCreate(bundle);
        if (bundle == null) {
            this.sceneDraft = (SceneDraft) JacksonUtils.readAs(getStringParam("sceneDraft"), SceneDraft.class);
        } else {
            this.sceneDraft = (SceneDraft) JacksonUtils.readAs(bundle.getString("sceneDraft"), SceneDraft.class);
        }
        shuffleQuizAnswer();
        SceneDraft sceneDraft = this.sceneDraft;
        if (sceneDraft != null && (list = sceneDraft.sceneInfos) != null) {
            for (SceneInfo sceneInfo : list) {
                QuizQuestion quizQuestion = sceneInfo.question;
                if (quizQuestion != null && (listQuizOptions = quizQuestion.quizOptions()) != null) {
                    for (QuizOption quizOption : listQuizOptions) {
                        if (quizOption.optId == null) {
                            quizOption.optId = UUID.randomUUID().toString();
                        }
                    }
                    Collections.shuffle(listQuizOptions, new Random(System.currentTimeMillis()));
                    sceneInfo.question.setQuizOptions(listQuizOptions);
                }
                PollAttach pollAttach = sceneInfo.pollAttach;
                if (pollAttach != null && (list2 = pollAttach.polloptList) != null) {
                    for (PollOption pollOption : list2) {
                        if (pollOption.polloptId == null) {
                            pollOption.polloptId = UUID.randomUUID().toString();
                        }
                    }
                }
            }
            PollExtensionKt.initPollPlayRecord(this.sceneDraft.sceneInfos, this.pollPlayRecordHashMap, isGlobalInteractionScope());
        }
        setTitle("");
    }

    private void shuffleQuizAnswer() {
        List<SceneInfo> list;
        List<QuizOption> listQuizOptions;
        SceneDraft sceneDraft = this.sceneDraft;
        if (sceneDraft == null || (list = sceneDraft.sceneInfos) == null) {
            return;
        }
        Iterator<SceneInfo> it = list.iterator();
        while (it.hasNext()) {
            QuizQuestion quizQuestion = it.next().getQuizQuestion();
            if (quizQuestion != null && (listQuizOptions = quizQuestion.quizOptions()) != null) {
                Collections.shuffle(listQuizOptions, new Random(System.currentTimeMillis()));
                quizQuestion.setQuizOptions(listQuizOptions);
            }
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("sceneDraft", JacksonUtils.writeAsString(this.sceneDraft));
        bundle.putInt("currentPosition", 0);
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.preview_scene_fullscreen_layout, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.previewLayout = (ScenePreviewLayout) view.findViewById(R.id.preview_layout);
        this.storyProgressBar = (StoryProgressBar) view.findViewById(R.id.story_progress);
        this.storyProgressBar.setStoryQuizPollPlayListener(this);
        view.findViewById(R.id.to_last_scene).setOnClickListener(this);
        view.findViewById(R.id.to_next_scene).setOnClickListener(this);
        this.previewLayout.setOnPlayingListener(this);
        this.previewLayout.setSceneDraft(this.sceneDraft);
        this.previewLayout.setLoop(true);
        StoryProgressBar storyProgressBar = this.storyProgressBar;
        SceneDraft sceneDraft = this.sceneDraft;
        storyProgressBar.setStory(sceneDraft.draftId, sceneDraft.getSceneListIgnoreEmpty());
        this.storyProgressBar.setCurSceneIndex(this.previewLayout.getCurrentSceneIndexIgnoreEmpty());
        this.pollQuizContainer = (ViewGroup) view.findViewById(R.id.poll_quiz_container);
        this.scenePollQuizHelper = new ScenePollQuizHelper(this.pollQuizContainer);
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

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        this.previewLayout.release(true);
        super.onDestroy();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) throws Resources.NotFoundException {
        int id = view.getId();
        if (id == R.id.to_last_scene) {
            this.previewLayout.playLast();
        } else if (id == R.id.to_next_scene) {
            onSceneEnd(this.previewLayout.getCurrentSceneId(), this.previewLayout.getCurrentSceneIndex());
        }
    }

    private void showInvalidDialog() {
        AlertDialog alertDialog = new AlertDialog(getActivity());
        alertDialog.setMessage(R.string.invalid_input);
        alertDialog.addButton(android.R.string.ok, 0, new View.OnClickListener() { // from class: com.narvii.scene.ScenePreviewFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ScenePreviewFragment.this.setResult(0);
                ScenePreviewFragment.this.finish();
            }
        });
        alertDialog.setCancelable(false);
        alertDialog.show();
    }

    @Override // com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(NVActivity nVActivity) {
        this.previewLayout.pause();
        this.previewLayout.release(ScenePreviewLayout.TAG);
        setResult(-1);
        finish();
        return true;
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer.OnPlayingListener
    public void onSceneChanged(String str, int i) {
        if (this.isPlayingGame) {
            return;
        }
        this.storyProgressBar.setCurSceneIndex(this.previewLayout.getCurrentSceneIndexIgnoreEmpty());
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer.OnPlayingListener
    public void onPlayingError(Exception exc) {
        showInvalidDialog();
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer.OnPlayingListener
    public void onSceneEnd(String str, int i) throws Resources.NotFoundException {
        SceneInfo sceneInfo = this.sceneDraft.getSceneInfo(str);
        if (sceneInfo != null && sceneInfo.containsPollOrQuiz()) {
            this.previewLayout.seekScene(str, true);
            if (this.isPlayingGame) {
                return;
            }
            this.isPlayingGame = true;
            this.previewLayout.setVolumePercent(VOLUME_WHEN_PLAY_POLL_QUIZ);
            showPollQuiz(sceneInfo, this.quizPlayRecordHashMap.get(sceneInfo.id), this);
            return;
        }
        this.previewLayout.playNext();
    }

    @Override // com.narvii.app.NVFragment
    public void onActiveChanged(boolean z) {
        super.onActiveChanged(z);
        if (this.pollQuizContainer != null) {
            for (int i = 0; i < this.pollQuizContainer.getChildCount(); i++) {
                KeyEvent.Callback childAt = this.pollQuizContainer.getChildAt(i);
                if (childAt instanceof ScenePlayView) {
                    ((ScenePlayView) childAt).onActiveChanged(z);
                }
            }
        }
    }

    public void showPollQuiz(ScenePollOrQuizHost scenePollOrQuizHost, ScenePlayRecord scenePlayRecord, ScenePlayListener scenePlayListener) throws Resources.NotFoundException {
        this.scenePollQuizHelper.showPollQuiz(scenePollOrQuizHost, scenePlayRecord, scenePlayListener, true, null);
    }

    public void hidePollQuiz() {
        this.scenePollQuizHelper.hidePollQuiz();
    }

    @Override // com.narvii.scene.ScenePlayListener
    public void onScenePlayRecordGenerated(String str, ScenePlayRecord scenePlayRecord) {
        if (scenePlayRecord != null) {
            int i = scenePlayRecord.interactionType;
            if (i == 2) {
                this.pollPlayRecordHashMap.put(str, scenePlayRecord);
            } else if (i == 1 && !this.quizPlayRecordHashMap.containsKey(str)) {
                this.quizPlayRecordHashMap.put(str, scenePlayRecord);
            }
        }
        StoryProgressBar storyProgressBar = this.storyProgressBar;
        if (storyProgressBar != null) {
            storyProgressBar.updatePlayedPollQuiz();
        }
    }

    @Override // com.narvii.scene.ScenePlayListener
    public void onScenePlayEnd(String str) {
        hidePollQuiz();
        this.isPlayingGame = false;
        this.previewLayout.playNext();
        this.previewLayout.unMute();
    }

    @Override // com.narvii.widgets.IStoryPollQuizPlayListener
    public ScenePlayRecord getPollQuizPlayRecord(String str) {
        ScenePlayRecord scenePlayRecord = this.quizPlayRecordHashMap.get(str);
        return scenePlayRecord == null ? this.pollPlayRecordHashMap.get(str) : scenePlayRecord;
    }
}
