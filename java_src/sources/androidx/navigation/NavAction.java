package androidx.navigation;

import android.os.Bundle;
import androidx.annotation.IdRes;
import kotlin.jvm.internal.k;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class NavAction {

    @Nullable
    private Bundle defaultArguments;

    @IdRes
    private final int destinationId;

    @Nullable
    private NavOptions navOptions;

    public NavAction(@IdRes int i10) {
        this(i10, null, null, 6, null);
    }

    @Nullable
    public final Bundle a() {
        return this.defaultArguments;
    }

    public final int b() {
        return this.destinationId;
    }

    @Nullable
    public final NavOptions c() {
        return this.navOptions;
    }

    public final void d(@Nullable Bundle bundle) {
        this.defaultArguments = bundle;
    }

    public final void e(@Nullable NavOptions navOptions) {
        this.navOptions = navOptions;
    }

    public NavAction(@IdRes int i10, @Nullable NavOptions navOptions) {
        this(i10, navOptions, null, 4, null);
    }

    public NavAction(@IdRes int i10, @Nullable NavOptions navOptions, @Nullable Bundle bundle) {
        this.destinationId = i10;
        this.navOptions = navOptions;
        this.defaultArguments = bundle;
    }

    public /* synthetic */ NavAction(int i10, NavOptions navOptions, Bundle bundle, int i11, k kVar) {
        this(i10, (i11 & 2) != 0 ? null : navOptions, (i11 & 4) != 0 ? null : bundle);
    }
}
