package com.narvii.topic.widgets;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.View;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.mastes.R;
import com.narvii.model.story.StoryTopic;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.widget.NVImageView;
import java.util.HashMap;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: TopicCardCoverView.kt */
/* loaded from: classes3.dex */
public final class TopicCardCoverView extends FlexLayout {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(TopicCardCoverView.class), "imageThumb", "getImageThumb()Lcom/narvii/widget/NVImageView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(TopicCardCoverView.class), "subscribeTag", "getSubscribeTag()Lcom/narvii/widget/NVImageView;"))};
    private HashMap _$_findViewCache;
    private final float cornerRadius;
    private boolean hideSubscribeView;
    private final Lazy imageThumb$delegate;
    private final Lazy subscribeTag$delegate;

    private final NVImageView getImageThumb() {
        Lazy lazy = this.imageThumb$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (NVImageView) lazy.getValue();
    }

    private final NVImageView getSubscribeTag() {
        Lazy lazy = this.subscribeTag$delegate;
        KProperty kProperty = $$delegatedProperties[1];
        return (NVImageView) lazy.getValue();
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

    public TopicCardCoverView(Context context) {
        super(context);
        this.imageThumb$delegate = bind(R.id.img);
        this.subscribeTag$delegate = bind(R.id.subscribe_tag);
        this.cornerRadius = Utils.dpToPx(getContext(), 6.0f);
        View.inflate(getContext(), R.layout.topic_card_cover, this);
    }

    public TopicCardCoverView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.imageThumb$delegate = bind(R.id.img);
        this.subscribeTag$delegate = bind(R.id.subscribe_tag);
        this.cornerRadius = Utils.dpToPx(getContext(), 6.0f);
        View.inflate(getContext(), R.layout.topic_card_cover, this);
    }

    public TopicCardCoverView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.imageThumb$delegate = bind(R.id.img);
        this.subscribeTag$delegate = bind(R.id.subscribe_tag);
        this.cornerRadius = Utils.dpToPx(getContext(), 6.0f);
        View.inflate(getContext(), R.layout.topic_card_cover, this);
    }

    @Override // com.github.mmin18.widget.FlexLayout, android.view.View
    protected void onMeasure(int i, int i2) throws Resources.NotFoundException {
        super.onMeasure(i, i2);
        NVImageView imageThumb = getImageThumb();
        if (imageThumb != null) {
            imageThumb.setCornerRadius((getMeasuredHeight() * 6) / 110);
        }
    }

    public final <T extends View> Lazy<T> bind(final int i) {
        return LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, new Function0<T>() { // from class: com.narvii.topic.widgets.TopicCardCoverView.bind.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Incorrect return type in method signature: ()TT; */
            @Override // kotlin.jvm.functions.Function0
            public final View invoke() {
                return TopicCardCoverView.this.findViewById(i);
            }
        });
    }

    public final void hideSubscribeTag() {
        this.hideSubscribeView = true;
    }

    public final void showSubscribeTag() {
        this.hideSubscribeView = false;
    }

    public final void setTopic(StoryTopic storyTopic) {
        if (storyTopic != null) {
            boolean z = false;
            if (!storyTopic.invalid) {
                if (storyTopic.style == null) {
                    NVImageView imageThumb = getImageThumb();
                    if (imageThumb != null) {
                        imageThumb.setImageUrl("res://topic_style_default_small_bg");
                        return;
                    }
                    return;
                }
                NVImageView imageThumb2 = getImageThumb();
                if (imageThumb2 != null) {
                    GradientDrawable gradientDrawable = new GradientDrawable();
                    gradientDrawable.setCornerRadius(this.cornerRadius);
                    gradientDrawable.setColor(storyTopic.style.backgroundColor);
                    imageThumb2.setBackground(gradientDrawable);
                }
                String str = storyTopic.style.backgroundImage;
                if (str == null || str.length() == 0) {
                    NVImageView imageThumb3 = getImageThumb();
                    if (imageThumb3 != null) {
                        imageThumb3.setImageUrl("res://topic_style_default_small_bg");
                    }
                } else {
                    NVImageView imageThumb4 = getImageThumb();
                    if (imageThumb4 != null) {
                        imageThumb4.setImageUrl(storyTopic.style.backgroundImage);
                    }
                }
                NVImageView subscribeTag = getSubscribeTag();
                if (storyTopic.isNotified() && !this.hideSubscribeView) {
                    z = true;
                }
                ViewUtils.visible(subscribeTag, z);
                return;
            }
            NVImageView imageThumb5 = getImageThumb();
            if (imageThumb5 != null) {
                imageThumb5.setImageResource(R.drawable.topic_card_locked_bg);
            }
            ViewUtils.visible(getSubscribeTag(), false);
        }
    }
}
