package k2;

import com.google.android.datatransport.runtime.p;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.x;
import com.google.android.datatransport.runtime.u;
import g2.m;
import java.util.concurrent.Executor;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes9.dex */
public class c implements e {
    private static final Logger LOGGER = Logger.getLogger(u.class.getName());
    private final g2.e backendRegistry;
    private final com.google.android.datatransport.runtime.scheduling.persistence.d eventStore;
    private final Executor executor;
    private final l2.b guard;
    private final x workScheduler;

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object d(p pVar, com.google.android.datatransport.runtime.i iVar) {
        this.eventStore.A0(pVar, iVar);
        this.workScheduler.b(pVar, 1);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(final p pVar, f2.h hVar, com.google.android.datatransport.runtime.i iVar) {
        try {
            m mVar = this.backendRegistry.get(pVar.b());
            if (mVar == null) {
                String str = String.format("Transport backend '%s' is not registered", pVar.b());
                LOGGER.warning(str);
                hVar.a(new IllegalArgumentException(str));
            } else {
                final com.google.android.datatransport.runtime.i iVarB = mVar.b(iVar);
                this.guard.a(new l2.b.a() { // from class: k2.b
                    @Override // l2.b.a
                    public final Object execute() {
                        return this.f3252a.d(pVar, iVarB);
                    }
                });
                hVar.a(null);
            }
        } catch (Exception e) {
            LOGGER.warning("Error scheduling event " + e.getMessage());
            hVar.a(e);
        }
    }

    @Override // k2.e
    public void a(final p pVar, final com.google.android.datatransport.runtime.i iVar, final f2.h hVar) {
        this.executor.execute(new Runnable() { // from class: k2.a
            @Override // java.lang.Runnable
            public final void run() {
                this.f3249a.e(pVar, hVar, iVar);
            }
        });
    }

    public c(Executor executor, g2.e eVar, x xVar, com.google.android.datatransport.runtime.scheduling.persistence.d dVar, l2.b bVar) {
        this.executor = executor;
        this.backendRegistry = eVar;
        this.workScheduler = xVar;
        this.eventStore = dVar;
        this.guard = bVar;
    }
}
