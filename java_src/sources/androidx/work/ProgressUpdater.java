package androidx.work;

import android.content.Context;
import androidx.annotation.NonNull;
import com.google.common.util.concurrent.k;
import java.util.UUID;

/* JADX INFO: loaded from: classes10.dex */
public interface ProgressUpdater {
    @NonNull
    k<Void> a(@NonNull Context context, @NonNull UUID id, @NonNull Data data);
}
