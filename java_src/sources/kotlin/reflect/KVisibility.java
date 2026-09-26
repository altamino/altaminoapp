package kotlin.reflect;

import org.jetbrains.annotations.NotNull;
import z7.a;
import z7.b;

/* JADX INFO: loaded from: classes7.dex */
public enum KVisibility {
    PUBLIC,
    PROTECTED,
    INTERNAL,
    PRIVATE;

    private static final /* synthetic */ a $ENTRIES = b.a(values());

    @NotNull
    public static a<KVisibility> getEntries() {
        return $ENTRIES;
    }
}
