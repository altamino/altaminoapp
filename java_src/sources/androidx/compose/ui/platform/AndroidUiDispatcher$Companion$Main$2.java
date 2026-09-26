package androidx.compose.ui.platform;

import android.os.Handler;
import android.os.Looper;
import android.view.Choreographer;
import androidx.core.os.HandlerCompat;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
final class AndroidUiDispatcher$Companion$Main$2 extends kotlin.jvm.internal.v implements e8.a<kotlin.coroutines.g> {
    public static final AndroidUiDispatcher$Companion$Main$2 INSTANCE = new AndroidUiDispatcher$Companion$Main$2();

    AndroidUiDispatcher$Companion$Main$2() {
        super(0);
    }

    @Override // e8.a
    @NotNull
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final kotlin.coroutines.g invoke() {
        Choreographer choreographer = AndroidUiDispatcher_androidKt.b() ? Choreographer.getInstance() : (Choreographer) kotlinx.coroutines.i.e(kotlinx.coroutines.e1.c(), new AndroidUiDispatcher$Companion$Main$2$dispatcher$1(null));
        kotlin.jvm.internal.t.i(choreographer, "if (isMainThread()) Chor…eographer.getInstance() }");
        Handler handlerA = HandlerCompat.a(Looper.getMainLooper());
        kotlin.jvm.internal.t.i(handlerA, "createAsync(Looper.getMainLooper())");
        AndroidUiDispatcher androidUiDispatcher = new AndroidUiDispatcher(choreographer, handlerA, null);
        return androidUiDispatcher.plus(androidUiDispatcher.M0());
    }
}
