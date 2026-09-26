package androidx.compose.runtime.saveable;

import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
final class SaverKt$AutoSaver$2 extends v implements l<Object, Object> {
    public static final SaverKt$AutoSaver$2 INSTANCE = new SaverKt$AutoSaver$2();

    SaverKt$AutoSaver$2() {
        super(1);
    }

    @Override // e8.l
    @Nullable
    public final Object invoke(@NotNull Object it) {
        t.j(it, "it");
        return it;
    }
}
