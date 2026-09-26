package androidx.room;

import androidx.annotation.RestrictTo;
import java.util.concurrent.Callable;
import kotlinx.coroutines.k0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
@RestrictTo
public final class CoroutinesRoom {

    @NotNull
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }

        @Nullable
        public final <R> Object a(@NotNull RoomDatabase roomDatabase, boolean z6, @NotNull Callable<R> callable, @NotNull kotlin.coroutines.d<? super R> dVar) {
            k0 k0VarA;
            kotlin.coroutines.e eVarE;
            if (roomDatabase.z() && roomDatabase.t()) {
                return callable.call();
            }
            TransactionElement transactionElement = (TransactionElement) dVar.getContext().get(TransactionElement.Key);
            if (transactionElement == null || (eVarE = transactionElement.e()) == null) {
                if (z6) {
                    k0VarA = CoroutinesRoomKt.b(roomDatabase);
                } else {
                    k0VarA = CoroutinesRoomKt.a(roomDatabase);
                }
                eVarE = k0VarA;
            }
            return kotlinx.coroutines.i.g(eVarE, new CoroutinesRoom$Companion$execute$2(callable, null), dVar);
        }
    }

    @Nullable
    public static final <R> Object a(@NotNull RoomDatabase roomDatabase, boolean z6, @NotNull Callable<R> callable, @NotNull kotlin.coroutines.d<? super R> dVar) {
        return Companion.a(roomDatabase, z6, callable, dVar);
    }

    private CoroutinesRoom() {
    }
}
