package com.narvii.monetization.store.view;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class TippingDialogFrameLayout extends FrameLayout {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TippingDialogFrameLayout(@NotNull Context context) {
        super(context);
        t.j(context, "context");
        setFitsSystemWindows(true);
    }

    @Override // android.view.View
    protected boolean fitSystemWindows(@Nullable Rect rect) {
        if (rect != null) {
            rect.top = 0;
        }
        return super.fitSystemWindows(rect);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TippingDialogFrameLayout(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        t.j(context, "context");
        setFitsSystemWindows(true);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TippingDialogFrameLayout(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        t.j(context, "context");
        setFitsSystemWindows(true);
    }
}
