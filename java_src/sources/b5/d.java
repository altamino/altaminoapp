package b5;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes7.dex */
public class d {
    private static volatile d INSTANCE;
    private final Set<f> infos = new HashSet();

    public static d a() {
        d dVar = INSTANCE;
        if (dVar == null) {
            synchronized (d.class) {
                try {
                    dVar = INSTANCE;
                    if (dVar == null) {
                        dVar = new d();
                        INSTANCE = dVar;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return dVar;
    }

    Set<f> b() {
        Set<f> setUnmodifiableSet;
        synchronized (this.infos) {
            setUnmodifiableSet = Collections.unmodifiableSet(this.infos);
        }
        return setUnmodifiableSet;
    }

    d() {
    }
}
