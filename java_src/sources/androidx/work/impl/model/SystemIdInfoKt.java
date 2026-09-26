package androidx.work.impl.model;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class SystemIdInfoKt {
    @NotNull
    public static final SystemIdInfo a(@NotNull WorkGenerationalId generationalId, int i10) {
        t.j(generationalId, "generationalId");
        return new SystemIdInfo(generationalId.b(), generationalId.a(), i10);
    }
}
