package com.narvii.scene;

import android.content.Context;
import android.content.res.Resources;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import com.narvii.lib.R;
import com.narvii.model.Blog;
import com.narvii.model.story.ScenePollOrQuizHost;
import com.narvii.scene.poll.ScenePollPlayView;
import com.narvii.scene.quiz.SceneQuizView;

/* loaded from: classes3.dex */
public class ScenePollQuizHelper {
    Context context;
    ViewGroup pollQuizContainer;

    public ScenePollQuizHelper(ViewGroup viewGroup) {
        this.pollQuizContainer = viewGroup;
        this.context = viewGroup.getContext();
    }

    public void showPollQuiz(final ScenePollOrQuizHost scenePollOrQuizHost, final ScenePlayRecord scenePlayRecord, ScenePlayListener scenePlayListener, boolean z, Blog blog) throws Resources.NotFoundException {
        this.pollQuizContainer.setVisibility(0);
        this.pollQuizContainer.removeAllViews();
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(this.context, R.anim.fade_in);
        animationLoadAnimation.setDuration(200L);
        if (scenePollOrQuizHost.getQuizQuestion() != null) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            final SceneQuizView sceneQuizView = new SceneQuizView(this.context);
            if (scenePlayRecord != null) {
                sceneQuizView.setQuizAnswerParentForceCenter();
            }
            sceneQuizView.setStory(blog, z, scenePlayListener);
            this.pollQuizContainer.addView(sceneQuizView, layoutParams);
            animationLoadAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.narvii.scene.ScenePollQuizHelper.1
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) throws Resources.NotFoundException {
                    sceneQuizView.playQuizQuestion(scenePollOrQuizHost.id(), scenePollOrQuizHost.getQuizQuestion(), scenePlayRecord);
                }
            });
        } else if (scenePollOrQuizHost.getPoll() != null) {
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
            ScenePollPlayView scenePollPlayView = new ScenePollPlayView(this.context);
            scenePollPlayView.setStory(blog, z, scenePlayListener);
            this.pollQuizContainer.addView(scenePollPlayView, layoutParams2);
            scenePollPlayView.playPoll(scenePollOrQuizHost.id(), scenePollOrQuizHost.getPoll(), scenePlayRecord);
        }
        this.pollQuizContainer.startAnimation(animationLoadAnimation);
    }

    public void hidePollQuiz() {
        this.pollQuizContainer.setVisibility(8);
        this.pollQuizContainer.startAnimation(AnimationUtils.loadAnimation(this.context, R.anim.fade_out_fast));
        this.pollQuizContainer.removeAllViews();
    }
}
