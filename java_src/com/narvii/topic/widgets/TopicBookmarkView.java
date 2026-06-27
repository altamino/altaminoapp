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
import com.narvii.amino.mastes.R;
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
import java.util.HashMap;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: TopicBookmarkView.kt */
/* loaded from: classes3.dex */
public final class TopicBookmarkView extends PressedFrameLayout implements View.OnClickListener {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(TopicBookmarkView.class), "normalView", "getNormalView()Landroid/view/View;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(TopicBookmarkView.class), "selectedView", "getSelectedView()Landroid/view/View;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(TopicBookmarkView.class), "loading", "getLoading()Lcom/narvii/widget/SpinningView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(TopicBookmarkView.class), "apiService", "getApiService()Lcom/narvii/util/http/ApiService;"))};
    private HashMap _$_findViewCache;
    private final Lazy apiService$delegate;
    private boolean isSending;
    private final Lazy loading$delegate;
    private final Lazy normalView$delegate;
    private final Lazy selectedView$delegate;
    private StoryTopic topic;
    private TopicBookmarkListener topicBookmarkListener;
    private TopicBookmarkResultListener topicBookmarkResultListener;

    /* compiled from: TopicBookmarkView.kt */
    public interface TopicBookmarkListener {
        void onBookmark(boolean z);
    }

    /* compiled from: TopicBookmarkView.kt */
    public interface TopicBookmarkResultListener {
        void onBookmarkResult(StoryTopic storyTopic, RequestResult requestResult);
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

    public final ApiService getApiService() {
        Lazy lazy = this.apiService$delegate;
        KProperty kProperty = $$delegatedProperties[3];
        return (ApiService) lazy.getValue();
    }

    public final SpinningView getLoading() {
        Lazy lazy = this.loading$delegate;
        KProperty kProperty = $$delegatedProperties[2];
        return (SpinningView) lazy.getValue();
    }

    public final View getNormalView() {
        Lazy lazy = this.normalView$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (View) lazy.getValue();
    }

    public final View getSelectedView() {
        Lazy lazy = this.selectedView$delegate;
        KProperty kProperty = $$delegatedProperties[1];
        return (View) lazy.getValue();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TopicBookmarkView(final Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.normalView$delegate = bind(R.id.bookmark_normal);
        this.selectedView$delegate = bind(R.id.bookmark_normal_selected);
        this.loading$delegate = bind(R.id.bookmark_loading);
        this.apiService$delegate = LazyKt__LazyJVMKt.lazy(new Function0<ApiService>() { // from class: com.narvii.topic.widgets.TopicBookmarkView$apiService$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ApiService invoke() {
                return (ApiService) Utils.getNVContext(context).getService("api");
            }
        });
        LayoutInflater.from(context).inflate(R.layout.topic_bookmark_button, (ViewGroup) this, true);
        setOnClickListener(this);
    }

    public final TopicBookmarkListener getTopicBookmarkListener() {
        return this.topicBookmarkListener;
    }

    public final void setTopicBookmarkListener(TopicBookmarkListener topicBookmarkListener) {
        this.topicBookmarkListener = topicBookmarkListener;
    }

    public final TopicBookmarkResultListener getTopicBookmarkResultListener() {
        return this.topicBookmarkResultListener;
    }

    public final void setTopicBookmarkResultListener(TopicBookmarkResultListener topicBookmarkResultListener) {
        this.topicBookmarkResultListener = topicBookmarkResultListener;
    }

    public final StoryTopic getTopic() {
        return this.topic;
    }

    public final void setTopic(StoryTopic storyTopic) {
        this.topic = storyTopic;
        updateViews(storyTopic);
        invalidate();
    }

    public final <T extends View> Lazy<T> bind(final int i) {
        return LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, new Function0<T>() { // from class: com.narvii.topic.widgets.TopicBookmarkView.bind.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Incorrect return type in method signature: ()TT; */
            @Override // kotlin.jvm.functions.Function0
            public final View invoke() {
                return TopicBookmarkView.this.findViewById(i);
            }
        });
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        StoryTopic storyTopic = this.topic;
        if (storyTopic != null) {
            final boolean z = !storyTopic.isBookmarked;
            if (!z) {
                ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
                actionSheetDialog.addItem(R.string.unbookmark, 1);
                actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.topic.widgets.TopicBookmarkView$onClick$$inlined$let$lambda$1
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        if (i == 0) {
                            TopicBookmarkView topicBookmarkView = this;
                            topicBookmarkView.sendBookMarkRequest(topicBookmarkView.getTopic(), z);
                        }
                    }
                });
                actionSheetDialog.show();
                return;
            }
            sendBookMarkRequest(storyTopic, z);
        }
    }

    public final boolean isSending() {
        return this.isSending;
    }

    public final void setSending(boolean z) {
        this.isSending = z;
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

    private final void startSending() {
        this.isSending = true;
        getLayoutParams().width = getMeasuredWidth();
        setLayoutParams(getLayoutParams());
        updateViews(this.topic);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void endSending() {
        int measuredWidth = getMeasuredWidth();
        this.isSending = false;
        updateViews(this.topic);
        measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(getHeight(), 1073741824));
        int measuredWidth2 = getMeasuredWidth();
        StoryTopic storyTopic = this.topic;
        int iDpToPx = (int) ((storyTopic == null || !storyTopic.isBookmarked) ? measuredWidth + Utils.dpToPx(getContext(), 40.0f) : measuredWidth - Utils.dpToPx(getContext(), 40.0f));
        if (measuredWidth2 <= iDpToPx) {
            measuredWidth2 = iDpToPx;
        }
        this.isSending = true;
        updateViews(this.topic);
        ValueAnimator animator = ValueAnimator.ofInt(measuredWidth, measuredWidth2);
        Intrinsics.checkExpressionValueIsNotNull(animator, "animator");
        animator.setDuration(200L);
        animator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.topic.widgets.TopicBookmarkView.endSending.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator animation) {
                ViewGroup.LayoutParams layoutParams = TopicBookmarkView.this.getLayoutParams();
                Intrinsics.checkExpressionValueIsNotNull(animation, "animation");
                Object animatedValue = animation.getAnimatedValue();
                if (animatedValue == null) {
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.Int");
                }
                layoutParams.width = ((Integer) animatedValue).intValue();
                TopicBookmarkView topicBookmarkView = TopicBookmarkView.this;
                topicBookmarkView.setLayoutParams(topicBookmarkView.getLayoutParams());
                StoryTopic topic = TopicBookmarkView.this.getTopic();
                if (topic != null && topic.isBookmarked) {
                    ViewGroup.LayoutParams layoutParams2 = TopicBookmarkView.this.getSelectedView().getLayoutParams();
                    Object animatedValue2 = animation.getAnimatedValue();
                    if (animatedValue2 == null) {
                        throw new TypeCastException("null cannot be cast to non-null type kotlin.Int");
                    }
                    layoutParams2.width = ((Integer) animatedValue2).intValue();
                    TopicBookmarkView.this.getSelectedView().setLayoutParams(layoutParams2);
                }
                TopicBookmarkView.this.requestLayout();
            }
        });
        animator.addListener(new AnimatorListenerAdapter() { // from class: com.narvii.topic.widgets.TopicBookmarkView.endSending.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animation) {
                Intrinsics.checkParameterIsNotNull(animation, "animation");
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                Intrinsics.checkParameterIsNotNull(animation, "animation");
                TopicBookmarkView.this.setSending(false);
                TopicBookmarkView topicBookmarkView = TopicBookmarkView.this;
                topicBookmarkView.updateViews(topicBookmarkView.getTopic());
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animation) {
                Intrinsics.checkParameterIsNotNull(animation, "animation");
                TopicBookmarkView.this.setSending(false);
                TopicBookmarkView topicBookmarkView = TopicBookmarkView.this;
                topicBookmarkView.updateViews(topicBookmarkView.getTopic());
            }
        });
        animator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void sendBookMarkRequest(final StoryTopic storyTopic, boolean z) {
        if (storyTopic == null) {
            return;
        }
        TopicBookmarkListener topicBookmarkListener = this.topicBookmarkListener;
        if (topicBookmarkListener != null) {
            topicBookmarkListener.onBookmark(z);
        }
        startSending();
        NVContext nVContext = Utils.getNVContext(getContext());
        Intrinsics.checkExpressionValueIsNotNull(nVContext, "Utils.getNVContext(context)");
        new TopicRequestHelper(nVContext).sendBookmarkRequest(storyTopic.topicId, (2 & 2) != 0 ? null : storyTopic, (2 & 4) != 0 ? true : z, (2 & 8) != 0 ? null : new Callback<RequestResult>() { // from class: com.narvii.topic.widgets.TopicBookmarkView.sendBookMarkRequest.1
            @Override // com.narvii.util.Callback
            public final void call(RequestResult result) {
                TopicBookmarkResultListener topicBookmarkResultListener = TopicBookmarkView.this.getTopicBookmarkResultListener();
                if (topicBookmarkResultListener != null) {
                    StoryTopic storyTopic2 = storyTopic;
                    Intrinsics.checkExpressionValueIsNotNull(result, "result");
                    topicBookmarkResultListener.onBookmarkResult(storyTopic2, result);
                }
                TopicBookmarkView.this.endSending();
                TopicBookmarkView.this.updateViews(storyTopic);
            }
        }, (2 & 16) != 0);
    }
}
