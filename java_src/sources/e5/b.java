package e5;

import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.e;
import com.google.firebase.components.h;
import com.google.firebase.components.j;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public class b implements j {
    @Override // com.google.firebase.components.j
    public List<com.google.firebase.components.c<?>> a(ComponentRegistrar componentRegistrar) {
        ArrayList arrayList = new ArrayList();
        for (final com.google.firebase.components.c<?> cVarT : componentRegistrar.getComponents()) {
            final String strI = cVarT.i();
            if (strI != null) {
                cVarT = cVarT.t(new h() { // from class: e5.a
                    @Override // com.google.firebase.components.h
                    public final Object a(e eVar) {
                        return b.c(strI, cVarT, eVar);
                    }
                });
            }
            arrayList.add(cVarT);
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object c(String str, com.google.firebase.components.c cVar, e eVar) {
        try {
            c.b(str);
            return cVar.h().a(eVar);
        } finally {
            c.a();
        }
    }
}
