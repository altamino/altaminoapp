package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.narvii.amino.mastes.R;
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

/* compiled from: PublishToGlobalLayout.kt */
/* loaded from: classes3.dex */
public final class PublishToGlobalLayout extends LinearLayout {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(PublishToGlobalLayout.class), "checkPtg", "getCheckPtg()Landroid/widget/ImageView;"))};
    private HashMap _$_findViewCache;
    private final Lazy checkPtg$delegate;
    private int switchOffColor;
    private int switchOnColor;

    public PublishToGlobalLayout(Context context) {
        this(context, null, 0, 6, null);
    }

    public PublishToGlobalLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    private final ImageView getCheckPtg() {
        Lazy lazy = this.checkPtg$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (ImageView) lazy.getValue();
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
    public PublishToGlobalLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.checkPtg$delegate = bind(R.id.check_ptg);
        this.switchOnColor = R.drawable.switch_on;
        this.switchOffColor = R.drawable.switch_off;
    }

    public /* synthetic */ PublishToGlobalLayout(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    public final int getSwitchOnColor() {
        return this.switchOnColor;
    }

    public final void setSwitchOnColor(int i) {
        this.switchOnColor = i;
        invalidate();
    }

    public final int getSwitchOffColor() {
        return this.switchOffColor;
    }

    public final void setSwitchOffColor(int i) {
        this.switchOffColor = i;
        invalidate();
    }

    public final void setPublishToGlobal(boolean z) {
        getCheckPtg().setImageResource(z ? this.switchOnColor : this.switchOffColor);
    }

    private final <T extends View> Lazy<T> bind(final int i) {
        return LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, new Function0<T>() { // from class: com.narvii.widget.PublishToGlobalLayout.bind.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Incorrect return type in method signature: ()TT; */
            @Override // kotlin.jvm.functions.Function0
            public final View invoke() {
                return PublishToGlobalLayout.this.findViewById(i);
            }
        });
    }
}
