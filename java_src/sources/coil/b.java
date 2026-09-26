package coil;

import coil.decode.i;
import coil.request.m;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.d0;
import kotlin.collections.v;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.a0;
import w7.u;

/* JADX INFO: loaded from: classes5.dex */
public final class b {

    @NotNull
    private final List<i.a> decoderFactories;

    @NotNull
    private final List<u<coil.fetch.i.a<? extends Object>, Class<? extends Object>>> fetcherFactories;

    @NotNull
    private final List<coil.intercept.b> interceptors;

    @NotNull
    private final List<u<d0.b<? extends Object>, Class<? extends Object>>> keyers;

    @NotNull
    private final List<u<e0.d<? extends Object, ? extends Object>, Class<? extends Object>>> mappers;

    public static final class a {

        @NotNull
        private final List<i.a> decoderFactories;

        @NotNull
        private final List<u<coil.fetch.i.a<? extends Object>, Class<? extends Object>>> fetcherFactories;

        @NotNull
        private final List<coil.intercept.b> interceptors;

        @NotNull
        private final List<u<d0.b<? extends Object>, Class<? extends Object>>> keyers;

        @NotNull
        private final List<u<e0.d<? extends Object, ?>, Class<? extends Object>>> mappers;

        public a() {
            this.interceptors = new ArrayList();
            this.mappers = new ArrayList();
            this.keyers = new ArrayList();
            this.fetcherFactories = new ArrayList();
            this.decoderFactories = new ArrayList();
        }

        @NotNull
        public final List<i.a> f() {
            return this.decoderFactories;
        }

        @NotNull
        public final List<u<coil.fetch.i.a<? extends Object>, Class<? extends Object>>> g() {
            return this.fetcherFactories;
        }

        @NotNull
        public final a a(@NotNull i.a aVar) {
            this.decoderFactories.add(aVar);
            return this;
        }

        @NotNull
        public final <T> a b(@NotNull coil.fetch.i.a<T> aVar, @NotNull Class<T> cls) {
            this.fetcherFactories.add(a0.a(aVar, cls));
            return this;
        }

        @NotNull
        public final <T> a c(@NotNull d0.b<T> bVar, @NotNull Class<T> cls) {
            this.keyers.add(a0.a(bVar, cls));
            return this;
        }

        @NotNull
        public final <T> a d(@NotNull e0.d<T, ?> dVar, @NotNull Class<T> cls) {
            this.mappers.add(a0.a(dVar, cls));
            return this;
        }

        @NotNull
        public final b e() {
            return new b(coil.util.c.a(this.interceptors), coil.util.c.a(this.mappers), coil.util.c.a(this.keyers), coil.util.c.a(this.fetcherFactories), coil.util.c.a(this.decoderFactories), null);
        }

        public a(@NotNull b bVar) {
            this.interceptors = d0.W0(bVar.c());
            this.mappers = d0.W0(bVar.e());
            this.keyers = d0.W0(bVar.d());
            this.fetcherFactories = d0.W0(bVar.b());
            this.decoderFactories = d0.W0(bVar.a());
        }
    }

    public /* synthetic */ b(List list, List list2, List list3, List list4, List list5, k kVar) {
        this(list, list2, list3, list4, list5);
    }

    @NotNull
    public final List<i.a> a() {
        return this.decoderFactories;
    }

    @NotNull
    public final List<u<coil.fetch.i.a<? extends Object>, Class<? extends Object>>> b() {
        return this.fetcherFactories;
    }

    @NotNull
    public final List<coil.intercept.b> c() {
        return this.interceptors;
    }

    @NotNull
    public final List<u<d0.b<? extends Object>, Class<? extends Object>>> d() {
        return this.keyers;
    }

    @NotNull
    public final List<u<e0.d<? extends Object, ? extends Object>, Class<? extends Object>>> e() {
        return this.mappers;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private b(List<? extends coil.intercept.b> list, List<? extends u<? extends e0.d<? extends Object, ? extends Object>, ? extends Class<? extends Object>>> list2, List<? extends u<? extends d0.b<? extends Object>, ? extends Class<? extends Object>>> list3, List<? extends u<? extends coil.fetch.i.a<? extends Object>, ? extends Class<? extends Object>>> list4, List<? extends i.a> list5) {
        this.interceptors = list;
        this.mappers = list2;
        this.keyers = list3;
        this.fetcherFactories = list4;
        this.decoderFactories = list5;
    }

    @Nullable
    public final String f(@NotNull Object obj, @NotNull m mVar) {
        List<u<d0.b<? extends Object>, Class<? extends Object>>> list = this.keyers;
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            u<d0.b<? extends Object>, Class<? extends Object>> uVar = list.get(i10);
            d0.b<? extends Object> bVarA = uVar.a();
            if (uVar.b().isAssignableFrom(obj.getClass())) {
                t.h(bVarA, "null cannot be cast to non-null type coil.key.Keyer<kotlin.Any>");
                String strA = bVarA.a(obj, mVar);
                if (strA != null) {
                    return strA;
                }
            }
        }
        return null;
    }

    @NotNull
    public final Object g(@NotNull Object obj, @NotNull m mVar) {
        List<u<e0.d<? extends Object, ? extends Object>, Class<? extends Object>>> list = this.mappers;
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            u<e0.d<? extends Object, ? extends Object>, Class<? extends Object>> uVar = list.get(i10);
            e0.d<? extends Object, ? extends Object> dVarA = uVar.a();
            if (uVar.b().isAssignableFrom(obj.getClass())) {
                t.h(dVarA, "null cannot be cast to non-null type coil.map.Mapper<kotlin.Any, *>");
                Object objA = dVarA.a(obj, mVar);
                if (objA != null) {
                    obj = objA;
                }
            }
        }
        return obj;
    }

    @NotNull
    public final a h() {
        return new a(this);
    }

    @Nullable
    public final u<i, Integer> i(@NotNull coil.fetch.m mVar, @NotNull m mVar2, @NotNull e eVar, int i10) {
        int size = this.decoderFactories.size();
        while (i10 < size) {
            i iVarA = this.decoderFactories.get(i10).a(mVar, mVar2, eVar);
            if (iVarA != null) {
                return a0.a(iVarA, Integer.valueOf(i10));
            }
            i10++;
        }
        return null;
    }

    @Nullable
    public final u<coil.fetch.i, Integer> j(@NotNull Object obj, @NotNull m mVar, @NotNull e eVar, int i10) {
        int size = this.fetcherFactories.size();
        while (i10 < size) {
            u<coil.fetch.i.a<? extends Object>, Class<? extends Object>> uVar = this.fetcherFactories.get(i10);
            coil.fetch.i.a<? extends Object> aVarA = uVar.a();
            if (uVar.b().isAssignableFrom(obj.getClass())) {
                t.h(aVarA, "null cannot be cast to non-null type coil.fetch.Fetcher.Factory<kotlin.Any>");
                coil.fetch.i iVarA = aVarA.a(obj, mVar, eVar);
                if (iVarA != null) {
                    return a0.a(iVarA, Integer.valueOf(i10));
                }
            }
            i10++;
        }
        return null;
    }

    public b() {
        this(v.m(), v.m(), v.m(), v.m(), v.m());
    }
}
