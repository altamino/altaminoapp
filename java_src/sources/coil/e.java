package coil;

import android.content.Context;
import coil.memory.MemoryCache;
import coil.request.i;
import coil.util.n;
import coil.util.q;
import coil.util.r;
import kotlin.jvm.internal.v;
import okhttp3.Call;
import okhttp3.OkHttpClient;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.m;
import w7.o;

/* JADX INFO: loaded from: classes9.dex */
public interface e {

    public static final class a {

        @NotNull
        private final Context applicationContext;

        @Nullable
        private m<? extends Call.Factory> callFactory;

        @Nullable
        private coil.b componentRegistry;

        @NotNull
        private coil.request.b defaults;

        @Nullable
        private m<? extends coil.disk.a> diskCache;

        @Nullable
        private coil.c.d eventListenerFactory;

        @Nullable
        private q logger;

        @Nullable
        private m<? extends MemoryCache> memoryCache;

        @NotNull
        private n options;

        /* JADX INFO: renamed from: coil.e$a$a, reason: collision with other inner class name */
        static final class C0100a extends v implements e8.a<MemoryCache> {
            C0100a() {
                super(0);
            }

            @Override // e8.a
            @NotNull
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public final MemoryCache invoke() {
                return new MemoryCache.a(a.this.applicationContext).a();
            }
        }

        static final class b extends v implements e8.a<coil.disk.a> {
            b() {
                super(0);
            }

            @Override // e8.a
            @NotNull
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public final coil.disk.a invoke() {
                return r.INSTANCE.a(a.this.applicationContext);
            }
        }

        static final class c extends v implements e8.a<OkHttpClient> {
            public static final c INSTANCE = new c();

            c() {
                super(0);
            }

            @Override // e8.a
            @NotNull
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public final OkHttpClient invoke() {
                return new OkHttpClient();
            }
        }

        public a(@NotNull Context context) {
            this.applicationContext = context.getApplicationContext();
            this.defaults = coil.util.h.b();
            this.memoryCache = null;
            this.diskCache = null;
            this.callFactory = null;
            this.eventListenerFactory = null;
            this.componentRegistry = null;
            this.options = new n(false, false, false, 0, null, 31, null);
        }

        @NotNull
        public final e b() {
            Context context = this.applicationContext;
            coil.request.b bVar = this.defaults;
            m<? extends MemoryCache> mVarA = this.memoryCache;
            if (mVarA == null) {
                mVarA = o.a(new C0100a());
            }
            m<? extends MemoryCache> mVar = mVarA;
            m<? extends coil.disk.a> mVarA2 = this.diskCache;
            if (mVarA2 == null) {
                mVarA2 = o.a(new b());
            }
            m<? extends coil.disk.a> mVar2 = mVarA2;
            m<? extends Call.Factory> mVarA3 = this.callFactory;
            if (mVarA3 == null) {
                mVarA3 = o.a(c.INSTANCE);
            }
            m<? extends Call.Factory> mVar3 = mVarA3;
            coil.c.d dVar = this.eventListenerFactory;
            if (dVar == null) {
                dVar = coil.c.d.NONE;
            }
            coil.c.d dVar2 = dVar;
            coil.b bVar2 = this.componentRegistry;
            if (bVar2 == null) {
                bVar2 = new coil.b();
            }
            return new h(context, bVar, mVar, mVar2, mVar3, dVar2, bVar2, this.options, null);
        }

        public a(@NotNull h hVar) {
            this.applicationContext = hVar.j().getApplicationContext();
            this.defaults = hVar.a();
            this.memoryCache = hVar.n();
            this.diskCache = hVar.k();
            this.callFactory = hVar.h();
            this.eventListenerFactory = hVar.l();
            this.componentRegistry = hVar.i();
            this.options = hVar.o();
            hVar.m();
        }
    }

    @NotNull
    coil.request.b a();

    @NotNull
    coil.request.d b(@NotNull coil.request.h hVar);

    @Nullable
    Object c(@NotNull coil.request.h hVar, @NotNull kotlin.coroutines.d<? super i> dVar);

    @Nullable
    MemoryCache d();

    @NotNull
    b getComponents();
}
