package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.narvii.amino.mastes.R;
import com.narvii.model.Blog;
import com.narvii.util.OnPreventRepeatedClickListener;
import com.narvii.util.Utils;
import java.util.HashMap;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: PromoteStoryView.kt */
/* loaded from: classes3.dex */
public final class PromoteStoryView extends LinearLayout implements View.OnClickListener {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(PromoteStoryView.class), "addStory", "getAddStory()Landroid/view/ViewGroup;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(PromoteStoryView.class), "playStory", "getPlayStory()Landroid/view/ViewGroup;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(PromoteStoryView.class), "draggableFL", "getDraggableFL()Lcom/narvii/widget/DraggableFrameLayout;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(PromoteStoryView.class), "coverImage", "getCoverImage()Lcom/narvii/widget/ThumbImageView;"))};
    private HashMap _$_findViewCache;
    private final Lazy addStory$delegate;
    private final Lazy coverImage$delegate;
    private final Lazy draggableFL$delegate;
    private OnPromoteListener onPromoteListener;
    private final Lazy playStory$delegate;
    private Blog story;

    /* compiled from: PromoteStoryView.kt */
    public interface OnPromoteListener {
        void onPlayStory(Blog blog);

        void onPromoteStory();
    }

    public PromoteStoryView(Context context) {
        this(context, null, 0, 6, null);
    }

    public PromoteStoryView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    private final DraggableFrameLayout getDraggableFL() {
        Lazy lazy = this.draggableFL$delegate;
        KProperty kProperty = $$delegatedProperties[2];
        return (DraggableFrameLayout) lazy.getValue();
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

    public final ViewGroup getAddStory() {
        Lazy lazy = this.addStory$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (ViewGroup) lazy.getValue();
    }

    public final ThumbImageView getCoverImage() {
        Lazy lazy = this.coverImage$delegate;
        KProperty kProperty = $$delegatedProperties[3];
        return (ThumbImageView) lazy.getValue();
    }

    public final ViewGroup getPlayStory() {
        Lazy lazy = this.playStory$delegate;
        KProperty kProperty = $$delegatedProperties[1];
        return (ViewGroup) lazy.getValue();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PromoteStoryView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.addStory$delegate = bind(R.id.promote_story);
        this.playStory$delegate = bind(R.id.play_story);
        this.draggableFL$delegate = bind(R.id.promote_area_fl);
        this.coverImage$delegate = bind(R.id.cover_image);
    }

    public /* synthetic */ PromoteStoryView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    public final Blog getStory() {
        return this.story;
    }

    public final void setStory(Blog blog) {
        this.story = blog;
    }

    public final OnPromoteListener getOnPromoteListener() {
        return this.onPromoteListener;
    }

    public final void setOnPromoteListener(OnPromoteListener onPromoteListener) {
        this.onPromoteListener = onPromoteListener;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        getDraggableFL().setOnTap(new OnPreventRepeatedClickListener(this));
    }

    public final void show(Blog blog) {
        this.story = blog;
        if (blog != null) {
            getPlayStory().setVisibility(0);
            getAddStory().setVisibility(8);
            getCoverImage().setImageMedia(blog.getExtraCoverMedia());
            getDraggableFL().setMinViewVisibleWidth(Utils.dpToPxInt(getContext(), 16.0f));
            getDraggableFL().setEndMargin(Utils.dpToPxInt(getContext(), 8.0f));
            return;
        }
        getPlayStory().setVisibility(8);
        getAddStory().setVisibility(0);
        getDraggableFL().setMinViewVisibleWidth(Utils.dpToPxInt(getContext(), 30.0f));
        getDraggableFL().setEndMargin(Utils.dpToPxInt(getContext(), 3.0f));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Blog blog = this.story;
        if (blog == null) {
            OnPromoteListener onPromoteListener = this.onPromoteListener;
            if (onPromoteListener != null) {
                onPromoteListener.onPromoteStory();
                return;
            }
            return;
        }
        OnPromoteListener onPromoteListener2 = this.onPromoteListener;
        if (onPromoteListener2 != null) {
            onPromoteListener2.onPlayStory(blog);
        }
    }

    public final void hide() {
        getDraggableFL().hide();
    }

    private final <T extends View> Lazy<T> bind(final int i) {
        return LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, new Function0<T>() { // from class: com.narvii.widget.PromoteStoryView.bind.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Incorrect return type in method signature: ()TT; */
            @Override // kotlin.jvm.functions.Function0
            public final View invoke() {
                return PromoteStoryView.this.findViewById(i);
            }
        });
    }
}
