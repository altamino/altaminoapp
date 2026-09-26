package androidx.compose.runtime;

import androidx.compose.runtime.collection.IdentityArraySet;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap;
import androidx.compose.runtime.internal.StabilityInferred;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.u;

/* JADX INFO: loaded from: classes5.dex */
@StabilityInferred
@InternalComposeApi
public final class MovableContentStateReference {
    public static final int $stable = 8;

    @NotNull
    private final Anchor anchor;

    @NotNull
    private final ControlledComposition composition;

    @NotNull
    private final MovableContent<Object> content;

    @NotNull
    private final List<u<RecomposeScopeImpl, IdentityArraySet<Object>>> invalidations;

    @NotNull
    private final PersistentMap<CompositionLocal<Object>, State<Object>> locals;

    @Nullable
    private final Object parameter;

    @NotNull
    private final SlotTable slotTable;

    @NotNull
    public final Anchor a() {
        return this.anchor;
    }

    @NotNull
    public final ControlledComposition b() {
        return this.composition;
    }

    @NotNull
    public final MovableContent<Object> c() {
        return this.content;
    }

    @NotNull
    public final List<u<RecomposeScopeImpl, IdentityArraySet<Object>>> d() {
        return this.invalidations;
    }

    @NotNull
    public final PersistentMap<CompositionLocal<Object>, State<Object>> e() {
        return this.locals;
    }

    @Nullable
    public final Object f() {
        return this.parameter;
    }

    @NotNull
    public final SlotTable g() {
        return this.slotTable;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public MovableContentStateReference(@NotNull MovableContent<Object> content, @Nullable Object obj, @NotNull ControlledComposition composition, @NotNull SlotTable slotTable, @NotNull Anchor anchor, @NotNull List<u<RecomposeScopeImpl, IdentityArraySet<Object>>> invalidations, @NotNull PersistentMap<CompositionLocal<Object>, ? extends State<? extends Object>> locals) {
        t.j(content, "content");
        t.j(composition, "composition");
        t.j(slotTable, "slotTable");
        t.j(anchor, "anchor");
        t.j(invalidations, "invalidations");
        t.j(locals, "locals");
        this.content = content;
        this.parameter = obj;
        this.composition = composition;
        this.slotTable = slotTable;
        this.anchor = anchor;
        this.invalidations = invalidations;
        this.locals = locals;
    }
}
