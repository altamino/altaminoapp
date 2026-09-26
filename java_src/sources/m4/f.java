package m4;

import android.content.Context;
import android.util.Base64OutputStream;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.core.os.UserManagerCompat;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.components.g0;
import com.google.firebase.components.s;
import java.io.ByteArrayOutputStream;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.zip.GZIPOutputStream;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class f implements i, j {
    private final Context applicationContext;
    private final Executor backgroundExecutor;
    private final Set<g> consumers;
    private final o4.b<q> storageProvider;
    private final o4.b<b5.i> userAgentProvider;

    private f(final Context context, final String str, Set<g> set, o4.b<b5.i> bVar, Executor executor) {
        this((o4.b<q>) new o4.b() { // from class: m4.e
            @Override // o4.b
            public final Object get() {
                return f.j(context, str);
            }
        }, set, executor, bVar, context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String i() throws Exception {
        String string;
        synchronized (this) {
            try {
                q qVar = this.storageProvider.get();
                List<r> listC = qVar.c();
                qVar.b();
                JSONArray jSONArray = new JSONArray();
                for (int i10 = 0; i10 < listC.size(); i10++) {
                    r rVar = listC.get(i10);
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("agent", rVar.c());
                    jSONObject.put("dates", new JSONArray((Collection) rVar.b()));
                    jSONArray.put(jSONObject);
                }
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("heartbeats", jSONArray);
                jSONObject2.put("version", ExifInterface.GPS_MEASUREMENT_2D);
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                Base64OutputStream base64OutputStream = new Base64OutputStream(byteArrayOutputStream, 11);
                try {
                    GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(base64OutputStream);
                    try {
                        gZIPOutputStream.write(jSONObject2.toString().getBytes("UTF-8"));
                        gZIPOutputStream.close();
                        base64OutputStream.close();
                        string = byteArrayOutputStream.toString("UTF-8");
                    } catch (Throwable th) {
                        try {
                            gZIPOutputStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    try {
                        base64OutputStream.close();
                    } catch (Throwable th4) {
                        th3.addSuppressed(th4);
                    }
                    throw th3;
                }
            } catch (Throwable th5) {
                throw th5;
            }
        }
        return string;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Void k() throws Exception {
        synchronized (this) {
            this.storageProvider.get().k(System.currentTimeMillis(), this.userAgentProvider.get().getUserAgent());
        }
        return null;
    }

    @Override // m4.j
    @NonNull
    public synchronized j.a a(@NonNull String str) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        q qVar = this.storageProvider.get();
        if (!qVar.i(jCurrentTimeMillis)) {
            return j.a.NONE;
        }
        qVar.g();
        return j.a.GLOBAL;
    }

    @VisibleForTesting
    f(o4.b<q> bVar, Set<g> set, Executor executor, o4.b<b5.i> bVar2, Context context) {
        this.storageProvider = bVar;
        this.consumers = set;
        this.backgroundExecutor = executor;
        this.userAgentProvider = bVar2;
        this.applicationContext = context;
    }

    @NonNull
    public static com.google.firebase.components.c<f> g() {
        final g0 g0VarA = g0.a(w3.a.class, Executor.class);
        return com.google.firebase.components.c.f(f.class, i.class, j.class).b(s.k(Context.class)).b(s.k(com.google.firebase.f.class)).b(s.n(g.class)).b(s.m(b5.i.class)).b(s.j(g0VarA)).f(new com.google.firebase.components.h() { // from class: m4.d
            @Override // com.google.firebase.components.h
            public final Object a(com.google.firebase.components.e eVar) {
                return f.h(g0VarA, eVar);
            }
        }).d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ f h(g0 g0Var, com.google.firebase.components.e eVar) {
        return new f((Context) eVar.get(Context.class), ((com.google.firebase.f) eVar.get(com.google.firebase.f.class)).o(), (Set<g>) eVar.a(g.class), (o4.b<b5.i>) eVar.b(b5.i.class), (Executor) eVar.g(g0Var));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ q j(Context context, String str) {
        return new q(context, str);
    }

    @Override // m4.i
    public Task<String> b() {
        return UserManagerCompat.a(this.applicationContext) ^ true ? Tasks.forResult("") : Tasks.call(this.backgroundExecutor, new Callable() { // from class: m4.c
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f3264a.i();
            }
        });
    }

    public Task<Void> l() {
        if (this.consumers.size() <= 0) {
            return Tasks.forResult(null);
        }
        return UserManagerCompat.a(this.applicationContext) ^ true ? Tasks.forResult(null) : Tasks.call(this.backgroundExecutor, new Callable() { // from class: m4.b
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f3263a.k();
            }
        });
    }
}
