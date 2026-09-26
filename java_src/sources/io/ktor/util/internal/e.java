package io.ktor.util.internal;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
final class e {

    @NotNull
    public final c ref;

    public e(@NotNull c ref) {
        t.j(ref, "ref");
        this.ref = ref;
    }

    @NotNull
    public String toString() {
        return "Removed[" + this.ref + kotlinx.serialization.json.internal.b.END_LIST;
    }
}
