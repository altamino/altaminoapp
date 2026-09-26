package androidx.compose.ui.text.input;

import androidx.compose.foundation.c;
import androidx.compose.runtime.Immutable;
import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
@Immutable
public final class ImeOptions {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final ImeOptions Default = new ImeOptions(false, 0, false, 0, 0, 31, null);
    private final boolean autoCorrect;
    private final int capitalization;
    private final int imeAction;
    private final int keyboardType;
    private final boolean singleLine;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final ImeOptions a() {
            return ImeOptions.Default;
        }
    }

    public /* synthetic */ ImeOptions(boolean z6, int i10, boolean z10, int i11, int i12, k kVar) {
        this(z6, i10, z10, i11, i12);
    }

    public final boolean b() {
        return this.autoCorrect;
    }

    public final int c() {
        return this.capitalization;
    }

    public final int d() {
        return this.imeAction;
    }

    public final int e() {
        return this.keyboardType;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImeOptions)) {
            return false;
        }
        ImeOptions imeOptions = (ImeOptions) obj;
        return this.singleLine == imeOptions.singleLine && KeyboardCapitalization.g(this.capitalization, imeOptions.capitalization) && this.autoCorrect == imeOptions.autoCorrect && KeyboardType.l(this.keyboardType, imeOptions.keyboardType) && ImeAction.l(this.imeAction, imeOptions.imeAction);
    }

    public final boolean f() {
        return this.singleLine;
    }

    private ImeOptions(boolean z6, int i10, boolean z10, int i11, int i12) {
        this.singleLine = z6;
        this.capitalization = i10;
        this.autoCorrect = z10;
        this.keyboardType = i11;
        this.imeAction = i12;
    }

    public int hashCode() {
        return (((((((c.a(this.singleLine) * 31) + KeyboardCapitalization.h(this.capitalization)) * 31) + c.a(this.autoCorrect)) * 31) + KeyboardType.m(this.keyboardType)) * 31) + ImeAction.m(this.imeAction);
    }

    @NotNull
    public String toString() {
        return "ImeOptions(singleLine=" + this.singleLine + ", capitalization=" + ((Object) KeyboardCapitalization.i(this.capitalization)) + ", autoCorrect=" + this.autoCorrect + ", keyboardType=" + ((Object) KeyboardType.n(this.keyboardType)) + ", imeAction=" + ((Object) ImeAction.n(this.imeAction)) + ')';
    }

    public /* synthetic */ ImeOptions(boolean z6, int i10, boolean z10, int i11, int i12, int i13, k kVar) {
        this((i13 & 1) != 0 ? false : z6, (i13 & 2) != 0 ? KeyboardCapitalization.Companion.b() : i10, (i13 & 4) != 0 ? true : z10, (i13 & 8) != 0 ? KeyboardType.Companion.h() : i11, (i13 & 16) != 0 ? ImeAction.Companion.a() : i12, null);
    }
}
