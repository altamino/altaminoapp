package com.google.android.material.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.ColorDrawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.inputmethod.InputMethodManager;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;

/* JADX INFO: loaded from: classes3.dex */
@RestrictTo
public class u {

    class a implements Runnable {
        final /* synthetic */ View val$view;

        a(View view) {
            this.val$view = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            ((InputMethodManager) this.val$view.getContext().getSystemService("input_method")).showSoftInput(this.val$view, 1);
        }
    }

    class b implements e {
        final /* synthetic */ e val$listener;
        final /* synthetic */ boolean val$paddingBottomSystemWindowInsets;
        final /* synthetic */ boolean val$paddingLeftSystemWindowInsets;
        final /* synthetic */ boolean val$paddingRightSystemWindowInsets;

        b(boolean z6, boolean z10, boolean z11, e eVar) {
            this.val$paddingBottomSystemWindowInsets = z6;
            this.val$paddingLeftSystemWindowInsets = z10;
            this.val$paddingRightSystemWindowInsets = z11;
            this.val$listener = eVar;
        }

        @Override // com.google.android.material.internal.u.e
        @NonNull
        public WindowInsetsCompat a(View view, @NonNull WindowInsetsCompat windowInsetsCompat, @NonNull f fVar) {
            if (this.val$paddingBottomSystemWindowInsets) {
                fVar.bottom += windowInsetsCompat.j();
            }
            boolean zG = u.g(view);
            if (this.val$paddingLeftSystemWindowInsets) {
                if (zG) {
                    fVar.end += windowInsetsCompat.k();
                } else {
                    fVar.start += windowInsetsCompat.k();
                }
            }
            if (this.val$paddingRightSystemWindowInsets) {
                if (zG) {
                    fVar.start += windowInsetsCompat.l();
                } else {
                    fVar.end += windowInsetsCompat.l();
                }
            }
            fVar.a(view);
            e eVar = this.val$listener;
            return eVar != null ? eVar.a(view, windowInsetsCompat, fVar) : windowInsetsCompat;
        }
    }

    class c implements OnApplyWindowInsetsListener {
        final /* synthetic */ f val$initialPadding;
        final /* synthetic */ e val$listener;

        c(e eVar, f fVar) {
            this.val$listener = eVar;
            this.val$initialPadding = fVar;
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        public WindowInsetsCompat a(View view, WindowInsetsCompat windowInsetsCompat) {
            return this.val$listener.a(view, windowInsetsCompat, new f(this.val$initialPadding));
        }
    }

    public interface e {
        WindowInsetsCompat a(View view, WindowInsetsCompat windowInsetsCompat, f fVar);
    }

    public static class f {
        public int bottom;
        public int end;
        public int start;
        public int top;

        public f(int i10, int i11, int i12, int i13) {
            this.start = i10;
            this.top = i11;
            this.end = i12;
            this.bottom = i13;
        }

        public f(@NonNull f fVar) {
            this.start = fVar.start;
            this.top = fVar.top;
            this.end = fVar.end;
            this.bottom = fVar.bottom;
        }

        public void a(View view) {
            ViewCompat.M0(view, this.start, this.top, this.end, this.bottom);
        }
    }

    public static PorterDuff.Mode h(int i10, PorterDuff.Mode mode) {
        if (i10 == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i10 == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i10 == 9) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        switch (i10) {
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }

    class d implements View.OnAttachStateChangeListener {
        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }

        d() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(@NonNull View view) {
            view.removeOnAttachStateChangeListener(this);
            ViewCompat.q0(view);
        }
    }

    public static void a(@Nullable View view, @NonNull ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        if (view != null) {
            view.getViewTreeObserver().addOnGlobalLayoutListener(onGlobalLayoutListener);
        }
    }

    public static void c(@NonNull View view, @NonNull e eVar) {
        ViewCompat.L0(view, new c(eVar, new f(ViewCompat.I(view), view.getPaddingTop(), ViewCompat.H(view), view.getPaddingBottom())));
        k(view);
    }

    public static void i(@Nullable View view, @NonNull ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        if (view != null) {
            j(view.getViewTreeObserver(), onGlobalLayoutListener);
        }
    }

    public static void b(@NonNull View view, @Nullable AttributeSet attributeSet, int i10, int i11, @Nullable e eVar) {
        TypedArray typedArrayObtainStyledAttributes = view.getContext().obtainStyledAttributes(attributeSet, d3.l.Insets, i10, i11);
        boolean z6 = typedArrayObtainStyledAttributes.getBoolean(d3.l.Insets_paddingBottomSystemWindowInsets, false);
        boolean z10 = typedArrayObtainStyledAttributes.getBoolean(d3.l.Insets_paddingLeftSystemWindowInsets, false);
        boolean z11 = typedArrayObtainStyledAttributes.getBoolean(d3.l.Insets_paddingRightSystemWindowInsets, false);
        typedArrayObtainStyledAttributes.recycle();
        c(view, new b(z6, z10, z11, eVar));
    }

    public static float d(@NonNull Context context, @Dimension int i10) {
        return TypedValue.applyDimension(1, i10, context.getResources().getDisplayMetrics());
    }

    @Nullable
    public static Integer e(@NonNull View view) {
        if (view.getBackground() instanceof ColorDrawable) {
            return Integer.valueOf(((ColorDrawable) view.getBackground()).getColor());
        }
        return null;
    }

    public static float f(@NonNull View view) {
        float fY = 0.0f;
        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
            fY += ViewCompat.y((View) parent);
        }
        return fY;
    }

    public static boolean g(View view) {
        if (ViewCompat.D(view) == 1) {
            return true;
        }
        return false;
    }

    public static void j(@NonNull ViewTreeObserver viewTreeObserver, @NonNull ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        viewTreeObserver.removeOnGlobalLayoutListener(onGlobalLayoutListener);
    }

    public static void k(@NonNull View view) {
        if (ViewCompat.W(view)) {
            ViewCompat.q0(view);
        } else {
            view.addOnAttachStateChangeListener(new d());
        }
    }

    public static void l(@NonNull View view) {
        view.requestFocus();
        view.post(new a(view));
    }
}
