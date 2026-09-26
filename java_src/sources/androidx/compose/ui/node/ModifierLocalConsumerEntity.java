package androidx.compose.ui.node;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.modifier.ModifierLocal;
import androidx.compose.ui.modifier.ModifierLocalConsumer;
import androidx.compose.ui.modifier.ModifierLocalProvider;
import androidx.compose.ui.modifier.ModifierLocalReadScope;
import e8.l;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
public final class ModifierLocalConsumerEntity implements e8.a<l0>, OwnerScope, ModifierLocalReadScope {
    private boolean isAttached;

    @NotNull
    private final ModifierLocalConsumer modifier;

    @NotNull
    private final MutableVector<ModifierLocal<?>> modifierLocalsRead;

    @NotNull
    private ModifierLocalProviderEntity provider;

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final l<ModifierLocalConsumerEntity, l0> onReadValuesChanged = ModifierLocalConsumerEntity$Companion$onReadValuesChanged$1.INSTANCE;

    @NotNull
    private static final ModifierLocalReadScope DetachedModifierLocalReadScope = new ModifierLocalReadScope() { // from class: androidx.compose.ui.node.ModifierLocalConsumerEntity$Companion$DetachedModifierLocalReadScope$1
        @Override // androidx.compose.ui.modifier.ModifierLocalReadScope
        public <T> T a(@NotNull ModifierLocal<T> modifierLocal) {
            t.j(modifierLocal, "<this>");
            return modifierLocal.a().invoke();
        }
    };

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public final void b() {
        this.isAttached = true;
        i();
    }

    public final void c() {
        this.isAttached = true;
        f();
    }

    @NotNull
    public final ModifierLocalConsumer e() {
        return this.modifier;
    }

    @Override // androidx.compose.ui.node.OwnerScope
    public boolean isValid() {
        return this.isAttached;
    }

    public final void j(@NotNull ModifierLocalProviderEntity modifierLocalProviderEntity) {
        t.j(modifierLocalProviderEntity, "<set-?>");
        this.provider = modifierLocalProviderEntity;
    }

    public ModifierLocalConsumerEntity(@NotNull ModifierLocalProviderEntity provider, @NotNull ModifierLocalConsumer modifier) {
        t.j(provider, "provider");
        t.j(modifier, "modifier");
        this.provider = provider;
        this.modifier = modifier;
        this.modifierLocalsRead = new MutableVector<>(new ModifierLocal[16], 0);
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalReadScope
    public <T> T a(@NotNull ModifierLocal<T> modifierLocal) {
        t.j(modifierLocal, "<this>");
        this.modifierLocalsRead.b(modifierLocal);
        ModifierLocalProvider<?> modifierLocalProviderD = this.provider.d(modifierLocal);
        return modifierLocalProviderD == null ? modifierLocal.a().invoke() : (T) modifierLocalProviderD.getValue();
    }

    public final void d() {
        this.modifier.z0(DetachedModifierLocalReadScope);
        this.isAttached = false;
    }

    public final void f() {
        Owner ownerS0 = this.provider.f().s0();
        if (ownerS0 != null) {
            ownerS0.b(this);
        }
    }

    public final void g(@NotNull ModifierLocal<?> local) {
        Owner ownerS0;
        t.j(local, "local");
        if (!this.modifierLocalsRead.i(local) || (ownerS0 = this.provider.f().s0()) == null) {
            return;
        }
        ownerS0.b(this);
    }

    public final void i() {
        if (this.isAttached) {
            this.modifierLocalsRead.h();
            LayoutNodeKt.a(this.provider.f()).getSnapshotObserver().e(this, onReadValuesChanged, new ModifierLocalConsumerEntity$notifyConsumerOfChanges$1(this));
        }
    }

    public void h() {
        i();
    }

    @Override // e8.a
    public /* bridge */ /* synthetic */ l0 invoke() {
        h();
        return l0.INSTANCE;
    }
}
