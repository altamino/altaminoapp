package androidx.databinding.adapters;

import android.annotation.TargetApi;
import android.view.View;
import androidx.annotation.RestrictTo;
import androidx.databinding.BindingMethods;

/* JADX INFO: loaded from: classes8.dex */
@BindingMethods
@RestrictTo
public class ViewBindingAdapter {
    public static final int FADING_EDGE_HORIZONTAL = 1;
    public static final int FADING_EDGE_NONE = 0;
    public static final int FADING_EDGE_VERTICAL = 2;

    /* JADX INFO: renamed from: androidx.databinding.adapters.ViewBindingAdapter$1, reason: invalid class name */
    /* JADX INFO: loaded from: classes6.dex */
    class AnonymousClass1 implements View.OnAttachStateChangeListener {
        final /* synthetic */ OnViewAttachedToWindow val$attach;
        final /* synthetic */ OnViewDetachedFromWindow val$detach;

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            OnViewAttachedToWindow onViewAttachedToWindow = this.val$attach;
            if (onViewAttachedToWindow != null) {
                onViewAttachedToWindow.onViewAttachedToWindow(view);
            }
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            OnViewDetachedFromWindow onViewDetachedFromWindow = this.val$detach;
            if (onViewDetachedFromWindow != null) {
                onViewDetachedFromWindow.onViewDetachedFromWindow(view);
            }
        }
    }

    @TargetApi(12)
    public interface OnViewAttachedToWindow {
        void onViewAttachedToWindow(View view);
    }

    @TargetApi(12)
    public interface OnViewDetachedFromWindow {
        void onViewDetachedFromWindow(View view);
    }
}
