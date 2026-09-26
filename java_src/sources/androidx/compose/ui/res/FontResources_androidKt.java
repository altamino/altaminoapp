package androidx.compose.ui.res;

import androidx.annotation.GuardedBy;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.Typeface;
import java.util.LinkedHashMap;
import java.util.Map;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
public final class FontResources_androidKt {

    @NotNull
    private static final Object cacheLock = new Object();

    @GuardedBy
    @NotNull
    private static final Map<FontFamily, Typeface> syncLoadedTypefaces = new LinkedHashMap();
}
