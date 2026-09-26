package androidx.transition;

import android.view.View;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes11.dex */
class ViewGroupOverlayApi14 extends ViewOverlayApi14 implements ViewGroupOverlayImpl {
    @Override // androidx.transition.ViewGroupOverlayImpl
    public void c(@NonNull View view) {
        this.mOverlayViewGroup.b(view);
    }

    @Override // androidx.transition.ViewGroupOverlayImpl
    public void d(@NonNull View view) {
        this.mOverlayViewGroup.g(view);
    }
}
