package androidx.compose.ui.node;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.modifier.ModifierLocal;
import androidx.compose.ui.modifier.ModifierLocalProvider;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes9.dex */
public final class ModifierLocalProviderEntity implements e8.a<l0> {

    @NotNull
    private final MutableVector<ModifierLocalConsumerEntity> consumers;
    private boolean isAttached;

    @NotNull
    private final LayoutNode layoutNode;

    @NotNull
    private final ModifierLocalProvider<?> modifier;

    @Nullable
    private ModifierLocalProviderEntity next;

    @Nullable
    private ModifierLocalProviderEntity prev;

    public final void a() {
        this.isAttached = true;
        int i10 = 0;
        j(this.modifier.getKey(), false);
        MutableVector<ModifierLocalConsumerEntity> mutableVector = this.consumers;
        int iN = mutableVector.n();
        if (iN > 0) {
            ModifierLocalConsumerEntity[] modifierLocalConsumerEntityArrM = mutableVector.m();
            do {
                modifierLocalConsumerEntityArrM[i10].b();
                i10++;
            } while (i10 < iN);
        }
    }

    public final void b() {
        this.isAttached = true;
        Owner ownerS0 = this.layoutNode.s0();
        if (ownerS0 != null) {
            ownerS0.b(this);
        }
        MutableVector<ModifierLocalConsumerEntity> mutableVector = this.consumers;
        int iN = mutableVector.n();
        if (iN > 0) {
            ModifierLocalConsumerEntity[] modifierLocalConsumerEntityArrM = mutableVector.m();
            int i10 = 0;
            do {
                modifierLocalConsumerEntityArrM[i10].c();
                i10++;
            } while (i10 < iN);
        }
    }

    public final void c() {
        this.isAttached = false;
        MutableVector<ModifierLocalConsumerEntity> mutableVector = this.consumers;
        int iN = mutableVector.n();
        if (iN > 0) {
            ModifierLocalConsumerEntity[] modifierLocalConsumerEntityArrM = mutableVector.m();
            int i10 = 0;
            do {
                modifierLocalConsumerEntityArrM[i10].d();
                i10++;
            } while (i10 < iN);
        }
        j(this.modifier.getKey(), false);
    }

    @NotNull
    public final MutableVector<ModifierLocalConsumerEntity> e() {
        return this.consumers;
    }

    @NotNull
    public final LayoutNode f() {
        return this.layoutNode;
    }

    @NotNull
    public final ModifierLocalProvider<?> g() {
        return this.modifier;
    }

    @Nullable
    public final ModifierLocalProviderEntity h() {
        return this.next;
    }

    @Nullable
    public final ModifierLocalProviderEntity i() {
        return this.prev;
    }

    public final void l(@Nullable ModifierLocalProviderEntity modifierLocalProviderEntity) {
        this.next = modifierLocalProviderEntity;
    }

    public final void m(@Nullable ModifierLocalProviderEntity modifierLocalProviderEntity) {
        this.prev = modifierLocalProviderEntity;
    }

    public ModifierLocalProviderEntity(@NotNull LayoutNode layoutNode, @NotNull ModifierLocalProvider<?> modifier) {
        t.j(layoutNode, "layoutNode");
        t.j(modifier, "modifier");
        this.layoutNode = layoutNode;
        this.modifier = modifier;
        this.consumers = new MutableVector<>(new ModifierLocalConsumerEntity[16], 0);
    }

    private final void j(ModifierLocal<?> modifierLocal, boolean z6) {
        l0 l0Var;
        MutableVector<LayoutNode> mutableVectorZ0;
        int iN;
        if (z6 && t.e(this.modifier.getKey(), modifierLocal)) {
            return;
        }
        MutableVector<ModifierLocalConsumerEntity> mutableVector = this.consumers;
        int iN2 = mutableVector.n();
        int i10 = 0;
        if (iN2 > 0) {
            ModifierLocalConsumerEntity[] modifierLocalConsumerEntityArrM = mutableVector.m();
            int i11 = 0;
            do {
                modifierLocalConsumerEntityArrM[i11].g(modifierLocal);
                i11++;
            } while (i11 < iN2);
        }
        ModifierLocalProviderEntity modifierLocalProviderEntity = this.next;
        if (modifierLocalProviderEntity != null) {
            modifierLocalProviderEntity.j(modifierLocal, true);
            l0Var = l0.INSTANCE;
        } else {
            l0Var = null;
        }
        if (l0Var != null || (iN = (mutableVectorZ0 = this.layoutNode.z0()).n()) <= 0) {
            return;
        }
        LayoutNode[] layoutNodeArrM = mutableVectorZ0.m();
        do {
            layoutNodeArrM[i10].n0().j(modifierLocal, true);
            i10++;
        } while (i10 < iN);
    }

    @Nullable
    public final ModifierLocalProvider<?> d(@NotNull ModifierLocal<?> local) {
        ModifierLocalProviderEntity modifierLocalProviderEntityO0;
        ModifierLocalProvider<?> modifierLocalProviderD;
        t.j(local, "local");
        if (t.e(this.modifier.getKey(), local)) {
            return this.modifier;
        }
        ModifierLocalProviderEntity modifierLocalProviderEntity = this.prev;
        if (modifierLocalProviderEntity != null && (modifierLocalProviderD = modifierLocalProviderEntity.d(local)) != null) {
            return modifierLocalProviderD;
        }
        LayoutNode layoutNodeT0 = this.layoutNode.t0();
        if (layoutNodeT0 == null || (modifierLocalProviderEntityO0 = layoutNodeT0.o0()) == null) {
            return null;
        }
        return modifierLocalProviderEntityO0.d(local);
    }

    public void k() {
        if (this.isAttached) {
            j(this.modifier.getKey(), false);
        }
    }

    @Override // e8.a
    public /* bridge */ /* synthetic */ l0 invoke() {
        k();
        return l0.INSTANCE;
    }
}
