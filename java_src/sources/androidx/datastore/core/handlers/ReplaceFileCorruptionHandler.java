package androidx.datastore.core.handlers;

import androidx.datastore.core.CorruptionException;
import androidx.datastore.core.CorruptionHandler;
import e8.l;
import java.io.IOException;
import kotlin.coroutines.d;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class ReplaceFileCorruptionHandler<T> implements CorruptionHandler<T> {

    @NotNull
    private final l<CorruptionException, T> produceNewData;

    /* JADX WARN: Multi-variable type inference failed */
    public ReplaceFileCorruptionHandler(@NotNull l<? super CorruptionException, ? extends T> produceNewData) {
        t.j(produceNewData, "produceNewData");
        this.produceNewData = produceNewData;
    }

    @Override // androidx.datastore.core.CorruptionHandler
    @Nullable
    public Object a(@NotNull CorruptionException corruptionException, @NotNull d<? super T> dVar) throws IOException {
        return this.produceNewData.invoke(corruptionException);
    }
}
