package androidx.compose.runtime.saveable;

import e8.l;
import e8.p;
import java.util.List;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v0;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class ListSaverKt {
    @NotNull
    public static final <Original, Saveable> Saver<Original, Object> a(@NotNull p<? super SaverScope, ? super Original, ? extends List<? extends Saveable>> save, @NotNull l<? super List<? extends Saveable>, ? extends Original> restore) {
        t.j(save, "save");
        t.j(restore, "restore");
        return SaverKt.a(new ListSaverKt$listSaver$1(save), (l) v0.e(restore, 1));
    }
}
