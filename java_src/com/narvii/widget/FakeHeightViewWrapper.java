package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.narvii.amino.R;
import java.util.HashMap;
import java.util.Iterator;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.sequences.SequencesKt___SequencesKt;

/* compiled from: FakeHeightViewWrapper.kt */
/* loaded from: classes3.dex */
public final class FakeHeightViewWrapper extends FrameLayout {
    private final String TAG;
    private HashMap _$_findViewCache;
    private int fakeHeight;

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

    public final String getTAG() {
        return this.TAG;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FakeHeightViewWrapper(Context context) {
        super(context);
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.TAG = "fakeHeight";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FakeHeightViewWrapper(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.TAG = "fakeHeight";
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.FakeHeightViewWrapper, 0, 0);
            if (typedArrayObtainStyledAttributes.hasValue(0)) {
                this.fakeHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, getResources().getDimensionPixelSize(com.narvii.amino.mastes.R.dimen.speed_dial_header_shadow_height));
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        Iterator it = SequencesKt___SequencesKt.filter(SequencesKt___SequencesKt.map(CollectionsKt___CollectionsKt.asSequence(RangesKt___RangesKt.until(0, getChildCount())), new Function1<Integer, View>() { // from class: com.narvii.widget.FakeHeightViewWrapper.onLayout.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ View invoke(Integer num) {
                return invoke(num.intValue());
            }

            public final View invoke(int i5) {
                return FakeHeightViewWrapper.this.getChildAt(i5);
            }
        }), new Function1<View, Boolean>() { // from class: com.narvii.widget.FakeHeightViewWrapper.onLayout.2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(View view) {
                return Boolean.valueOf(invoke2(view));
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final boolean invoke2(View it2) {
                Intrinsics.checkExpressionValueIsNotNull(it2, "it");
                return Intrinsics.areEqual(it2.getTag(), FakeHeightViewWrapper.this.getTAG());
            }
        }).iterator();
        while (it.hasNext()) {
            ((View) it.next()).layout(i, getHeight() - this.fakeHeight, i3, getHeight());
        }
    }

    public final void updateFakeHeight(int i) {
        this.fakeHeight = i;
        requestLayout();
    }
}
