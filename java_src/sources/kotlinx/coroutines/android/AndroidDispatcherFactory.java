package kotlinx.coroutines.android;

import android.os.Looper;
import java.util.List;
import kotlinx.coroutines.internal.v;
import kotlinx.coroutines.internal.w;
import kotlinx.coroutines.n2;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class AndroidDispatcherFactory implements w {
    @Override // kotlinx.coroutines.internal.w
    public int getLoadPriority() {
        return v.MAX_CAPACITY_MASK;
    }

    @Override // kotlinx.coroutines.internal.w
    @NotNull
    public String hintOnError() {
        return "For tests Dispatchers.setMain from kotlinx-coroutines-test module can be used";
    }

    @Override // kotlinx.coroutines.internal.w
    @NotNull
    public n2 createDispatcher(@NotNull List<? extends w> list) {
        Looper mainLooper = Looper.getMainLooper();
        if (mainLooper != null) {
            return new HandlerContext(HandlerDispatcherKt.asHandler(mainLooper, true), null, 2, null);
        }
        throw new IllegalStateException("The main looper is not available");
    }
}
