package androidx.compose.ui.node;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.LayoutNodeEntity;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public class LayoutNodeEntity<T extends LayoutNodeEntity<T, M>, M extends Modifier> {
    private boolean isAttached;

    @NotNull
    private final LayoutNodeWrapper layoutNodeWrapper;

    @NotNull
    private final M modifier;

    @Nullable
    private T next;

    @NotNull
    public final LayoutNodeWrapper b() {
        return this.layoutNodeWrapper;
    }

    @NotNull
    public final M c() {
        return this.modifier;
    }

    @Nullable
    public final T d() {
        return this.next;
    }

    public final boolean f() {
        return this.isAttached;
    }

    public void g() {
        this.isAttached = true;
    }

    public void h() {
        this.isAttached = false;
    }

    public final void i(@Nullable T t5) {
        this.next = t5;
    }

    public LayoutNodeEntity(@NotNull LayoutNodeWrapper layoutNodeWrapper, @NotNull M modifier) {
        t.j(layoutNodeWrapper, "layoutNodeWrapper");
        t.j(modifier, "modifier");
        this.layoutNodeWrapper = layoutNodeWrapper;
        this.modifier = modifier;
    }

    @NotNull
    public final LayoutNode a() {
        return this.layoutNodeWrapper.x1();
    }

    public final long e() {
        return this.layoutNodeWrapper.a();
    }
}
