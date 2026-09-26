package g7;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public interface c extends b {
    void onCancel();

    void onProgress(float f);

    public static final class a {
        public static void a(@NotNull c cVar) {
        }

        public static void c(@NotNull c cVar, float f) {
        }

        public static void b(@NotNull c cVar) {
            b.a.a(cVar);
        }

        public static void d(@NotNull c cVar) {
            b.a.b(cVar);
        }

        public static void e(@NotNull c cVar) {
            b.a.c(cVar);
        }
    }
}
