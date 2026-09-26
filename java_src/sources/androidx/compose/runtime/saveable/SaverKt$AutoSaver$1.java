package androidx.compose.runtime.saveable;

import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
final class SaverKt$AutoSaver$1 extends v implements p<SaverScope, Object, Object> {
    public static final SaverKt$AutoSaver$1 INSTANCE = new SaverKt$AutoSaver$1();

    SaverKt$AutoSaver$1() {
        super(2);
    }

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull SaverScope Saver, @Nullable Object obj) {
        t.j(Saver, "$this$Saver");
        return obj;
    }
}
