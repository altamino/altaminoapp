package androidx.databinding.adapters;

import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.annotation.RestrictTo;
import androidx.databinding.BindingMethods;

/* JADX INFO: loaded from: classes.dex */
@BindingMethods
@RestrictTo
public class ViewGroupBindingAdapter {

    /* JADX INFO: renamed from: androidx.databinding.adapters.ViewGroupBindingAdapter$1, reason: invalid class name */
    /* JADX INFO: loaded from: classes10.dex */
    class AnonymousClass1 implements ViewGroup.OnHierarchyChangeListener {
        final /* synthetic */ OnChildViewAdded val$added;
        final /* synthetic */ OnChildViewRemoved val$removed;

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewAdded(View view, View view2) {
            OnChildViewAdded onChildViewAdded = this.val$added;
            if (onChildViewAdded != null) {
                onChildViewAdded.onChildViewAdded(view, view2);
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewRemoved(View view, View view2) {
            OnChildViewRemoved onChildViewRemoved = this.val$removed;
            if (onChildViewRemoved != null) {
                onChildViewRemoved.onChildViewRemoved(view, view2);
            }
        }
    }

    /* JADX INFO: renamed from: androidx.databinding.adapters.ViewGroupBindingAdapter$2, reason: invalid class name */
    /* JADX INFO: loaded from: classes10.dex */
    class AnonymousClass2 implements Animation.AnimationListener {
        final /* synthetic */ OnAnimationEnd val$end;
        final /* synthetic */ OnAnimationRepeat val$repeat;
        final /* synthetic */ OnAnimationStart val$start;

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            OnAnimationEnd onAnimationEnd = this.val$end;
            if (onAnimationEnd != null) {
                onAnimationEnd.onAnimationEnd(animation);
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
            OnAnimationRepeat onAnimationRepeat = this.val$repeat;
            if (onAnimationRepeat != null) {
                onAnimationRepeat.onAnimationRepeat(animation);
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
            OnAnimationStart onAnimationStart = this.val$start;
            if (onAnimationStart != null) {
                onAnimationStart.onAnimationStart(animation);
            }
        }
    }

    public interface OnAnimationEnd {
        void onAnimationEnd(Animation animation);
    }

    public interface OnAnimationRepeat {
        void onAnimationRepeat(Animation animation);
    }

    public interface OnAnimationStart {
        void onAnimationStart(Animation animation);
    }

    public interface OnChildViewAdded {
        void onChildViewAdded(View view, View view2);
    }

    public interface OnChildViewRemoved {
        void onChildViewRemoved(View view, View view2);
    }
}
