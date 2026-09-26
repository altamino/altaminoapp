package androidx.compose.runtime.saveable;

import e8.a;
import java.util.List;
import java.util.Map;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public interface SaveableStateRegistry {

    public interface Entry {
        void a();
    }

    boolean a(@NotNull Object obj);

    @NotNull
    Map<String, List<Object>> b();

    @Nullable
    Object c(@NotNull String str);

    @NotNull
    Entry d(@NotNull String str, @NotNull a<? extends Object> aVar);
}
