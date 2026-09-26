package androidx.compose.ui.text;

import androidx.compose.runtime.Immutable;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
@Immutable
public final class Placeholder {
    private final long height;
    private final int placeholderVerticalAlign;
    private final long width;

    public /* synthetic */ Placeholder(long j6, long j10, int i10, k kVar) {
        this(j6, j10, i10);
    }

    public final long a() {
        return this.height;
    }

    public final int b() {
        return this.placeholderVerticalAlign;
    }

    public final long c() {
        return this.width;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Placeholder)) {
            return false;
        }
        Placeholder placeholder = (Placeholder) obj;
        return TextUnit.e(this.width, placeholder.width) && TextUnit.e(this.height, placeholder.height) && PlaceholderVerticalAlign.j(this.placeholderVerticalAlign, placeholder.placeholderVerticalAlign);
    }

    private Placeholder(long j6, long j10, int i10) {
        this.width = j6;
        this.height = j10;
        this.placeholderVerticalAlign = i10;
        if (!(!TextUnitKt.f(j6))) {
            throw new IllegalArgumentException("width cannot be TextUnit.Unspecified".toString());
        }
        if (!(!TextUnitKt.f(j10))) {
            throw new IllegalArgumentException("height cannot be TextUnit.Unspecified".toString());
        }
    }

    public int hashCode() {
        return (((TextUnit.i(this.width) * 31) + TextUnit.i(this.height)) * 31) + PlaceholderVerticalAlign.k(this.placeholderVerticalAlign);
    }

    @NotNull
    public String toString() {
        return "Placeholder(width=" + ((Object) TextUnit.j(this.width)) + ", height=" + ((Object) TextUnit.j(this.height)) + ", placeholderVerticalAlign=" + ((Object) PlaceholderVerticalAlign.l(this.placeholderVerticalAlign)) + ')';
    }
}
