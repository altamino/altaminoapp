package com.narvii.util;

import ai.medialab.medialabads2.banners.MediaLabAdView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes11.dex */
public final class MLUtilsKt {
    @Nullable
    public static final l0 centerMRECView(@NotNull MediaLabAdView mediaLabAdView) {
        t.j(mediaLabAdView, "<this>");
        View childAt = mediaLabAdView.getChildAt(0);
        if (childAt == null) {
            return null;
        }
        ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
        t.h(layoutParams, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
        layoutParams2.gravity = 17;
        childAt.setLayoutParams(layoutParams2);
        return l0.INSTANCE;
    }
}
