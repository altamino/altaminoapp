package v4;

import android.content.Context;
import androidx.annotation.Nullable;
import com.google.firebase.o;
import com.google.firebase.perf.metrics.AppStartTrace;
import com.google.firebase.perf.session.SessionManager;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes9.dex */
public class b {
    public b(com.google.firebase.f fVar, @Nullable o oVar, Executor executor) {
        Context contextK = fVar.k();
        com.google.firebase.perf.config.a.g().O(contextK);
        com.google.firebase.perf.application.a aVarB = com.google.firebase.perf.application.a.b();
        aVarB.i(contextK);
        aVarB.j(new f());
        if (oVar != null) {
            AppStartTrace appStartTraceJ = AppStartTrace.j();
            appStartTraceJ.t(contextK);
            executor.execute(new AppStartTrace.c(appStartTraceJ));
        }
        SessionManager.getInstance().initializeGaugeCollection();
    }
}
