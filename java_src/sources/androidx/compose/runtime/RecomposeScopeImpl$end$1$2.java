package androidx.compose.runtime;

import androidx.compose.runtime.collection.IdentityArrayIntMap;
import androidx.compose.runtime.collection.IdentityArrayMap;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
final class RecomposeScopeImpl$end$1$2 extends v implements l<Composition, l0> {
    final /* synthetic */ IdentityArrayIntMap $instances;
    final /* synthetic */ int $token;
    final /* synthetic */ RecomposeScopeImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RecomposeScopeImpl$end$1$2(RecomposeScopeImpl recomposeScopeImpl, int i10, IdentityArrayIntMap identityArrayIntMap) {
        super(1);
        this.this$0 = recomposeScopeImpl;
        this.$token = i10;
        this.$instances = identityArrayIntMap;
    }

    public final void a(@NotNull Composition composition) {
        t.j(composition, "composition");
        if (this.this$0.currentToken == this.$token && t.e(this.$instances, this.this$0.trackedInstances) && (composition instanceof CompositionImpl)) {
            IdentityArrayIntMap identityArrayIntMap = this.$instances;
            int i10 = this.$token;
            RecomposeScopeImpl recomposeScopeImpl = this.this$0;
            int iE = identityArrayIntMap.e();
            int i11 = 0;
            for (int i12 = 0; i12 < iE; i12++) {
                Object obj = identityArrayIntMap.d()[i12];
                if (obj == null) {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Any");
                }
                int i13 = identityArrayIntMap.f()[i12];
                boolean z6 = i13 != i10;
                if (z6) {
                    CompositionImpl compositionImpl = (CompositionImpl) composition;
                    compositionImpl.G(obj, recomposeScopeImpl);
                    DerivedState<?> derivedState = obj instanceof DerivedState ? (DerivedState) obj : null;
                    if (derivedState != null) {
                        compositionImpl.F(derivedState);
                        IdentityArrayMap identityArrayMap = recomposeScopeImpl.trackedDependencies;
                        if (identityArrayMap != null) {
                            identityArrayMap.i(derivedState);
                            if (identityArrayMap.f() == 0) {
                                recomposeScopeImpl.trackedDependencies = null;
                            }
                        }
                    }
                }
                if (!z6) {
                    if (i11 != i12) {
                        identityArrayIntMap.d()[i11] = obj;
                        identityArrayIntMap.f()[i11] = i13;
                    }
                    i11++;
                }
            }
            int iE2 = identityArrayIntMap.e();
            for (int i14 = i11; i14 < iE2; i14++) {
                identityArrayIntMap.d()[i14] = null;
            }
            identityArrayIntMap.g(i11);
            if (this.$instances.e() == 0) {
                this.this$0.trackedInstances = null;
            }
        }
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Composition composition) {
        a(composition);
        return l0.INSTANCE;
    }
}
