package androidx.transition;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewOverlay;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes7.dex */
@RequiresApi
class ViewOverlayApi18 implements ViewOverlayImpl {
    private final ViewOverlay mViewOverlay;

    @Override // androidx.transition.ViewOverlayImpl
    public void a(@NonNull Drawable drawable) {
        this.mViewOverlay.remove(drawable);
    }

    @Override // androidx.transition.ViewOverlayImpl
    public void b(@NonNull Drawable drawable) {
        this.mViewOverlay.add(drawable);
    }

    ViewOverlayApi18(@NonNull View view) {
        this.mViewOverlay = view.getOverlay();
    }
}
