package com.narvii.topic.widgets;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.IdRes;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.model.story.StoryTopic;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.widget.NVImageView;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.m;
import w7.o;
import w7.q;

/* JADX INFO: loaded from: classes4.dex */
public final class TopicCardCoverView extends FlexLayout {
    private final float cornerRadius;
    private boolean hideSubscribeView;

    @NotNull
    private final m imageThumb$delegate;

    @NotNull
    private final m subscribeTag$delegate;

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: com.narvii.topic.widgets.TopicCardCoverView$bind$1, reason: invalid class name */
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
            return TopicCardCoverView.this.findViewById(this.$res);
        }
    }

    public TopicCardCoverView(@Nullable Context context) {
        super(context);
        this.imageThumb$delegate = bind(R.id.img);
        this.subscribeTag$delegate = bind(R.id.subscribe_tag);
        this.cornerRadius = Utils.dpToPx(getContext(), 6.0f);
        View.inflate(getContext(), R.layout.topic_card_cover, this);
    }

    public final void hideSubscribeTag() {
        this.hideSubscribeView = true;
    }

    public final void showSubscribeTag() {
        this.hideSubscribeView = false;
    }

    private final NVImageView getImageThumb() {
        return (NVImageView) this.imageThumb$delegate.getValue();
    }

    private final NVImageView getSubscribeTag() {
        return (NVImageView) this.subscribeTag$delegate.getValue();
    }

    @NotNull
    public final <T extends View> m<T> bind(@IdRes int i10) {
        return o.b(q.NONE, new AnonymousClass1(i10));
    }

    public final void setTopic(@Nullable StoryTopic storyTopic) {
        if (storyTopic != null) {
            boolean z6 = false;
            if (storyTopic.invalid) {
                NVImageView imageThumb = getImageThumb();
                if (imageThumb != null) {
                    imageThumb.setImageResource(R.drawable.topic_card_locked_bg);
                }
                ViewUtils.visible(getSubscribeTag(), false);
                return;
            }
            if (storyTopic.style == null) {
                NVImageView imageThumb2 = getImageThumb();
                if (imageThumb2 != null) {
                    imageThumb2.setImageUrl("res://topic_style_default_small_bg");
                    return;
                }
                return;
            }
            NVImageView imageThumb3 = getImageThumb();
            if (imageThumb3 != null) {
                GradientDrawable gradientDrawable = new GradientDrawable();
                gradientDrawable.setCornerRadius(this.cornerRadius);
                gradientDrawable.setColor(storyTopic.style.backgroundColor);
                imageThumb3.setBackground(gradientDrawable);
            }
            String str = storyTopic.style.backgroundImage;
            if (str == null || str.length() == 0) {
                NVImageView imageThumb4 = getImageThumb();
                if (imageThumb4 != null) {
                    imageThumb4.setImageUrl("res://topic_style_default_small_bg");
                }
            } else {
                NVImageView imageThumb5 = getImageThumb();
                if (imageThumb5 != null) {
                    imageThumb5.setImageUrl(storyTopic.style.backgroundImage);
                }
            }
            NVImageView subscribeTag = getSubscribeTag();
            if (storyTopic.isNotified() && !this.hideSubscribeView) {
                z6 = true;
            }
            ViewUtils.visible(subscribeTag, z6);
        }
    }

    @Override // com.github.mmin18.widget.FlexLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        NVImageView imageThumb = getImageThumb();
        if (imageThumb != null) {
            imageThumb.setCornerRadius((getMeasuredHeight() * 6) / 110);
        }
    }

    public TopicCardCoverView(@Nullable Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.imageThumb$delegate = bind(R.id.img);
        this.subscribeTag$delegate = bind(R.id.subscribe_tag);
        this.cornerRadius = Utils.dpToPx(getContext(), 6.0f);
        View.inflate(getContext(), R.layout.topic_card_cover, this);
    }

    public TopicCardCoverView(@Nullable Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.imageThumb$delegate = bind(R.id.img);
        this.subscribeTag$delegate = bind(R.id.subscribe_tag);
        this.cornerRadius = Utils.dpToPx(getContext(), 6.0f);
        View.inflate(getContext(), R.layout.topic_card_cover, this);
    }
}
