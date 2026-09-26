package b5;

import com.google.firebase.components.s;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes7.dex */
public class c implements i {
    private final d gamesSDKRegistrar;
    private final String javaSDKVersionUserAgent;

    public static com.google.firebase.components.c<i> b() {
        return com.google.firebase.components.c.e(i.class).b(s.n(f.class)).f(new com.google.firebase.components.h() { // from class: b5.b
            @Override // com.google.firebase.components.h
            public final Object a(com.google.firebase.components.e eVar) {
                return c.c(eVar);
            }
        }).d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ i c(com.google.firebase.components.e eVar) {
        return new c(eVar.a(f.class), d.a());
    }

    private static String d(Set<f> set) {
        StringBuilder sb = new StringBuilder();
        Iterator<f> it = set.iterator();
        while (it.hasNext()) {
            f next = it.next();
            sb.append(next.b());
            sb.append('/');
            sb.append(next.c());
            if (it.hasNext()) {
                sb.append(' ');
            }
        }
        return sb.toString();
    }

    @Override // b5.i
    public String getUserAgent() {
        if (this.gamesSDKRegistrar.b().isEmpty()) {
            return this.javaSDKVersionUserAgent;
        }
        return this.javaSDKVersionUserAgent + ' ' + d(this.gamesSDKRegistrar.b());
    }

    c(Set<f> set, d dVar) {
        this.javaSDKVersionUserAgent = d(set);
        this.gamesSDKRegistrar = dVar;
    }
}
