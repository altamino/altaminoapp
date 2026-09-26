package androidx.work.impl;

import androidx.work.impl.model.WorkGenerationalId;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class StartStopToken {

    @NotNull
    private final WorkGenerationalId id;

    @NotNull
    public final WorkGenerationalId a() {
        return this.id;
    }

    public StartStopToken(@NotNull WorkGenerationalId id) {
        t.j(id, "id");
        this.id = id;
    }
}
