package androidx.compose.ui.graphics.vector;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes9.dex */
@StabilityInferred
public abstract class VNode {
    public static final int $stable = 8;

    @Nullable
    private e8.a<l0> invalidateListener;

    public /* synthetic */ VNode(k kVar) {
        this();
    }

    public abstract void a(@NotNull DrawScope drawScope);

    @Nullable
    public e8.a<l0> b() {
        return this.invalidateListener;
    }

    public void d(@Nullable e8.a<l0> aVar) {
        this.invalidateListener = aVar;
    }

    private VNode() {
    }

    public final void c() {
        e8.a<l0> aVarB = b();
        if (aVarB != null) {
            aVarB.invoke();
        }
    }
}
