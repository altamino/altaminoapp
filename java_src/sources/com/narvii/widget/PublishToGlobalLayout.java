package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.IdRes;
import com.narvii.amino.master.R;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class PublishToGlobalLayout extends LinearLayout {

    @NotNull
    private final w7.m checkPtg$delegate;
    private int switchOffColor;
    private int switchOnColor;

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: com.narvii.widget.PublishToGlobalLayout$bind$1, reason: invalid class name */
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
            return PublishToGlobalLayout.this.findViewById(this.$res);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PublishToGlobalLayout(@NotNull Context context) {
        this(context, null, 0, 6, null);
        t.j(context, "context");
    }

    public final int getSwitchOffColor() {
        return this.switchOffColor;
    }

    public final int getSwitchOnColor() {
        return this.switchOnColor;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PublishToGlobalLayout(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        t.j(context, "context");
    }

    private final <T extends View> w7.m<T> bind(@IdRes int i10) {
        return w7.o.b(w7.q.NONE, new AnonymousClass1(i10));
    }

    private final ImageView getCheckPtg() {
        return (ImageView) this.checkPtg$delegate.getValue();
    }

    public final void setSwitchOffColor(int i10) {
        this.switchOffColor = i10;
        invalidate();
    }

    public final void setSwitchOnColor(int i10) {
        this.switchOnColor = i10;
        invalidate();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PublishToGlobalLayout(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        t.j(context, "context");
        this.checkPtg$delegate = bind(R.id.check_ptg);
        this.switchOnColor = R.drawable.ic_switch_on;
        this.switchOffColor = R.drawable.ic_switch_off;
    }

    public final void setPublishToGlobal(boolean z6) {
        int i10;
        ImageView checkPtg = getCheckPtg();
        if (z6) {
            i10 = this.switchOnColor;
        } else {
            i10 = this.switchOffColor;
        }
        checkPtg.setImageResource(i10);
    }

    public /* synthetic */ PublishToGlobalLayout(Context context, AttributeSet attributeSet, int i10, int i11, kotlin.jvm.internal.k kVar) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }
}
