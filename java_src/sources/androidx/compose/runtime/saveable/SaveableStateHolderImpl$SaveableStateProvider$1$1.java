package androidx.compose.runtime.saveable;

import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
final class SaveableStateHolderImpl$SaveableStateProvider$1$1 extends v implements l<DisposableEffectScope, DisposableEffectResult> {
    final /* synthetic */ Object $key;
    final /* synthetic */ SaveableStateHolderImpl.RegistryHolder $registryHolder;
    final /* synthetic */ SaveableStateHolderImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SaveableStateHolderImpl$SaveableStateProvider$1$1(SaveableStateHolderImpl saveableStateHolderImpl, Object obj, SaveableStateHolderImpl.RegistryHolder registryHolder) {
        super(1);
        this.this$0 = saveableStateHolderImpl;
        this.$key = obj;
        this.$registryHolder = registryHolder;
    }

    @Override // e8.l
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final DisposableEffectResult invoke(@NotNull DisposableEffectScope DisposableEffect) {
        t.j(DisposableEffect, "$this$DisposableEffect");
        boolean z6 = !this.this$0.registryHolders.containsKey(this.$key);
        Object obj = this.$key;
        if (!z6) {
            throw new IllegalArgumentException(("Key " + obj + " was used multiple times ").toString());
        }
        this.this$0.savedStates.remove(this.$key);
        this.this$0.registryHolders.put(this.$key, this.$registryHolder);
        final SaveableStateHolderImpl.RegistryHolder registryHolder = this.$registryHolder;
        final SaveableStateHolderImpl saveableStateHolderImpl = this.this$0;
        final Object obj2 = this.$key;
        return new DisposableEffectResult() { // from class: androidx.compose.runtime.saveable.SaveableStateHolderImpl$SaveableStateProvider$1$1$invoke$$inlined$onDispose$1
            @Override // androidx.compose.runtime.DisposableEffectResult
            public void t() {
                registryHolder.b(saveableStateHolderImpl.savedStates);
                saveableStateHolderImpl.registryHolders.remove(obj2);
            }
        };
    }
}
