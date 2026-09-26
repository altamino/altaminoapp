package qa;

import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public final class a {
    public static List<x9.e> a(oa.i iVar, oa.h hVar) {
        try {
            x9.h<? extends x9.e, ? extends x9.f> hVarF = hVar.F();
            if (hVarF == null) {
                return Collections.emptyList();
            }
            iVar.a(hVarF.e());
            return hVarF.f();
        } catch (Exception e) {
            iVar.b(e);
            return Collections.emptyList();
        }
    }
}
