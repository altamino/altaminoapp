package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.narvii.amino.master.R;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class LiveBadgeView extends FrameLayout {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LiveBadgeView(@NotNull Context context) {
        super(context);
        t.j(context, "context");
        View.inflate(getContext(), R.layout.user_live_badge_layout, this);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LiveBadgeView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        t.j(context, "context");
        View.inflate(getContext(), R.layout.user_live_badge_layout, this);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LiveBadgeView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        t.j(context, "context");
        View.inflate(getContext(), R.layout.user_live_badge_layout, this);
    }
}
