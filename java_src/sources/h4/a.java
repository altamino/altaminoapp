package h4;

import android.content.Intent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.tasks.Task;
import com.google.firebase.f;

/* JADX INFO: loaded from: classes7.dex */
public abstract class a {
    @NonNull
    public abstract Task<b> a(@Nullable Intent intent);

    @NonNull
    public static synchronized a b() {
        return c(f.l());
    }

    @NonNull
    public static synchronized a c(@NonNull f fVar) {
        return (a) fVar.j(a.class);
    }
}
