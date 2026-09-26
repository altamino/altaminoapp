package androidx.work.impl.model;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class WorkSpecKt {
    @NotNull
    public static final WorkGenerationalId a(@NotNull WorkSpec workSpec) {
        t.j(workSpec, "<this>");
        return new WorkGenerationalId(workSpec.id, workSpec.f());
    }
}
