package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.content.res.TypedArrayUtils;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Visibility extends Transition {
    public static final int MODE_IN = 1;
    public static final int MODE_OUT = 2;
    private static final String PROPNAME_SCREEN_LOCATION = "android:visibility:screenLocation";
    private int mMode;
    static final String PROPNAME_VISIBILITY = "android:visibility:visibility";
    private static final String PROPNAME_PARENT = "android:visibility:parent";
    private static final String[] sTransitionProperties = {PROPNAME_VISIBILITY, PROPNAME_PARENT};

    private static class DisappearListener extends AnimatorListenerAdapter implements Transition.TransitionListener, AnimatorUtils.AnimatorPauseListenerCompat {
        boolean mCanceled = false;
        private final int mFinalVisibility;
        private boolean mLayoutSuppressed;
        private final ViewGroup mParent;
        private final boolean mSuppressLayout;
        private final View mView;

        @Override // androidx.transition.Transition.TransitionListener
        public void a(@NonNull Transition transition) {
            g(true);
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void b(@NonNull Transition transition) {
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void c(@NonNull Transition transition) {
            g(false);
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void e(@NonNull Transition transition) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.mCanceled = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }

        private void f() {
            if (!this.mCanceled) {
                ViewUtils.i(this.mView, this.mFinalVisibility);
                ViewGroup viewGroup = this.mParent;
                if (viewGroup != null) {
                    viewGroup.invalidate();
                }
            }
            g(false);
        }

        private void g(boolean z6) {
            ViewGroup viewGroup;
            if (!this.mSuppressLayout || this.mLayoutSuppressed == z6 || (viewGroup = this.mParent) == null) {
                return;
            }
            this.mLayoutSuppressed = z6;
            ViewGroupUtils.d(viewGroup, z6);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public void onAnimationPause(Animator animator) {
            if (this.mCanceled) {
                return;
            }
            ViewUtils.i(this.mView, this.mFinalVisibility);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public void onAnimationResume(Animator animator) {
            if (this.mCanceled) {
                return;
            }
            ViewUtils.i(this.mView, 0);
        }

        DisappearListener(View view, int i10, boolean z6) {
            this.mView = view;
            this.mFinalVisibility = i10;
            this.mParent = (ViewGroup) view.getParent();
            this.mSuppressLayout = z6;
            g(true);
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void d(@NonNull Transition transition) {
            f();
            transition.T(this);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            f();
        }
    }

    @SuppressLint({"UniqueConstants"})
    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    public @interface Mode {
    }

    public Visibility() {
        this.mMode = 3;
    }

    @Override // androidx.transition.Transition
    @Nullable
    public String[] F() {
        return sTransitionProperties;
    }

    @Override // androidx.transition.Transition
    public boolean H(@Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        if (transitionValues == null && transitionValues2 == null) {
            return false;
        }
        if (transitionValues != null && transitionValues2 != null && transitionValues2.values.containsKey(PROPNAME_VISIBILITY) != transitionValues.values.containsKey(PROPNAME_VISIBILITY)) {
            return false;
        }
        VisibilityInfo visibilityInfoJ0 = j0(transitionValues, transitionValues2);
        if (visibilityInfoJ0.mVisibilityChange) {
            return visibilityInfoJ0.mStartVisibility == 0 || visibilityInfoJ0.mEndVisibility == 0;
        }
        return false;
    }

    public int i0() {
        return this.mMode;
    }

    @Nullable
    public Animator k0(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return null;
    }

    @Nullable
    public Animator m0(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return null;
    }

    private static class VisibilityInfo {
        ViewGroup mEndParent;
        int mEndVisibility;
        boolean mFadeIn;
        ViewGroup mStartParent;
        int mStartVisibility;
        boolean mVisibilityChange;

        VisibilityInfo() {
        }
    }

    @SuppressLint({"RestrictedApi"})
    public Visibility(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mMode = 3;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Styleable.VISIBILITY_TRANSITION);
        int iK = TypedArrayUtils.k(typedArrayObtainStyledAttributes, (XmlResourceParser) attributeSet, "transitionVisibilityMode", 0, 0);
        typedArrayObtainStyledAttributes.recycle();
        if (iK != 0) {
            o0(iK);
        }
    }

    private void h0(TransitionValues transitionValues) {
        transitionValues.values.put(PROPNAME_VISIBILITY, Integer.valueOf(transitionValues.view.getVisibility()));
        transitionValues.values.put(PROPNAME_PARENT, transitionValues.view.getParent());
        int[] iArr = new int[2];
        transitionValues.view.getLocationOnScreen(iArr);
        transitionValues.values.put(PROPNAME_SCREEN_LOCATION, iArr);
    }

    private VisibilityInfo j0(TransitionValues transitionValues, TransitionValues transitionValues2) {
        VisibilityInfo visibilityInfo = new VisibilityInfo();
        visibilityInfo.mVisibilityChange = false;
        visibilityInfo.mFadeIn = false;
        if (transitionValues == null || !transitionValues.values.containsKey(PROPNAME_VISIBILITY)) {
            visibilityInfo.mStartVisibility = -1;
            visibilityInfo.mStartParent = null;
        } else {
            visibilityInfo.mStartVisibility = ((Integer) transitionValues.values.get(PROPNAME_VISIBILITY)).intValue();
            visibilityInfo.mStartParent = (ViewGroup) transitionValues.values.get(PROPNAME_PARENT);
        }
        if (transitionValues2 == null || !transitionValues2.values.containsKey(PROPNAME_VISIBILITY)) {
            visibilityInfo.mEndVisibility = -1;
            visibilityInfo.mEndParent = null;
        } else {
            visibilityInfo.mEndVisibility = ((Integer) transitionValues2.values.get(PROPNAME_VISIBILITY)).intValue();
            visibilityInfo.mEndParent = (ViewGroup) transitionValues2.values.get(PROPNAME_PARENT);
        }
        if (transitionValues != null && transitionValues2 != null) {
            int i10 = visibilityInfo.mStartVisibility;
            int i11 = visibilityInfo.mEndVisibility;
            if (i10 == i11 && visibilityInfo.mStartParent == visibilityInfo.mEndParent) {
                return visibilityInfo;
            }
            if (i10 != i11) {
                if (i10 == 0) {
                    visibilityInfo.mFadeIn = false;
                    visibilityInfo.mVisibilityChange = true;
                } else if (i11 == 0) {
                    visibilityInfo.mFadeIn = true;
                    visibilityInfo.mVisibilityChange = true;
                }
            } else if (visibilityInfo.mEndParent == null) {
                visibilityInfo.mFadeIn = false;
                visibilityInfo.mVisibilityChange = true;
            } else if (visibilityInfo.mStartParent == null) {
                visibilityInfo.mFadeIn = true;
                visibilityInfo.mVisibilityChange = true;
            }
        } else if (transitionValues == null && visibilityInfo.mEndVisibility == 0) {
            visibilityInfo.mFadeIn = true;
            visibilityInfo.mVisibilityChange = true;
        } else if (transitionValues2 == null && visibilityInfo.mStartVisibility == 0) {
            visibilityInfo.mFadeIn = false;
            visibilityInfo.mVisibilityChange = true;
        }
        return visibilityInfo;
    }

    @Nullable
    public Animator l0(ViewGroup viewGroup, TransitionValues transitionValues, int i10, TransitionValues transitionValues2, int i11) {
        if ((this.mMode & 1) != 1 || transitionValues2 == null) {
            return null;
        }
        if (transitionValues == null) {
            View view = (View) transitionValues2.view.getParent();
            if (j0(v(view, false), G(view, false)).mVisibilityChange) {
                return null;
            }
        }
        return k0(viewGroup, transitionValues2.view, transitionValues, transitionValues2);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0040  */
    @Nullable
    public Animator n0(final ViewGroup viewGroup, TransitionValues transitionValues, int i10, TransitionValues transitionValues2, int i11) {
        View view;
        boolean z6;
        boolean z10;
        View view2;
        if ((this.mMode & 2) != 2 || transitionValues == null) {
            return null;
        }
        final View view3 = transitionValues.view;
        View viewA = transitionValues2 != null ? transitionValues2.view : null;
        int i12 = R.id.save_overlay_view;
        final View view4 = (View) view3.getTag(i12);
        if (view4 != null) {
            view2 = null;
            z10 = true;
        } else {
            if (viewA == null || viewA.getParent() == null) {
                if (viewA != null) {
                    view = null;
                    z6 = false;
                } else {
                    viewA = null;
                    view = null;
                    z6 = true;
                }
            } else if (i11 == 4 || view3 == viewA) {
                view = viewA;
                z6 = false;
                viewA = null;
            } else {
                viewA = null;
                view = null;
                z6 = true;
            }
            if (z6) {
                if (view3.getParent() != null) {
                    if (view3.getParent() instanceof View) {
                        View view5 = (View) view3.getParent();
                        if (j0(G(view5, true), v(view5, true)).mVisibilityChange) {
                            int id = view5.getId();
                            if (view5.getParent() != null || id == -1 || viewGroup.findViewById(id) == null || !this.mCanRemoveViews) {
                            }
                        } else {
                            viewA = TransitionUtils.a(viewGroup, view3, view5);
                        }
                    }
                    z10 = false;
                    View view6 = view;
                    view4 = viewA;
                    view2 = view6;
                }
                view2 = view;
                z10 = false;
                view4 = view3;
            } else {
                z10 = false;
                View view7 = view;
                view4 = viewA;
                view2 = view7;
            }
        }
        if (view4 == null) {
            if (view2 == null) {
                return null;
            }
            int visibility = view2.getVisibility();
            ViewUtils.i(view2, 0);
            Animator animatorM0 = m0(viewGroup, view2, transitionValues, transitionValues2);
            if (animatorM0 != null) {
                DisappearListener disappearListener = new DisappearListener(view2, i11, true);
                animatorM0.addListener(disappearListener);
                AnimatorUtils.a(animatorM0, disappearListener);
                b(disappearListener);
            } else {
                ViewUtils.i(view2, visibility);
            }
            return animatorM0;
        }
        if (!z10) {
            int[] iArr = (int[]) transitionValues.values.get(PROPNAME_SCREEN_LOCATION);
            int i13 = iArr[0];
            int i14 = iArr[1];
            int[] iArr2 = new int[2];
            viewGroup.getLocationOnScreen(iArr2);
            view4.offsetLeftAndRight((i13 - iArr2[0]) - view4.getLeft());
            view4.offsetTopAndBottom((i14 - iArr2[1]) - view4.getTop());
            ViewGroupUtils.b(viewGroup).c(view4);
        }
        Animator animatorM1 = m0(viewGroup, view4, transitionValues, transitionValues2);
        if (!z10) {
            if (animatorM1 == null) {
                ViewGroupUtils.b(viewGroup).d(view4);
            } else {
                view3.setTag(i12, view4);
                b(new TransitionListenerAdapter() { // from class: androidx.transition.Visibility.1
                    @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
                    public void a(@NonNull Transition transition) {
                        if (view4.getParent() == null) {
                            ViewGroupUtils.b(viewGroup).c(view4);
                        } else {
                            Visibility.this.cancel();
                        }
                    }

                    @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
                    public void c(@NonNull Transition transition) {
                        ViewGroupUtils.b(viewGroup).d(view4);
                    }

                    @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
                    public void d(@NonNull Transition transition) {
                        view3.setTag(R.id.save_overlay_view, null);
                        ViewGroupUtils.b(viewGroup).d(view4);
                        transition.T(this);
                    }
                });
            }
        }
        return animatorM1;
    }

    public void o0(int i10) {
        if ((i10 & (-4)) != 0) {
            throw new IllegalArgumentException("Only MODE_IN and MODE_OUT flags are allowed");
        }
        this.mMode = i10;
    }

    @Override // androidx.transition.Transition
    public void h(@NonNull TransitionValues transitionValues) {
        h0(transitionValues);
    }

    @Override // androidx.transition.Transition
    public void k(@NonNull TransitionValues transitionValues) {
        h0(transitionValues);
    }

    @Override // androidx.transition.Transition
    @Nullable
    public Animator o(@NonNull ViewGroup viewGroup, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        VisibilityInfo visibilityInfoJ0 = j0(transitionValues, transitionValues2);
        if (visibilityInfoJ0.mVisibilityChange) {
            if (visibilityInfoJ0.mStartParent != null || visibilityInfoJ0.mEndParent != null) {
                if (visibilityInfoJ0.mFadeIn) {
                    return l0(viewGroup, transitionValues, visibilityInfoJ0.mStartVisibility, transitionValues2, visibilityInfoJ0.mEndVisibility);
                }
                return n0(viewGroup, transitionValues, visibilityInfoJ0.mStartVisibility, transitionValues2, visibilityInfoJ0.mEndVisibility);
            }
            return null;
        }
        return null;
    }
}
