package com.narvii.chat.video.view;

import android.content.Context;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.util.Utils;
import com.narvii.widget.NVImageView;
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

/* compiled from: VVIndicatorView.kt */
/* loaded from: classes2.dex */
public final class VVIndicatorView extends FrameLayout {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(VVIndicatorView.class), "imgIndicator", "getImgIndicator()Lcom/narvii/widget/NVImageView;"))};
    private HashMap _$_findViewCache;
    private int channelType;
    private final Lazy imgIndicator$delegate;
    private NVContext nvContext;

    private final NVImageView getImgIndicator() {
        Lazy lazy = this.imgIndicator$delegate;
        KProperty kProperty = $$delegatedProperties[0];
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

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public VVIndicatorView(Context context) {
        this(context, null);
        Intrinsics.checkParameterIsNotNull(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VVIndicatorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.channelType = -1;
        this.imgIndicator$delegate = bind(this, R.id.indicator);
        this.nvContext = Utils.getNVContext(context);
        FrameLayout.inflate(context, R.layout.widget_vv_type_indicator, this);
    }

    public final void setLiveChannelType(int i) {
        if (this.channelType == i) {
            return;
        }
        this.channelType = i;
        getImgIndicator().setImageUrl("assets://video_white.webp");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Drawable drawable = getImgIndicator().getDrawable();
        if (drawable instanceof AnimationDrawable) {
            AnimationDrawable animationDrawable = (AnimationDrawable) drawable;
            if (animationDrawable.isRunning()) {
                animationDrawable.stop();
            }
        }
        this.channelType = -1;
    }

    private final <T extends View> Lazy<T> bind(final View view, final int i) {
        return LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, new Function0<T>() { // from class: com.narvii.chat.video.view.VVIndicatorView.bind.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Incorrect return type in method signature: ()TT; */
            @Override // kotlin.jvm.functions.Function0
            public final View invoke() {
                View viewFindViewById = view.findViewById(i);
                if (viewFindViewById != null) {
                    return viewFindViewById;
                }
                throw new TypeCastException("null cannot be cast to non-null type T");
            }
        });
    }
}
