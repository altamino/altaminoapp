package androidx.fragment.app;

import android.animation.LayoutTransition;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import androidx.annotation.RequiresApi;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.fragment.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class FragmentContainerView extends FrameLayout {

    @Nullable
    private View.OnApplyWindowInsetsListener applyWindowInsetsListener;

    @NotNull
    private final List<View> disappearingFragmentChildren;
    private boolean drawDisappearingViewsFirst;

    @NotNull
    private final List<View> transitioningFragmentViews;

    @RequiresApi
    public static final class Api20Impl {

        @NotNull
        public static final Api20Impl INSTANCE = new Api20Impl();

        @NotNull
        public final WindowInsets a(@NotNull View.OnApplyWindowInsetsListener onApplyWindowInsetsListener, @NotNull View v5, @NotNull WindowInsets insets) {
            t.j(onApplyWindowInsetsListener, "onApplyWindowInsetsListener");
            t.j(v5, "v");
            t.j(insets, "insets");
            WindowInsets windowInsetsOnApplyWindowInsets = onApplyWindowInsetsListener.onApplyWindowInsets(v5, insets);
            t.i(windowInsetsOnApplyWindowInsets, "onApplyWindowInsetsListe…lyWindowInsets(v, insets)");
            return windowInsetsOnApplyWindowInsets;
        }

        private Api20Impl() {
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FragmentContainerView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        t.j(context, "context");
    }

    @Override // android.view.View
    @RequiresApi
    @NotNull
    public WindowInsets onApplyWindowInsets(@NotNull WindowInsets insets) {
        t.j(insets, "insets");
        return insets;
    }

    public final void setDrawDisappearingViewsLast(boolean z6) {
        this.drawDisappearingViewsFirst = z6;
    }

    @Override // android.view.View
    public void setOnApplyWindowInsetsListener(@NotNull View.OnApplyWindowInsetsListener listener) {
        t.j(listener, "listener");
        this.applyWindowInsetsListener = listener;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FragmentContainerView(@NotNull Context context) {
        super(context);
        t.j(context, "context");
        this.disappearingFragmentChildren = new ArrayList();
        this.transitioningFragmentViews = new ArrayList();
        this.drawDisappearingViewsFirst = true;
    }

    private final void a(View view) {
        if (this.transitioningFragmentViews.contains(view)) {
            this.disappearingFragmentChildren.add(view);
        }
    }

    @Override // android.view.ViewGroup
    public void addView(@NotNull View child, int i10, @Nullable ViewGroup.LayoutParams layoutParams) {
        t.j(child, "child");
        if (FragmentManager.J0(child) != null) {
            super.addView(child, i10, layoutParams);
            return;
        }
        throw new IllegalStateException(("Views added to a FragmentContainerView must be associated with a Fragment. View " + child + " is not associated with a Fragment.").toString());
    }

    @Override // android.view.ViewGroup, android.view.View
    @RequiresApi
    @NotNull
    public WindowInsets dispatchApplyWindowInsets(@NotNull WindowInsets insets) {
        WindowInsetsCompat windowInsetsCompatF0;
        t.j(insets, "insets");
        WindowInsetsCompat windowInsetsCompatY = WindowInsetsCompat.y(insets);
        t.i(windowInsetsCompatY, "toWindowInsetsCompat(insets)");
        View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = this.applyWindowInsetsListener;
        if (onApplyWindowInsetsListener != null) {
            Api20Impl api20Impl = Api20Impl.INSTANCE;
            t.g(onApplyWindowInsetsListener);
            windowInsetsCompatF0 = WindowInsetsCompat.y(api20Impl.a(onApplyWindowInsetsListener, this, insets));
        } else {
            windowInsetsCompatF0 = ViewCompat.f0(this, windowInsetsCompatY);
        }
        t.i(windowInsetsCompatF0, "if (applyWindowInsetsLis…, insetsCompat)\n        }");
        if (!windowInsetsCompatF0.q()) {
            int childCount = getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                ViewCompat.i(getChildAt(i10), windowInsetsCompatF0);
            }
        }
        return insets;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(@NotNull Canvas canvas) {
        t.j(canvas, "canvas");
        if (this.drawDisappearingViewsFirst) {
            Iterator<T> it = this.disappearingFragmentChildren.iterator();
            while (it.hasNext()) {
                super.drawChild(canvas, (View) it.next(), getDrawingTime());
            }
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(@NotNull Canvas canvas, @NotNull View child, long j6) {
        t.j(canvas, "canvas");
        t.j(child, "child");
        if (this.drawDisappearingViewsFirst && (!this.disappearingFragmentChildren.isEmpty()) && this.disappearingFragmentChildren.contains(child)) {
            return false;
        }
        return super.drawChild(canvas, child, j6);
    }

    @Override // android.view.ViewGroup
    public void endViewTransition(@NotNull View view) {
        t.j(view, "view");
        this.transitioningFragmentViews.remove(view);
        if (this.disappearingFragmentChildren.remove(view)) {
            this.drawDisappearingViewsFirst = true;
        }
        super.endViewTransition(view);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(@NotNull View view) {
        t.j(view, "view");
        a(view);
        super.removeView(view);
    }

    @Override // android.view.ViewGroup
    public void removeViewInLayout(@NotNull View view) {
        t.j(view, "view");
        a(view);
        super.removeViewInLayout(view);
    }

    @Override // android.view.ViewGroup
    public void removeViews(int i10, int i11) {
        int i12 = i10 + i11;
        for (int i13 = i10; i13 < i12; i13++) {
            View view = getChildAt(i13);
            t.i(view, "view");
            a(view);
        }
        super.removeViews(i10, i11);
    }

    @Override // android.view.ViewGroup
    public void removeViewsInLayout(int i10, int i11) {
        int i12 = i10 + i11;
        for (int i13 = i10; i13 < i12; i13++) {
            View view = getChildAt(i13);
            t.i(view, "view");
            a(view);
        }
        super.removeViewsInLayout(i10, i11);
    }

    @Override // android.view.ViewGroup
    public void setLayoutTransition(@Nullable LayoutTransition layoutTransition) {
        throw new UnsupportedOperationException("FragmentContainerView does not support Layout Transitions or animateLayoutChanges=\"true\".");
    }

    @Override // android.view.ViewGroup
    public void startViewTransition(@NotNull View view) {
        t.j(view, "view");
        if (view.getParent() == this) {
            this.transitioningFragmentViews.add(view);
        }
        super.startViewTransition(view);
    }

    public final <F extends Fragment> F getFragment() {
        return (F) FragmentManager.o0(this).l0(getId());
    }

    @Override // android.view.ViewGroup
    public void removeAllViewsInLayout() {
        int childCount = getChildCount();
        while (true) {
            childCount--;
            if (-1 < childCount) {
                View view = getChildAt(childCount);
                t.i(view, "view");
                a(view);
            } else {
                super.removeAllViewsInLayout();
                return;
            }
        }
    }

    @Override // android.view.ViewGroup
    public void removeViewAt(int i10) {
        View view = getChildAt(i10);
        t.i(view, "view");
        a(view);
        super.removeViewAt(i10);
    }

    public /* synthetic */ FragmentContainerView(Context context, AttributeSet attributeSet, int i10, int i11, k kVar) {
        this(context, attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FragmentContainerView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        String str;
        super(context, attributeSet, i10);
        t.j(context, "context");
        this.disappearingFragmentChildren = new ArrayList();
        this.transitioningFragmentViews = new ArrayList();
        this.drawDisappearingViewsFirst = true;
        if (attributeSet != null) {
            String classAttribute = attributeSet.getClassAttribute();
            int[] FragmentContainerView = R.styleable.FragmentContainerView;
            t.i(FragmentContainerView, "FragmentContainerView");
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, FragmentContainerView, 0, 0);
            if (classAttribute == null) {
                classAttribute = typedArrayObtainStyledAttributes.getString(R.styleable.FragmentContainerView_android_name);
                str = "android:name";
            } else {
                str = "class";
            }
            typedArrayObtainStyledAttributes.recycle();
            if (classAttribute == null || isInEditMode()) {
                return;
            }
            throw new UnsupportedOperationException("FragmentContainerView must be within a FragmentActivity to use " + str + "=\"" + classAttribute + kotlinx.serialization.json.internal.b.STRING);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FragmentContainerView(@NotNull Context context, @NotNull AttributeSet attrs, @NotNull FragmentManager fm) {
        String str;
        super(context, attrs);
        t.j(context, "context");
        t.j(attrs, "attrs");
        t.j(fm, "fm");
        this.disappearingFragmentChildren = new ArrayList();
        this.transitioningFragmentViews = new ArrayList();
        this.drawDisappearingViewsFirst = true;
        String classAttribute = attrs.getClassAttribute();
        int[] FragmentContainerView = R.styleable.FragmentContainerView;
        t.i(FragmentContainerView, "FragmentContainerView");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, FragmentContainerView, 0, 0);
        classAttribute = classAttribute == null ? typedArrayObtainStyledAttributes.getString(R.styleable.FragmentContainerView_android_name) : classAttribute;
        String string = typedArrayObtainStyledAttributes.getString(R.styleable.FragmentContainerView_android_tag);
        typedArrayObtainStyledAttributes.recycle();
        int id = getId();
        Fragment fragmentL0 = fm.l0(id);
        if (classAttribute != null && fragmentL0 == null) {
            if (id == -1) {
                if (string != null) {
                    str = " with tag " + string;
                } else {
                    str = "";
                }
                throw new IllegalStateException("FragmentContainerView must have an android:id to add Fragment " + classAttribute + str);
            }
            Fragment fragmentA = fm.z0().a(context.getClassLoader(), classAttribute);
            t.i(fragmentA, "fm.fragmentFactory.insta…ontext.classLoader, name)");
            fragmentA.onInflate(context, attrs, (Bundle) null);
            fm.q().C(true).d(this, fragmentA, string).m();
        }
        fm.g1(this);
    }
}
