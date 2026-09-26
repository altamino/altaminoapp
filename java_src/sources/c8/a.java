package c8;

import h8.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public class a extends b8.a {

    /* JADX INFO: renamed from: c8.a$a, reason: collision with other inner class name */
    private static final class C0086a {

        @NotNull
        public static final C0086a INSTANCE = new C0086a();

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

        private C0086a() {
        }
    }

    private final boolean c(int i10) {
        Integer num = C0086a.sdkVersion;
        return num == null || num.intValue() >= i10;
    }

    @Override // a8.a
    @NotNull
    public d b() {
        return c(34) ? new i8.a() : super.b();
    }
}
