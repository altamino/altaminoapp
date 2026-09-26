package androidx.core.view;

import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes6.dex */
public interface MenuProvider {
    void a(@NonNull Menu menu, @NonNull MenuInflater menuInflater);

    void b(@NonNull Menu menu);

    void c(@NonNull Menu menu);

    boolean d(@NonNull MenuItem menuItem);
}
