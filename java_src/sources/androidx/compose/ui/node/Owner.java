package androidx.compose.ui.node;

import androidx.compose.ui.ExperimentalComposeUiApi;
import androidx.compose.ui.autofill.Autofill;
import androidx.compose.ui.autofill.AutofillTree;
import androidx.compose.ui.focus.FocusManager;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.input.InputModeManager;
import androidx.compose.ui.input.pointer.PointerIconService;
import androidx.compose.ui.platform.AccessibilityManager;
import androidx.compose.ui.platform.ClipboardManager;
import androidx.compose.ui.platform.TextToolbar;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.platform.WindowInfo;
import androidx.compose.ui.text.font.Font;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.input.TextInputService;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import e8.l;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
public interface Owner {

    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;

    public interface OnLayoutCompletedListener {
        void j();
    }

    void a(boolean z6);

    void b(@NotNull e8.a<l0> aVar);

    void c(@NotNull OnLayoutCompletedListener onLayoutCompletedListener);

    void e(@NotNull LayoutNode layoutNode, long j6);

    long f(long j6);

    void g();

    @NotNull
    AccessibilityManager getAccessibilityManager();

    @ExperimentalComposeUiApi
    @Nullable
    Autofill getAutofill();

    @ExperimentalComposeUiApi
    @NotNull
    AutofillTree getAutofillTree();

    @NotNull
    ClipboardManager getClipboardManager();

    @NotNull
    Density getDensity();

    @NotNull
    FocusManager getFocusManager();

    @NotNull
    FontFamily.Resolver getFontFamilyResolver();

    @NotNull
    Font.ResourceLoader getFontLoader();

    @NotNull
    HapticFeedback getHapticFeedBack();

    @NotNull
    InputModeManager getInputModeManager();

    @NotNull
    LayoutDirection getLayoutDirection();

    @NotNull
    PointerIconService getPointerIconService();

    @NotNull
    LayoutNodeDrawScope getSharedDrawScope();

    boolean getShowLayoutBounds();

    @NotNull
    OwnerSnapshotObserver getSnapshotObserver();

    @NotNull
    TextInputService getTextInputService();

    @NotNull
    TextToolbar getTextToolbar();

    @NotNull
    ViewConfiguration getViewConfiguration();

    @NotNull
    WindowInfo getWindowInfo();

    long h(long j6);

    void i(@NotNull LayoutNode layoutNode);

    void j(@NotNull LayoutNode layoutNode);

    void k(@NotNull LayoutNode layoutNode, boolean z6);

    void l(@NotNull LayoutNode layoutNode);

    void m(@NotNull LayoutNode layoutNode);

    void o();

    void p(@NotNull LayoutNode layoutNode, boolean z6);

    @NotNull
    OwnedLayer q(@NotNull l<? super Canvas, l0> lVar, @NotNull e8.a<l0> aVar);

    boolean requestFocus();

    @InternalCoreApi
    void setShowLayoutBounds(boolean z6);

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private static boolean enableExtraAssertions;

        public final boolean a() {
            return enableExtraAssertions;
        }

        private Companion() {
        }
    }
}
