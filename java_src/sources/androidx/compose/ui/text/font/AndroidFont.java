package androidx.compose.ui.text.font;

import android.content.Context;
import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AndroidFont implements Font {
    private final int loadingStrategy;

    @NotNull
    private final TypefaceLoader typefaceLoader;

    public interface TypefaceLoader {
        @Nullable
        android.graphics.Typeface a(@NotNull Context context, @NotNull AndroidFont androidFont);

        @Nullable
        Object b(@NotNull Context context, @NotNull AndroidFont androidFont, @NotNull kotlin.coroutines.d<? super android.graphics.Typeface> dVar);
    }

    public /* synthetic */ AndroidFont(int i10, TypefaceLoader typefaceLoader, k kVar) {
        this(i10, typefaceLoader);
    }

    @Override // androidx.compose.ui.text.font.Font
    public final int a() {
        return this.loadingStrategy;
    }

    @NotNull
    public final TypefaceLoader d() {
        return this.typefaceLoader;
    }

    private AndroidFont(int i10, TypefaceLoader typefaceLoader) {
        this.loadingStrategy = i10;
        this.typefaceLoader = typefaceLoader;
    }
}
