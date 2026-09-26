package androidx.lifecycle;

import android.app.Application;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes5.dex */
@Deprecated
public class ViewModelProviders {

    @Deprecated
    public static class DefaultFactory extends ViewModelProvider.AndroidViewModelFactory {
        @Deprecated
        public DefaultFactory(@NonNull Application application) {
            super(application);
        }
    }

    @Deprecated
    public ViewModelProviders() {
    }
}
