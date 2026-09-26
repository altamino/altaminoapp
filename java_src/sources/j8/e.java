package j8;

import java.lang.Comparable;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public interface e<T extends Comparable<? super T>> extends f<T> {
    boolean a(@NotNull T t5, @NotNull T t10);

    boolean b(@NotNull T t5);

    @Override // j8.f
    boolean isEmpty();
}
