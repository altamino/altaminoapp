package androidx.vectordrawable.graphics.drawable;

import android.graphics.drawable.Animatable;
import android.graphics.drawable.Animatable2;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes6.dex */
public interface Animatable2Compat extends Animatable {

    public static abstract class AnimationCallback {
        Animatable2.AnimationCallback mPlatformCallback;

        /* JADX INFO: renamed from: androidx.vectordrawable.graphics.drawable.Animatable2Compat$AnimationCallback$1, reason: invalid class name */
        /* JADX INFO: loaded from: classes9.dex */
        class AnonymousClass1 extends Animatable2.AnimationCallback {
            final /* synthetic */ AnimationCallback this$0;

            @Override // android.graphics.drawable.Animatable2.AnimationCallback
            public void onAnimationEnd(Drawable drawable) {
                this.this$0.a(drawable);
            }

            @Override // android.graphics.drawable.Animatable2.AnimationCallback
            public void onAnimationStart(Drawable drawable) {
                this.this$0.b(drawable);
            }
        }

        public void a(Drawable drawable) {
        }

        public void b(Drawable drawable) {
        }
    }
}
