package coil.request;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.collections.s0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.a0;
import w7.u;

/* JADX INFO: loaded from: classes5.dex */
public final class n implements Iterable<u<? extends String, ? extends c>>, f8.a {

    @NotNull
    public static final b Companion = new b(null);

    @NotNull
    public static final n EMPTY = new n();

    @NotNull
    private final Map<String, c> entries;

    public static final class a {

        @NotNull
        private final Map<String, c> entries;

        public a() {
            this.entries = new LinkedHashMap();
        }

        @NotNull
        public final n a() {
            return new n(coil.util.c.b(this.entries), null);
        }

        public a(@NotNull n nVar) {
            this.entries = s0.A(nVar.entries);
        }
    }

    public static final class b {
        public /* synthetic */ b(kotlin.jvm.internal.k kVar) {
            this();
        }

        private b() {
        }
    }

    public static final class c {

        @Nullable
        private final String memoryCacheKey;

        @Nullable
        private final Object value;

        @Nullable
        public final String a() {
            return this.memoryCacheKey;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof c) {
                c cVar = (c) obj;
                if (t.e(this.value, cVar.value) && t.e(this.memoryCacheKey, cVar.memoryCacheKey)) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            Object obj = this.value;
            int iHashCode = (obj != null ? obj.hashCode() : 0) * 31;
            String str = this.memoryCacheKey;
            return iHashCode + (str != null ? str.hashCode() : 0);
        }

        @NotNull
        public String toString() {
            return "Entry(value=" + this.value + ", memoryCacheKey=" + this.memoryCacheKey + ')';
        }

        public c(@Nullable Object obj, @Nullable String str) {
            this.value = obj;
            this.memoryCacheKey = str;
        }
    }

    public /* synthetic */ n(Map map, kotlin.jvm.internal.k kVar) {
        this(map);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof n) && t.e(this.entries, ((n) obj).entries);
    }

    private n(Map<String, c> map) {
        this.entries = map;
    }

    @NotNull
    public final a e() {
        return new a(this);
    }

    public int hashCode() {
        return this.entries.hashCode();
    }

    public final boolean isEmpty() {
        return this.entries.isEmpty();
    }

    @Override // java.lang.Iterable
    @NotNull
    public Iterator<u<? extends String, ? extends c>> iterator() {
        Map<String, c> map = this.entries;
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, c> entry : map.entrySet()) {
            arrayList.add(a0.a(entry.getKey(), entry.getValue()));
        }
        return arrayList.iterator();
    }

    @NotNull
    public String toString() {
        return "Parameters(entries=" + this.entries + ')';
    }

    public n() {
        this(s0.h());
    }

    @NotNull
    public final Map<String, String> c() {
        if (isEmpty()) {
            return s0.h();
        }
        Map<String, c> map = this.entries;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, c> entry : map.entrySet()) {
            String strA = entry.getValue().a();
            if (strA != null) {
                linkedHashMap.put(entry.getKey(), strA);
            }
        }
        return linkedHashMap;
    }
}
