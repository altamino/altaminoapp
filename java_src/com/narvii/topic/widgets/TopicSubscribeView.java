package com.narvii.topic.widgets;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.os.Vibrator;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.logging.LogUtils;
import com.narvii.model.story.StoryTopic;
import com.narvii.topic.TopicSubcribeHelper;
import com.narvii.topic.widgets.TopicBookmarkView;
import com.narvii.util.Callback;
import com.narvii.util.OnPreventRepeatedClickListener;
import com.narvii.util.RequestResult;
import com.narvii.util.ToolTipHelper;
import com.narvii.util.Tooltip;
import com.narvii.util.Utils;
import com.narvii.widget.GradientView;
import com.narvii.widget.SpinningView;
import java.util.HashMap;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: TopicSubscribeView.kt */
/* loaded from: classes3.dex */
public final class TopicSubscribeView extends LinearLayout {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(TopicSubscribeView.class), "toolTipHelper", "getToolTipHelper()Lcom/narvii/util/ToolTipHelper;"))};
    private HashMap _$_findViewCache;
    private boolean isBookmark;
    private boolean isCancelBookmark;
    private boolean isFinishBookmark;
    private boolean isNotifying;
    private final GradientView notificationGradient;
    private final FrameLayout notificationLayout;
    private final SpinningView notificationProgress;
    private final ImageView notificationRing;
    private final Lazy toolTipHelper$delegate;
    private StoryTopic topic;
    private final TopicBookmarkView topicBookmark;

    public TopicSubscribeView(Context context) {
        this(context, null, 0, 6, null);
    }

    public TopicSubscribeView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    private final ToolTipHelper getToolTipHelper() {
        Lazy lazy = this.toolTipHelper$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (ToolTipHelper) lazy.getValue();
    }

    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TopicSubscribeView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.toolTipHelper$delegate = LazyKt__LazyJVMKt.lazy(new Function0<ToolTipHelper>() { // from class: com.narvii.topic.widgets.TopicSubscribeView$toolTipHelper$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ToolTipHelper invoke() {
                return new ToolTipHelper();
            }
        });
        setOrientation(0);
        LayoutInflater.from(context).inflate(R.layout.topic_subscribe_button, (ViewGroup) this, true);
        View viewFindViewById = findViewById(R.id.bookmark);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "findViewById(R.id.bookmark)");
        this.topicBookmark = (TopicBookmarkView) viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.topic_bookmark_notification);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById2, "findViewById(R.id.topic_bookmark_notification)");
        this.notificationLayout = (FrameLayout) viewFindViewById2;
        View viewFindViewById3 = findViewById(R.id.notification_gradient);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById3, "findViewById(R.id.notification_gradient)");
        this.notificationGradient = (GradientView) viewFindViewById3;
        View viewFindViewById4 = findViewById(R.id.notification_ring);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById4, "findViewById(R.id.notification_ring)");
        this.notificationRing = (ImageView) viewFindViewById4;
        View viewFindViewById5 = findViewById(R.id.notification_progress);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById5, "findViewById(R.id.notification_progress)");
        this.notificationProgress = (SpinningView) viewFindViewById5;
        this.notificationGradient.setRadius(Utils.dpToPx(context, 5.0f));
        this.topicBookmark.setTopicBookmarkResultListener(new TopicBookmarkView.TopicBookmarkResultListener() { // from class: com.narvii.topic.widgets.TopicSubscribeView.1
            @Override // com.narvii.topic.widgets.TopicBookmarkView.TopicBookmarkResultListener
            public void onBookmarkResult(StoryTopic topic, RequestResult result) {
                Intrinsics.checkParameterIsNotNull(topic, "topic");
                Intrinsics.checkParameterIsNotNull(result, "result");
                TopicSubscribeView topicSubscribeView = TopicSubscribeView.this;
                boolean zIsBookmark = topicSubscribeView.isBookmark();
                boolean z = topic.isBookmarked;
                topicSubscribeView.setFinishBookmark(zIsBookmark != z && z);
                TopicSubscribeView topicSubscribeView2 = TopicSubscribeView.this;
                boolean zIsBookmark2 = topicSubscribeView2.isBookmark();
                boolean z2 = topic.isBookmarked;
                topicSubscribeView2.setCancelBookmark((zIsBookmark2 == z2 || z2) ? false : true);
                TopicSubscribeView.this.updateViews(topic);
            }
        });
        this.notificationLayout.setOnClickListener(new OnPreventRepeatedClickListener(new View.OnClickListener() { // from class: com.narvii.topic.widgets.TopicSubscribeView.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws Resources.NotFoundException {
                StoryTopic topic;
                if (TopicSubscribeView.this.isNotifying() || (topic = TopicSubscribeView.this.getTopic()) == null) {
                    return;
                }
                int i2 = topic.subscriptionStatus == 0 ? 1 : 0;
                LogEvent.clickBuilder(LogUtils.getPageContext(TopicSubscribeView.this), i2 == 1 ? ActSemantic.turnOnAlert : ActSemantic.turnOffAlert).area("AlertIcon").send();
                TopicSubscribeView topicSubscribeView = TopicSubscribeView.this;
                topicSubscribeView.sendSubscribeRequest(topicSubscribeView.getTopic(), i2);
                TopicSubscribeView.this.hideToolTip();
            }
        }));
    }

    public /* synthetic */ TopicSubscribeView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    public final TopicBookmarkView getTopicBookmark() {
        return this.topicBookmark;
    }

    public final FrameLayout getNotificationLayout() {
        return this.notificationLayout;
    }

    public final GradientView getNotificationGradient() {
        return this.notificationGradient;
    }

    public final ImageView getNotificationRing() {
        return this.notificationRing;
    }

    public final SpinningView getNotificationProgress() {
        return this.notificationProgress;
    }

    public final boolean isBookmark() {
        return this.isBookmark;
    }

    public final void setBookmark(boolean z) {
        this.isBookmark = z;
    }

    public final boolean isNotifying() {
        return this.isNotifying;
    }

    public final void setNotifying(boolean z) {
        this.isNotifying = z;
    }

    public final boolean isFinishBookmark() {
        return this.isFinishBookmark;
    }

    public final void setFinishBookmark(boolean z) {
        this.isFinishBookmark = z;
    }

    public final boolean isCancelBookmark() {
        return this.isCancelBookmark;
    }

    public final void setCancelBookmark(boolean z) {
        this.isCancelBookmark = z;
    }

    public final StoryTopic getTopic() {
        return this.topic;
    }

    public final void setTopic(StoryTopic storyTopic) {
        this.topic = storyTopic;
        updateViews(storyTopic);
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void sendSubscribeRequest(final StoryTopic storyTopic, int i) {
        if (storyTopic == null) {
            return;
        }
        this.isNotifying = true;
        updateViews(storyTopic);
        NVContext nVContext = Utils.getNVContext(getContext());
        Intrinsics.checkExpressionValueIsNotNull(nVContext, "Utils.getNVContext(context)");
        new TopicSubcribeHelper(nVContext).sendTopicSubscribeRequest(storyTopic.topicId, (16 & 2) != 0 ? null : storyTopic, (16 & 4) != 0 ? 1 : i, (16 & 8) != 0 ? null : new Callback<RequestResult>() { // from class: com.narvii.topic.widgets.TopicSubscribeView.sendSubscribeRequest.1
            @Override // com.narvii.util.Callback
            public final void call(RequestResult requestResult) {
                TopicSubscribeView.this.setNotifying(false);
                TopicSubscribeView.this.updateViews(storyTopic);
            }
        }, (16 & 16) != 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showTip() throws Resources.NotFoundException {
        getToolTipHelper().showToolTip(Tooltip.builder().anchorView(this.notificationLayout).textId(R.string.turn_on_topic_alert_hint).textSize(Utils.dpToPx(getContext(), 12.0f)).indicatorUp(false).background(Color.parseColor("#FFFFC700")).showOnlyOnce(false).isVibrate(false).autoHide().maxWidth(Utils.dpToPxInt(getContext(), 190.0f)).build());
    }

    public final void hideToolTip() throws Resources.NotFoundException {
        if (getToolTipHelper().isTooltipShowing()) {
            getToolTipHelper().hideToolTip();
        }
    }

    public final void setTopicBookmarkListener(TopicBookmarkView.TopicBookmarkListener listener) {
        Intrinsics.checkParameterIsNotNull(listener, "listener");
        this.topicBookmark.setTopicBookmarkListener(listener);
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
            valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.topic.widgets.TopicSubscribeView$updateViews$$inlined$apply$lambda$1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator it) {
                    ViewGroup.LayoutParams layoutParams2 = layoutParams;
                    Intrinsics.checkExpressionValueIsNotNull(it, "it");
                    Object animatedValue = it.getAnimatedValue();
                    if (animatedValue == null) {
                        throw new TypeCastException("null cannot be cast to non-null type kotlin.Int");
                    }
                    layoutParams2.width = ((Integer) animatedValue).intValue();
                    this.getNotificationLayout().setLayoutParams(layoutParams);
                }
            });
            valueAnimatorOfInt.addListener(new AnimatorListenerAdapter() { // from class: com.narvii.topic.widgets.TopicSubscribeView$updateViews$$inlined$apply$lambda$2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) throws Resources.NotFoundException {
                    this.this$0.setFinishBookmark(false);
                    this.this$0.updateViews(storyTopic);
                    if (!storyTopic.isNotified()) {
                        this.this$0.showTip();
                        return;
                    }
                    this.this$0.setNotifying(true);
                    StoryTopic storyTopic2 = storyTopic;
                    storyTopic2.subscriptionStatus = 0;
                    this.this$0.updateViews(storyTopic2);
                    Utils.postDelayed(new Runnable() { // from class: com.narvii.topic.widgets.TopicSubscribeView$updateViews$$inlined$apply$lambda$2.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            TopicSubscribeView$updateViews$$inlined$apply$lambda$2.this.this$0.setNotifying(false);
                            TopicSubscribeView$updateViews$$inlined$apply$lambda$2 topicSubscribeView$updateViews$$inlined$apply$lambda$2 = TopicSubscribeView$updateViews$$inlined$apply$lambda$2.this;
                            storyTopic.subscriptionStatus = 1;
                            topicSubscribeView$updateViews$$inlined$apply$lambda$2.this$0.vibrate();
                            TopicSubscribeView$updateViews$$inlined$apply$lambda$2 topicSubscribeView$updateViews$$inlined$apply$lambda$22 = TopicSubscribeView$updateViews$$inlined$apply$lambda$2.this;
                            topicSubscribeView$updateViews$$inlined$apply$lambda$22.this$0.updateViews(storyTopic);
                        }
                    }, 500L);
                }
            });
            valueAnimatorOfInt.setDuration(200L);
            valueAnimatorOfInt.start();
            return;
        }
        if (this.isCancelBookmark) {
            this.notificationLayout.setVisibility(0);
            ValueAnimator valueAnimatorOfInt2 = ValueAnimator.ofInt((int) Utils.dpToPx(getContext(), 34.0f), 0);
            final ViewGroup.LayoutParams layoutParams2 = this.notificationLayout.getLayoutParams();
            valueAnimatorOfInt2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.topic.widgets.TopicSubscribeView$updateViews$$inlined$apply$lambda$3
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator it) {
                    ViewGroup.LayoutParams layoutParams3 = layoutParams2;
                    Intrinsics.checkExpressionValueIsNotNull(it, "it");
                    Object animatedValue = it.getAnimatedValue();
                    if (animatedValue == null) {
                        throw new TypeCastException("null cannot be cast to non-null type kotlin.Int");
                    }
                    layoutParams3.width = ((Integer) animatedValue).intValue();
                    this.getNotificationLayout().setLayoutParams(layoutParams2);
                }
            });
            valueAnimatorOfInt2.addListener(new AnimatorListenerAdapter() { // from class: com.narvii.topic.widgets.TopicSubscribeView$updateViews$$inlined$apply$lambda$4
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
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

    public final void vibrate() {
        try {
            Object systemService = getContext().getSystemService("vibrator");
            if (systemService == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.os.Vibrator");
            }
            ((Vibrator) systemService).vibrate(300L);
        } catch (Exception unused) {
        }
    }
}
