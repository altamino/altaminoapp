package androidx.compose.ui.window;

import androidx.compose.foundation.c;
import androidx.compose.runtime.Immutable;
import androidx.compose.ui.ExperimentalComposeUiApi;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
@Immutable
public final class PopupProperties {
    private final boolean clippingEnabled;
    private final boolean dismissOnBackPress;
    private final boolean dismissOnClickOutside;
    private final boolean excludeFromSystemGesture;
    private final boolean focusable;

    @NotNull
    private final SecureFlagPolicy securePolicy;
    private final boolean usePlatformDefaultWidth;

    @ExperimentalComposeUiApi
    public PopupProperties() {
        this(false, false, false, null, false, false, false, 127, null);
    }

    public final boolean a() {
        return this.clippingEnabled;
    }

    public final boolean b() {
        return this.dismissOnBackPress;
    }

    public final boolean c() {
        return this.dismissOnClickOutside;
    }

    public final boolean d() {
        return this.excludeFromSystemGesture;
    }

    public final boolean e() {
        return this.focusable;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PopupProperties)) {
            return false;
        }
        PopupProperties popupProperties = (PopupProperties) obj;
        return this.focusable == popupProperties.focusable && this.dismissOnBackPress == popupProperties.dismissOnBackPress && this.dismissOnClickOutside == popupProperties.dismissOnClickOutside && this.securePolicy == popupProperties.securePolicy && this.excludeFromSystemGesture == popupProperties.excludeFromSystemGesture && this.clippingEnabled == popupProperties.clippingEnabled && this.usePlatformDefaultWidth == popupProperties.usePlatformDefaultWidth;
    }

    @NotNull
    public final SecureFlagPolicy f() {
        return this.securePolicy;
    }

    public final boolean g() {
        return this.usePlatformDefaultWidth;
    }

    @ExperimentalComposeUiApi
    public PopupProperties(boolean z6, boolean z10, boolean z11, @NotNull SecureFlagPolicy securePolicy, boolean z12, boolean z13, boolean z14) {
        t.j(securePolicy, "securePolicy");
        this.focusable = z6;
        this.dismissOnBackPress = z10;
        this.dismissOnClickOutside = z11;
        this.securePolicy = securePolicy;
        this.excludeFromSystemGesture = z12;
        this.clippingEnabled = z13;
        this.usePlatformDefaultWidth = z14;
    }

    public int hashCode() {
        return (((((((((((((c.a(this.dismissOnBackPress) * 31) + c.a(this.focusable)) * 31) + c.a(this.dismissOnBackPress)) * 31) + c.a(this.dismissOnClickOutside)) * 31) + this.securePolicy.hashCode()) * 31) + c.a(this.excludeFromSystemGesture)) * 31) + c.a(this.clippingEnabled)) * 31) + c.a(this.usePlatformDefaultWidth);
    }

    public /* synthetic */ PopupProperties(boolean z6, boolean z10, boolean z11, SecureFlagPolicy secureFlagPolicy, boolean z12, boolean z13, boolean z14, int i10, k kVar) {
        this((i10 & 1) != 0 ? false : z6, (i10 & 2) != 0 ? true : z10, (i10 & 4) != 0 ? true : z11, (i10 & 8) != 0 ? SecureFlagPolicy.Inherit : secureFlagPolicy, (i10 & 16) != 0 ? true : z12, (i10 & 32) == 0 ? z13 : true, (i10 & 64) != 0 ? false : z14);
    }

    public /* synthetic */ PopupProperties(boolean z6, boolean z10, boolean z11, SecureFlagPolicy secureFlagPolicy, boolean z12, boolean z13, int i10, k kVar) {
        this((i10 & 1) != 0 ? false : z6, (i10 & 2) != 0 ? true : z10, (i10 & 4) != 0 ? true : z11, (i10 & 8) != 0 ? SecureFlagPolicy.Inherit : secureFlagPolicy, (i10 & 16) != 0 ? true : z12, (i10 & 32) == 0 ? z13 : true);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PopupProperties(boolean z6, boolean z10, boolean z11, @NotNull SecureFlagPolicy securePolicy, boolean z12, boolean z13) {
        this(z6, z10, z11, securePolicy, z12, z13, false);
        t.j(securePolicy, "securePolicy");
    }
}
