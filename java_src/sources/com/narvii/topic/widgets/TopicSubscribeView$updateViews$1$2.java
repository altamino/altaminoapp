package com.narvii.topic.widgets;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.narvii.model.story.StoryTopic;
import com.narvii.util.Utils;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class TopicSubscribeView$updateViews$1$2 extends AnimatorListenerAdapter {
    final /* synthetic */ StoryTopic $topic;
    final /* synthetic */ TopicSubscribeView this$0;

    TopicSubscribeView$updateViews$1$2(TopicSubscribeView topicSubscribeView, StoryTopic storyTopic) {
        this.this$0 = topicSubscribeView;
        this.$topic = storyTopic;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(@NotNull Animator animation) {
        t.j(animation, "animation");
        this.this$0.setFinishBookmark(false);
        this.this$0.updateViews(this.$topic);
        if (!this.$topic.isNotified()) {
            this.this$0.showTip();
            return;
        }
        this.this$0.setNotifying(true);
        StoryTopic storyTopic = this.$topic;
        storyTopic.subscriptionStatus = 0;
        this.this$0.updateViews(storyTopic);
        final TopicSubscribeView topicSubscribeView = this.this$0;
        final StoryTopic storyTopic2 = this.$topic;
        Utils.postDelayed(new Runnable() { // from class: com.narvii.topic.widgets.h
            @Override // java.lang.Runnable
            public final void run() {
                TopicSubscribeView$updateViews$1$2.onAnimationEnd$lambda$0(topicSubscribeView, storyTopic2);
            }
        }, 500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onAnimationEnd$lambda$0(TopicSubscribeView this$0, StoryTopic storyTopic) {
        t.j(this$0, "this$0");
        this$0.setNotifying(false);
        storyTopic.subscriptionStatus = 1;
        this$0.vibrate();
        this$0.updateViews(storyTopic);
    }
}
