package com.google.android.material.appbar;

import android.R;
import android.animation.AnimatorInflater;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.google.android.material.internal.s;

/* JADX INFO: loaded from: classes8.dex */
@RequiresApi
class j {
    private static final int[] STATE_LIST_ANIM_ATTRS = {R.attr.stateListAnimator};

    static void a(@NonNull View view) {
        view.setOutlineProvider(ViewOutlineProvider.BOUNDS);
    }

    static void b(@NonNull View view, float f) {
        int integer = view.getResources().getInteger(d3.g.app_bar_elevation_anim_duration);
        StateListAnimator stateListAnimator = new StateListAnimator();
        long j6 = integer;
        stateListAnimator.addState(new int[]{R.attr.state_enabled, d3.b.state_liftable, -d3.b.state_lifted}, ObjectAnimator.ofFloat(view, "elevation", 0.0f).setDuration(j6));
        stateListAnimator.addState(new int[]{R.attr.state_enabled}, ObjectAnimator.ofFloat(view, "elevation", f).setDuration(j6));
        stateListAnimator.addState(new int[0], ObjectAnimator.ofFloat(view, "elevation", 0.0f).setDuration(0L));
        view.setStateListAnimator(stateListAnimator);
    }

    static void c(@NonNull View view, AttributeSet attributeSet, int i10, int i11) {
        Context context = view.getContext();
        TypedArray typedArrayH = s.h(context, attributeSet, STATE_LIST_ANIM_ATTRS, i10, i11, new int[0]);
        try {
            if (typedArrayH.hasValue(0)) {
                view.setStateListAnimator(AnimatorInflater.loadStateListAnimator(context, typedArrayH.getResourceId(0, 0)));
            }
        } finally {
            typedArrayH.recycle();
        }
    }
}
