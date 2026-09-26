package b8;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public class a extends a8.a {

    /* JADX INFO: renamed from: b8.a$a, reason: collision with other inner class name */
    private static final class C0085a {

        @NotNull
        public static final C0085a INSTANCE = new C0085a();

        @Nullable
        public static final Integer sdkVersion;

        static {
            Integer num;
            Integer num2 = null;
            try {
                Object obj = Class.forName("android.os.Build$VERSION").getField("SDK_INT").get(null);
                num = obj instanceof Integer ? (Integer) obj : null;
            } catch (Throwable unused) {
            }
            if (num != null && num.intValue() > 0) {
                num2 = num;
            }
            sdkVersion = num2;
        }

        private C0085a() {
        }
    }

    private final boolean c(int i10) {
        Integer num = C0085a.sdkVersion;
        return num == null || num.intValue() >= i10;
    }

    @Override // a8.a
    public void a(@NotNull Throwable cause, @NotNull Throwable exception) {
        t.j(cause, "cause");
        t.j(exception, "exception");
        if (c(19)) {
            cause.addSuppressed(exception);
        } else {
            super.a(cause, exception);
        }
    }
}
