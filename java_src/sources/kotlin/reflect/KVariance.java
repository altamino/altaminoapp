package kotlin.reflect;

import org.jetbrains.annotations.NotNull;
import z7.a;
import z7.b;

/* JADX INFO: loaded from: classes2.dex */
public enum KVariance {
    INVARIANT,
    IN,
    OUT;

    private static final /* synthetic */ a $ENTRIES = b.a(values());

    @NotNull
    public static a<KVariance> getEntries() {
        return $ENTRIES;
    }
}
