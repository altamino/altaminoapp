package androidx.compose.foundation.text;

import androidx.compose.foundation.c;
import androidx.compose.runtime.Immutable;
import androidx.compose.ui.text.input.ImeAction;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.KeyboardCapitalization;
import androidx.compose.ui.text.input.KeyboardType;
import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Immutable
public final class KeyboardOptions {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final KeyboardOptions Default = new KeyboardOptions(0, false, 0, 0, 15, null);
    private final boolean autoCorrect;
    private final int capitalization;
    private final int imeAction;
    private final int keyboardType;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final KeyboardOptions a() {
            return KeyboardOptions.Default;
        }
    }

    public /* synthetic */ KeyboardOptions(int i10, boolean z6, int i11, int i12, k kVar) {
        this(i10, z6, i11, i12);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof KeyboardOptions)) {
            return false;
        }
        KeyboardOptions keyboardOptions = (KeyboardOptions) obj;
        return KeyboardCapitalization.g(this.capitalization, keyboardOptions.capitalization) && this.autoCorrect == keyboardOptions.autoCorrect && KeyboardType.l(this.keyboardType, keyboardOptions.keyboardType) && ImeAction.l(this.imeAction, keyboardOptions.imeAction);
    }

    private KeyboardOptions(int i10, boolean z6, int i11, int i12) {
        this.capitalization = i10;
        this.autoCorrect = z6;
        this.keyboardType = i11;
        this.imeAction = i12;
    }

    @NotNull
    public final ImeOptions b(boolean z6) {
        return new ImeOptions(z6, this.capitalization, this.autoCorrect, this.keyboardType, this.imeAction, null);
    }

    public int hashCode() {
        return (((((KeyboardCapitalization.h(this.capitalization) * 31) + c.a(this.autoCorrect)) * 31) + KeyboardType.m(this.keyboardType)) * 31) + ImeAction.m(this.imeAction);
    }

    @NotNull
    public String toString() {
        return "KeyboardOptions(capitalization=" + ((Object) KeyboardCapitalization.i(this.capitalization)) + ", autoCorrect=" + this.autoCorrect + ", keyboardType=" + ((Object) KeyboardType.n(this.keyboardType)) + ", imeAction=" + ((Object) ImeAction.n(this.imeAction)) + ')';
    }

    public /* synthetic */ KeyboardOptions(int i10, boolean z6, int i11, int i12, int i13, k kVar) {
        this((i13 & 1) != 0 ? KeyboardCapitalization.Companion.b() : i10, (i13 & 2) != 0 ? true : z6, (i13 & 4) != 0 ? KeyboardType.Companion.h() : i11, (i13 & 8) != 0 ? ImeAction.Companion.a() : i12, null);
    }
}
