package io.ktor.util.internal;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class b {
    public static final int FAILURE = 2;
    public static final int SUCCESS = 1;
    public static final int UNDECIDED = 0;

    @NotNull
    private static final Object CONDITION_FALSE = new f("CONDITION_FALSE");

    @NotNull
    private static final Object ALREADY_REMOVED = new f("ALREADY_REMOVED");

    @NotNull
    private static final Object LIST_EMPTY = new f("LIST_EMPTY");

    @NotNull
    private static final Object REMOVE_PREPARED = new f("REMOVE_PREPARED");

    @NotNull
    private static final Object NO_DECISION = new f("NO_DECISION");

    @NotNull
    public static final c a(@NotNull Object obj) {
        c cVar;
        t.j(obj, "<this>");
        e eVar = obj instanceof e ? (e) obj : null;
        return (eVar == null || (cVar = eVar.ref) == null) ? (c) obj : cVar;
    }
}
