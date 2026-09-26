package androidx.navigation;

import androidx.annotation.AnimRes;
import androidx.annotation.AnimatorRes;
import androidx.annotation.IdRes;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class NavOptions {
    private final int enterAnim;
    private final int exitAnim;
    private final int popEnterAnim;
    private final int popExitAnim;

    @IdRes
    private final int popUpToId;
    private final boolean popUpToInclusive;

    @Nullable
    private String popUpToRoute;
    private final boolean popUpToSaveState;
    private final boolean restoreState;
    private final boolean singleTop;

    public static final class Builder {
        private boolean popUpToInclusive;

        @Nullable
        private String popUpToRoute;
        private boolean popUpToSaveState;
        private boolean restoreState;
        private boolean singleTop;

        @IdRes
        private int popUpToId = -1;

        @AnimRes
        @AnimatorRes
        private int enterAnim = -1;

        @AnimRes
        @AnimatorRes
        private int exitAnim = -1;

        @AnimRes
        @AnimatorRes
        private int popEnterAnim = -1;

        @AnimRes
        @AnimatorRes
        private int popExitAnim = -1;

        @NotNull
        public final Builder b(@AnimRes @AnimatorRes int i10) {
            this.enterAnim = i10;
            return this;
        }

        @NotNull
        public final Builder c(@AnimRes @AnimatorRes int i10) {
            this.exitAnim = i10;
            return this;
        }

        @NotNull
        public final Builder d(boolean z6) {
            this.singleTop = z6;
            return this;
        }

        @NotNull
        public final Builder e(@AnimRes @AnimatorRes int i10) {
            this.popEnterAnim = i10;
            return this;
        }

        @NotNull
        public final Builder f(@AnimRes @AnimatorRes int i10) {
            this.popExitAnim = i10;
            return this;
        }

        @NotNull
        public final Builder g(@IdRes int i10, boolean z6, boolean z10) {
            this.popUpToId = i10;
            this.popUpToRoute = null;
            this.popUpToInclusive = z6;
            this.popUpToSaveState = z10;
            return this;
        }

        @NotNull
        public final Builder h(@Nullable String str, boolean z6, boolean z10) {
            this.popUpToRoute = str;
            this.popUpToId = -1;
            this.popUpToInclusive = z6;
            this.popUpToSaveState = z10;
            return this;
        }

        @NotNull
        public final Builder j(boolean z6) {
            this.restoreState = z6;
            return this;
        }

        public static /* synthetic */ Builder i(Builder builder, int i10, boolean z6, boolean z10, int i11, Object obj) {
            if ((i11 & 4) != 0) {
                z10 = false;
            }
            return builder.g(i10, z6, z10);
        }

        @NotNull
        public final NavOptions a() {
            String str = this.popUpToRoute;
            return str != null ? new NavOptions(this.singleTop, this.restoreState, str, this.popUpToInclusive, this.popUpToSaveState, this.enterAnim, this.exitAnim, this.popEnterAnim, this.popExitAnim) : new NavOptions(this.singleTop, this.restoreState, this.popUpToId, this.popUpToInclusive, this.popUpToSaveState, this.enterAnim, this.exitAnim, this.popEnterAnim, this.popExitAnim);
        }
    }

    public NavOptions(boolean z6, boolean z10, @IdRes int i10, boolean z11, boolean z12, @AnimRes @AnimatorRes int i11, @AnimRes @AnimatorRes int i12, @AnimRes @AnimatorRes int i13, @AnimRes @AnimatorRes int i14) {
        this.singleTop = z6;
        this.restoreState = z10;
        this.popUpToId = i10;
        this.popUpToInclusive = z11;
        this.popUpToSaveState = z12;
        this.enterAnim = i11;
        this.exitAnim = i12;
        this.popEnterAnim = i13;
        this.popExitAnim = i14;
    }

    @AnimRes
    @AnimatorRes
    public final int a() {
        return this.enterAnim;
    }

    @AnimRes
    @AnimatorRes
    public final int b() {
        return this.exitAnim;
    }

    @AnimRes
    @AnimatorRes
    public final int c() {
        return this.popEnterAnim;
    }

    @AnimRes
    @AnimatorRes
    public final int d() {
        return this.popExitAnim;
    }

    @IdRes
    public final int e() {
        return this.popUpToId;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !t.e(NavOptions.class, obj.getClass())) {
            return false;
        }
        NavOptions navOptions = (NavOptions) obj;
        return this.singleTop == navOptions.singleTop && this.restoreState == navOptions.restoreState && this.popUpToId == navOptions.popUpToId && t.e(this.popUpToRoute, navOptions.popUpToRoute) && this.popUpToInclusive == navOptions.popUpToInclusive && this.popUpToSaveState == navOptions.popUpToSaveState && this.enterAnim == navOptions.enterAnim && this.exitAnim == navOptions.exitAnim && this.popEnterAnim == navOptions.popEnterAnim && this.popExitAnim == navOptions.popExitAnim;
    }

    public final boolean f() {
        return this.popUpToInclusive;
    }

    public final boolean g() {
        return this.singleTop;
    }

    public final boolean h() {
        return this.popUpToSaveState;
    }

    public final boolean i() {
        return this.restoreState;
    }

    public NavOptions(boolean z6, boolean z10, @Nullable String str, boolean z11, boolean z12, int i10, int i11, int i12, int i13) {
        this(z6, z10, NavDestination.Companion.a(str).hashCode(), z11, z12, i10, i11, i12, i13);
        this.popUpToRoute = str;
    }

    public int hashCode() {
        int iHashCode;
        int i10 = (((((g() ? 1 : 0) * 31) + (i() ? 1 : 0)) * 31) + this.popUpToId) * 31;
        String str = this.popUpToRoute;
        if (str != null) {
            iHashCode = str.hashCode();
        } else {
            iHashCode = 0;
        }
        return ((((((((((((i10 + iHashCode) * 31) + (f() ? 1 : 0)) * 31) + (h() ? 1 : 0)) * 31) + this.enterAnim) * 31) + this.exitAnim) * 31) + this.popEnterAnim) * 31) + this.popExitAnim;
    }
}
