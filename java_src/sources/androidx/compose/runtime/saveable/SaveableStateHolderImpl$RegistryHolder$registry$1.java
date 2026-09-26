package androidx.compose.runtime.saveable;

import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
final class SaveableStateHolderImpl$RegistryHolder$registry$1 extends v implements l<Object, Boolean> {
    final /* synthetic */ SaveableStateHolderImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SaveableStateHolderImpl$RegistryHolder$registry$1(SaveableStateHolderImpl saveableStateHolderImpl) {
        super(1);
        this.this$0 = saveableStateHolderImpl;
    }

    @Override // e8.l
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Boolean invoke(@NotNull Object it) {
        t.j(it, "it");
        SaveableStateRegistry saveableStateRegistryF = this.this$0.f();
        return Boolean.valueOf(saveableStateRegistryF != null ? saveableStateRegistryF.a(it) : true);
    }
}
