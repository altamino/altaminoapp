package coil;

import android.graphics.Bitmap;
import androidx.annotation.MainThread;
import androidx.annotation.WorkerThread;
import coil.decode.i;
import coil.request.m;
import coil.request.p;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public interface c extends coil.request.h.b {

    @NotNull
    public static final b Companion = b.$$INSTANCE;

    @NotNull
    public static final c NONE = new a();

    /* JADX INFO: renamed from: coil.c$c, reason: collision with other inner class name */
    public static final class C0087c {
        @WorkerThread
        public static void a(@NotNull c cVar, @NotNull coil.request.h hVar, @NotNull i iVar, @NotNull m mVar, @Nullable coil.decode.g gVar) {
        }

        @WorkerThread
        public static void b(@NotNull c cVar, @NotNull coil.request.h hVar, @NotNull i iVar, @NotNull m mVar) {
        }

        @WorkerThread
        public static void c(@NotNull c cVar, @NotNull coil.request.h hVar, @NotNull coil.fetch.i iVar, @NotNull m mVar, @Nullable coil.fetch.h hVar2) {
        }

        @WorkerThread
        public static void d(@NotNull c cVar, @NotNull coil.request.h hVar, @NotNull coil.fetch.i iVar, @NotNull m mVar) {
        }

        @MainThread
        public static void e(@NotNull c cVar, @NotNull coil.request.h hVar, @Nullable String str) {
        }

        @MainThread
        public static void f(@NotNull c cVar, @NotNull coil.request.h hVar, @NotNull Object obj) {
        }

        @MainThread
        public static void g(@NotNull c cVar, @NotNull coil.request.h hVar, @NotNull Object obj) {
        }

        @MainThread
        public static void h(@NotNull c cVar, @NotNull coil.request.h hVar, @NotNull Object obj) {
        }

        @MainThread
        public static void i(@NotNull c cVar, @NotNull coil.request.h hVar) {
        }

        @MainThread
        public static void j(@NotNull c cVar, @NotNull coil.request.h hVar, @NotNull coil.request.e eVar) {
        }

        @MainThread
        public static void k(@NotNull c cVar, @NotNull coil.request.h hVar) {
        }

        @MainThread
        public static void l(@NotNull c cVar, @NotNull coil.request.h hVar, @NotNull p pVar) {
        }

        @MainThread
        public static void m(@NotNull c cVar, @NotNull coil.request.h hVar, @NotNull coil.size.i iVar) {
        }

        @MainThread
        public static void n(@NotNull c cVar, @NotNull coil.request.h hVar) {
        }

        @WorkerThread
        public static void o(@NotNull c cVar, @NotNull coil.request.h hVar, @NotNull Bitmap bitmap) {
        }

        @WorkerThread
        public static void p(@NotNull c cVar, @NotNull coil.request.h hVar, @NotNull Bitmap bitmap) {
        }

        @MainThread
        public static void q(@NotNull c cVar, @NotNull coil.request.h hVar, @NotNull coil.transition.c cVar2) {
        }

        @MainThread
        public static void r(@NotNull c cVar, @NotNull coil.request.h hVar, @NotNull coil.transition.c cVar2) {
        }
    }

    public interface d {

        @NotNull
        public static final a Companion = a.$$INSTANCE;

        @NotNull
        public static final d NONE = new d() { // from class: coil.d
            @Override // coil.c.d
            public final c a(coil.request.h hVar) {
                return c.d.b.a(hVar);
            }
        };

        public static final class b {
            /* JADX INFO: Access modifiers changed from: private */
            public static c a(coil.request.h hVar) {
                return c.NONE;
            }
        }

        @NotNull
        c a(@NotNull coil.request.h hVar);

        public static final class a {
            static final /* synthetic */ a $$INSTANCE = new a();

            private a() {
            }
        }
    }

    @Override // coil.request.h.b
    @MainThread
    void a(@NotNull coil.request.h hVar);

    @Override // coil.request.h.b
    @MainThread
    void b(@NotNull coil.request.h hVar);

    @Override // coil.request.h.b
    @MainThread
    void c(@NotNull coil.request.h hVar, @NotNull coil.request.e eVar);

    @Override // coil.request.h.b
    @MainThread
    void d(@NotNull coil.request.h hVar, @NotNull p pVar);

    @MainThread
    void e(@NotNull coil.request.h hVar, @Nullable String str);

    @WorkerThread
    void f(@NotNull coil.request.h hVar, @NotNull coil.fetch.i iVar, @NotNull m mVar, @Nullable coil.fetch.h hVar2);

    @MainThread
    void g(@NotNull coil.request.h hVar, @NotNull Object obj);

    @WorkerThread
    void h(@NotNull coil.request.h hVar, @NotNull coil.fetch.i iVar, @NotNull m mVar);

    @MainThread
    void i(@NotNull coil.request.h hVar, @NotNull Object obj);

    @MainThread
    void j(@NotNull coil.request.h hVar, @NotNull coil.transition.c cVar);

    @MainThread
    void k(@NotNull coil.request.h hVar, @NotNull coil.transition.c cVar);

    @MainThread
    void l(@NotNull coil.request.h hVar, @NotNull Object obj);

    @WorkerThread
    void m(@NotNull coil.request.h hVar, @NotNull i iVar, @NotNull m mVar, @Nullable coil.decode.g gVar);

    @WorkerThread
    void n(@NotNull coil.request.h hVar, @NotNull Bitmap bitmap);

    @MainThread
    void o(@NotNull coil.request.h hVar, @NotNull coil.size.i iVar);

    @WorkerThread
    void p(@NotNull coil.request.h hVar, @NotNull Bitmap bitmap);

    @WorkerThread
    void q(@NotNull coil.request.h hVar, @NotNull i iVar, @NotNull m mVar);

    @MainThread
    void r(@NotNull coil.request.h hVar);

    public static final class a implements c {
        a() {
        }

        @Override // coil.c, coil.request.h.b
        @MainThread
        public void a(@NotNull coil.request.h hVar) {
            C0087c.i(this, hVar);
        }

        @Override // coil.c, coil.request.h.b
        @MainThread
        public void b(@NotNull coil.request.h hVar) {
            C0087c.k(this, hVar);
        }

        @Override // coil.c, coil.request.h.b
        @MainThread
        public void c(@NotNull coil.request.h hVar, @NotNull coil.request.e eVar) {
            C0087c.j(this, hVar, eVar);
        }

        @Override // coil.c, coil.request.h.b
        @MainThread
        public void d(@NotNull coil.request.h hVar, @NotNull p pVar) {
            C0087c.l(this, hVar, pVar);
        }

        @Override // coil.c
        @MainThread
        public void e(@NotNull coil.request.h hVar, @Nullable String str) {
            C0087c.e(this, hVar, str);
        }

        @Override // coil.c
        @WorkerThread
        public void f(@NotNull coil.request.h hVar, @NotNull coil.fetch.i iVar, @NotNull m mVar, @Nullable coil.fetch.h hVar2) {
            C0087c.c(this, hVar, iVar, mVar, hVar2);
        }

        @Override // coil.c
        @MainThread
        public void g(@NotNull coil.request.h hVar, @NotNull Object obj) {
            C0087c.g(this, hVar, obj);
        }

        @Override // coil.c
        @WorkerThread
        public void h(@NotNull coil.request.h hVar, @NotNull coil.fetch.i iVar, @NotNull m mVar) {
            C0087c.d(this, hVar, iVar, mVar);
        }

        @Override // coil.c
        @MainThread
        public void i(@NotNull coil.request.h hVar, @NotNull Object obj) {
            C0087c.f(this, hVar, obj);
        }

        @Override // coil.c
        @MainThread
        public void j(@NotNull coil.request.h hVar, @NotNull coil.transition.c cVar) {
            C0087c.r(this, hVar, cVar);
        }

        @Override // coil.c
        @MainThread
        public void k(@NotNull coil.request.h hVar, @NotNull coil.transition.c cVar) {
            C0087c.q(this, hVar, cVar);
        }

        @Override // coil.c
        @MainThread
        public void l(@NotNull coil.request.h hVar, @NotNull Object obj) {
            C0087c.h(this, hVar, obj);
        }

        @Override // coil.c
        @WorkerThread
        public void m(@NotNull coil.request.h hVar, @NotNull i iVar, @NotNull m mVar, @Nullable coil.decode.g gVar) {
            C0087c.a(this, hVar, iVar, mVar, gVar);
        }

        @Override // coil.c
        @WorkerThread
        public void n(@NotNull coil.request.h hVar, @NotNull Bitmap bitmap) {
            C0087c.p(this, hVar, bitmap);
        }

        @Override // coil.c
        @MainThread
        public void o(@NotNull coil.request.h hVar, @NotNull coil.size.i iVar) {
            C0087c.m(this, hVar, iVar);
        }

        @Override // coil.c
        @WorkerThread
        public void p(@NotNull coil.request.h hVar, @NotNull Bitmap bitmap) {
            C0087c.o(this, hVar, bitmap);
        }

        @Override // coil.c
        @WorkerThread
        public void q(@NotNull coil.request.h hVar, @NotNull i iVar, @NotNull m mVar) {
            C0087c.b(this, hVar, iVar, mVar);
        }

        @Override // coil.c
        @MainThread
        public void r(@NotNull coil.request.h hVar) {
            C0087c.n(this, hVar);
        }
    }

    public static final class b {
        static final /* synthetic */ b $$INSTANCE = new b();

        private b() {
        }
    }
}
