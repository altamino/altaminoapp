package androidx.compose.foundation.layout;

import android.os.Build;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class WindowInsetsConnection_androidKt {
    private static final double DecelMinusOne;
    private static final double DecelerationRate;
    private static final float EndTension = 1.0f;
    private static final float GravityEarth = 9.80665f;
    private static final float InchesPerMeter = 39.37f;
    private static final float Inflection = 0.35f;
    private static final float P1 = 0.175f;
    private static final float P2 = 0.35000002f;
    private static final float PlatformFlingScrollFriction = ViewConfiguration.getScrollFriction();
    private static final float StartTension = 0.5f;

    @Composable
    @ExperimentalLayoutApi
    @NotNull
    public static final NestedScrollConnection d(@NotNull AndroidWindowInsets windowInsets, int i10, @Nullable Composer composer, int i11) {
        t.j(windowInsets, "windowInsets");
        composer.G(-1011341039);
        if (Build.VERSION.SDK_INT < 30) {
            DoNothingNestedScrollConnection doNothingNestedScrollConnection = DoNothingNestedScrollConnection.INSTANCE;
            composer.Q();
            return doNothingNestedScrollConnection;
        }
        SideCalculator sideCalculatorA = SideCalculator.Companion.a(i10, (LayoutDirection) composer.x(CompositionLocalsKt.j()));
        View view = (View) composer.x(AndroidCompositionLocals_androidKt.k());
        Density density = (Density) composer.x(CompositionLocalsKt.e());
        Object[] objArr = {windowInsets, view, sideCalculatorA, density};
        composer.G(-568225417);
        boolean zK = false;
        for (int i12 = 0; i12 < 4; i12++) {
            zK |= composer.k(objArr[i12]);
        }
        Object objH = composer.H();
        if (zK || objH == Composer.Companion.a()) {
            objH = new WindowInsetsNestedScrollConnection(windowInsets, view, sideCalculatorA, density);
            composer.z(objH);
        }
        composer.Q();
        WindowInsetsNestedScrollConnection windowInsetsNestedScrollConnection = (WindowInsetsNestedScrollConnection) objH;
        EffectsKt.a(windowInsetsNestedScrollConnection, new WindowInsetsConnection_androidKt$rememberWindowInsetsConnection$1(windowInsetsNestedScrollConnection), composer, 8);
        composer.Q();
        return windowInsetsNestedScrollConnection;
    }

    static {
        double dLog = Math.log(0.78d) / Math.log(0.9d);
        DecelerationRate = dLog;
        DecelMinusOne = dLog - 1.0d;
    }
}
