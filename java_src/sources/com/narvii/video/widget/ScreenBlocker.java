package com.narvii.video.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class ScreenBlocker extends View {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScreenBlocker(@NotNull Context context) {
        super(context);
        t.j(context, "context");
    }

    @Override // android.view.View
    public boolean dispatchTouchEvent(@Nullable MotionEvent motionEvent) {
        return true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(@Nullable MotionEvent motionEvent) {
        return true;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScreenBlocker(@NotNull Context context, @NotNull AttributeSet attributes) {
        super(context, attributes);
        t.j(context, "context");
        t.j(attributes, "attributes");
    }
}
