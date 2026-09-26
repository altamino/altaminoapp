package androidx.activity.result;

import android.annotation.SuppressLint;
import androidx.annotation.MainThread;
import androidx.annotation.Nullable;
import androidx.core.app.ActivityOptionsCompat;

/* JADX INFO: loaded from: classes7.dex */
public abstract class ActivityResultLauncher<I> {
    public void a(@SuppressLint({"UnknownNullness"}) I i10) {
        b(i10, null);
    }

    public abstract void b(@SuppressLint({"UnknownNullness"}) I i10, @Nullable ActivityOptionsCompat activityOptionsCompat);

    @MainThread
    public abstract void c();
}
