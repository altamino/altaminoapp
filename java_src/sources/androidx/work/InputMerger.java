package androidx.work;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
public abstract class InputMerger {
    private static final String TAG = Logger.i("InputMerger");

    @NonNull
    public abstract Data b(@NonNull List<Data> inputs);

    @Nullable
    @RestrictTo
    public static InputMerger a(@NonNull String className) {
        try {
            return (InputMerger) Class.forName(className).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            Logger.e().d(TAG, "Trouble instantiating + " + className, e);
            return null;
        }
    }
}
