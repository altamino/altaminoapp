package coil.util;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
public final class t {

    @NotNull
    public static final t INSTANCE = new t();

    @NotNull
    private static e8.a<Long> provider = a.INSTANCE;

    /* synthetic */ class a extends kotlin.jvm.internal.q implements e8.a<Long> {
        public static final a INSTANCE = new a();

        a() {
            super(0, System.class, "currentTimeMillis", "currentTimeMillis()J", 0);
        }

        @Override // e8.a
        @NotNull
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final Long invoke() {
            return Long.valueOf(System.currentTimeMillis());
        }
    }

    public final long a() {
        return provider.invoke().longValue();
    }

    private t() {
    }
}
