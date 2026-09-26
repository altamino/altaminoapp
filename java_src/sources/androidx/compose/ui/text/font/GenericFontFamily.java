package androidx.compose.ui.text.font;

import androidx.compose.runtime.Immutable;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
@Immutable
public final class GenericFontFamily extends SystemFontFamily {

    @NotNull
    private final String fontFamilyName;

    @NotNull
    private final String name;

    @NotNull
    public final String m() {
        return this.name;
    }

    @NotNull
    public String toString() {
        return this.fontFamilyName;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GenericFontFamily(@NotNull String name, @NotNull String fontFamilyName) {
        super(null);
        t.j(name, "name");
        t.j(fontFamilyName, "fontFamilyName");
        this.name = name;
        this.fontFamilyName = fontFamilyName;
    }
}
