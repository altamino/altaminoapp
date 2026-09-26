package androidx.compose.ui.platform;

import androidx.compose.ui.geometry.Rect;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public interface TextToolbar {

    public static final class DefaultImpls {
    }

    void a(@NotNull Rect rect, @Nullable e8.a<w7.l0> aVar, @Nullable e8.a<w7.l0> aVar2, @Nullable e8.a<w7.l0> aVar3, @Nullable e8.a<w7.l0> aVar4);

    @NotNull
    TextToolbarStatus getStatus();

    void hide();
}
