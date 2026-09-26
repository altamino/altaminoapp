package androidx.core.view;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.WindowInsets;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.Insets;
import androidx.core.util.ObjectsCompat;
import androidx.core.util.Preconditions;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class WindowInsetsCompat {

    @NonNull
    public static final WindowInsetsCompat CONSUMED;
    private static final String TAG = "WindowInsetsCompat";
    private final Impl mImpl;

    @RequiresApi
    @SuppressLint({"SoonBlockedPrivateApi"})
    static class Api21ReflectionHolder {
        private static Field sContentInsets;
        private static boolean sReflectionSucceeded;
        private static Field sStableInsets;
        private static Field sViewAttachInfoField;

        static {
            try {
                Field declaredField = View.class.getDeclaredField("mAttachInfo");
                sViewAttachInfoField = declaredField;
                declaredField.setAccessible(true);
                Class<?> cls = Class.forName("android.view.View$AttachInfo");
                Field declaredField2 = cls.getDeclaredField("mStableInsets");
                sStableInsets = declaredField2;
                declaredField2.setAccessible(true);
                Field declaredField3 = cls.getDeclaredField("mContentInsets");
                sContentInsets = declaredField3;
                declaredField3.setAccessible(true);
                sReflectionSucceeded = true;
            } catch (ReflectiveOperationException e) {
                Log.w(WindowInsetsCompat.TAG, "Failed to get visible insets from AttachInfo " + e.getMessage(), e);
            }
        }

        @Nullable
        public static WindowInsetsCompat a(@NonNull View view) {
            if (sReflectionSucceeded && view.isAttachedToWindow()) {
                try {
                    Object obj = sViewAttachInfoField.get(view.getRootView());
                    if (obj != null) {
                        Rect rect = (Rect) sStableInsets.get(obj);
                        Rect rect2 = (Rect) sContentInsets.get(obj);
                        if (rect != null && rect2 != null) {
                            WindowInsetsCompat windowInsetsCompatA = new Builder().c(Insets.c(rect)).d(Insets.c(rect2)).a();
                            windowInsetsCompatA.v(windowInsetsCompatA);
                            windowInsetsCompatA.d(view.getRootView());
                            return windowInsetsCompatA;
                        }
                    }
                } catch (IllegalAccessException e) {
                    Log.w(WindowInsetsCompat.TAG, "Failed to get insets from AttachInfo. " + e.getMessage(), e);
                }
            }
            return null;
        }

        private Api21ReflectionHolder() {
        }
    }

    public static final class Builder {
        private final BuilderImpl mImpl;

        public Builder() {
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 30) {
                this.mImpl = new BuilderImpl30();
            } else if (i10 >= 29) {
                this.mImpl = new BuilderImpl29();
            } else {
                this.mImpl = new BuilderImpl20();
            }
        }

        @NonNull
        public WindowInsetsCompat a() {
            return this.mImpl.b();
        }

        @NonNull
        public Builder b(int i10, @NonNull Insets insets) {
            this.mImpl.c(i10, insets);
            return this;
        }

        @NonNull
        @Deprecated
        public Builder c(@NonNull Insets insets) {
            this.mImpl.e(insets);
            return this;
        }

        @NonNull
        @Deprecated
        public Builder d(@NonNull Insets insets) {
            this.mImpl.g(insets);
            return this;
        }

        public Builder(@NonNull WindowInsetsCompat windowInsetsCompat) {
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 30) {
                this.mImpl = new BuilderImpl30(windowInsetsCompat);
            } else if (i10 >= 29) {
                this.mImpl = new BuilderImpl29(windowInsetsCompat);
            } else {
                this.mImpl = new BuilderImpl20(windowInsetsCompat);
            }
        }
    }

    private static class BuilderImpl {
        private final WindowInsetsCompat mInsets;
        Insets[] mInsetsTypeMask;

        BuilderImpl() {
            this(new WindowInsetsCompat((WindowInsetsCompat) null));
        }

        void d(@NonNull Insets insets) {
        }

        void e(@NonNull Insets insets) {
        }

        void f(@NonNull Insets insets) {
        }

        void g(@NonNull Insets insets) {
        }

        void h(@NonNull Insets insets) {
        }

        BuilderImpl(@NonNull WindowInsetsCompat windowInsetsCompat) {
            this.mInsets = windowInsetsCompat;
        }

        protected final void a() {
            Insets[] insetsArr = this.mInsetsTypeMask;
            if (insetsArr != null) {
                Insets insetsF = insetsArr[Type.d(1)];
                Insets insetsF2 = this.mInsetsTypeMask[Type.d(2)];
                if (insetsF2 == null) {
                    insetsF2 = this.mInsets.f(2);
                }
                if (insetsF == null) {
                    insetsF = this.mInsets.f(1);
                }
                g(Insets.a(insetsF, insetsF2));
                Insets insets = this.mInsetsTypeMask[Type.d(16)];
                if (insets != null) {
                    f(insets);
                }
                Insets insets2 = this.mInsetsTypeMask[Type.d(32)];
                if (insets2 != null) {
                    d(insets2);
                }
                Insets insets3 = this.mInsetsTypeMask[Type.d(64)];
                if (insets3 != null) {
                    h(insets3);
                }
            }
        }

        void c(int i10, @NonNull Insets insets) {
            if (this.mInsetsTypeMask == null) {
                this.mInsetsTypeMask = new Insets[9];
            }
            for (int i11 = 1; i11 <= 256; i11 <<= 1) {
                if ((i10 & i11) != 0) {
                    this.mInsetsTypeMask[Type.d(i11)] = insets;
                }
            }
        }

        @NonNull
        WindowInsetsCompat b() {
            a();
            return this.mInsets;
        }
    }

    @RequiresApi
    private static class BuilderImpl20 extends BuilderImpl {
        private static Constructor<WindowInsets> sConstructor;
        private static boolean sConstructorFetched;
        private static Field sConsumedField;
        private static boolean sConsumedFieldFetched;
        private WindowInsets mPlatformInsets;
        private Insets mStableInsets;

        BuilderImpl20() {
            this.mPlatformInsets = i();
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        void e(@Nullable Insets insets) {
            this.mStableInsets = insets;
        }

        @Nullable
        private static WindowInsets i() {
            if (!sConsumedFieldFetched) {
                try {
                    sConsumedField = WindowInsets.class.getDeclaredField("CONSUMED");
                } catch (ReflectiveOperationException e) {
                    Log.i(WindowInsetsCompat.TAG, "Could not retrieve WindowInsets.CONSUMED field", e);
                }
                sConsumedFieldFetched = true;
            }
            Field field = sConsumedField;
            if (field != null) {
                try {
                    WindowInsets windowInsets = (WindowInsets) field.get(null);
                    if (windowInsets != null) {
                        return new WindowInsets(windowInsets);
                    }
                } catch (ReflectiveOperationException e2) {
                    Log.i(WindowInsetsCompat.TAG, "Could not get value from WindowInsets.CONSUMED field", e2);
                }
            }
            if (!sConstructorFetched) {
                try {
                    sConstructor = WindowInsets.class.getConstructor(Rect.class);
                } catch (ReflectiveOperationException e6) {
                    Log.i(WindowInsetsCompat.TAG, "Could not retrieve WindowInsets(Rect) constructor", e6);
                }
                sConstructorFetched = true;
            }
            Constructor<WindowInsets> constructor = sConstructor;
            if (constructor != null) {
                try {
                    return constructor.newInstance(new Rect());
                } catch (ReflectiveOperationException e7) {
                    Log.i(WindowInsetsCompat.TAG, "Could not invoke WindowInsets(Rect) constructor", e7);
                }
            }
            return null;
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        void g(@NonNull Insets insets) {
            WindowInsets windowInsets = this.mPlatformInsets;
            if (windowInsets != null) {
                this.mPlatformInsets = windowInsets.replaceSystemWindowInsets(insets.left, insets.top, insets.right, insets.bottom);
            }
        }

        BuilderImpl20(@NonNull WindowInsetsCompat windowInsetsCompat) {
            super(windowInsetsCompat);
            this.mPlatformInsets = windowInsetsCompat.x();
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        @NonNull
        WindowInsetsCompat b() {
            a();
            WindowInsetsCompat windowInsetsCompatY = WindowInsetsCompat.y(this.mPlatformInsets);
            windowInsetsCompatY.t(this.mInsetsTypeMask);
            windowInsetsCompatY.w(this.mStableInsets);
            return windowInsetsCompatY;
        }
    }

    @RequiresApi
    private static class BuilderImpl29 extends BuilderImpl {
        final WindowInsets.Builder mPlatBuilder;

        BuilderImpl29() {
            this.mPlatBuilder = p0.a();
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        void d(@NonNull Insets insets) {
            this.mPlatBuilder.setMandatorySystemGestureInsets(insets.e());
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        void e(@NonNull Insets insets) {
            this.mPlatBuilder.setStableInsets(insets.e());
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        void f(@NonNull Insets insets) {
            this.mPlatBuilder.setSystemGestureInsets(insets.e());
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        void g(@NonNull Insets insets) {
            this.mPlatBuilder.setSystemWindowInsets(insets.e());
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        void h(@NonNull Insets insets) {
            this.mPlatBuilder.setTappableElementInsets(insets.e());
        }

        BuilderImpl29(@NonNull WindowInsetsCompat windowInsetsCompat) {
            WindowInsets.Builder builderA;
            super(windowInsetsCompat);
            WindowInsets windowInsetsX = windowInsetsCompat.x();
            if (windowInsetsX != null) {
                builderA = q0.a(windowInsetsX);
            } else {
                builderA = p0.a();
            }
            this.mPlatBuilder = builderA;
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        @NonNull
        WindowInsetsCompat b() {
            a();
            WindowInsetsCompat windowInsetsCompatY = WindowInsetsCompat.y(this.mPlatBuilder.build());
            windowInsetsCompatY.t(this.mInsetsTypeMask);
            return windowInsetsCompatY;
        }
    }

    @RequiresApi
    private static class BuilderImpl30 extends BuilderImpl29 {
        BuilderImpl30() {
        }

        BuilderImpl30(@NonNull WindowInsetsCompat windowInsetsCompat) {
            super(windowInsetsCompat);
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        void c(int i10, @NonNull Insets insets) {
            this.mPlatBuilder.setInsets(TypeImpl30.a(i10), insets.e());
        }
    }

    private static class Impl {

        @NonNull
        static final WindowInsetsCompat CONSUMED = new Builder().a().a().b().c();
        final WindowInsetsCompat mHost;

        @NonNull
        WindowInsetsCompat a() {
            return this.mHost;
        }

        @NonNull
        WindowInsetsCompat b() {
            return this.mHost;
        }

        @NonNull
        WindowInsetsCompat c() {
            return this.mHost;
        }

        void d(@NonNull View view) {
        }

        void e(@NonNull WindowInsetsCompat windowInsetsCompat) {
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Impl)) {
                return false;
            }
            Impl impl = (Impl) obj;
            return p() == impl.p() && o() == impl.o() && ObjectsCompat.a(l(), impl.l()) && ObjectsCompat.a(j(), impl.j()) && ObjectsCompat.a(f(), impl.f());
        }

        @Nullable
        DisplayCutoutCompat f() {
            return null;
        }

        public int hashCode() {
            return ObjectsCompat.b(Boolean.valueOf(p()), Boolean.valueOf(o()), l(), j(), f());
        }

        @NonNull
        WindowInsetsCompat n(int i10, int i11, int i12, int i13) {
            return CONSUMED;
        }

        boolean o() {
            return false;
        }

        boolean p() {
            return false;
        }

        boolean q(int i10) {
            return true;
        }

        public void r(Insets[] insetsArr) {
        }

        void s(@NonNull Insets insets) {
        }

        void t(@Nullable WindowInsetsCompat windowInsetsCompat) {
        }

        public void u(Insets insets) {
        }

        @NonNull
        Insets g(int i10) {
            return Insets.NONE;
        }

        @NonNull
        Insets h(int i10) {
            if ((i10 & 8) == 0) {
                return Insets.NONE;
            }
            throw new IllegalArgumentException("Unable to query the maximum insets for IME");
        }

        @NonNull
        Insets j() {
            return Insets.NONE;
        }

        @NonNull
        Insets l() {
            return Insets.NONE;
        }

        Impl(@NonNull WindowInsetsCompat windowInsetsCompat) {
            this.mHost = windowInsetsCompat;
        }

        @NonNull
        Insets i() {
            return l();
        }

        @NonNull
        Insets k() {
            return l();
        }

        @NonNull
        Insets m() {
            return l();
        }
    }

    @RequiresApi
    private static class Impl20 extends Impl {
        private static Class<?> sAttachInfoClass;
        private static Field sAttachInfoField;
        private static Method sGetViewRootImplMethod;
        private static Field sVisibleInsetsField;
        private static boolean sVisibleRectReflectionFetched;
        private Insets[] mOverriddenInsets;

        @NonNull
        final WindowInsets mPlatformInsets;
        Insets mRootViewVisibleInsets;
        private WindowInsetsCompat mRootWindowInsets;
        private Insets mSystemWindowInsets;

        Impl20(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull WindowInsets windowInsets) {
            super(windowInsetsCompat);
            this.mSystemWindowInsets = null;
            this.mPlatformInsets = windowInsets;
        }

        @SuppressLint({"PrivateApi"})
        private static void A() {
            try {
                sGetViewRootImplMethod = View.class.getDeclaredMethod("getViewRootImpl", new Class[0]);
                Class<?> cls = Class.forName("android.view.View$AttachInfo");
                sAttachInfoClass = cls;
                sVisibleInsetsField = cls.getDeclaredField("mVisibleInsets");
                sAttachInfoField = Class.forName("android.view.ViewRootImpl").getDeclaredField("mAttachInfo");
                sVisibleInsetsField.setAccessible(true);
                sAttachInfoField.setAccessible(true);
            } catch (ReflectiveOperationException e) {
                Log.e(WindowInsetsCompat.TAG, "Failed to get visible insets. (Reflection error). " + e.getMessage(), e);
            }
            sVisibleRectReflectionFetched = true;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        @NonNull
        public Insets g(int i10) {
            return v(i10, false);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        @NonNull
        public Insets h(int i10) {
            return v(i10, true);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        @SuppressLint({"WrongConstant"})
        boolean q(int i10) {
            for (int i11 = 1; i11 <= 256; i11 <<= 1) {
                if ((i10 & i11) != 0 && !z(i11)) {
                    return false;
                }
            }
            return true;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public void r(Insets[] insetsArr) {
            this.mOverriddenInsets = insetsArr;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        void s(@NonNull Insets insets) {
            this.mRootViewVisibleInsets = insets;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        void t(@Nullable WindowInsetsCompat windowInsetsCompat) {
            this.mRootWindowInsets = windowInsetsCompat;
        }

        @NonNull
        protected Insets w(int i10, boolean z6) {
            Insets insetsH;
            int i11;
            if (i10 == 1) {
                return z6 ? Insets.b(0, Math.max(x().top, l().top), 0, 0) : Insets.b(0, l().top, 0, 0);
            }
            if (i10 == 2) {
                if (z6) {
                    Insets insetsX = x();
                    Insets insetsJ = j();
                    return Insets.b(Math.max(insetsX.left, insetsJ.left), 0, Math.max(insetsX.right, insetsJ.right), Math.max(insetsX.bottom, insetsJ.bottom));
                }
                Insets insetsL = l();
                WindowInsetsCompat windowInsetsCompat = this.mRootWindowInsets;
                insetsH = windowInsetsCompat != null ? windowInsetsCompat.h() : null;
                int iMin = insetsL.bottom;
                if (insetsH != null) {
                    iMin = Math.min(iMin, insetsH.bottom);
                }
                return Insets.b(insetsL.left, 0, insetsL.right, iMin);
            }
            if (i10 != 8) {
                if (i10 == 16) {
                    return k();
                }
                if (i10 == 32) {
                    return i();
                }
                if (i10 == 64) {
                    return m();
                }
                if (i10 != 128) {
                    return Insets.NONE;
                }
                WindowInsetsCompat windowInsetsCompat2 = this.mRootWindowInsets;
                DisplayCutoutCompat displayCutoutCompatE = windowInsetsCompat2 != null ? windowInsetsCompat2.e() : f();
                return displayCutoutCompatE != null ? Insets.b(displayCutoutCompatE.c(), displayCutoutCompatE.e(), displayCutoutCompatE.d(), displayCutoutCompatE.b()) : Insets.NONE;
            }
            Insets[] insetsArr = this.mOverriddenInsets;
            insetsH = insetsArr != null ? insetsArr[Type.d(8)] : null;
            if (insetsH != null) {
                return insetsH;
            }
            Insets insetsL2 = l();
            Insets insetsX2 = x();
            int i12 = insetsL2.bottom;
            if (i12 > insetsX2.bottom) {
                return Insets.b(0, 0, 0, i12);
            }
            Insets insets = this.mRootViewVisibleInsets;
            return (insets == null || insets.equals(Insets.NONE) || (i11 = this.mRootViewVisibleInsets.bottom) <= insetsX2.bottom) ? Insets.NONE : Insets.b(0, 0, 0, i11);
        }

        protected boolean z(int i10) {
            if (i10 != 1 && i10 != 2) {
                if (i10 == 4) {
                    return false;
                }
                if (i10 != 8 && i10 != 128) {
                    return true;
                }
            }
            return !w(i10, false).equals(Insets.NONE);
        }

        Impl20(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull Impl20 impl20) {
            this(windowInsetsCompat, new WindowInsets(impl20.mPlatformInsets));
        }

        @NonNull
        @SuppressLint({"WrongConstant"})
        private Insets v(int i10, boolean z6) {
            Insets insetsA = Insets.NONE;
            for (int i11 = 1; i11 <= 256; i11 <<= 1) {
                if ((i10 & i11) != 0) {
                    insetsA = Insets.a(insetsA, w(i11, z6));
                }
            }
            return insetsA;
        }

        private Insets x() {
            WindowInsetsCompat windowInsetsCompat = this.mRootWindowInsets;
            return windowInsetsCompat != null ? windowInsetsCompat.h() : Insets.NONE;
        }

        @Nullable
        private Insets y(@NonNull View view) {
            if (Build.VERSION.SDK_INT >= 30) {
                throw new UnsupportedOperationException("getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead.");
            }
            if (!sVisibleRectReflectionFetched) {
                A();
            }
            Method method = sGetViewRootImplMethod;
            if (method != null && sAttachInfoClass != null && sVisibleInsetsField != null) {
                try {
                    Object objInvoke = method.invoke(view, new Object[0]);
                    if (objInvoke == null) {
                        Log.w(WindowInsetsCompat.TAG, "Failed to get visible insets. getViewRootImpl() returned null from the provided view. This means that the view is either not attached or the method has been overridden", new NullPointerException());
                        return null;
                    }
                    Rect rect = (Rect) sVisibleInsetsField.get(sAttachInfoField.get(objInvoke));
                    if (rect != null) {
                        return Insets.c(rect);
                    }
                    return null;
                } catch (ReflectiveOperationException e) {
                    Log.e(WindowInsetsCompat.TAG, "Failed to get visible insets. (Reflection error). " + e.getMessage(), e);
                }
            }
            return null;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        void e(@NonNull WindowInsetsCompat windowInsetsCompat) {
            windowInsetsCompat.v(this.mRootWindowInsets);
            windowInsetsCompat.u(this.mRootViewVisibleInsets);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        @NonNull
        final Insets l() {
            if (this.mSystemWindowInsets == null) {
                this.mSystemWindowInsets = Insets.b(this.mPlatformInsets.getSystemWindowInsetLeft(), this.mPlatformInsets.getSystemWindowInsetTop(), this.mPlatformInsets.getSystemWindowInsetRight(), this.mPlatformInsets.getSystemWindowInsetBottom());
            }
            return this.mSystemWindowInsets;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        @NonNull
        WindowInsetsCompat n(int i10, int i11, int i12, int i13) {
            Builder builder = new Builder(WindowInsetsCompat.y(this.mPlatformInsets));
            builder.d(WindowInsetsCompat.p(l(), i10, i11, i12, i13));
            builder.c(WindowInsetsCompat.p(j(), i10, i11, i12, i13));
            return builder.a();
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        boolean p() {
            return this.mPlatformInsets.isRound();
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        void d(@NonNull View view) {
            Insets insetsY = y(view);
            if (insetsY == null) {
                insetsY = Insets.NONE;
            }
            s(insetsY);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public boolean equals(Object obj) {
            if (!super.equals(obj)) {
                return false;
            }
            return Objects.equals(this.mRootViewVisibleInsets, ((Impl20) obj).mRootViewVisibleInsets);
        }
    }

    @RequiresApi
    private static class Impl21 extends Impl20 {
        private Insets mStableInsets;

        Impl21(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull WindowInsets windowInsets) {
            super(windowInsetsCompat, windowInsets);
            this.mStableInsets = null;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public void u(@Nullable Insets insets) {
            this.mStableInsets = insets;
        }

        Impl21(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull Impl21 impl21) {
            super(windowInsetsCompat, impl21);
            this.mStableInsets = null;
            this.mStableInsets = impl21.mStableInsets;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        @NonNull
        WindowInsetsCompat b() {
            return WindowInsetsCompat.y(this.mPlatformInsets.consumeStableInsets());
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        @NonNull
        WindowInsetsCompat c() {
            return WindowInsetsCompat.y(this.mPlatformInsets.consumeSystemWindowInsets());
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        @NonNull
        final Insets j() {
            if (this.mStableInsets == null) {
                this.mStableInsets = Insets.b(this.mPlatformInsets.getStableInsetLeft(), this.mPlatformInsets.getStableInsetTop(), this.mPlatformInsets.getStableInsetRight(), this.mPlatformInsets.getStableInsetBottom());
            }
            return this.mStableInsets;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        boolean o() {
            return this.mPlatformInsets.isConsumed();
        }
    }

    @RequiresApi
    private static class Impl28 extends Impl21 {
        Impl28(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull WindowInsets windowInsets) {
            super(windowInsetsCompat, windowInsets);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl20, androidx.core.view.WindowInsetsCompat.Impl
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Impl28)) {
                return false;
            }
            Impl28 impl28 = (Impl28) obj;
            return Objects.equals(this.mPlatformInsets, impl28.mPlatformInsets) && Objects.equals(this.mRootViewVisibleInsets, impl28.mRootViewVisibleInsets);
        }

        Impl28(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull Impl28 impl28) {
            super(windowInsetsCompat, impl28);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        @NonNull
        WindowInsetsCompat a() {
            return WindowInsetsCompat.y(this.mPlatformInsets.consumeDisplayCutout());
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        @Nullable
        DisplayCutoutCompat f() {
            return DisplayCutoutCompat.g(this.mPlatformInsets.getDisplayCutout());
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public int hashCode() {
            return this.mPlatformInsets.hashCode();
        }
    }

    @RequiresApi
    private static class Impl29 extends Impl28 {
        private Insets mMandatorySystemGestureInsets;
        private Insets mSystemGestureInsets;
        private Insets mTappableElementInsets;

        Impl29(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull WindowInsets windowInsets) {
            super(windowInsetsCompat, windowInsets);
            this.mSystemGestureInsets = null;
            this.mMandatorySystemGestureInsets = null;
            this.mTappableElementInsets = null;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl21, androidx.core.view.WindowInsetsCompat.Impl
        public void u(@Nullable Insets insets) {
        }

        Impl29(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull Impl29 impl29) {
            super(windowInsetsCompat, impl29);
            this.mSystemGestureInsets = null;
            this.mMandatorySystemGestureInsets = null;
            this.mTappableElementInsets = null;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        @NonNull
        Insets i() {
            if (this.mMandatorySystemGestureInsets == null) {
                this.mMandatorySystemGestureInsets = Insets.d(this.mPlatformInsets.getMandatorySystemGestureInsets());
            }
            return this.mMandatorySystemGestureInsets;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        @NonNull
        Insets k() {
            if (this.mSystemGestureInsets == null) {
                this.mSystemGestureInsets = Insets.d(this.mPlatformInsets.getSystemGestureInsets());
            }
            return this.mSystemGestureInsets;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        @NonNull
        Insets m() {
            if (this.mTappableElementInsets == null) {
                this.mTappableElementInsets = Insets.d(this.mPlatformInsets.getTappableElementInsets());
            }
            return this.mTappableElementInsets;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl20, androidx.core.view.WindowInsetsCompat.Impl
        @NonNull
        WindowInsetsCompat n(int i10, int i11, int i12, int i13) {
            return WindowInsetsCompat.y(this.mPlatformInsets.inset(i10, i11, i12, i13));
        }
    }

    @RequiresApi
    private static class Impl30 extends Impl29 {

        @NonNull
        static final WindowInsetsCompat CONSUMED = WindowInsetsCompat.y(WindowInsets.CONSUMED);

        Impl30(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull WindowInsets windowInsets) {
            super(windowInsetsCompat, windowInsets);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl20, androidx.core.view.WindowInsetsCompat.Impl
        final void d(@NonNull View view) {
        }

        Impl30(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull Impl30 impl30) {
            super(windowInsetsCompat, impl30);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl20, androidx.core.view.WindowInsetsCompat.Impl
        @NonNull
        public Insets g(int i10) {
            return Insets.d(this.mPlatformInsets.getInsets(TypeImpl30.a(i10)));
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl20, androidx.core.view.WindowInsetsCompat.Impl
        @NonNull
        public Insets h(int i10) {
            return Insets.d(this.mPlatformInsets.getInsetsIgnoringVisibility(TypeImpl30.a(i10)));
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl20, androidx.core.view.WindowInsetsCompat.Impl
        public boolean q(int i10) {
            return this.mPlatformInsets.isVisible(TypeImpl30.a(i10));
        }
    }

    @RequiresApi
    private WindowInsetsCompat(@NonNull WindowInsets windowInsets) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 30) {
            this.mImpl = new Impl30(this, windowInsets);
            return;
        }
        if (i10 >= 29) {
            this.mImpl = new Impl29(this, windowInsets);
        } else if (i10 >= 28) {
            this.mImpl = new Impl28(this, windowInsets);
        } else {
            this.mImpl = new Impl21(this, windowInsets);
        }
    }

    @NonNull
    @RequiresApi
    public static WindowInsetsCompat y(@NonNull WindowInsets windowInsets) {
        return z(windowInsets, null);
    }

    public static final class Type {
        static final int CAPTION_BAR = 4;
        static final int DISPLAY_CUTOUT = 128;
        static final int FIRST = 1;
        static final int IME = 8;
        static final int LAST = 256;
        static final int MANDATORY_SYSTEM_GESTURES = 32;
        static final int NAVIGATION_BARS = 2;
        static final int SIZE = 9;
        static final int STATUS_BARS = 1;
        static final int SYSTEM_GESTURES = 16;
        static final int TAPPABLE_ELEMENT = 64;
        static final int WINDOW_DECOR = 256;

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo
        public @interface InsetsType {
        }

        public static int a() {
            return 4;
        }

        public static int b() {
            return 128;
        }

        public static int c() {
            return 8;
        }

        static int d(int i10) {
            if (i10 == 1) {
                return 0;
            }
            if (i10 == 2) {
                return 1;
            }
            if (i10 == 4) {
                return 2;
            }
            if (i10 == 8) {
                return 3;
            }
            if (i10 == 16) {
                return 4;
            }
            if (i10 == 32) {
                return 5;
            }
            if (i10 == 64) {
                return 6;
            }
            if (i10 == 128) {
                return 7;
            }
            if (i10 == 256) {
                return 8;
            }
            throw new IllegalArgumentException("type needs to be >= FIRST and <= LAST, type=" + i10);
        }

        public static int e() {
            return 32;
        }

        public static int f() {
            return 2;
        }

        public static int g() {
            return 1;
        }

        public static int h() {
            return 7;
        }

        public static int i() {
            return 16;
        }

        public static int j() {
            return 64;
        }

        private Type() {
        }
    }

    @RequiresApi
    private static final class TypeImpl30 {
        static int a(int i10) {
            int iStatusBars;
            int i11 = 0;
            for (int i12 = 1; i12 <= 256; i12 <<= 1) {
                if ((i10 & i12) != 0) {
                    if (i12 == 1) {
                        iStatusBars = WindowInsets.Type.statusBars();
                    } else if (i12 == 2) {
                        iStatusBars = WindowInsets.Type.navigationBars();
                    } else if (i12 == 4) {
                        iStatusBars = WindowInsets.Type.captionBar();
                    } else if (i12 == 8) {
                        iStatusBars = WindowInsets.Type.ime();
                    } else if (i12 == 16) {
                        iStatusBars = WindowInsets.Type.systemGestures();
                    } else if (i12 == 32) {
                        iStatusBars = WindowInsets.Type.mandatorySystemGestures();
                    } else if (i12 == 64) {
                        iStatusBars = WindowInsets.Type.tappableElement();
                    } else if (i12 == 128) {
                        iStatusBars = WindowInsets.Type.displayCutout();
                    }
                    i11 |= iStatusBars;
                }
            }
            return i11;
        }

        private TypeImpl30() {
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 30) {
            CONSUMED = Impl30.CONSUMED;
        } else {
            CONSUMED = Impl.CONSUMED;
        }
    }

    static Insets p(@NonNull Insets insets, int i10, int i11, int i12, int i13) {
        int iMax = Math.max(0, insets.left - i10);
        int iMax2 = Math.max(0, insets.top - i11);
        int iMax3 = Math.max(0, insets.right - i12);
        int iMax4 = Math.max(0, insets.bottom - i13);
        return (iMax == i10 && iMax2 == i11 && iMax3 == i12 && iMax4 == i13) ? insets : Insets.b(iMax, iMax2, iMax3, iMax4);
    }

    @NonNull
    @RequiresApi
    public static WindowInsetsCompat z(@NonNull WindowInsets windowInsets, @Nullable View view) {
        WindowInsetsCompat windowInsetsCompat = new WindowInsetsCompat((WindowInsets) Preconditions.i(windowInsets));
        if (view != null && ViewCompat.W(view)) {
            windowInsetsCompat.v(ViewCompat.K(view));
            windowInsetsCompat.d(view.getRootView());
        }
        return windowInsetsCompat;
    }

    @NonNull
    @Deprecated
    public WindowInsetsCompat a() {
        return this.mImpl.a();
    }

    @NonNull
    @Deprecated
    public WindowInsetsCompat b() {
        return this.mImpl.b();
    }

    @NonNull
    @Deprecated
    public WindowInsetsCompat c() {
        return this.mImpl.c();
    }

    void d(@NonNull View view) {
        this.mImpl.d(view);
    }

    @Nullable
    public DisplayCutoutCompat e() {
        return this.mImpl.f();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WindowInsetsCompat) {
            return ObjectsCompat.a(this.mImpl, ((WindowInsetsCompat) obj).mImpl);
        }
        return false;
    }

    @NonNull
    public Insets f(int i10) {
        return this.mImpl.g(i10);
    }

    @NonNull
    public Insets g(int i10) {
        return this.mImpl.h(i10);
    }

    @NonNull
    @Deprecated
    public Insets h() {
        return this.mImpl.j();
    }

    public int hashCode() {
        Impl impl = this.mImpl;
        if (impl == null) {
            return 0;
        }
        return impl.hashCode();
    }

    @NonNull
    @Deprecated
    public Insets i() {
        return this.mImpl.k();
    }

    @Deprecated
    public int j() {
        return this.mImpl.l().bottom;
    }

    @Deprecated
    public int k() {
        return this.mImpl.l().left;
    }

    @Deprecated
    public int l() {
        return this.mImpl.l().right;
    }

    @Deprecated
    public int m() {
        return this.mImpl.l().top;
    }

    @Deprecated
    public boolean n() {
        return !this.mImpl.l().equals(Insets.NONE);
    }

    @NonNull
    public WindowInsetsCompat o(@IntRange int i10, @IntRange int i11, @IntRange int i12, @IntRange int i13) {
        return this.mImpl.n(i10, i11, i12, i13);
    }

    public boolean q() {
        return this.mImpl.o();
    }

    public boolean r(int i10) {
        return this.mImpl.q(i10);
    }

    @NonNull
    @Deprecated
    public WindowInsetsCompat s(int i10, int i11, int i12, int i13) {
        return new Builder(this).d(Insets.b(i10, i11, i12, i13)).a();
    }

    void t(Insets[] insetsArr) {
        this.mImpl.r(insetsArr);
    }

    void u(@NonNull Insets insets) {
        this.mImpl.s(insets);
    }

    void v(@Nullable WindowInsetsCompat windowInsetsCompat) {
        this.mImpl.t(windowInsetsCompat);
    }

    void w(@Nullable Insets insets) {
        this.mImpl.u(insets);
    }

    @Nullable
    @RequiresApi
    public WindowInsets x() {
        Impl impl = this.mImpl;
        if (impl instanceof Impl20) {
            return ((Impl20) impl).mPlatformInsets;
        }
        return null;
    }

    public WindowInsetsCompat(@Nullable WindowInsetsCompat windowInsetsCompat) {
        if (windowInsetsCompat != null) {
            Impl impl = windowInsetsCompat.mImpl;
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 30 && (impl instanceof Impl30)) {
                this.mImpl = new Impl30(this, (Impl30) impl);
            } else if (i10 >= 29 && (impl instanceof Impl29)) {
                this.mImpl = new Impl29(this, (Impl29) impl);
            } else if (i10 >= 28 && (impl instanceof Impl28)) {
                this.mImpl = new Impl28(this, (Impl28) impl);
            } else if (impl instanceof Impl21) {
                this.mImpl = new Impl21(this, (Impl21) impl);
            } else if (impl instanceof Impl20) {
                this.mImpl = new Impl20(this, (Impl20) impl);
            } else {
                this.mImpl = new Impl(this);
            }
            impl.e(this);
            return;
        }
        this.mImpl = new Impl(this);
    }
}
