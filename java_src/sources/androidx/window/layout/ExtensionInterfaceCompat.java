package androidx.window.layout;

import android.app.Activity;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public interface ExtensionInterfaceCompat {

    public interface ExtensionCallbackInterface {
        void a(@NotNull Activity activity, @NotNull WindowLayoutInfo windowLayoutInfo);
    }

    void a(@NotNull ExtensionCallbackInterface extensionCallbackInterface);

    void b(@NotNull Activity activity);

    void c(@NotNull Activity activity);
}
