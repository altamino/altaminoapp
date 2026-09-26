package androidx.compose.material;

import androidx.compose.runtime.saveable.SaverScope;
import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
final class BackdropScaffoldState$Companion$Saver$1 extends v implements p<SaverScope, BackdropScaffoldState, BackdropValue> {
    public static final BackdropScaffoldState$Companion$Saver$1 INSTANCE = new BackdropScaffoldState$Companion$Saver$1();

    BackdropScaffoldState$Companion$Saver$1() {
        super(2);
    }

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final BackdropValue invoke(@NotNull SaverScope Saver, @NotNull BackdropScaffoldState it) {
        t.j(Saver, "$this$Saver");
        t.j(it, "it");
        return it.p();
    }
}
