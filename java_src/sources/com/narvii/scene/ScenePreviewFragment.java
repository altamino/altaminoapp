package com.narvii.scene;

import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.NVActivity;
import com.narvii.app.NVFragment;
import com.narvii.mediaeditor.R;
import com.narvii.model.PollAttach;
import com.narvii.model.PollOption;
import com.narvii.model.QuizOption;
import com.narvii.model.QuizQuestion;
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
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public class ScenePreviewFragment extends NVFragment implements View.OnClickListener, FragmentOnBackListener, IScenePlayer.OnPlayingListener, ScenePlayListener, IStoryPollQuizPlayListener {
    private static float VOLUME_WHEN_PLAY_POLL_QUIZ = 0.5f;
    private ViewGroup pollQuizContainer;
    private ScenePreviewLayout previewLayout;
    private SceneDraft sceneDraft;
    private StoryProgressBar storyProgressBar;
    private boolean isWaitingPlaying = false;
    private boolean isPlayingGame = false;
    HashMap<String, ScenePlayRecord> pollPlayRecordHashMap = new HashMap<>();
    HashMap<String, ScenePlayRecord> quizPlayRecordHashMap = new HashMap<>();

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return R.style.AminoTheme_Overlay;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "scene_preview";
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer.OnPlayingListener
    public void onPlayingPause() {
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer.OnPlayingListener
    public void onPlayingProgress(long j6, long j10) {
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

    @Override // com.narvii.scene.ScenePlayListener
    public void onScenePlayEnd(String str) {
        this.isPlayingGame = false;
        this.previewLayout.playNext();
        this.previewLayout.unMute();
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer.OnPlayingListener
    public void onSeekingError(@NotNull String str, @NotNull Exception exc) {
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

    @Override // com.narvii.widgets.IStoryPollQuizPlayListener
    public ScenePlayRecord getPollQuizPlayRecord(String str) {
        ScenePlayRecord scenePlayRecord = this.quizPlayRecordHashMap.get(str);
        return scenePlayRecord == null ? this.pollPlayRecordHashMap.get(str) : scenePlayRecord;
    }

    @Override // com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(NVActivity nVActivity) {
        this.previewLayout.pause();
        this.previewLayout.release(ScenePreviewLayout.TAG);
        setResult(-1);
        finish();
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.preview_scene_fullscreen_layout, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        this.previewLayout.release(Boolean.TRUE);
        super.onDestroy();
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onPause() {
        this.isWaitingPlaying = this.previewLayout.isPlaying();
        this.previewLayout.toPause();
        super.onPause();
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer.OnPlayingListener
    public void onSceneChanged(String str, int i10) {
        if (this.isPlayingGame) {
            return;
        }
        this.storyProgressBar.setCurSceneIndex(this.previewLayout.getCurrentSceneIndexIgnoreEmpty());
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer.OnPlayingListener
    public void onSceneEnd(@NotNull String str, int i10) {
        SceneInfo sceneInfo = this.sceneDraft.getSceneInfo(str);
        if (sceneInfo == null || !sceneInfo.containsPollOrQuiz()) {
            this.previewLayout.playNext();
            return;
        }
        this.previewLayout.seekScene(str, true);
        if (this.isPlayingGame) {
            return;
        }
        this.isPlayingGame = true;
        this.previewLayout.setVolumePercent(VOLUME_WHEN_PLAY_POLL_QUIZ);
    }

    @Override // com.narvii.scene.ScenePlayListener
    public void onScenePlayRecordGenerated(String str, ScenePlayRecord scenePlayRecord) {
        if (scenePlayRecord != null) {
            int i10 = scenePlayRecord.interactionType;
            if (i10 == 2) {
                this.pollPlayRecordHashMap.put(str, scenePlayRecord);
            } else if (i10 == 1 && !this.quizPlayRecordHashMap.containsKey(str)) {
                this.quizPlayRecordHashMap.put(str, scenePlayRecord);
            }
        }
        StoryProgressBar storyProgressBar = this.storyProgressBar;
        if (storyProgressBar != null) {
            storyProgressBar.updatePlayedPollQuiz();
        }
    }

    @Override // com.narvii.app.NVFragment
    public void onActiveChanged(boolean z6) {
        super.onActiveChanged(z6);
        if (this.pollQuizContainer != null) {
            for (int i10 = 0; i10 < this.pollQuizContainer.getChildCount(); i10++) {
                KeyEvent.Callback childAt = this.pollQuizContainer.getChildAt(i10);
                if (childAt instanceof ScenePlayView) {
                    ((ScenePlayView) childAt).onActiveChanged(z6);
                }
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.to_last_scene) {
            this.previewLayout.playLast();
        } else if (id == R.id.to_next_scene) {
            onSceneEnd(this.previewLayout.getCurrentSceneId(), this.previewLayout.getCurrentSceneIndex());
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
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

    @Override // com.narvii.scene.interfaces.IScenePlayer.OnPlayingListener
    public void onPlayingError(@NotNull Exception exc) {
        showInvalidDialog();
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.previewLayout.toResume(this.isWaitingPlaying);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("sceneDraft", JacksonUtils.writeAsString(this.sceneDraft));
        bundle.putInt("currentPosition", 0);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NonNull View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.previewLayout = (ScenePreviewLayout) view.findViewById(R.id.preview_layout);
        StoryProgressBar storyProgressBar = (StoryProgressBar) view.findViewById(R.id.story_progress);
        this.storyProgressBar = storyProgressBar;
        storyProgressBar.setStoryQuizPollPlayListener(this);
        view.findViewById(R.id.to_last_scene).setOnClickListener(this);
        view.findViewById(R.id.to_next_scene).setOnClickListener(this);
        this.previewLayout.setOnPlayingListener(this);
        this.previewLayout.setSceneDraft(this.sceneDraft);
        this.previewLayout.setLoop(true);
        StoryProgressBar storyProgressBar2 = this.storyProgressBar;
        SceneDraft sceneDraft = this.sceneDraft;
        storyProgressBar2.setStory(sceneDraft.draftId, sceneDraft.getSceneListIgnoreEmpty());
        this.storyProgressBar.setCurSceneIndex(this.previewLayout.getCurrentSceneIndexIgnoreEmpty());
        this.pollQuizContainer = (ViewGroup) view.findViewById(R.id.poll_quiz_container);
    }
}
