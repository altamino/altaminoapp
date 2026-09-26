package com.narvii.topic.widgets;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.IdRes;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.model.story.StoryTopic;
import com.narvii.topic.TopicRequestHelper;
import com.narvii.util.Callback;
import com.narvii.util.RequestResult;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.http.ApiService;
import com.narvii.widget.PressedFrameLayout;
import com.narvii.widget.SpinningView;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.m;
import w7.o;
import w7.q;

/* JADX INFO: loaded from: classes6.dex */
public final class TopicBookmarkView extends PressedFrameLayout implements View.OnClickListener {

    @NotNull
    private final m apiService$delegate;
    private boolean isSending;

    @NotNull
    private final m loading$delegate;

    @NotNull
    private final m normalView$delegate;

    @NotNull
    private final m selectedView$delegate;

    @Nullable
    private StoryTopic topic;

    @Nullable
    private TopicBookmarkListener topicBookmarkListener;

    @Nullable
    private TopicBookmarkResultListener topicBookmarkResultListener;

    public interface TopicBookmarkListener {
        void onBookmark(boolean z6);
    }

    public interface TopicBookmarkResultListener {
        void onBookmarkResult(@NotNull StoryTopic storyTopic, @NotNull RequestResult requestResult);
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: com.narvii.topic.widgets.TopicBookmarkView$bind$1, reason: invalid class name */
    static final class AnonymousClass1<T> extends v implements e8.a<T> {
        final /* synthetic */ int $res;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(int i10) {
            super(0);
            this.$res = i10;
        }

        /* JADX WARN: Incorrect return type in method signature: ()TT; */
        @Override // e8.a
        public final View invoke() {
            return TopicBookmarkView.this.findViewById(this.$res);
        }
    }

    private final void startSending() {
        this.isSending = true;
        getLayoutParams().width = getMeasuredWidth();
        setLayoutParams(getLayoutParams());
        updateViews(this.topic);
    }

    @Nullable
    public final StoryTopic getTopic() {
        return this.topic;
    }

    @Nullable
    public final TopicBookmarkListener getTopicBookmarkListener() {
        return this.topicBookmarkListener;
    }

    @Nullable
    public final TopicBookmarkResultListener getTopicBookmarkResultListener() {
        return this.topicBookmarkResultListener;
    }

    public final boolean isSending() {
        return this.isSending;
    }

    public final void setSending(boolean z6) {
        this.isSending = z6;
    }

    public final void setTopicBookmarkListener(@Nullable TopicBookmarkListener topicBookmarkListener) {
        this.topicBookmarkListener = topicBookmarkListener;
    }

    public final void setTopicBookmarkResultListener(@Nullable TopicBookmarkResultListener topicBookmarkResultListener) {
        this.topicBookmarkResultListener = topicBookmarkResultListener;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TopicBookmarkView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        t.j(context, "context");
        this.normalView$delegate = bind(R.id.bookmark_normal);
        this.selectedView$delegate = bind(R.id.bookmark_normal_selected);
        this.loading$delegate = bind(R.id.bookmark_loading);
        this.apiService$delegate = o.a(new TopicBookmarkView$apiService$2(context));
        LayoutInflater.from(context).inflate(R.layout.topic_bookmark_button, (ViewGroup) this, true);
        setOnClickListener(this);
    }

    private final void sendBookMarkRequest(final StoryTopic storyTopic, boolean z6) {
        if (storyTopic == null) {
            return;
        }
        TopicBookmarkListener topicBookmarkListener = this.topicBookmarkListener;
        if (topicBookmarkListener != null) {
            topicBookmarkListener.onBookmark(z6);
        }
        startSending();
        NVContext nVContext = Utils.getNVContext(getContext());
        t.i(nVContext, "getNVContext(...)");
        new TopicRequestHelper(nVContext).sendBookmarkRequest(storyTopic.topicId, (16 & 2) != 0 ? null : storyTopic, (16 & 4) != 0 ? true : z6, (16 & 8) != 0 ? null : new Callback() { // from class: com.narvii.topic.widgets.c
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                TopicBookmarkView.sendBookMarkRequest$lambda$3(this.f2794a, storyTopic, (RequestResult) obj);
            }
        }, (16 & 16) != 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateViews(StoryTopic storyTopic) {
        if (storyTopic == null) {
            return;
        }
        if (this.isSending) {
            getNormalView().setVisibility(8);
            getSelectedView().setVisibility(8);
            getLoading().setVisibility(0);
        } else if (storyTopic.isBookmarked) {
            getNormalView().setVisibility(8);
            getSelectedView().setVisibility(0);
            getLoading().setVisibility(8);
        } else {
            getNormalView().setVisibility(0);
            getSelectedView().setVisibility(8);
            getLoading().setVisibility(8);
        }
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(Utils.dpToPx(getContext(), 6.0f));
        gradientDrawable.setColor((int) (storyTopic.isBookmarked ? 1291845631L : 4279225855L));
        setBackground(gradientDrawable);
    }

    @NotNull
    public final <T extends View> m<T> bind(@IdRes int i10) {
        return o.b(q.NONE, new AnonymousClass1(i10));
    }

    @NotNull
    public final ApiService getApiService() {
        Object value = this.apiService$delegate.getValue();
        t.i(value, "getValue(...)");
        return (ApiService) value;
    }

    @NotNull
    public final SpinningView getLoading() {
        return (SpinningView) this.loading$delegate.getValue();
    }

    @NotNull
    public final View getNormalView() {
        return (View) this.normalView$delegate.getValue();
    }

    @NotNull
    public final View getSelectedView() {
        return (View) this.selectedView$delegate.getValue();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@Nullable View view) {
        StoryTopic storyTopic = this.topic;
        if (storyTopic != null) {
            final boolean z6 = !storyTopic.isBookmarked;
            if (z6) {
                sendBookMarkRequest(storyTopic, z6);
                return;
            }
            ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
            actionSheetDialog.addItem(R.string.unbookmark, 1);
            actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.topic.widgets.a
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i10) {
                    TopicBookmarkView.onClick$lambda$1$lambda$0(this.f2791a, z6, dialogInterface, i10);
                }
            });
            actionSheetDialog.show();
        }
    }

    public final void setTopic(@Nullable StoryTopic storyTopic) {
        this.topic = storyTopic;
        updateViews(storyTopic);
        invalidate();
    }

    private final void endSending() {
        float fDpToPx;
        int measuredWidth = getMeasuredWidth();
        this.isSending = false;
        updateViews(this.topic);
        measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(getHeight(), 1073741824));
        int measuredWidth2 = getMeasuredWidth();
        StoryTopic storyTopic = this.topic;
        if (storyTopic != null && storyTopic.isBookmarked) {
            fDpToPx = measuredWidth - Utils.dpToPx(getContext(), 40.0f);
        } else {
            fDpToPx = measuredWidth + Utils.dpToPx(getContext(), 40.0f);
        }
        int i10 = (int) fDpToPx;
        if (measuredWidth2 <= i10) {
            measuredWidth2 = i10;
        }
        this.isSending = true;
        updateViews(this.topic);
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(measuredWidth, measuredWidth2);
        valueAnimatorOfInt.setDuration(200L);
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.topic.widgets.b
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                TopicBookmarkView.endSending$lambda$2(this.f2793a, valueAnimator);
            }
        });
        valueAnimatorOfInt.addListener(new AnimatorListenerAdapter() { // from class: com.narvii.topic.widgets.TopicBookmarkView.endSending.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(@NotNull Animator animation) {
                t.j(animation, "animation");
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(@NotNull Animator animation) {
                t.j(animation, "animation");
                TopicBookmarkView.this.setSending(false);
                TopicBookmarkView topicBookmarkView = TopicBookmarkView.this;
                topicBookmarkView.updateViews(topicBookmarkView.getTopic());
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(@NotNull Animator animation) {
                t.j(animation, "animation");
                TopicBookmarkView.this.setSending(false);
                TopicBookmarkView topicBookmarkView = TopicBookmarkView.this;
                topicBookmarkView.updateViews(topicBookmarkView.getTopic());
            }
        });
        valueAnimatorOfInt.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void endSending$lambda$2(TopicBookmarkView this$0, ValueAnimator animation) {
        t.j(this$0, "this$0");
        t.j(animation, "animation");
        ViewGroup.LayoutParams layoutParams = this$0.getLayoutParams();
        Object animatedValue = animation.getAnimatedValue();
        t.h(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        layoutParams.width = ((Integer) animatedValue).intValue();
        this$0.setLayoutParams(this$0.getLayoutParams());
        StoryTopic storyTopic = this$0.topic;
        if (storyTopic != null && storyTopic.isBookmarked) {
            ViewGroup.LayoutParams layoutParams2 = this$0.getSelectedView().getLayoutParams();
            Object animatedValue2 = animation.getAnimatedValue();
            t.h(animatedValue2, "null cannot be cast to non-null type kotlin.Int");
            layoutParams2.width = ((Integer) animatedValue2).intValue();
            this$0.getSelectedView().setLayoutParams(layoutParams2);
        }
        this$0.requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onClick$lambda$1$lambda$0(TopicBookmarkView this$0, boolean z6, DialogInterface dialogInterface, int i10) {
        t.j(this$0, "this$0");
        if (i10 == 0) {
            this$0.sendBookMarkRequest(this$0.topic, z6);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void sendBookMarkRequest$lambda$3(TopicBookmarkView this$0, StoryTopic storyTopic, RequestResult requestResult) {
        t.j(this$0, "this$0");
        TopicBookmarkResultListener topicBookmarkResultListener = this$0.topicBookmarkResultListener;
        if (topicBookmarkResultListener != null) {
            t.g(requestResult);
            topicBookmarkResultListener.onBookmarkResult(storyTopic, requestResult);
        }
        this$0.endSending();
        this$0.updateViews(storyTopic);
    }
}
