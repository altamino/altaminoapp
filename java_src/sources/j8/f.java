package j8;

import java.lang.Comparable;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public interface f<T extends Comparable<? super T>> {
    @NotNull
    T c();

    @NotNull
    T getStart();

    boolean isEmpty();

    public static final class a {
        public static <T extends Comparable<? super T>> boolean a(@NotNull f<T> fVar) {
            if (fVar.getStart().compareTo(fVar.c()) > 0) {
                return true;
            }
            return false;
        }
    }
}
