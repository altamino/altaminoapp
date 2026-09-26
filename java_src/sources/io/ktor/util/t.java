package io.ktor.util;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.d0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes10.dex */
public interface t {

    @NotNull
    public static final a Companion = a.$$INSTANCE;

    public static final class b {
        public static void a(@NotNull t tVar, @NotNull e8.p<? super String, ? super List<String>, l0> body) {
            kotlin.jvm.internal.t.j(body, "body");
            Iterator<T> it = tVar.a().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                body.invoke((String) entry.getKey(), (List) entry.getValue());
            }
        }

        @Nullable
        public static String b(@NotNull t tVar, @NotNull String name) {
            kotlin.jvm.internal.t.j(name, "name");
            List<String> listB = tVar.b(name);
            if (listB != null) {
                return (String) d0.l0(listB);
            }
            return null;
        }
    }

    @NotNull
    Set<Map.Entry<String, List<String>>> a();

    @Nullable
    List<String> b(@NotNull String str);

    boolean c();

    void d(@NotNull e8.p<? super String, ? super List<String>, l0> pVar);

    @Nullable
    String get(@NotNull String str);

    boolean isEmpty();

    @NotNull
    Set<String> names();

    public static final class a {
        static final /* synthetic */ a $$INSTANCE = new a();

        @NotNull
        private static final t Empty = new w(false, null, 3, 0 == true ? 1 : 0);

        private a() {
        }
    }
}
