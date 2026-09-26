package b5;

import android.content.Context;
import com.google.firebase.components.s;

/* JADX INFO: loaded from: classes7.dex */
public class h {

    public interface a<T> {
        String a(T t5);
    }

    public static com.google.firebase.components.c<?> c(final String str, final a<Context> aVar) {
        return com.google.firebase.components.c.m(f.class).b(s.k(Context.class)).f(new com.google.firebase.components.h() { // from class: b5.g
            @Override // com.google.firebase.components.h
            public final Object a(com.google.firebase.components.e eVar) {
                return h.d(str, aVar, eVar);
            }
        }).d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ f d(String str, a aVar, com.google.firebase.components.e eVar) {
        return f.a(str, aVar.a((Context) eVar.get(Context.class)));
    }

    public static com.google.firebase.components.c<?> b(String str, String str2) {
        return com.google.firebase.components.c.l(f.a(str, str2), f.class);
    }
}
