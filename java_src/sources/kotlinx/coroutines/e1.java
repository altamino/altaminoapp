package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class e1 {

    @NotNull
    public static final e1 INSTANCE = new e1();

    @NotNull
    private static final k0 Default = kotlinx.coroutines.scheduling.c.INSTANCE;

    @NotNull
    private static final k0 Unconfined = g3.INSTANCE;

    @NotNull
    private static final k0 IO = kotlinx.coroutines.scheduling.b.INSTANCE;

    @NotNull
    public static final k0 a() {
        return Default;
    }

    @NotNull
    public static final k0 b() {
        return IO;
    }

    @NotNull
    public static final k0 d() {
        return Unconfined;
    }

    @NotNull
    public static final n2 c() {
        return kotlinx.coroutines.internal.x.dispatcher;
    }

    private e1() {
    }
}
