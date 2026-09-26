package coil.target;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public class ImageViewTarget extends GenericViewTarget<ImageView> {

    @NotNull
    private final ImageView view;

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ImageViewTarget) && t.e(getView(), ((ImageViewTarget) obj).getView());
    }

    @Override // f0.b
    @NotNull
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public ImageView getView() {
        return this.view;
    }

    public ImageViewTarget(@NotNull ImageView imageView) {
        this.view = imageView;
    }

    @Override // coil.target.GenericViewTarget, coil.transition.d
    @Nullable
    public Drawable d() {
        return getView().getDrawable();
    }

    @Override // coil.target.GenericViewTarget
    public void e(@Nullable Drawable drawable) {
        getView().setImageDrawable(drawable);
    }

    public int hashCode() {
        return getView().hashCode();
    }
}
