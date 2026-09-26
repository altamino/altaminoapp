package n4;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.tasks.Task;

/* JADX INFO: loaded from: classes5.dex */
@KeepForSdk
public interface a {

    /* JADX INFO: renamed from: n4.a$a, reason: collision with other inner class name */
    @KeepForSdk
    public interface InterfaceC0469a {
    }

    @KeepForSdk
    void a(InterfaceC0469a interfaceC0469a);

    @NonNull
    @KeepForSdk
    Task<String> b();

    @Nullable
    @KeepForSdk
    String getToken();
}
