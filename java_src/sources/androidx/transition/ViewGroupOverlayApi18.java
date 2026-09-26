package androidx.transition;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroupOverlay;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes11.dex */
@RequiresApi
class ViewGroupOverlayApi18 implements ViewGroupOverlayImpl {
    private final ViewGroupOverlay mViewGroupOverlay;

    @Override // androidx.transition.ViewOverlayImpl
    public void a(@NonNull Drawable drawable) {
        this.mViewGroupOverlay.remove(drawable);
    }

    @Override // androidx.transition.ViewOverlayImpl
    public void b(@NonNull Drawable drawable) {
        this.mViewGroupOverlay.add(drawable);
    }

    @Override // androidx.transition.ViewGroupOverlayImpl
    public void c(@NonNull View view) {
        this.mViewGroupOverlay.add(view);
    }

    @Override // androidx.transition.ViewGroupOverlayImpl
    public void d(@NonNull View view) {
        this.mViewGroupOverlay.remove(view);
    }

    ViewGroupOverlayApi18(@NonNull ViewGroup viewGroup) {
        this.mViewGroupOverlay = viewGroup.getOverlay();
    }
}
