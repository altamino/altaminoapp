package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.Transformation;
import androidx.annotation.AnimRes;
import androidx.annotation.NonNull;
import androidx.core.view.OneShotPreDrawListener;
import androidx.fragment.R;

/* JADX INFO: loaded from: classes6.dex */
class FragmentAnim {

    static class EndViewTransitionAnimation extends AnimationSet implements Runnable {
        private boolean mAnimating;
        private final View mChild;
        private boolean mEnded;
        private final ViewGroup mParent;
        private boolean mTransitionEnded;

        EndViewTransitionAnimation(@NonNull Animation animation, @NonNull ViewGroup viewGroup, @NonNull View view) {
            super(false);
            this.mAnimating = true;
            this.mParent = viewGroup;
            this.mChild = view;
            addAnimation(animation);
            viewGroup.post(this);
        }

        @Override // android.view.animation.AnimationSet, android.view.animation.Animation
        public boolean getTransformation(long j6, @NonNull Transformation transformation) {
            this.mAnimating = true;
            if (this.mEnded) {
                return !this.mTransitionEnded;
            }
            if (!super.getTransformation(j6, transformation)) {
                this.mEnded = true;
                OneShotPreDrawListener.a(this.mParent, this);
            }
            return true;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.mEnded || !this.mAnimating) {
                this.mParent.endViewTransition(this.mChild);
                this.mTransitionEnded = true;
            } else {
                this.mAnimating = false;
                this.mParent.post(this);
            }
        }

        @Override // android.view.animation.Animation
        public boolean getTransformation(long j6, @NonNull Transformation transformation, float f) {
            this.mAnimating = true;
            if (this.mEnded) {
                return !this.mTransitionEnded;
            }
            if (!super.getTransformation(j6, transformation, f)) {
                this.mEnded = true;
                OneShotPreDrawListener.a(this.mParent, this);
            }
            return true;
        }
    }

    static class AnimationOrAnimator {
        public final Animation animation;
        public final Animator animator;

        AnimationOrAnimator(Animation animation) {
            this.animation = animation;
            this.animator = null;
            if (animation == null) {
                throw new IllegalStateException("Animation cannot be null");
            }
        }

        AnimationOrAnimator(Animator animator) {
            this.animation = null;
            this.animator = animator;
            if (animator == null) {
                throw new IllegalStateException("Animator cannot be null");
            }
        }
    }

    @AnimRes
    private static int a(Fragment fragment, boolean z6, boolean z10) {
        if (z10) {
            return z6 ? fragment.getPopEnterAnim() : fragment.getPopExitAnim();
        }
        return z6 ? fragment.getEnterAnim() : fragment.getExitAnim();
    }

    @AnimRes
    private static int d(@NonNull Context context, int i10, boolean z6) {
        if (i10 == 4097) {
            return z6 ? R.animator.fragment_open_enter : R.animator.fragment_open_exit;
        }
        if (i10 == 8194) {
            return z6 ? R.animator.fragment_close_enter : R.animator.fragment_close_exit;
        }
        if (i10 == 8197) {
            return z6 ? c(context, android.R.attr.activityCloseEnterAnimation) : c(context, android.R.attr.activityCloseExitAnimation);
        }
        if (i10 == 4099) {
            return z6 ? R.animator.fragment_fade_enter : R.animator.fragment_fade_exit;
        }
        if (i10 != 4100) {
            return -1;
        }
        return z6 ? c(context, android.R.attr.activityOpenEnterAnimation) : c(context, android.R.attr.activityOpenExitAnimation);
    }

    private FragmentAnim() {
    }

    /* JADX WARN: Code duplicated, block: B:34:0x006f A[Catch: RuntimeException -> 0x0075, TRY_LEAVE, TryCatch #0 {RuntimeException -> 0x0075, blocks: (B:32:0x0069, B:34:0x006f), top: B:45:0x0069 }] */
    static AnimationOrAnimator b(@NonNull Context context, @NonNull Fragment fragment, boolean z6, boolean z10) {
        Animator animatorLoadAnimator;
        int nextTransition = fragment.getNextTransition();
        int iA = a(fragment, z6, z10);
        fragment.setAnimations(0, 0, 0, 0);
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null) {
            int i10 = R.id.visible_removing_fragment_view_tag;
            if (viewGroup.getTag(i10) != null) {
                fragment.mContainer.setTag(i10, null);
            }
        }
        ViewGroup viewGroup2 = fragment.mContainer;
        if (viewGroup2 != null && viewGroup2.getLayoutTransition() != null) {
            return null;
        }
        Animation animationOnCreateAnimation = fragment.onCreateAnimation(nextTransition, z6, iA);
        if (animationOnCreateAnimation != null) {
            return new AnimationOrAnimator(animationOnCreateAnimation);
        }
        Animator animatorOnCreateAnimator = fragment.onCreateAnimator(nextTransition, z6, iA);
        if (animatorOnCreateAnimator != null) {
            return new AnimationOrAnimator(animatorOnCreateAnimator);
        }
        if (iA == 0 && nextTransition != 0) {
            iA = d(context, nextTransition, z6);
        }
        if (iA != 0) {
            boolean zEquals = "anim".equals(context.getResources().getResourceTypeName(iA));
            if (zEquals) {
                try {
                    Animation animationLoadAnimation = AnimationUtils.loadAnimation(context, iA);
                    if (animationLoadAnimation != null) {
                        return new AnimationOrAnimator(animationLoadAnimation);
                    }
                } catch (Resources.NotFoundException e) {
                    throw e;
                } catch (RuntimeException unused) {
                    try {
                        animatorLoadAnimator = AnimatorInflater.loadAnimator(context, iA);
                        if (animatorLoadAnimator != null) {
                            return new AnimationOrAnimator(animatorLoadAnimator);
                        }
                    } catch (RuntimeException e2) {
                        if (!zEquals) {
                            Animation animationLoadAnimation2 = AnimationUtils.loadAnimation(context, iA);
                            if (animationLoadAnimation2 != null) {
                                return new AnimationOrAnimator(animationLoadAnimation2);
                            }
                        } else {
                            throw e2;
                        }
                    }
                }
            } else {
                animatorLoadAnimator = AnimatorInflater.loadAnimator(context, iA);
                if (animatorLoadAnimator != null) {
                    return new AnimationOrAnimator(animatorLoadAnimator);
                }
            }
        }
        return null;
    }

    @AnimRes
    private static int c(@NonNull Context context, int i10) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(android.R.style.Animation.Activity, new int[]{i10});
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, -1);
        typedArrayObtainStyledAttributes.recycle();
        return resourceId;
    }
}
