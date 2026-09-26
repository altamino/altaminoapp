package androidx.appcompat.app;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.appcompat.R;
import androidx.appcompat.view.ActionMode;
import androidx.fragment.app.FragmentTransaction;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ActionBar {
    public static final int DISPLAY_HOME_AS_UP = 4;
    public static final int DISPLAY_SHOW_CUSTOM = 16;
    public static final int DISPLAY_SHOW_HOME = 2;
    public static final int DISPLAY_SHOW_TITLE = 8;
    public static final int DISPLAY_USE_LOGO = 1;

    @Deprecated
    public static final int NAVIGATION_MODE_LIST = 1;

    @Deprecated
    public static final int NAVIGATION_MODE_STANDARD = 0;

    @Deprecated
    public static final int NAVIGATION_MODE_TABS = 2;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    public @interface DisplayOptions {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    public @interface NavigationMode {
    }

    public interface OnMenuVisibilityListener {
        void a(boolean z6);
    }

    @Deprecated
    public interface OnNavigationListener {
        boolean a(int i10, long j6);
    }

    @Deprecated
    public static abstract class Tab {
        public static final int INVALID_POSITION = -1;

        public abstract CharSequence a();

        public abstract View b();

        public abstract Drawable c();

        public abstract int d();

        public abstract CharSequence e();

        public abstract void f();
    }

    @Deprecated
    public interface TabListener {
        void a(Tab tab, FragmentTransaction fragmentTransaction);

        void b(Tab tab, FragmentTransaction fragmentTransaction);

        void c(Tab tab, FragmentTransaction fragmentTransaction);
    }

    @RestrictTo
    public boolean f() {
        return false;
    }

    @RestrictTo
    public boolean g() {
        return false;
    }

    @RestrictTo
    public void h(boolean z6) {
    }

    public abstract int i();

    public Context j() {
        return null;
    }

    public abstract void k();

    @RestrictTo
    public boolean l() {
        return false;
    }

    public abstract boolean m();

    @RestrictTo
    public void n(Configuration configuration) {
    }

    void o() {
    }

    @RestrictTo
    public boolean p(int i10, KeyEvent keyEvent) {
        return false;
    }

    @RestrictTo
    public boolean q(KeyEvent keyEvent) {
        return false;
    }

    @RestrictTo
    public boolean r() {
        return false;
    }

    @RestrictTo
    public void s(boolean z6) {
    }

    public abstract void t(boolean z6);

    public void u(@StringRes int i10) {
    }

    public void v(@Nullable Drawable drawable) {
    }

    @RestrictTo
    public void w(boolean z6) {
    }

    public abstract void x(CharSequence charSequence);

    @RestrictTo
    public void y(CharSequence charSequence) {
    }

    @RestrictTo
    public ActionMode z(ActionMode.Callback callback) {
        return null;
    }

    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public int gravity;

        public LayoutParams(@NonNull Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.gravity = 0;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ActionBarLayout);
            this.gravity = typedArrayObtainStyledAttributes.getInt(R.styleable.ActionBarLayout_android_layout_gravity, 0);
            typedArrayObtainStyledAttributes.recycle();
        }

        public LayoutParams(int i10, int i11) {
            super(i10, i11);
            this.gravity = 8388627;
        }

        public LayoutParams(int i10, int i11, int i12) {
            super(i10, i11);
            this.gravity = i12;
        }

        public LayoutParams(int i10) {
            this(-2, -1, i10);
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.gravity = 0;
            this.gravity = layoutParams.gravity;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.gravity = 0;
        }
    }
}
