package androidx.compose.ui.platform;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.ui.ExperimentalComposeUiApi;
import androidx.compose.ui.autofill.Autofill;
import androidx.compose.ui.autofill.AutofillTree;
import androidx.compose.ui.focus.FocusManager;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.input.InputModeManager;
import androidx.compose.ui.input.pointer.PointerIconService;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.text.font.Font;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.input.TextInputService;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public final class CompositionLocalsKt {

    @NotNull
    private static final ProvidableCompositionLocal<AccessibilityManager> LocalAccessibilityManager = CompositionLocalKt.e(CompositionLocalsKt$LocalAccessibilityManager$1.INSTANCE);

    @NotNull
    private static final ProvidableCompositionLocal<Autofill> LocalAutofill = CompositionLocalKt.e(CompositionLocalsKt$LocalAutofill$1.INSTANCE);

    @NotNull
    private static final ProvidableCompositionLocal<AutofillTree> LocalAutofillTree = CompositionLocalKt.e(CompositionLocalsKt$LocalAutofillTree$1.INSTANCE);

    @NotNull
    private static final ProvidableCompositionLocal<ClipboardManager> LocalClipboardManager = CompositionLocalKt.e(CompositionLocalsKt$LocalClipboardManager$1.INSTANCE);

    @NotNull
    private static final ProvidableCompositionLocal<Density> LocalDensity = CompositionLocalKt.e(CompositionLocalsKt$LocalDensity$1.INSTANCE);

    @NotNull
    private static final ProvidableCompositionLocal<FocusManager> LocalFocusManager = CompositionLocalKt.e(CompositionLocalsKt$LocalFocusManager$1.INSTANCE);

    @NotNull
    private static final ProvidableCompositionLocal<Font.ResourceLoader> LocalFontLoader = CompositionLocalKt.e(CompositionLocalsKt$LocalFontLoader$1.INSTANCE);

    @NotNull
    private static final ProvidableCompositionLocal<FontFamily.Resolver> LocalFontFamilyResolver = CompositionLocalKt.e(CompositionLocalsKt$LocalFontFamilyResolver$1.INSTANCE);

    @NotNull
    private static final ProvidableCompositionLocal<HapticFeedback> LocalHapticFeedback = CompositionLocalKt.e(CompositionLocalsKt$LocalHapticFeedback$1.INSTANCE);

    @NotNull
    private static final ProvidableCompositionLocal<InputModeManager> LocalInputModeManager = CompositionLocalKt.e(CompositionLocalsKt$LocalInputModeManager$1.INSTANCE);

    @NotNull
    private static final ProvidableCompositionLocal<LayoutDirection> LocalLayoutDirection = CompositionLocalKt.e(CompositionLocalsKt$LocalLayoutDirection$1.INSTANCE);

    @NotNull
    private static final ProvidableCompositionLocal<TextInputService> LocalTextInputService = CompositionLocalKt.e(CompositionLocalsKt$LocalTextInputService$1.INSTANCE);

    @NotNull
    private static final ProvidableCompositionLocal<TextToolbar> LocalTextToolbar = CompositionLocalKt.e(CompositionLocalsKt$LocalTextToolbar$1.INSTANCE);

    @NotNull
    private static final ProvidableCompositionLocal<UriHandler> LocalUriHandler = CompositionLocalKt.e(CompositionLocalsKt$LocalUriHandler$1.INSTANCE);

    @NotNull
    private static final ProvidableCompositionLocal<ViewConfiguration> LocalViewConfiguration = CompositionLocalKt.e(CompositionLocalsKt$LocalViewConfiguration$1.INSTANCE);

    @NotNull
    private static final ProvidableCompositionLocal<WindowInfo> LocalWindowInfo = CompositionLocalKt.e(CompositionLocalsKt$LocalWindowInfo$1.INSTANCE);

    @NotNull
    private static final ProvidableCompositionLocal<PointerIconService> LocalPointerIconService = CompositionLocalKt.e(CompositionLocalsKt$LocalPointerIconService$1.INSTANCE);

    @NotNull
    public static final ProvidableCompositionLocal<AccessibilityManager> c() {
        return LocalAccessibilityManager;
    }

    @NotNull
    public static final ProvidableCompositionLocal<ClipboardManager> d() {
        return LocalClipboardManager;
    }

    @NotNull
    public static final ProvidableCompositionLocal<Density> e() {
        return LocalDensity;
    }

    @NotNull
    public static final ProvidableCompositionLocal<FocusManager> f() {
        return LocalFocusManager;
    }

    @NotNull
    public static final ProvidableCompositionLocal<FontFamily.Resolver> g() {
        return LocalFontFamilyResolver;
    }

    @NotNull
    public static final ProvidableCompositionLocal<HapticFeedback> h() {
        return LocalHapticFeedback;
    }

    @NotNull
    public static final ProvidableCompositionLocal<InputModeManager> i() {
        return LocalInputModeManager;
    }

    @NotNull
    public static final ProvidableCompositionLocal<LayoutDirection> j() {
        return LocalLayoutDirection;
    }

    @NotNull
    public static final ProvidableCompositionLocal<PointerIconService> k() {
        return LocalPointerIconService;
    }

    @NotNull
    public static final ProvidableCompositionLocal<TextInputService> l() {
        return LocalTextInputService;
    }

    @NotNull
    public static final ProvidableCompositionLocal<TextToolbar> m() {
        return LocalTextToolbar;
    }

    @NotNull
    public static final ProvidableCompositionLocal<ViewConfiguration> n() {
        return LocalViewConfiguration;
    }

    @NotNull
    public static final ProvidableCompositionLocal<WindowInfo> o() {
        return LocalWindowInfo;
    }

    @Composable
    @ExperimentalComposeUiApi
    @ComposableInferredTarget
    public static final void a(@NotNull Owner owner, @NotNull UriHandler uriHandler, @NotNull e8.p<? super Composer, ? super Integer, w7.l0> content, @Nullable Composer composer, int i10) {
        int i11;
        kotlin.jvm.internal.t.j(owner, "owner");
        kotlin.jvm.internal.t.j(uriHandler, "uriHandler");
        kotlin.jvm.internal.t.j(content, "content");
        Composer composerS = composer.s(874662829);
        if ((i10 & 14) == 0) {
            i11 = (composerS.k(owner) ? 4 : 2) | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 112) == 0) {
            i11 |= composerS.k(uriHandler) ? 32 : 16;
        }
        if ((i10 & 896) == 0) {
            i11 |= composerS.k(content) ? 256 : 128;
        }
        if ((i11 & 731) == 146 && composerS.b()) {
            composerS.g();
        } else {
            CompositionLocalKt.b(new ProvidedValue[]{LocalAccessibilityManager.c(owner.getAccessibilityManager()), LocalAutofill.c(owner.getAutofill()), LocalAutofillTree.c(owner.getAutofillTree()), LocalClipboardManager.c(owner.getClipboardManager()), LocalDensity.c(owner.getDensity()), LocalFocusManager.c(owner.getFocusManager()), LocalFontLoader.d(owner.getFontLoader()), LocalFontFamilyResolver.d(owner.getFontFamilyResolver()), LocalHapticFeedback.c(owner.getHapticFeedBack()), LocalInputModeManager.c(owner.getInputModeManager()), LocalLayoutDirection.c(owner.getLayoutDirection()), LocalTextInputService.c(owner.getTextInputService()), LocalTextToolbar.c(owner.getTextToolbar()), LocalUriHandler.c(uriHandler), LocalViewConfiguration.c(owner.getViewConfiguration()), LocalWindowInfo.c(owner.getWindowInfo()), LocalPointerIconService.c(owner.getPointerIconService())}, content, composerS, ((i11 >> 3) & 112) | 8);
        }
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new CompositionLocalsKt$ProvideCommonCompositionLocals$1(owner, uriHandler, content, i10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Void p(String str) {
        throw new IllegalStateException(("CompositionLocal " + str + " not present").toString());
    }
}
