package androidx.compose.runtime;

import java.util.HashMap;
import java.util.LinkedHashSet;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
final class Pending$keyMap$2 extends v implements e8.a<HashMap<Object, LinkedHashSet<KeyInfo>>> {
    final /* synthetic */ Pending this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    Pending$keyMap$2(Pending pending) {
        super(0);
        this.this$0 = pending;
    }

    @Override // e8.a
    @NotNull
    public final HashMap<Object, LinkedHashSet<KeyInfo>> invoke() {
        HashMap<Object, LinkedHashSet<KeyInfo>> mapP = ComposerKt.P();
        Pending pending = this.this$0;
        int size = pending.b().size();
        for (int i10 = 0; i10 < size; i10++) {
            KeyInfo keyInfo = pending.b().get(i10);
            ComposerKt.S(mapP, ComposerKt.H(keyInfo), keyInfo);
        }
        return mapP;
    }
}
