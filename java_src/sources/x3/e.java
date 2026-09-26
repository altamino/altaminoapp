package x3;

import androidx.annotation.NonNull;
import com.google.android.gms.tasks.Task;

/* JADX INFO: loaded from: classes11.dex */
public abstract class e implements z3.b {

    public interface a {
        void a(@NonNull c cVar);
    }

    @NonNull
    public abstract Task<c> a(boolean z6);

    public abstract void d(@NonNull b bVar);

    @NonNull
    public static e c(@NonNull com.google.firebase.f fVar) {
        return (e) fVar.j(e.class);
    }

    @NonNull
    public static e b() {
        return c(com.google.firebase.f.l());
    }
}
