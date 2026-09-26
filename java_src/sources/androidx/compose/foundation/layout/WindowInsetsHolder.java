package androidx.compose.foundation.layout;

import android.os.Build;
import android.view.View;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.core.graphics.Insets;
import androidx.core.view.DisplayCutoutCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import java.util.WeakHashMap;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class WindowInsetsHolder {
    private static boolean testInsets;
    private int accessCount;

    @NotNull
    private final AndroidWindowInsets captionBar;

    @NotNull
    private final ValueInsets captionBarIgnoringVisibility;
    private final boolean consumes;

    @NotNull
    private final AndroidWindowInsets displayCutout;

    @NotNull
    private final AndroidWindowInsets ime;

    @NotNull
    private final InsetsListener insetsListener;

    @NotNull
    private final AndroidWindowInsets mandatorySystemGestures;

    @NotNull
    private final AndroidWindowInsets navigationBars;

    @NotNull
    private final ValueInsets navigationBarsIgnoringVisibility;

    @NotNull
    private final WindowInsets safeContent;

    @NotNull
    private final WindowInsets safeDrawing;

    @NotNull
    private final WindowInsets safeGestures;

    @NotNull
    private final AndroidWindowInsets statusBars;

    @NotNull
    private final ValueInsets statusBarsIgnoringVisibility;

    @NotNull
    private final AndroidWindowInsets systemBars;

    @NotNull
    private final ValueInsets systemBarsIgnoringVisibility;

    @NotNull
    private final AndroidWindowInsets systemGestures;

    @NotNull
    private final AndroidWindowInsets tappableElement;

    @NotNull
    private final ValueInsets tappableElementIgnoringVisibility;

    @NotNull
    private final ValueInsets waterfall;

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final WeakHashMap<View, WindowInsetsHolder> viewMap = new WeakHashMap<>();

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final AndroidWindowInsets e(WindowInsetsCompat windowInsetsCompat, int i10, String str) {
            AndroidWindowInsets androidWindowInsets = new AndroidWindowInsets(i10, str);
            if (windowInsetsCompat != null) {
                androidWindowInsets.j(windowInsetsCompat, i10);
            }
            return androidWindowInsets;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final ValueInsets f(WindowInsetsCompat windowInsetsCompat, int i10, String str) {
            Insets insetsG;
            if (windowInsetsCompat == null || (insetsG = windowInsetsCompat.g(i10)) == null) {
                insetsG = Insets.NONE;
            }
            t.i(insetsG, "windowInsets?.getInsetsI…e) ?: AndroidXInsets.NONE");
            return WindowInsets_androidKt.a(insetsG, str);
        }

        private final WindowInsetsHolder d(View view) {
            WindowInsetsHolder windowInsetsHolder;
            synchronized (WindowInsetsHolder.viewMap) {
                try {
                    WeakHashMap weakHashMap = WindowInsetsHolder.viewMap;
                    Object obj = weakHashMap.get(view);
                    Object obj2 = obj;
                    if (obj == null) {
                        WindowInsetsHolder windowInsetsHolder2 = new WindowInsetsHolder(null, view, false ? 1 : 0);
                        weakHashMap.put(view, windowInsetsHolder2);
                        obj2 = windowInsetsHolder2;
                    }
                    windowInsetsHolder = (WindowInsetsHolder) obj2;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return windowInsetsHolder;
        }

        @Composable
        @NotNull
        public final WindowInsetsHolder c(@Nullable Composer composer, int i10) {
            composer.G(-1366542614);
            View view = (View) composer.x(AndroidCompositionLocals_androidKt.k());
            WindowInsetsHolder windowInsetsHolderD = d(view);
            EffectsKt.a(windowInsetsHolderD, new WindowInsetsHolder$Companion$current$1(windowInsetsHolderD, view), composer, 8);
            composer.Q();
            return windowInsetsHolderD;
        }
    }

    public /* synthetic */ WindowInsetsHolder(WindowInsetsCompat windowInsetsCompat, View view, kotlin.jvm.internal.k kVar) {
        this(windowInsetsCompat, view);
    }

    @NotNull
    public final AndroidWindowInsets c() {
        return this.captionBar;
    }

    public final boolean d() {
        return this.consumes;
    }

    @NotNull
    public final AndroidWindowInsets e() {
        return this.displayCutout;
    }

    @NotNull
    public final AndroidWindowInsets f() {
        return this.ime;
    }

    @NotNull
    public final AndroidWindowInsets g() {
        return this.mandatorySystemGestures;
    }

    @NotNull
    public final AndroidWindowInsets h() {
        return this.navigationBars;
    }

    @NotNull
    public final WindowInsets i() {
        return this.safeContent;
    }

    @NotNull
    public final WindowInsets j() {
        return this.safeDrawing;
    }

    @NotNull
    public final WindowInsets k() {
        return this.safeGestures;
    }

    @NotNull
    public final AndroidWindowInsets l() {
        return this.statusBars;
    }

    @NotNull
    public final AndroidWindowInsets m() {
        return this.systemBars;
    }

    @NotNull
    public final AndroidWindowInsets n() {
        return this.systemGestures;
    }

    @NotNull
    public final ValueInsets o() {
        return this.waterfall;
    }

    private WindowInsetsHolder(WindowInsetsCompat windowInsetsCompat, View view) {
        DisplayCutoutCompat displayCutoutCompatE;
        Companion companion = Companion;
        this.captionBar = companion.e(windowInsetsCompat, WindowInsetsCompat.Type.a(), "captionBar");
        AndroidWindowInsets androidWindowInsetsE = companion.e(windowInsetsCompat, WindowInsetsCompat.Type.b(), "displayCutout");
        this.displayCutout = androidWindowInsetsE;
        AndroidWindowInsets androidWindowInsetsE2 = companion.e(windowInsetsCompat, WindowInsetsCompat.Type.c(), "ime");
        this.ime = androidWindowInsetsE2;
        AndroidWindowInsets androidWindowInsetsE3 = companion.e(windowInsetsCompat, WindowInsetsCompat.Type.e(), "mandatorySystemGestures");
        this.mandatorySystemGestures = androidWindowInsetsE3;
        this.navigationBars = companion.e(windowInsetsCompat, WindowInsetsCompat.Type.f(), "navigationBars");
        this.statusBars = companion.e(windowInsetsCompat, WindowInsetsCompat.Type.g(), "statusBars");
        AndroidWindowInsets androidWindowInsetsE4 = companion.e(windowInsetsCompat, WindowInsetsCompat.Type.h(), "systemBars");
        this.systemBars = androidWindowInsetsE4;
        AndroidWindowInsets androidWindowInsetsE5 = companion.e(windowInsetsCompat, WindowInsetsCompat.Type.i(), "systemGestures");
        this.systemGestures = androidWindowInsetsE5;
        AndroidWindowInsets androidWindowInsetsE6 = companion.e(windowInsetsCompat, WindowInsetsCompat.Type.j(), "tappableElement");
        this.tappableElement = androidWindowInsetsE6;
        Insets insetsF = (windowInsetsCompat == null || (displayCutoutCompatE = windowInsetsCompat.e()) == null || (insetsF = displayCutoutCompatE.f()) == null) ? Insets.NONE : insetsF;
        t.i(insetsF, "insets?.displayCutout?.w…ts ?: AndroidXInsets.NONE");
        ValueInsets valueInsetsA = WindowInsets_androidKt.a(insetsF, "waterfall");
        this.waterfall = valueInsetsA;
        WindowInsets windowInsetsE = WindowInsetsKt.e(WindowInsetsKt.e(androidWindowInsetsE4, androidWindowInsetsE2), androidWindowInsetsE);
        this.safeDrawing = windowInsetsE;
        WindowInsets windowInsetsE2 = WindowInsetsKt.e(WindowInsetsKt.e(WindowInsetsKt.e(androidWindowInsetsE6, androidWindowInsetsE3), androidWindowInsetsE5), valueInsetsA);
        this.safeGestures = windowInsetsE2;
        this.safeContent = WindowInsetsKt.e(windowInsetsE, windowInsetsE2);
        this.captionBarIgnoringVisibility = companion.f(windowInsetsCompat, WindowInsetsCompat.Type.a(), "captionBarIgnoringVisibility");
        this.navigationBarsIgnoringVisibility = companion.f(windowInsetsCompat, WindowInsetsCompat.Type.f(), "navigationBarsIgnoringVisibility");
        this.statusBarsIgnoringVisibility = companion.f(windowInsetsCompat, WindowInsetsCompat.Type.g(), "statusBarsIgnoringVisibility");
        this.systemBarsIgnoringVisibility = companion.f(windowInsetsCompat, WindowInsetsCompat.Type.h(), "systemBarsIgnoringVisibility");
        this.tappableElementIgnoringVisibility = companion.f(windowInsetsCompat, WindowInsetsCompat.Type.j(), "tappableElementIgnoringVisibility");
        Object parent = view.getParent();
        View view2 = parent instanceof View ? (View) parent : null;
        Object tag = view2 != null ? view2.getTag(androidx.compose.ui.R.id.consume_window_insets_tag) : null;
        Boolean bool = tag instanceof Boolean ? (Boolean) tag : null;
        this.consumes = bool != null ? bool.booleanValue() : true;
        this.insetsListener = new InsetsListener(this);
    }

    public static /* synthetic */ void r(WindowInsetsHolder windowInsetsHolder, WindowInsetsCompat windowInsetsCompat, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        windowInsetsHolder.q(windowInsetsCompat, i10);
    }

    public final void b(@NotNull View view) {
        t.j(view, "view");
        int i10 = this.accessCount - 1;
        this.accessCount = i10;
        if (i10 == 0) {
            ViewCompat.L0(view, null);
            ViewCompat.b1(view, null);
            view.removeOnAttachStateChangeListener(this.insetsListener);
        }
    }

    public final void p(@NotNull View view) {
        t.j(view, "view");
        if (this.accessCount == 0) {
            ViewCompat.L0(view, this.insetsListener);
            if (view.isAttachedToWindow()) {
                view.requestApplyInsets();
            }
            view.addOnAttachStateChangeListener(this.insetsListener);
            if (Build.VERSION.SDK_INT >= 30) {
                ViewCompat.b1(view, this.insetsListener);
            }
        }
        this.accessCount++;
    }

    public final void q(@NotNull WindowInsetsCompat windowInsets, int i10) {
        t.j(windowInsets, "windowInsets");
        if (testInsets) {
            android.view.WindowInsets windowInsetsX = windowInsets.x();
            t.g(windowInsetsX);
            windowInsets = WindowInsetsCompat.y(windowInsetsX);
        }
        t.i(windowInsets, "if (testInsets) {\n      …   windowInsets\n        }");
        this.captionBar.j(windowInsets, i10);
        this.ime.j(windowInsets, i10);
        this.displayCutout.j(windowInsets, i10);
        this.navigationBars.j(windowInsets, i10);
        this.statusBars.j(windowInsets, i10);
        this.systemBars.j(windowInsets, i10);
        this.systemGestures.j(windowInsets, i10);
        this.tappableElement.j(windowInsets, i10);
        this.mandatorySystemGestures.j(windowInsets, i10);
        if (i10 == 0) {
            ValueInsets valueInsets = this.captionBarIgnoringVisibility;
            Insets insetsG = windowInsets.g(WindowInsetsCompat.Type.a());
            t.i(insetsG, "insets.getInsetsIgnoring…aptionBar()\n            )");
            valueInsets.f(WindowInsets_androidKt.b(insetsG));
            ValueInsets valueInsets2 = this.navigationBarsIgnoringVisibility;
            Insets insetsG2 = windowInsets.g(WindowInsetsCompat.Type.f());
            t.i(insetsG2, "insets.getInsetsIgnoring…ationBars()\n            )");
            valueInsets2.f(WindowInsets_androidKt.b(insetsG2));
            ValueInsets valueInsets3 = this.statusBarsIgnoringVisibility;
            Insets insetsG3 = windowInsets.g(WindowInsetsCompat.Type.g());
            t.i(insetsG3, "insets.getInsetsIgnoring…tatusBars()\n            )");
            valueInsets3.f(WindowInsets_androidKt.b(insetsG3));
            ValueInsets valueInsets4 = this.systemBarsIgnoringVisibility;
            Insets insetsG4 = windowInsets.g(WindowInsetsCompat.Type.h());
            t.i(insetsG4, "insets.getInsetsIgnoring…ystemBars()\n            )");
            valueInsets4.f(WindowInsets_androidKt.b(insetsG4));
            ValueInsets valueInsets5 = this.tappableElementIgnoringVisibility;
            Insets insetsG5 = windowInsets.g(WindowInsetsCompat.Type.j());
            t.i(insetsG5, "insets.getInsetsIgnoring…leElement()\n            )");
            valueInsets5.f(WindowInsets_androidKt.b(insetsG5));
            DisplayCutoutCompat displayCutoutCompatE = windowInsets.e();
            if (displayCutoutCompatE != null) {
                Insets insetsF = displayCutoutCompatE.f();
                t.i(insetsF, "cutout.waterfallInsets");
                this.waterfall.f(WindowInsets_androidKt.b(insetsF));
            }
        }
        Snapshot.Companion.g();
    }
}
