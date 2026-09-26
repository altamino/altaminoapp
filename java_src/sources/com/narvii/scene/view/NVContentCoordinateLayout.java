package com.narvii.scene.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import com.narvii.drawer.DrawerLayout;
import com.narvii.nested.NVCoordinateLayout;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class NVContentCoordinateLayout extends NVCoordinateLayout {
    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public NVContentCoordinateLayout(@NotNull Context context) {
        this(context, null, 2, 0 == true ? 1 : 0);
        t.j(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NVContentCoordinateLayout(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        t.j(context, "context");
    }

    public /* synthetic */ NVContentCoordinateLayout(Context context, AttributeSet attributeSet, int i10, k kVar) {
        this(context, (i10 & 2) != 0 ? null : attributeSet);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(@Nullable MotionEvent motionEvent) {
        Integer numValueOf;
        if (getParent() instanceof DrawerLayout) {
            if (motionEvent != null) {
                numValueOf = Integer.valueOf(motionEvent.getAction());
            } else {
                numValueOf = null;
            }
            if (numValueOf != null && numValueOf.intValue() == 0) {
                getParent().requestDisallowInterceptTouchEvent(true);
            } else if ((numValueOf != null && numValueOf.intValue() == 1) || (numValueOf != null && numValueOf.intValue() == 3)) {
                getParent().requestDisallowInterceptTouchEvent(false);
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }
}
