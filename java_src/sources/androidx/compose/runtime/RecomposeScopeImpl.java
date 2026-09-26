package androidx.compose.runtime;

import androidx.compose.runtime.collection.IdentityArrayIntMap;
import androidx.compose.runtime.collection.IdentityArrayMap;
import androidx.compose.runtime.collection.IdentityArraySet;
import e8.l;
import e8.p;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
public final class RecomposeScopeImpl implements ScopeUpdateScope, RecomposeScope {

    @Nullable
    private Anchor anchor;

    @Nullable
    private p<? super Composer, ? super Integer, l0> block;

    @Nullable
    private CompositionImpl composition;
    private int currentToken;
    private int flags;

    @Nullable
    private IdentityArrayMap<DerivedState<?>, Object> trackedDependencies;

    @Nullable
    private IdentityArrayIntMap trackedInstances;

    private final void E(boolean z6) {
        if (z6) {
            this.flags |= 32;
        } else {
            this.flags &= -33;
        }
    }

    private final void F(boolean z6) {
        if (z6) {
            this.flags |= 16;
        } else {
            this.flags &= -17;
        }
    }

    private final boolean p() {
        return (this.flags & 32) != 0;
    }

    public final void A(@Nullable Anchor anchor) {
        this.anchor = anchor;
    }

    public final void B(boolean z6) {
        if (z6) {
            this.flags |= 2;
        } else {
            this.flags &= -3;
        }
    }

    public final void C(boolean z6) {
        if (z6) {
            this.flags |= 4;
        } else {
            this.flags &= -5;
        }
    }

    public final void D(boolean z6) {
        if (z6) {
            this.flags |= 8;
        } else {
            this.flags &= -9;
        }
    }

    public final void G(boolean z6) {
        if (z6) {
            this.flags |= 1;
        } else {
            this.flags &= -2;
        }
    }

    @Override // androidx.compose.runtime.ScopeUpdateScope
    public void a(@NotNull p<? super Composer, ? super Integer, l0> block) {
        t.j(block, "block");
        this.block = block;
    }

    public final void g(@NotNull CompositionImpl composition) {
        t.j(composition, "composition");
        this.composition = composition;
    }

    @Nullable
    public final Anchor j() {
        return this.anchor;
    }

    public final boolean k() {
        return this.block != null;
    }

    @Nullable
    public final CompositionImpl l() {
        return this.composition;
    }

    public final boolean m() {
        return (this.flags & 2) != 0;
    }

    public final boolean n() {
        return (this.flags & 4) != 0;
    }

    public final boolean o() {
        return (this.flags & 8) != 0;
    }

    public final boolean q() {
        return (this.flags & 16) != 0;
    }

    public final boolean r() {
        return (this.flags & 1) != 0;
    }

    public final boolean u() {
        return this.trackedDependencies != null;
    }

    public final boolean v(@Nullable IdentityArraySet<Object> identityArraySet) {
        IdentityArrayMap<DerivedState<?>, Object> identityArrayMap;
        if (identityArraySet != null && (identityArrayMap = this.trackedDependencies) != null && identityArraySet.f()) {
            if (identityArraySet.isEmpty()) {
                return false;
            }
            for (Object obj : identityArraySet) {
                if (!(obj instanceof DerivedState) || !t.e(identityArrayMap.d((DerivedState<?>) obj), ((DerivedState) obj).h())) {
                }
            }
            return false;
        }
        return true;
    }

    public final void x() {
        this.composition = null;
        this.trackedInstances = null;
        this.trackedDependencies = null;
    }

    public final void z() {
        F(true);
    }

    public final void H(int i10) {
        this.currentToken = i10;
        F(false);
    }

    public final void h(@NotNull Composer composer) {
        l0 l0Var;
        t.j(composer, "composer");
        p<? super Composer, ? super Integer, l0> pVar = this.block;
        if (pVar != null) {
            pVar.invoke(composer, 1);
            l0Var = l0.INSTANCE;
        } else {
            l0Var = null;
        }
        if (l0Var == null) {
            throw new IllegalStateException("Invalid restart scope".toString());
        }
    }

    @Nullable
    public final l<Composition, l0> i(int i10) {
        IdentityArrayIntMap identityArrayIntMap = this.trackedInstances;
        if (identityArrayIntMap == null || q()) {
            return null;
        }
        int iE = identityArrayIntMap.e();
        for (int i11 = 0; i11 < iE; i11++) {
            if (identityArrayIntMap.d()[i11] == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Any");
            }
            if (identityArrayIntMap.f()[i11] != i10) {
                return new RecomposeScopeImpl$end$1$2(this, i10, identityArrayIntMap);
            }
        }
        return null;
    }

    @Override // androidx.compose.runtime.RecomposeScope
    public void invalidate() {
        CompositionImpl compositionImpl = this.composition;
        if (compositionImpl != null) {
            compositionImpl.C(this, null);
        }
    }

    public final boolean s() {
        Anchor anchor;
        return (this.composition == null || (anchor = this.anchor) == null || !anchor.b()) ? false : true;
    }

    @NotNull
    public final InvalidationResult t(@Nullable Object obj) {
        InvalidationResult invalidationResultC;
        CompositionImpl compositionImpl = this.composition;
        return (compositionImpl == null || (invalidationResultC = compositionImpl.C(this, obj)) == null) ? InvalidationResult.IGNORED : invalidationResultC;
    }

    public final void w(@NotNull Object instance) {
        t.j(instance, "instance");
        if (p()) {
            return;
        }
        IdentityArrayIntMap identityArrayIntMap = this.trackedInstances;
        if (identityArrayIntMap == null) {
            identityArrayIntMap = new IdentityArrayIntMap();
            this.trackedInstances = identityArrayIntMap;
        }
        identityArrayIntMap.a(instance, this.currentToken);
        if (instance instanceof DerivedState) {
            IdentityArrayMap<DerivedState<?>, Object> identityArrayMap = this.trackedDependencies;
            if (identityArrayMap == null) {
                identityArrayMap = new IdentityArrayMap<>(0, 1, null);
                this.trackedDependencies = identityArrayMap;
            }
            identityArrayMap.j(instance, ((DerivedState) instance).h());
        }
    }

    public final void y() {
        IdentityArrayIntMap identityArrayIntMap;
        CompositionImpl compositionImpl = this.composition;
        if (compositionImpl == null || (identityArrayIntMap = this.trackedInstances) == null) {
            return;
        }
        E(true);
        try {
            int iE = identityArrayIntMap.e();
            for (int i10 = 0; i10 < iE; i10++) {
                Object obj = identityArrayIntMap.d()[i10];
                if (obj == null) {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Any");
                }
                int i11 = identityArrayIntMap.f()[i10];
                compositionImpl.j(obj);
            }
        } finally {
            E(false);
        }
    }

    public RecomposeScopeImpl(@Nullable CompositionImpl compositionImpl) {
        this.composition = compositionImpl;
    }
}
