package androidx.compose.ui.window;

import androidx.compose.foundation.c;
import androidx.compose.runtime.Immutable;
import androidx.compose.ui.ExperimentalComposeUiApi;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
@Immutable
public final class DialogProperties {
    private final boolean dismissOnBackPress;
    private final boolean dismissOnClickOutside;

    @NotNull
    private final SecureFlagPolicy securePolicy;
    private final boolean usePlatformDefaultWidth;

    @ExperimentalComposeUiApi
    public DialogProperties() {
        this(false, false, null, false, 15, null);
    }

    public final boolean a() {
        return this.dismissOnBackPress;
    }

    public final boolean b() {
        return this.dismissOnClickOutside;
    }

    @NotNull
    public final SecureFlagPolicy c() {
        return this.securePolicy;
    }

    public final boolean d() {
        return this.usePlatformDefaultWidth;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DialogProperties)) {
            return false;
        }
        DialogProperties dialogProperties = (DialogProperties) obj;
        return this.dismissOnBackPress == dialogProperties.dismissOnBackPress && this.dismissOnClickOutside == dialogProperties.dismissOnClickOutside && this.securePolicy == dialogProperties.securePolicy && this.usePlatformDefaultWidth == dialogProperties.usePlatformDefaultWidth;
    }

    @ExperimentalComposeUiApi
    public DialogProperties(boolean z6, boolean z10, @NotNull SecureFlagPolicy securePolicy, boolean z11) {
        t.j(securePolicy, "securePolicy");
        this.dismissOnBackPress = z6;
        this.dismissOnClickOutside = z10;
        this.securePolicy = securePolicy;
        this.usePlatformDefaultWidth = z11;
    }

    public int hashCode() {
        return (((((c.a(this.dismissOnBackPress) * 31) + c.a(this.dismissOnClickOutside)) * 31) + this.securePolicy.hashCode()) * 31) + c.a(this.usePlatformDefaultWidth);
    }

    public /* synthetic */ DialogProperties(boolean z6, boolean z10, SecureFlagPolicy secureFlagPolicy, boolean z11, int i10, k kVar) {
        this((i10 & 1) != 0 ? true : z6, (i10 & 2) != 0 ? true : z10, (i10 & 4) != 0 ? SecureFlagPolicy.Inherit : secureFlagPolicy, (i10 & 8) != 0 ? true : z11);
    }

    public /* synthetic */ DialogProperties(boolean z6, boolean z10, SecureFlagPolicy secureFlagPolicy, int i10, k kVar) {
        this((i10 & 1) != 0 ? true : z6, (i10 & 2) != 0 ? true : z10, (i10 & 4) != 0 ? SecureFlagPolicy.Inherit : secureFlagPolicy);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DialogProperties(boolean z6, boolean z10, @NotNull SecureFlagPolicy securePolicy) {
        this(z6, z10, securePolicy, true);
        t.j(securePolicy, "securePolicy");
    }
}
