package z;

import android.content.Context;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.l;
import j8.o;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.s;
import x3.e;

/* JADX INFO: loaded from: classes8.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    public static final C0508b f3376a = new C0508b(null);

    public interface a {
        void onFailure(@NotNull Exception exc);

        void onSuccess(@NotNull String str);
    }

    /* JADX INFO: renamed from: z.b$b, reason: collision with other inner class name */
    public static final class C0508b {
        public /* synthetic */ C0508b(k kVar) {
            this();
        }

        private C0508b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void e(Context context, a appCheckListener, Task task) {
            String string;
            String strB;
            t.j(context, "$context");
            t.j(appCheckListener, "$appCheckListener");
            t.j(task, "task");
            if (task.isSuccessful()) {
                FirebaseAnalytics.getInstance(context).c("ac_at_least_1_success", "true");
                FirebaseAnalytics.getInstance(context).c("last_app_check_success", "true");
                String strB2 = ((x3.c) task.getResult()).b();
                t.i(strB2, "getToken(...)");
                appCheckListener.onSuccess(strB2);
                return;
            }
            FirebaseAnalytics.getInstance(context).c("ac_at_least_1_failed", "true");
            Exception exception = task.getException();
            if (exception instanceof com.google.android.play.core.integrity.c) {
                FirebaseAnalytics.getInstance(context).c("pi_error", String.valueOf(((com.google.android.play.core.integrity.c) exception).a()));
            } else {
                FirebaseAnalytics.getInstance(context).c("last_app_check_success", "false");
                FirebaseAnalytics firebaseAnalytics = FirebaseAnalytics.getInstance(context);
                if (exception == null || (string = exception.getClass().toString()) == null) {
                    string = "unexpected_exception";
                }
                firebaseAnalytics.c("app_check_error", string);
                if ((exception instanceof l) && (strB = b.f3376a.b((l) exception)) != null) {
                    FirebaseAnalytics.getInstance(context).c("ac_fb_exception_desc", strB);
                }
            }
            Exception exception2 = task.getException();
            if (exception2 == null) {
                exception2 = new Exception("Unknown error");
            }
            appCheckListener.onFailure(exception2);
        }

        public final void c(@NotNull Context context, @NotNull a appCheckListener) {
            t.j(context, "context");
            t.j(appCheckListener, "appCheckListener");
            d(d.f3379a, context, appCheckListener);
        }

        private final String b(l lVar) {
            String strG;
            String localizedMessage = lVar.getLocalizedMessage();
            if (localizedMessage != null && (strG = kotlin.text.t.G(localizedMessage, "Error returned from API. ", "", false, 4, null)) != null) {
                String strSubstring = strG.substring(0, o.j(strG.length(), 36));
                t.i(strSubstring, "substring(...)");
                return strSubstring;
            }
            return null;
        }

        private final void d(z.a aVar, final Context context, final a aVar2) {
            f(aVar);
            e eVarB = e.b();
            t.i(eVarB, "getInstance(...)");
            eVarB.a(false).addOnCompleteListener(new OnCompleteListener() { // from class: z.c
                @Override // com.google.android.gms.tasks.OnCompleteListener
                public final void onComplete(Task task) {
                    b.C0508b.e(context, aVar2, task);
                }
            });
        }

        public final void f(@NotNull z.a type) {
            t.j(type, "type");
            e eVarB = e.b();
            t.i(eVarB, "getInstance(...)");
            if (type instanceof d) {
                a4.b bVarB = a4.b.b();
                t.i(bVarB, "getInstance(...)");
                eVarB.d(bVarB);
                return;
            }
            throw new s();
        }
    }
}
