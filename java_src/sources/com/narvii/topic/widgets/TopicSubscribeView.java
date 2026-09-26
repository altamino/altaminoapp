package com.narvii.topic.widgets;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Color;
import android.os.Vibrator;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.logging.LogUtils;
import com.narvii.model.story.StoryTopic;
import com.narvii.topic.TopicSubcribeHelper;
import com.narvii.util.Callback;
import com.narvii.util.OnPreventRepeatedClickListener;
import com.narvii.util.RequestResult;
import com.narvii.util.ToolTipHelper;
import com.narvii.util.Tooltip;
import com.narvii.util.Utils;
import com.narvii.widget.GradientView;
import com.narvii.widget.SpinningView;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.m;
import w7.o;

/* JADX INFO: loaded from: classes6.dex */
public final class TopicSubscribeView extends LinearLayout {
    private boolean isBookmark;
    private boolean isCancelBookmark;
    private boolean isFinishBookmark;
    private boolean isNotifying;

    @NotNull
    private final GradientView notificationGradient;

    @NotNull
    private final FrameLayout notificationLayout;

    @NotNull
    private final SpinningView notificationProgress;

    @NotNull
    private final ImageView notificationRing;

    @NotNull
    private final m toolTipHelper$delegate;

    @Nullable
    private StoryTopic topic;

    @NotNull
    private final TopicBookmarkView topicBookmark;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TopicSubscribeView(@NotNull Context context) {
        this(context, null, 0, 6, null);
        t.j(context, "context");
    }

    @NotNull
    public final GradientView getNotificationGradient() {
        return this.notificationGradient;
    }

    @NotNull
    public final FrameLayout getNotificationLayout() {
        return this.notificationLayout;
    }

    @NotNull
    public final SpinningView getNotificationProgress() {
        return this.notificationProgress;
    }

    @NotNull
    public final ImageView getNotificationRing() {
        return this.notificationRing;
    }

    @Nullable
    public final StoryTopic getTopic() {
        return this.topic;
    }

    @NotNull
    public final TopicBookmarkView getTopicBookmark() {
        return this.topicBookmark;
    }

    public final boolean isBookmark() {
        return this.isBookmark;
    }

    public final boolean isCancelBookmark() {
        return this.isCancelBookmark;
    }

    public final boolean isFinishBookmark() {
        return this.isFinishBookmark;
    }

    public final boolean isNotifying() {
        return this.isNotifying;
    }

    public final void setBookmark(boolean z6) {
        this.isBookmark = z6;
    }

    public final void setCancelBookmark(boolean z6) {
        this.isCancelBookmark = z6;
    }

    public final void setFinishBookmark(boolean z6) {
        this.isFinishBookmark = z6;
    }

    public final void setNotifying(boolean z6) {
        this.isNotifying = z6;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TopicSubscribeView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        t.j(context, "context");
    }

    private final ToolTipHelper getToolTipHelper() {
        return (ToolTipHelper) this.toolTipHelper$delegate.getValue();
    }

    private final void sendSubscribeRequest(final StoryTopic storyTopic, int i10) {
        if (storyTopic == null) {
            return;
        }
        this.isNotifying = true;
        updateViews(storyTopic);
        NVContext nVContext = Utils.getNVContext(getContext());
        t.i(nVContext, "getNVContext(...)");
        new TopicSubcribeHelper(nVContext).sendTopicSubscribeRequest(storyTopic.topicId, (16 & 2) != 0 ? null : storyTopic, (16 & 4) != 0 ? 1 : i10, (16 & 8) != 0 ? null : new Callback() { // from class: com.narvii.topic.widgets.d
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                TopicSubscribeView.sendSubscribeRequest$lambda$2(this.f2796a, storyTopic, (RequestResult) obj);
            }
        }, (16 & 16) != 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateViews(final StoryTopic storyTopic) {
        if (storyTopic == null) {
            return;
        }
        this.isBookmark = storyTopic.isBookmarked;
        this.topicBookmark.setTopic(storyTopic);
        if (storyTopic.isNotified()) {
            int color = Utils.getColor(-1, 0.2f);
            this.notificationGradient.setColor(color, color);
            this.notificationRing.setImageResource(R.drawable.follow_notification_on);
        } else {
            this.notificationGradient.setColor(Color.argb(255, 255, 194, 0), Color.argb(255, 255, 194, 0));
            this.notificationGradient.setGradientLine(0.25f, 0.0f, 0.75f, 1.0f);
            this.notificationRing.setImageResource(R.drawable.follow_notification_off);
        }
        if (this.isNotifying) {
            this.notificationLayout.setVisibility(0);
            this.notificationProgress.setVisibility(0);
            this.notificationGradient.setVisibility(0);
            this.notificationRing.setVisibility(8);
            return;
        }
        if (this.isFinishBookmark) {
            this.notificationLayout.setVisibility(0);
            ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, (int) Utils.dpToPx(getContext(), 34.0f));
            final ViewGroup.LayoutParams layoutParams = this.notificationLayout.getLayoutParams();
            valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.topic.widgets.e
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    TopicSubscribeView.updateViews$lambda$4$lambda$3(layoutParams, this, valueAnimator);
                }
            });
            valueAnimatorOfInt.addListener(new TopicSubscribeView$updateViews$1$2(this, storyTopic));
            valueAnimatorOfInt.setDuration(200L);
            valueAnimatorOfInt.start();
            return;
        }
        if (this.isCancelBookmark) {
            this.notificationLayout.setVisibility(0);
            ValueAnimator valueAnimatorOfInt2 = ValueAnimator.ofInt((int) Utils.dpToPx(getContext(), 34.0f), 0);
            final ViewGroup.LayoutParams layoutParams2 = this.notificationLayout.getLayoutParams();
            valueAnimatorOfInt2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.topic.widgets.f
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    TopicSubscribeView.updateViews$lambda$6$lambda$5(layoutParams2, this, valueAnimator);
                }
            });
            valueAnimatorOfInt2.addListener(new AnimatorListenerAdapter() { // from class: com.narvii.topic.widgets.TopicSubscribeView$updateViews$2$2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(@NotNull Animator animation) {
                    t.j(animation, "animation");
                    this.this$0.setCancelBookmark(false);
                    this.this$0.updateViews(storyTopic);
                }
            });
            valueAnimatorOfInt2.setDuration(200L);
            valueAnimatorOfInt2.start();
            return;
        }
        if (storyTopic.isBookmarked) {
            this.notificationLayout.setVisibility(0);
            this.notificationProgress.setVisibility(8);
            this.notificationRing.setVisibility(0);
            this.notificationGradient.setVisibility(0);
            return;
        }
        this.notificationLayout.setVisibility(8);
        this.notificationProgress.setVisibility(8);
        this.notificationGradient.setVisibility(8);
        this.notificationRing.setVisibility(8);
    }

    public final void setTopic(@Nullable StoryTopic storyTopic) {
        this.topic = storyTopic;
        updateViews(storyTopic);
        invalidate();
    }

    public final void setTopicBookmarkListener(@NotNull TopicBookmarkView.TopicBookmarkListener listener) {
        t.j(listener, "listener");
        this.topicBookmark.setTopicBookmarkListener(listener);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TopicSubscribeView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        t.j(context, "context");
        this.toolTipHelper$delegate = o.a(TopicSubscribeView$toolTipHelper$2.INSTANCE);
        setOrientation(0);
        LayoutInflater.from(context).inflate(R.layout.topic_subscribe_button, (ViewGroup) this, true);
        View viewFindViewById = findViewById(R.id.bookmark);
        t.i(viewFindViewById, "findViewById(...)");
        TopicBookmarkView topicBookmarkView = (TopicBookmarkView) viewFindViewById;
        this.topicBookmark = topicBookmarkView;
        View viewFindViewById2 = findViewById(R.id.topic_bookmark_notification);
        t.i(viewFindViewById2, "findViewById(...)");
        FrameLayout frameLayout = (FrameLayout) viewFindViewById2;
        this.notificationLayout = frameLayout;
        View viewFindViewById3 = findViewById(R.id.notification_gradient);
        t.i(viewFindViewById3, "findViewById(...)");
        GradientView gradientView = (GradientView) viewFindViewById3;
        this.notificationGradient = gradientView;
        View viewFindViewById4 = findViewById(R.id.notification_ring);
        t.i(viewFindViewById4, "findViewById(...)");
        this.notificationRing = (ImageView) viewFindViewById4;
        View viewFindViewById5 = findViewById(R.id.notification_progress);
        t.i(viewFindViewById5, "findViewById(...)");
        this.notificationProgress = (SpinningView) viewFindViewById5;
        gradientView.setRadius(Utils.dpToPx(context, 5.0f));
        topicBookmarkView.setTopicBookmarkResultListener(new TopicBookmarkView.TopicBookmarkResultListener() { // from class: com.narvii.topic.widgets.TopicSubscribeView.1
            @Override // com.narvii.topic.widgets.TopicBookmarkView.TopicBookmarkResultListener
            public void onBookmarkResult(@NotNull StoryTopic topic, @NotNull RequestResult result) {
                boolean z6;
                t.j(topic, "topic");
                t.j(result, "result");
                TopicSubscribeView topicSubscribeView = TopicSubscribeView.this;
                boolean zIsBookmark = topicSubscribeView.isBookmark();
                boolean z10 = topic.isBookmarked;
                boolean z11 = false;
                if (zIsBookmark != z10 && z10) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                topicSubscribeView.setFinishBookmark(z6);
                TopicSubscribeView topicSubscribeView2 = TopicSubscribeView.this;
                boolean zIsBookmark2 = topicSubscribeView2.isBookmark();
                boolean z12 = topic.isBookmarked;
                if (zIsBookmark2 != z12 && !z12) {
                    z11 = true;
                }
                topicSubscribeView2.setCancelBookmark(z11);
                TopicSubscribeView.this.updateViews(topic);
            }
        });
        frameLayout.setOnClickListener(new OnPreventRepeatedClickListener(new View.OnClickListener() { // from class: com.narvii.topic.widgets.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TopicSubscribeView._init_$lambda$1(this.f2802a, view);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _init_$lambda$1(TopicSubscribeView this$0, View view) {
        StoryTopic storyTopic;
        int i10;
        ActSemantic actSemantic;
        t.j(this$0, "this$0");
        if (!this$0.isNotifying && (storyTopic = this$0.topic) != null) {
            boolean z6 = false;
            if (storyTopic.subscriptionStatus == 0) {
                i10 = 1;
            } else {
                i10 = 0;
            }
            if (i10 == 1) {
                z6 = true;
            }
            NVContext pageContext = LogUtils.getPageContext(this$0);
            if (z6) {
                actSemantic = ActSemantic.turnOnAlert;
            } else {
                actSemantic = ActSemantic.turnOffAlert;
            }
            LogEvent.clickBuilder(pageContext, actSemantic).area("AlertIcon").send();
            this$0.sendSubscribeRequest(this$0.topic, i10);
            this$0.hideToolTip();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void sendSubscribeRequest$lambda$2(TopicSubscribeView this$0, StoryTopic storyTopic, RequestResult requestResult) {
        t.j(this$0, "this$0");
        this$0.isNotifying = false;
        this$0.updateViews(storyTopic);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showTip() {
        getToolTipHelper().showToolTip(Tooltip.builder().anchorView(this.notificationLayout).textId(R.string.turn_on_topic_alert_hint).textSize(Utils.dpToPx(getContext(), 12.0f)).indicatorUp(false).background(Color.parseColor("#FFFFC700")).showOnlyOnce(false).isVibrate(false).autoHide().maxWidth(Utils.dpToPxInt(getContext(), 190.0f)).build());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void updateViews$lambda$4$lambda$3(ViewGroup.LayoutParams layoutParams, TopicSubscribeView this$0, ValueAnimator it) {
        t.j(this$0, "this$0");
        t.j(it, "it");
        Object animatedValue = it.getAnimatedValue();
        t.h(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        layoutParams.width = ((Integer) animatedValue).intValue();
        this$0.notificationLayout.setLayoutParams(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void updateViews$lambda$6$lambda$5(ViewGroup.LayoutParams layoutParams, TopicSubscribeView this$0, ValueAnimator it) {
        t.j(this$0, "this$0");
        t.j(it, "it");
        Object animatedValue = it.getAnimatedValue();
        t.h(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        layoutParams.width = ((Integer) animatedValue).intValue();
        this$0.notificationLayout.setLayoutParams(layoutParams);
    }

    public final void hideToolTip() {
        if (getToolTipHelper().isTooltipShowing()) {
            getToolTipHelper().hideToolTip();
        }
    }

    public final void vibrate() {
        try {
            Object systemService = getContext().getSystemService("vibrator");
            t.h(systemService, "null cannot be cast to non-null type android.os.Vibrator");
            ((Vibrator) systemService).vibrate(300L);
        } catch (Exception unused) {
        }
    }

    public /* synthetic */ TopicSubscribeView(Context context, AttributeSet attributeSet, int i10, int i11, k kVar) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }
}
