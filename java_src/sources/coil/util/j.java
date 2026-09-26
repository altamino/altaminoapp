package coil.util;

import java.io.IOException;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Response;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.v;
import w7.w;

/* JADX INFO: loaded from: classes7.dex */
final class j implements Callback, e8.l<Throwable, l0> {

    @NotNull
    private final Call call;

    @NotNull
    private final kotlinx.coroutines.o<Response> continuation;

    public void a(@Nullable Throwable th) {
        try {
            this.call.cancel();
        } catch (Throwable unused) {
        }
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Throwable th) {
        a(th);
        return l0.INSTANCE;
    }

    @Override // okhttp3.Callback
    public void onResponse(@NotNull Call call, @NotNull Response response) {
        this.continuation.resumeWith(v.b(response));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public j(@NotNull Call call, @NotNull kotlinx.coroutines.o<? super Response> oVar) {
        this.call = call;
        this.continuation = oVar;
    }

    @Override // okhttp3.Callback
    public void onFailure(@NotNull Call call, @NotNull IOException iOException) {
        if (!call.isCanceled()) {
            kotlinx.coroutines.o<Response> oVar = this.continuation;
            v.a aVar = v.Companion;
            oVar.resumeWith(v.b(w.a(iOException)));
        }
    }
}
