package coil.transition;

import androidx.annotation.MainThread;
import coil.request.i;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public interface c {

    public interface a {

        @NotNull
        public static final C0106a Companion = C0106a.$$INSTANCE;

        @NotNull
        public static final a NONE = new b.a();

        @NotNull
        c a(@NotNull d dVar, @NotNull i iVar);

        /* JADX INFO: renamed from: coil.transition.c$a$a, reason: collision with other inner class name */
        public static final class C0106a {
            static final /* synthetic */ C0106a $$INSTANCE = new C0106a();

            private C0106a() {
            }
        }
    }

    @MainThread
    void a();
}
