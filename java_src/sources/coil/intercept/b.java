package coil.intercept;

import coil.request.h;
import coil.size.i;
import kotlin.coroutines.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public interface b {

    public interface a {
        @NotNull
        h a();

        @NotNull
        i getSize();
    }

    @Nullable
    Object a(@NotNull a aVar, @NotNull d<? super coil.request.i> dVar);
}
