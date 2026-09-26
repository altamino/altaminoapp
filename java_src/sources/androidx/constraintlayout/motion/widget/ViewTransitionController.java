package androidx.constraintlayout.motion.widget;

import android.graphics.Rect;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.constraintlayout.widget.SharedValues;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public class ViewTransitionController {
    ArrayList<ViewTransition.Animate> animations;
    private final MotionLayout mMotionLayout;
    private HashSet<View> mRelatedViews;
    private ArrayList<ViewTransition> viewTransitions = new ArrayList<>();
    private String TAG = "ViewTransitionController";
    ArrayList<ViewTransition.Animate> removeList = new ArrayList<>();

    private void j(ViewTransition vt, View... view) {
        int currentState = this.mMotionLayout.getCurrentState();
        if (vt.mViewTransitionMode == 2) {
            vt.c(this, this.mMotionLayout, currentState, null, view);
            return;
        }
        if (currentState != -1) {
            ConstraintSet constraintSetN = this.mMotionLayout.N(currentState);
            if (constraintSetN == null) {
                return;
            }
            vt.c(this, this.mMotionLayout, currentState, constraintSetN, view);
            return;
        }
        Log.w(this.TAG, "No support for ViewTransition within transition yet. Currently: " + this.mMotionLayout.toString());
    }

    public void a(ViewTransition viewTransition) {
        this.viewTransitions.add(viewTransition);
        this.mRelatedViews = null;
        if (viewTransition.i() == 4) {
            f(viewTransition, true);
        } else if (viewTransition.i() == 5) {
            f(viewTransition, false);
        }
    }

    void b(ViewTransition.Animate animation) {
        if (this.animations == null) {
            this.animations = new ArrayList<>();
        }
        this.animations.add(animation);
    }

    void c() {
        ArrayList<ViewTransition.Animate> arrayList = this.animations;
        if (arrayList == null) {
            return;
        }
        Iterator<ViewTransition.Animate> it = arrayList.iterator();
        while (it.hasNext()) {
            it.next().a();
        }
        this.animations.removeAll(this.removeList);
        this.removeList.clear();
        if (this.animations.isEmpty()) {
            this.animations = null;
        }
    }

    boolean d(int viewTransitionId, MotionController motionController) {
        for (ViewTransition viewTransition : this.viewTransitions) {
            if (viewTransition.e() == viewTransitionId) {
                viewTransition.mKeyFrames.a(motionController);
                return true;
            }
        }
        return false;
    }

    void e() {
        this.mMotionLayout.invalidate();
    }

    void g(ViewTransition.Animate animation) {
        this.removeList.add(animation);
    }

    void h(MotionEvent event) {
        int currentState = this.mMotionLayout.getCurrentState();
        if (currentState == -1) {
            return;
        }
        if (this.mRelatedViews == null) {
            this.mRelatedViews = new HashSet<>();
            for (ViewTransition viewTransition : this.viewTransitions) {
                int childCount = this.mMotionLayout.getChildCount();
                for (int i10 = 0; i10 < childCount; i10++) {
                    View childAt = this.mMotionLayout.getChildAt(i10);
                    if (viewTransition.k(childAt)) {
                        childAt.getId();
                        this.mRelatedViews.add(childAt);
                    }
                }
            }
        }
        float x6 = event.getX();
        float y6 = event.getY();
        Rect rect = new Rect();
        int action = event.getAction();
        ArrayList<ViewTransition.Animate> arrayList = this.animations;
        if (arrayList != null && !arrayList.isEmpty()) {
            Iterator<ViewTransition.Animate> it = this.animations.iterator();
            while (it.hasNext()) {
                it.next().d(action, x6, y6);
            }
        }
        if (action == 0 || action == 1) {
            ConstraintSet constraintSetN = this.mMotionLayout.N(currentState);
            Iterator<ViewTransition> it2 = this.viewTransitions.iterator();
            while (it2.hasNext()) {
                ViewTransition next = it2.next();
                if (next.m(action)) {
                    for (View view : this.mRelatedViews) {
                        if (next.k(view)) {
                            view.getHitRect(rect);
                            if (rect.contains((int) x6, (int) y6)) {
                                next.c(this, this.mMotionLayout, currentState, constraintSetN, view);
                            }
                            next = next;
                        }
                    }
                }
            }
        }
    }

    void i(int id, View... views) {
        ArrayList arrayList = new ArrayList();
        ViewTransition viewTransition = null;
        for (ViewTransition viewTransition2 : this.viewTransitions) {
            if (viewTransition2.e() == id) {
                for (View view : views) {
                    if (viewTransition2.d(view)) {
                        arrayList.add(view);
                    }
                }
                if (!arrayList.isEmpty()) {
                    j(viewTransition2, (View[]) arrayList.toArray(new View[0]));
                    arrayList.clear();
                }
                viewTransition = viewTransition2;
            }
        }
        if (viewTransition == null) {
            Log.e(this.TAG, " Could not find ViewTransition");
        }
    }

    public ViewTransitionController(MotionLayout layout) {
        this.mMotionLayout = layout;
    }

    private void f(final ViewTransition viewTransition, final boolean isSet) {
        final int iH = viewTransition.h();
        final int iG = viewTransition.g();
        ConstraintLayout.getSharedValues().a(viewTransition.h(), new SharedValues.SharedValuesListener() { // from class: androidx.constraintlayout.motion.widget.ViewTransitionController.1
        });
    }
}
