package androidx.appcompat.view;

import android.view.View;
import android.view.animation.Interpolator;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.view.ViewPropertyAnimatorListener;
import androidx.core.view.ViewPropertyAnimatorListenerAdapter;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes10.dex */
@RestrictTo
public class ViewPropertyAnimatorCompatSet {
    private Interpolator mInterpolator;
    private boolean mIsStarted;
    ViewPropertyAnimatorListener mListener;
    private long mDuration = -1;
    private final ViewPropertyAnimatorListenerAdapter mProxyListener = new ViewPropertyAnimatorListenerAdapter() { // from class: androidx.appcompat.view.ViewPropertyAnimatorCompatSet.1
        private boolean mProxyStarted = false;
        private int mProxyEndCount = 0;

        void d() {
            this.mProxyEndCount = 0;
            this.mProxyStarted = false;
            ViewPropertyAnimatorCompatSet.this.b();
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
        public void b(View view) {
            int i10 = this.mProxyEndCount + 1;
            this.mProxyEndCount = i10;
            if (i10 == ViewPropertyAnimatorCompatSet.this.mAnimators.size()) {
                ViewPropertyAnimatorListener viewPropertyAnimatorListener = ViewPropertyAnimatorCompatSet.this.mListener;
                if (viewPropertyAnimatorListener != null) {
                    viewPropertyAnimatorListener.b(null);
                }
                d();
            }
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
        public void c(View view) {
            if (this.mProxyStarted) {
                return;
            }
            this.mProxyStarted = true;
            ViewPropertyAnimatorListener viewPropertyAnimatorListener = ViewPropertyAnimatorCompatSet.this.mListener;
            if (viewPropertyAnimatorListener != null) {
                viewPropertyAnimatorListener.c(null);
            }
        }
    };
    final ArrayList<ViewPropertyAnimatorCompat> mAnimators = new ArrayList<>();

    void b() {
        this.mIsStarted = false;
    }

    public ViewPropertyAnimatorCompatSet e(long j6) {
        if (!this.mIsStarted) {
            this.mDuration = j6;
        }
        return this;
    }

    public ViewPropertyAnimatorCompatSet f(Interpolator interpolator) {
        if (!this.mIsStarted) {
            this.mInterpolator = interpolator;
        }
        return this;
    }

    public ViewPropertyAnimatorCompatSet g(ViewPropertyAnimatorListener viewPropertyAnimatorListener) {
        if (!this.mIsStarted) {
            this.mListener = viewPropertyAnimatorListener;
        }
        return this;
    }

    public void a() {
        if (this.mIsStarted) {
            Iterator<ViewPropertyAnimatorCompat> it = this.mAnimators.iterator();
            while (it.hasNext()) {
                it.next().c();
            }
            this.mIsStarted = false;
        }
    }

    public ViewPropertyAnimatorCompatSet c(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat) {
        if (!this.mIsStarted) {
            this.mAnimators.add(viewPropertyAnimatorCompat);
        }
        return this;
    }

    public ViewPropertyAnimatorCompatSet d(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, ViewPropertyAnimatorCompat viewPropertyAnimatorCompat2) {
        this.mAnimators.add(viewPropertyAnimatorCompat);
        viewPropertyAnimatorCompat2.j(viewPropertyAnimatorCompat.d());
        this.mAnimators.add(viewPropertyAnimatorCompat2);
        return this;
    }

    public void h() {
        if (this.mIsStarted) {
            return;
        }
        for (ViewPropertyAnimatorCompat viewPropertyAnimatorCompat : this.mAnimators) {
            long j6 = this.mDuration;
            if (j6 >= 0) {
                viewPropertyAnimatorCompat.f(j6);
            }
            Interpolator interpolator = this.mInterpolator;
            if (interpolator != null) {
                viewPropertyAnimatorCompat.g(interpolator);
            }
            if (this.mListener != null) {
                viewPropertyAnimatorCompat.h(this.mProxyListener);
            }
            viewPropertyAnimatorCompat.l();
        }
        this.mIsStarted = true;
    }
}
