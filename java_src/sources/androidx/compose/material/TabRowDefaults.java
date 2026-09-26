package androidx.compose.material;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.unit.Dp;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@StabilityInferred
public final class TabRowDefaults {
    public static final int $stable = 0;
    public static final float DividerOpacity = 0.12f;

    @NotNull
    public static final TabRowDefaults INSTANCE = new TabRowDefaults();
    private static final float DividerThickness = Dp.f(1);
    private static final float IndicatorHeight = Dp.f(2);
    private static final float ScrollableTabRowPadding = Dp.f(52);

    public final float c() {
        return IndicatorHeight;
    }

    public final float d() {
        return ScrollableTabRowPadding;
    }

    @ComposableTarget
    @Composable
    public final void a(@Nullable Modifier modifier, float f, long j6, @Nullable Composer composer, int i10, int i11) {
        Modifier modifier2;
        int i12;
        float f6;
        long j10;
        Modifier modifier3;
        float f7;
        long jL;
        float f10;
        Composer composerS = composer.s(910934799);
        int i13 = i11 & 1;
        if (i13 != 0) {
            i12 = i10 | 6;
            modifier2 = modifier;
        } else if ((i10 & 14) == 0) {
            modifier2 = modifier;
            i12 = (composerS.k(modifier2) ? 4 : 2) | i10;
        } else {
            modifier2 = modifier;
            i12 = i10;
        }
        if ((i10 & 112) == 0) {
            if ((i11 & 2) == 0) {
                f6 = f;
                int i14 = composerS.n(f6) ? 32 : 16;
                i12 |= i14;
            } else {
                f6 = f;
            }
            i12 |= i14;
        } else {
            f6 = f;
        }
        if ((i10 & 896) == 0) {
            j10 = j6;
            i12 |= ((i11 & 4) == 0 && composerS.q(j10)) ? 256 : 128;
        } else {
            j10 = j6;
        }
        if ((i11 & 8) != 0) {
            i12 |= 3072;
        } else if ((i10 & 7168) == 0) {
            i12 |= composerS.k(this) ? 2048 : 1024;
        }
        if ((i12 & 5851) == 1170 && composerS.b()) {
            composerS.g();
            f10 = f6;
            jL = j10;
        } else {
            composerS.J();
            if ((i10 & 1) == 0 || composerS.h()) {
                modifier3 = i13 != 0 ? Modifier.Companion : modifier2;
                if ((i11 & 2) != 0) {
                    f7 = DividerThickness;
                    i12 &= -113;
                } else {
                    f7 = f6;
                }
                if ((i11 & 4) != 0) {
                    jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), 0.12f, 0.0f, 0.0f, 0.0f, 14, null);
                    i12 &= -897;
                }
                composerS.A();
                DividerKt.a(modifier3, jL, f7, 0.0f, composerS, (i12 & 14) | ((i12 >> 3) & 112) | ((i12 << 3) & 896), 8);
                f10 = f7;
                modifier2 = modifier3;
            } else {
                composerS.g();
                if ((i11 & 2) != 0) {
                    i12 &= -113;
                }
                if ((i11 & 4) != 0) {
                    i12 &= -897;
                }
                modifier3 = modifier2;
                f7 = f6;
            }
            jL = j10;
            composerS.A();
            DividerKt.a(modifier3, jL, f7, 0.0f, composerS, (i12 & 14) | ((i12 >> 3) & 112) | ((i12 << 3) & 896), 8);
            f10 = f7;
            modifier2 = modifier3;
        }
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new TabRowDefaults$Divider$1(this, modifier2, f10, jL, i10, i11));
    }

    @ComposableTarget
    @Composable
    public final void b(@Nullable Modifier modifier, float f, long j6, @Nullable Composer composer, int i10, int i11) {
        Modifier modifier2;
        int i12;
        float f6;
        long jV;
        Modifier modifier3;
        float f7;
        float f10;
        long j10;
        Composer composerS = composer.s(1499002201);
        int i13 = i11 & 1;
        if (i13 != 0) {
            i12 = i10 | 6;
            modifier2 = modifier;
        } else if ((i10 & 14) == 0) {
            modifier2 = modifier;
            i12 = (composerS.k(modifier2) ? 4 : 2) | i10;
        } else {
            modifier2 = modifier;
            i12 = i10;
        }
        if ((i10 & 112) == 0) {
            if ((i11 & 2) == 0) {
                f6 = f;
                int i14 = composerS.n(f6) ? 32 : 16;
                i12 |= i14;
            } else {
                f6 = f;
            }
            i12 |= i14;
        } else {
            f6 = f;
        }
        if ((i10 & 896) == 0) {
            jV = j6;
            i12 |= ((i11 & 4) == 0 && composerS.q(jV)) ? 256 : 128;
        } else {
            jV = j6;
        }
        if ((i11 & 8) != 0) {
            i12 |= 3072;
        } else if ((i10 & 7168) == 0) {
            i12 |= composerS.k(this) ? 2048 : 1024;
        }
        if ((i12 & 5851) == 1170 && composerS.b()) {
            composerS.g();
            f10 = f6;
            j10 = jV;
        } else {
            composerS.J();
            if ((i10 & 1) == 0 || composerS.h()) {
                modifier3 = i13 != 0 ? Modifier.Companion : modifier2;
                f7 = (i11 & 2) != 0 ? IndicatorHeight : f6;
                if ((i11 & 4) != 0) {
                    jV = ((Color) composerS.x(ContentColorKt.a())).v();
                }
            } else {
                composerS.g();
                modifier3 = modifier2;
                f7 = f6;
            }
            composerS.A();
            BoxKt.a(BackgroundKt.b(SizeKt.o(SizeKt.n(modifier3, 0.0f, 1, null), f7), jV, null, 2, null), composerS, 0);
            f10 = f7;
            j10 = jV;
            modifier2 = modifier3;
        }
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new TabRowDefaults$Indicator$1(this, modifier2, f10, j10, i10, i11));
    }

    @NotNull
    public final Modifier e(@NotNull Modifier modifier, @NotNull TabPosition currentTabPosition) {
        t.j(modifier, "<this>");
        t.j(currentTabPosition, "currentTabPosition");
        return ComposedModifierKt.c(modifier, InspectableValueKt.c() ? new TabRowDefaults$tabIndicatorOffset$$inlined$debugInspectorInfo$1(currentTabPosition) : InspectableValueKt.a(), new TabRowDefaults$tabIndicatorOffset$2(currentTabPosition));
    }

    private TabRowDefaults() {
    }
}
