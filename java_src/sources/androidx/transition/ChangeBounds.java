package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.view.ViewCompat;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class ChangeBounds extends Transition {
    private static final Property<View, PointF> BOTTOM_RIGHT_ONLY_PROPERTY;
    private static final Property<ViewBounds, PointF> BOTTOM_RIGHT_PROPERTY;
    private static final Property<Drawable, PointF> DRAWABLE_ORIGIN_PROPERTY;
    private static final Property<View, PointF> POSITION_PROPERTY;
    private static final Property<View, PointF> TOP_LEFT_ONLY_PROPERTY;
    private static final Property<ViewBounds, PointF> TOP_LEFT_PROPERTY;
    private boolean mReparent;
    private boolean mResizeClip;
    private int[] mTempLocation;
    private static final String PROPNAME_BOUNDS = "android:changeBounds:bounds";
    private static final String PROPNAME_CLIP = "android:changeBounds:clip";
    private static final String PROPNAME_PARENT = "android:changeBounds:parent";
    private static final String PROPNAME_WINDOW_X = "android:changeBounds:windowX";
    private static final String PROPNAME_WINDOW_Y = "android:changeBounds:windowY";
    private static final String[] sTransitionProperties = {PROPNAME_BOUNDS, PROPNAME_CLIP, PROPNAME_PARENT, PROPNAME_WINDOW_X, PROPNAME_WINDOW_Y};
    private static RectEvaluator sRectEvaluator = new RectEvaluator();

    private static class ViewBounds {
        private int mBottom;
        private int mBottomRightCalls;
        private int mLeft;
        private int mRight;
        private int mTop;
        private int mTopLeftCalls;
        private View mView;

        private void b() {
            ViewUtils.g(this.mView, this.mLeft, this.mTop, this.mRight, this.mBottom);
            this.mTopLeftCalls = 0;
            this.mBottomRightCalls = 0;
        }

        void a(PointF pointF) {
            this.mRight = Math.round(pointF.x);
            this.mBottom = Math.round(pointF.y);
            int i10 = this.mBottomRightCalls + 1;
            this.mBottomRightCalls = i10;
            if (this.mTopLeftCalls == i10) {
                b();
            }
        }

        void c(PointF pointF) {
            this.mLeft = Math.round(pointF.x);
            this.mTop = Math.round(pointF.y);
            int i10 = this.mTopLeftCalls + 1;
            this.mTopLeftCalls = i10;
            if (i10 == this.mBottomRightCalls) {
                b();
            }
        }

        ViewBounds(View view) {
            this.mView = view;
        }
    }

    public ChangeBounds() {
        this.mTempLocation = new int[2];
        this.mResizeClip = false;
        this.mReparent = false;
    }

    @Override // androidx.transition.Transition
    @NonNull
    public String[] F() {
        return sTransitionProperties;
    }

    public void j0(boolean z6) {
        this.mResizeClip = z6;
    }

    static {
        Class<PointF> cls = PointF.class;
        DRAWABLE_ORIGIN_PROPERTY = new Property<Drawable, PointF>(cls, "boundsOrigin") { // from class: androidx.transition.ChangeBounds.1
            private Rect mBounds = new Rect();

            @Override // android.util.Property
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public PointF get(Drawable drawable) {
                drawable.copyBounds(this.mBounds);
                Rect rect = this.mBounds;
                return new PointF(rect.left, rect.top);
            }

            @Override // android.util.Property
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public void set(Drawable drawable, PointF pointF) {
                drawable.copyBounds(this.mBounds);
                this.mBounds.offsetTo(Math.round(pointF.x), Math.round(pointF.y));
                drawable.setBounds(this.mBounds);
            }
        };
        String str = "topLeft";
        TOP_LEFT_PROPERTY = new Property<ViewBounds, PointF>(cls, str) { // from class: androidx.transition.ChangeBounds.2
            @Override // android.util.Property
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public PointF get(ViewBounds viewBounds) {
                return null;
            }

            @Override // android.util.Property
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public void set(ViewBounds viewBounds, PointF pointF) {
                viewBounds.c(pointF);
            }
        };
        String str2 = "bottomRight";
        BOTTOM_RIGHT_PROPERTY = new Property<ViewBounds, PointF>(cls, str2) { // from class: androidx.transition.ChangeBounds.3
            @Override // android.util.Property
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public PointF get(ViewBounds viewBounds) {
                return null;
            }

            @Override // android.util.Property
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public void set(ViewBounds viewBounds, PointF pointF) {
                viewBounds.a(pointF);
            }
        };
        BOTTOM_RIGHT_ONLY_PROPERTY = new Property<View, PointF>(cls, str2) { // from class: androidx.transition.ChangeBounds.4
            @Override // android.util.Property
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public PointF get(View view) {
                return null;
            }

            @Override // android.util.Property
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public void set(View view, PointF pointF) {
                ViewUtils.g(view, view.getLeft(), view.getTop(), Math.round(pointF.x), Math.round(pointF.y));
            }
        };
        TOP_LEFT_ONLY_PROPERTY = new Property<View, PointF>(cls, str) { // from class: androidx.transition.ChangeBounds.5
            @Override // android.util.Property
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public PointF get(View view) {
                return null;
            }

            @Override // android.util.Property
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public void set(View view, PointF pointF) {
                ViewUtils.g(view, Math.round(pointF.x), Math.round(pointF.y), view.getRight(), view.getBottom());
            }
        };
        POSITION_PROPERTY = new Property<View, PointF>(cls, "position") { // from class: androidx.transition.ChangeBounds.6
            @Override // android.util.Property
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public PointF get(View view) {
                return null;
            }

            @Override // android.util.Property
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public void set(View view, PointF pointF) {
                int iRound = Math.round(pointF.x);
                int iRound2 = Math.round(pointF.y);
                ViewUtils.g(view, iRound, iRound2, view.getWidth() + iRound, view.getHeight() + iRound2);
            }
        };
    }

    @SuppressLint({"RestrictedApi"})
    public ChangeBounds(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTempLocation = new int[2];
        this.mResizeClip = false;
        this.mReparent = false;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Styleable.CHANGE_BOUNDS);
        boolean zE = TypedArrayUtils.e(typedArrayObtainStyledAttributes, (XmlResourceParser) attributeSet, "resizeClip", 0, false);
        typedArrayObtainStyledAttributes.recycle();
        j0(zE);
    }

    private void h0(TransitionValues transitionValues) {
        View view = transitionValues.view;
        if (!ViewCompat.X(view) && view.getWidth() == 0 && view.getHeight() == 0) {
            return;
        }
        transitionValues.values.put(PROPNAME_BOUNDS, new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
        transitionValues.values.put(PROPNAME_PARENT, transitionValues.view.getParent());
        if (this.mReparent) {
            transitionValues.view.getLocationInWindow(this.mTempLocation);
            transitionValues.values.put(PROPNAME_WINDOW_X, Integer.valueOf(this.mTempLocation[0]));
            transitionValues.values.put(PROPNAME_WINDOW_Y, Integer.valueOf(this.mTempLocation[1]));
        }
        if (this.mResizeClip) {
            transitionValues.values.put(PROPNAME_CLIP, ViewCompat.w(view));
        }
    }

    private boolean i0(View view, View view2) {
        if (!this.mReparent) {
            return true;
        }
        TransitionValues transitionValuesV = v(view, true);
        if (transitionValuesV == null) {
            if (view == view2) {
                return true;
            }
        } else if (view2 == transitionValuesV.view) {
            return true;
        }
        return false;
    }

    @Override // androidx.transition.Transition
    @Nullable
    public Animator o(@NonNull final ViewGroup viewGroup, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        int i10;
        final View view;
        ObjectAnimator objectAnimatorA;
        int i11;
        Rect rect;
        ObjectAnimator objectAnimator;
        Animator animatorC;
        if (transitionValues == null || transitionValues2 == null) {
            return null;
        }
        Map<String, Object> map = transitionValues.values;
        Map<String, Object> map2 = transitionValues2.values;
        ViewGroup viewGroup2 = (ViewGroup) map.get(PROPNAME_PARENT);
        ViewGroup viewGroup3 = (ViewGroup) map2.get(PROPNAME_PARENT);
        if (viewGroup2 == null || viewGroup3 == null) {
            return null;
        }
        final View view2 = transitionValues2.view;
        if (!i0(viewGroup2, viewGroup3)) {
            int iIntValue = ((Integer) transitionValues.values.get(PROPNAME_WINDOW_X)).intValue();
            int iIntValue2 = ((Integer) transitionValues.values.get(PROPNAME_WINDOW_Y)).intValue();
            int iIntValue3 = ((Integer) transitionValues2.values.get(PROPNAME_WINDOW_X)).intValue();
            int iIntValue4 = ((Integer) transitionValues2.values.get(PROPNAME_WINDOW_Y)).intValue();
            if (iIntValue == iIntValue3 && iIntValue2 == iIntValue4) {
                return null;
            }
            viewGroup.getLocationInWindow(this.mTempLocation);
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(view2.getWidth(), view2.getHeight(), Bitmap.Config.ARGB_8888);
            view2.draw(new Canvas(bitmapCreateBitmap));
            final BitmapDrawable bitmapDrawable = new BitmapDrawable(bitmapCreateBitmap);
            final float fC = ViewUtils.c(view2);
            ViewUtils.h(view2, 0.0f);
            ViewUtils.b(viewGroup).b(bitmapDrawable);
            PathMotion pathMotionX = x();
            int[] iArr = this.mTempLocation;
            int i12 = iArr[0];
            int i13 = iArr[1];
            ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(bitmapDrawable, PropertyValuesHolderUtils.a(DRAWABLE_ORIGIN_PROPERTY, pathMotionX.a(iIntValue - i12, iIntValue2 - i13, iIntValue3 - i12, iIntValue4 - i13)));
            objectAnimatorOfPropertyValuesHolder.addListener(new AnimatorListenerAdapter() { // from class: androidx.transition.ChangeBounds.10
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    ViewUtils.b(viewGroup).a(bitmapDrawable);
                    ViewUtils.h(view2, fC);
                }
            });
            return objectAnimatorOfPropertyValuesHolder;
        }
        Rect rect2 = (Rect) transitionValues.values.get(PROPNAME_BOUNDS);
        Rect rect3 = (Rect) transitionValues2.values.get(PROPNAME_BOUNDS);
        int i14 = rect2.left;
        final int i15 = rect3.left;
        int i16 = rect2.top;
        final int i17 = rect3.top;
        int i18 = rect2.right;
        final int i19 = rect3.right;
        int i20 = rect2.bottom;
        final int i21 = rect3.bottom;
        int i22 = i18 - i14;
        int i23 = i20 - i16;
        int i24 = i19 - i15;
        int i25 = i21 - i17;
        Rect rect4 = (Rect) transitionValues.values.get(PROPNAME_CLIP);
        final Rect rect5 = (Rect) transitionValues2.values.get(PROPNAME_CLIP);
        if ((i22 == 0 || i23 == 0) && (i24 == 0 || i25 == 0)) {
            i10 = 0;
        } else {
            i10 = (i14 == i15 && i16 == i17) ? 0 : 1;
            if (i18 != i19 || i20 != i21) {
                i10++;
            }
        }
        if ((rect4 != null && !rect4.equals(rect5)) || (rect4 == null && rect5 != null)) {
            i10++;
        }
        if (i10 <= 0) {
            return null;
        }
        if (this.mResizeClip) {
            ViewUtils.g(view, i14, i16, Math.max(i22, i24) + i14, Math.max(i23, i25) + i16);
            if (i14 == i15 && i16 == i17) {
                objectAnimatorA = null;
            } else {
                view = view2;
                objectAnimatorA = ObjectAnimatorUtils.a(view, POSITION_PROPERTY, x().a(i14, i16, i15, i17));
            }
            if (rect4 == null) {
                i11 = 0;
                rect = new Rect(0, 0, i22, i23);
            } else {
                i11 = 0;
                rect = rect4;
            }
            Rect rect6 = rect5 == null ? new Rect(i11, i11, i24, i25) : rect5;
            if (rect.equals(rect6)) {
                objectAnimator = null;
            } else {
                ViewCompat.B0(view, rect);
                RectEvaluator rectEvaluator = sRectEvaluator;
                Object[] objArr = new Object[2];
                objArr[i11] = rect;
                objArr[1] = rect6;
                ObjectAnimator objectAnimatorOfObject = ObjectAnimator.ofObject(view, "clipBounds", rectEvaluator, objArr);
                objectAnimatorOfObject.addListener(new AnimatorListenerAdapter() { // from class: androidx.transition.ChangeBounds.8
                    private boolean mIsCanceled;

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                        this.mIsCanceled = true;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        if (this.mIsCanceled) {
                            return;
                        }
                        ViewCompat.B0(view, rect5);
                        ViewUtils.g(view, i15, i17, i19, i21);
                    }
                });
                objectAnimator = objectAnimatorOfObject;
            }
            animatorC = TransitionUtils.c(objectAnimatorA, objectAnimator);
        } else {
            ViewUtils.g(view, i14, i16, i18, i20);
            if (i10 != 2) {
                animatorC = (i14 == i15 && i16 == i17) ? ObjectAnimatorUtils.a(view, BOTTOM_RIGHT_ONLY_PROPERTY, x().a(i18, i20, i19, i21)) : ObjectAnimatorUtils.a(view, TOP_LEFT_ONLY_PROPERTY, x().a(i14, i16, i15, i17));
            } else if (i22 == i24 && i23 == i25) {
                animatorC = ObjectAnimatorUtils.a(view, POSITION_PROPERTY, x().a(i14, i16, i15, i17));
            } else {
                ViewBounds viewBounds = new ViewBounds(view);
                ObjectAnimator objectAnimatorA2 = ObjectAnimatorUtils.a(viewBounds, TOP_LEFT_PROPERTY, x().a(i14, i16, i15, i17));
                ObjectAnimator objectAnimatorA3 = ObjectAnimatorUtils.a(viewBounds, BOTTOM_RIGHT_PROPERTY, x().a(i18, i20, i19, i21));
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.playTogether(objectAnimatorA2, objectAnimatorA3);
                animatorSet.addListener(new AnimatorListenerAdapter(viewBounds) { // from class: androidx.transition.ChangeBounds.7
                    private ViewBounds mViewBounds;
                    final /* synthetic */ ViewBounds val$viewBounds;

                    {
                        this.val$viewBounds = viewBounds;
                        this.mViewBounds = viewBounds;
                    }
                });
                animatorC = animatorSet;
            }
        }
        if (view.getParent() instanceof ViewGroup) {
            final ViewGroup viewGroup4 = (ViewGroup) view.getParent();
            ViewGroupUtils.d(viewGroup4, true);
            b(new TransitionListenerAdapter() { // from class: androidx.transition.ChangeBounds.9
                boolean mCanceled = false;

                @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
                public void a(@NonNull Transition transition) {
                    ViewGroupUtils.d(viewGroup4, true);
                }

                @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
                public void c(@NonNull Transition transition) {
                    ViewGroupUtils.d(viewGroup4, false);
                }

                @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
                public void d(@NonNull Transition transition) {
                    if (!this.mCanceled) {
                        ViewGroupUtils.d(viewGroup4, false);
                    }
                    transition.T(this);
                }

                @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
                public void e(@NonNull Transition transition) {
                    ViewGroupUtils.d(viewGroup4, false);
                    this.mCanceled = true;
                }
            });
        }
        return animatorC;
    }

    @Override // androidx.transition.Transition
    public void h(@NonNull TransitionValues transitionValues) {
        h0(transitionValues);
    }

    @Override // androidx.transition.Transition
    public void k(@NonNull TransitionValues transitionValues) {
        h0(transitionValues);
    }
}
