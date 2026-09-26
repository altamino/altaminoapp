package androidx.compose.runtime.saveable;

import e8.p;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
final class SaveableStateHolderImpl$Companion$Saver$1 extends v implements p<SaverScope, SaveableStateHolderImpl, Map<Object, Map<String, ? extends List<? extends Object>>>> {
    public static final SaveableStateHolderImpl$Companion$Saver$1 INSTANCE = new SaveableStateHolderImpl$Companion$Saver$1();

    SaveableStateHolderImpl$Companion$Saver$1() {
        super(2);
    }

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Map<Object, Map<String, List<Object>>> invoke(@NotNull SaverScope Saver, @NotNull SaveableStateHolderImpl it) {
        t.j(Saver, "$this$Saver");
        t.j(it, "it");
        return it.g();
    }
}
