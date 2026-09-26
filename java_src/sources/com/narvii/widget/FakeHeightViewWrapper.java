package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.narvii.amino.R;
import java.util.Iterator;
import kotlin.collections.d0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class FakeHeightViewWrapper extends FrameLayout {

    @NotNull
    private final String TAG;
    private int fakeHeight;

    /* JADX INFO: renamed from: com.narvii.widget.FakeHeightViewWrapper$onLayout$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements e8.l<Integer, View> {
        AnonymousClass1() {
            super(1);
        }

        public final View invoke(int i10) {
            return FakeHeightViewWrapper.this.getChildAt(i10);
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ View invoke(Integer num) {
            return invoke(num.intValue());
        }
    }

    /* JADX INFO: renamed from: com.narvii.widget.FakeHeightViewWrapper$onLayout$2, reason: invalid class name */
    static final class AnonymousClass2 extends v implements e8.l<View, Boolean> {
        AnonymousClass2() {
            super(1);
        }

        @Override // e8.l
        @NotNull
        public final Boolean invoke(View view) {
            return Boolean.valueOf(t.e(view.getTag(), FakeHeightViewWrapper.this.getTAG()));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FakeHeightViewWrapper(@NotNull Context context) {
        super(context);
        t.j(context, "context");
        this.TAG = "fakeHeight";
    }

    @NotNull
    public final String getTAG() {
        return this.TAG;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FakeHeightViewWrapper(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        t.j(context, "context");
        this.TAG = "fakeHeight";
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.FakeHeightViewWrapper, 0, 0);
            t.i(typedArrayObtainStyledAttributes, "obtainStyledAttributes(...)");
            if (typedArrayObtainStyledAttributes.hasValue(0)) {
                this.fakeHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, getResources().getDimensionPixelSize(com.narvii.amino.master.R.dimen.speed_dial_header_shadow_height));
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public final void updateFakeHeight(int i10) {
        this.fakeHeight = i10;
        requestLayout();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        super.onLayout(z6, i10, i11, i12, i13);
        Iterator it = kotlin.sequences.o.l(kotlin.sequences.o.u(d0.Y(j8.o.v(0, getChildCount())), new AnonymousClass1()), new AnonymousClass2()).iterator();
        while (it.hasNext()) {
            ((View) it.next()).layout(i10, getHeight() - this.fakeHeight, i12, getHeight());
        }
    }
}
