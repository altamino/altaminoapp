package androidx.compose.runtime;

import androidx.compose.runtime.collection.IdentityArraySet;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
final class Invalidation {

    @Nullable
    private IdentityArraySet<Object> instances;
    private final int location;

    @NotNull
    private final RecomposeScopeImpl scope;

    @Nullable
    public final IdentityArraySet<Object> a() {
        return this.instances;
    }

    public final int b() {
        return this.location;
    }

    @NotNull
    public final RecomposeScopeImpl c() {
        return this.scope;
    }

    public final void e(@Nullable IdentityArraySet<Object> identityArraySet) {
        this.instances = identityArraySet;
    }

    public Invalidation(@NotNull RecomposeScopeImpl scope, int i10, @Nullable IdentityArraySet<Object> identityArraySet) {
        t.j(scope, "scope");
        this.scope = scope;
        this.location = i10;
        this.instances = identityArraySet;
    }

    public final boolean d() {
        return this.scope.v(this.instances);
    }
}
