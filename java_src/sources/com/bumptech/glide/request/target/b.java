package com.bumptech.glide.request.target;

import android.content.Context;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.g;
import com.bumptech.glide.util.j;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public abstract class b<T extends View, Z> implements e<Z> {
    private static final String TAG = "CustomViewTarget";

    @IdRes
    private static final int VIEW_TAG_ID = g.glide_custom_view_target_tag;

    @Nullable
    private View.OnAttachStateChangeListener attachStateListener;
    private boolean isAttachStateListenerAdded;
    private boolean isClearedByUs;
    private final a sizeDeterminer;
    protected final T view;

    @VisibleForTesting
    static final class a {
        private static final int PENDING_SIZE = 0;

        @Nullable
        @VisibleForTesting
        static Integer maxDisplayLength;
        private final List<d> cbs = new ArrayList();

        @Nullable
        private ViewTreeObserverOnPreDrawListenerC0137a layoutListener;
        private final View view;
        boolean waitForLayout;

        private boolean h(int i10) {
            return i10 > 0 || i10 == Integer.MIN_VALUE;
        }

        /* JADX INFO: renamed from: com.bumptech.glide.request.target.b$a$a, reason: collision with other inner class name */
        private static final class ViewTreeObserverOnPreDrawListenerC0137a implements ViewTreeObserver.OnPreDrawListener {
            private final WeakReference<a> sizeDeterminerRef;

            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                if (Log.isLoggable(b.TAG, 2)) {
                    Log.v(b.TAG, "OnGlobalLayoutListener called attachStateListener=" + this);
                }
                a aVar = this.sizeDeterminerRef.get();
                if (aVar == null) {
                    return true;
                }
                aVar.a();
                return true;
            }

            ViewTreeObserverOnPreDrawListenerC0137a(@NonNull a aVar) {
                this.sizeDeterminerRef = new WeakReference<>(aVar);
            }
        }

        private static int c(@NonNull Context context) {
            if (maxDisplayLength == null) {
                Display defaultDisplay = ((WindowManager) j.d((WindowManager) context.getSystemService("window"))).getDefaultDisplay();
                Point point = new Point();
                defaultDisplay.getSize(point);
                maxDisplayLength = Integer.valueOf(Math.max(point.x, point.y));
            }
            return maxDisplayLength.intValue();
        }

        private int e(int i10, int i11, int i12) {
            int i13 = i11 - i12;
            if (i13 > 0) {
                return i13;
            }
            if (this.waitForLayout && this.view.isLayoutRequested()) {
                return 0;
            }
            int i14 = i10 - i12;
            if (i14 > 0) {
                return i14;
            }
            if (this.view.isLayoutRequested() || i11 != -2) {
                return 0;
            }
            if (Log.isLoggable(b.TAG, 4)) {
                Log.i(b.TAG, "Glide treats LayoutParams.WRAP_CONTENT as a request for an image the size of this device's screen dimensions. If you want to load the original image and are ok with the corresponding memory cost and OOMs (depending on the input size), use .override(Target.SIZE_ORIGINAL). Otherwise, use LayoutParams.MATCH_PARENT, set layout_width and layout_height to fixed dimension, or use .override() with fixed dimensions.");
            }
            return c(this.view.getContext());
        }

        private int f() {
            int paddingTop = this.view.getPaddingTop() + this.view.getPaddingBottom();
            ViewGroup.LayoutParams layoutParams = this.view.getLayoutParams();
            return e(this.view.getHeight(), layoutParams != null ? layoutParams.height : 0, paddingTop);
        }

        private int g() {
            int paddingLeft = this.view.getPaddingLeft() + this.view.getPaddingRight();
            ViewGroup.LayoutParams layoutParams = this.view.getLayoutParams();
            return e(this.view.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingLeft);
        }

        private void j(int i10, int i11) {
            Iterator it = new ArrayList(this.cbs).iterator();
            while (it.hasNext()) {
                ((d) it.next()).d(i10, i11);
            }
        }

        void a() {
            if (this.cbs.isEmpty()) {
                return;
            }
            int iG = g();
            int iF = f();
            if (i(iG, iF)) {
                j(iG, iF);
                b();
            }
        }

        void b() {
            ViewTreeObserver viewTreeObserver = this.view.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(this.layoutListener);
            }
            this.layoutListener = null;
            this.cbs.clear();
        }

        void k(@NonNull d dVar) {
            this.cbs.remove(dVar);
        }

        a(@NonNull View view) {
            this.view = view;
        }

        private boolean i(int i10, int i11) {
            if (h(i10) && h(i11)) {
                return true;
            }
            return false;
        }

        void d(@NonNull d dVar) {
            int iG = g();
            int iF = f();
            if (i(iG, iF)) {
                dVar.d(iG, iF);
                return;
            }
            if (!this.cbs.contains(dVar)) {
                this.cbs.add(dVar);
            }
            if (this.layoutListener == null) {
                ViewTreeObserver viewTreeObserver = this.view.getViewTreeObserver();
                ViewTreeObserverOnPreDrawListenerC0137a viewTreeObserverOnPreDrawListenerC0137a = new ViewTreeObserverOnPreDrawListenerC0137a(this);
                this.layoutListener = viewTreeObserverOnPreDrawListenerC0137a;
                viewTreeObserver.addOnPreDrawListener(viewTreeObserverOnPreDrawListenerC0137a);
            }
        }
    }

    protected abstract void l(@Nullable Drawable drawable);

    protected void m(@Nullable Drawable drawable) {
    }

    @Override // com.bumptech.glide.manager.i
    public void onDestroy() {
    }

    @Override // com.bumptech.glide.manager.i
    public void onStart() {
    }

    @Override // com.bumptech.glide.manager.i
    public void onStop() {
    }

    @Nullable
    private Object i() {
        return this.view.getTag(VIEW_TAG_ID);
    }

    private void j() {
        View.OnAttachStateChangeListener onAttachStateChangeListener = this.attachStateListener;
        if (onAttachStateChangeListener == null || this.isAttachStateListenerAdded) {
            return;
        }
        this.view.addOnAttachStateChangeListener(onAttachStateChangeListener);
        this.isAttachStateListenerAdded = true;
    }

    private void k() {
        View.OnAttachStateChangeListener onAttachStateChangeListener = this.attachStateListener;
        if (onAttachStateChangeListener == null || !this.isAttachStateListenerAdded) {
            return;
        }
        this.view.removeOnAttachStateChangeListener(onAttachStateChangeListener);
        this.isAttachStateListenerAdded = false;
    }

    private void n(@Nullable Object obj) {
        this.view.setTag(VIEW_TAG_ID, obj);
    }

    @Override // com.bumptech.glide.request.target.e
    public final void b(@NonNull d dVar) {
        this.sizeDeterminer.k(dVar);
    }

    @Override // com.bumptech.glide.request.target.e
    public final void d(@Nullable Drawable drawable) {
        this.sizeDeterminer.b();
        l(drawable);
        if (this.isClearedByUs) {
            return;
        }
        k();
    }

    @Override // com.bumptech.glide.request.target.e
    public final void h(@NonNull d dVar) {
        this.sizeDeterminer.d(dVar);
    }

    public String toString() {
        return "Target for: " + this.view;
    }

    public b(@NonNull T t5) {
        this.view = (T) j.d(t5);
        this.sizeDeterminer = new a(t5);
    }

    @Override // com.bumptech.glide.request.target.e
    @Nullable
    public final y0.c a() {
        Object objI = i();
        if (objI != null) {
            if (objI instanceof y0.c) {
                return (y0.c) objI;
            }
            throw new IllegalArgumentException("You must not pass non-R.id ids to setTag(id)");
        }
        return null;
    }

    @Override // com.bumptech.glide.request.target.e
    public final void c(@Nullable y0.c cVar) {
        n(cVar);
    }

    @Override // com.bumptech.glide.request.target.e
    public final void f(@Nullable Drawable drawable) {
        j();
        m(drawable);
    }
}
