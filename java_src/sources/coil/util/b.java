package coil.util;

import com.google.firebase.perf.network.FirebasePerfOkHttpClient;
import okhttp3.Call;
import okhttp3.Response;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class b {
    @Nullable
    public static final Object a(@NotNull Call call, @NotNull kotlin.coroutines.d<? super Response> dVar) {
        kotlinx.coroutines.p pVar = new kotlinx.coroutines.p(kotlin.coroutines.intrinsics.c.c(dVar), 1);
        pVar.x();
        j jVar = new j(call, pVar);
        FirebasePerfOkHttpClient.enqueue(call, jVar);
        pVar.S(jVar);
        Object objU = pVar.u();
        if (objU == kotlin.coroutines.intrinsics.d.e()) {
            kotlin.coroutines.jvm.internal.h.c(dVar);
        }
        return objU;
    }
}
