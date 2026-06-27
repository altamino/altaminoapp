package com.narvii.influencer;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.narvii.lib.R;
import com.narvii.widget.TintButton;
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

/* compiled from: InfluencerPostIndicator.kt */
/* loaded from: classes2.dex */
public abstract class InfluencerPostIndicator extends LinearLayout {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(InfluencerPostIndicator.class), "lockIndicator", "getLockIndicator()Lcom/narvii/widget/TintButton;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(InfluencerPostIndicator.class), "tvFansOnly", "getTvFansOnly()Landroid/widget/TextView;"))};
    private HashMap _$_findViewCache;
    private int defaultColor;
    private final Lazy lockIndicator$delegate;
    private final Lazy tvFansOnly$delegate;

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

    protected final TintButton getLockIndicator() {
        Lazy lazy = this.lockIndicator$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (TintButton) lazy.getValue();
    }

    protected final TextView getTvFansOnly() {
        Lazy lazy = this.tvFansOnly$delegate;
        KProperty kProperty = $$delegatedProperties[1];
        return (TextView) lazy.getValue();
    }

    public abstract void setIsFansOnly(boolean z);

    public int getDefaultColor() {
        return this.defaultColor;
    }

    public void setDefaultColor(int i) {
        this.defaultColor = i;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InfluencerPostIndicator(Context context) {
        super(context);
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.lockIndicator$delegate = bind(this, R.id.influencer_lock);
        this.tvFansOnly$delegate = bind(this, R.id.fans_only);
        this.defaultColor = -1;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InfluencerPostIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.lockIndicator$delegate = bind(this, R.id.influencer_lock);
        this.tvFansOnly$delegate = bind(this, R.id.fans_only);
        this.defaultColor = -1;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InfluencerPostIndicator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.lockIndicator$delegate = bind(this, R.id.influencer_lock);
        this.tvFansOnly$delegate = bind(this, R.id.fans_only);
        this.defaultColor = -1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.InfluencerPostIndicator);
        setDefaultColor(typedArrayObtainStyledAttributes.getColor(R.styleable.InfluencerPostIndicator_infulencer_default_color, -1));
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
    }

    protected final <T extends View> Lazy<T> bind(InfluencerPostIndicator bind, final int i) {
        Intrinsics.checkParameterIsNotNull(bind, "$this$bind");
        return LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, new Function0<T>() { // from class: com.narvii.influencer.InfluencerPostIndicator.bind.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Incorrect return type in method signature: ()TT; */
            @Override // kotlin.jvm.functions.Function0
            public final View invoke() {
                View viewFindViewById = InfluencerPostIndicator.this.findViewById(i);
                if (viewFindViewById != null) {
                    return viewFindViewById;
                }
                throw new TypeCastException("null cannot be cast to non-null type T");
            }
        });
    }
}
