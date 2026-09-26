package androidx.compose.ui.platform;

import android.os.Handler;
import android.view.View;
import androidx.compose.runtime.Recomposer;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.InternalComposeUiApi;
import java.util.concurrent.atomic.AtomicReference;
import kotlinx.coroutines.android.HandlerDispatcherKt;
import kotlinx.coroutines.b2;
import kotlinx.coroutines.t1;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
@StabilityInferred
@InternalComposeUiApi
public final class WindowRecomposerPolicy {

    @NotNull
    public static final WindowRecomposerPolicy INSTANCE = new WindowRecomposerPolicy();

    @NotNull
    private static final AtomicReference<WindowRecomposerFactory> factory = new AtomicReference<>(WindowRecomposerFactory.Companion.a());
    public static final int $stable = 8;

    @NotNull
    public final Recomposer a(@NotNull View rootView) {
        kotlin.jvm.internal.t.j(rootView, "rootView");
        Recomposer recomposerA = factory.get().a(rootView);
        WindowRecomposer_androidKt.i(rootView, recomposerA);
        t1 t1Var = t1.INSTANCE;
        Handler handler = rootView.getHandler();
        kotlin.jvm.internal.t.i(handler, "rootView.handler");
        final b2 b2VarD = kotlinx.coroutines.k.d(t1Var, HandlerDispatcherKt.from(handler, "windowRecomposer cleanup").getImmediate(), null, new WindowRecomposerPolicy$createAndInstallWindowRecomposer$unsetJob$1(recomposerA, rootView, null), 2, null);
        rootView.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: androidx.compose.ui.platform.WindowRecomposerPolicy$createAndInstallWindowRecomposer$1
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(@NotNull View v5) {
                kotlin.jvm.internal.t.j(v5, "v");
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(@NotNull View v5) {
                kotlin.jvm.internal.t.j(v5, "v");
                v5.removeOnAttachStateChangeListener(this);
                b2.a.a(b2VarD, null, 1, null);
            }
        });
        return recomposerA;
    }

    private WindowRecomposerPolicy() {
    }
}
