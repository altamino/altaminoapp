package androidx.compose.runtime.saveable;

import e8.l;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
final class SaveableStateHolderImpl$Companion$Saver$2 extends v implements l<Map<Object, Map<String, ? extends List<? extends Object>>>, SaveableStateHolderImpl> {
    public static final SaveableStateHolderImpl$Companion$Saver$2 INSTANCE = new SaveableStateHolderImpl$Companion$Saver$2();

    SaveableStateHolderImpl$Companion$Saver$2() {
        super(1);
    }

    @Override // e8.l
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final SaveableStateHolderImpl invoke(@NotNull Map<Object, Map<String, List<Object>>> it) {
        t.j(it, "it");
        return new SaveableStateHolderImpl(it);
    }
}
