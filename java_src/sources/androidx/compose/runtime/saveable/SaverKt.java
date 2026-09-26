package androidx.compose.runtime.saveable;

import e8.l;
import e8.p;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class SaverKt {

    @NotNull
    private static final Saver<Object, Object> AutoSaver = a(SaverKt$AutoSaver$1.INSTANCE, SaverKt$AutoSaver$2.INSTANCE);

    @NotNull
    public static final <T> Saver<T, Object> b() {
        return (Saver<T, Object>) AutoSaver;
    }

    @NotNull
    public static final <Original, Saveable> Saver<Original, Saveable> a(@NotNull final p<? super SaverScope, ? super Original, ? extends Saveable> save, @NotNull final l<? super Saveable, ? extends Original> restore) {
        t.j(save, "save");
        t.j(restore, "restore");
        return new Saver<Original, Saveable>() { // from class: androidx.compose.runtime.saveable.SaverKt$Saver$1
            @Override // androidx.compose.runtime.saveable.Saver
            @Nullable
            public Saveable a(@NotNull SaverScope saverScope, Original original) {
                t.j(saverScope, "<this>");
                return save.invoke(saverScope, original);
            }

            @Override // androidx.compose.runtime.saveable.Saver
            @Nullable
            public Original b(@NotNull Saveable value) {
                t.j(value, "value");
                return restore.invoke(value);
            }
        };
    }
}
