package androidx.compose.foundation;

import android.annotation.SuppressLint;
import android.os.Build;
import androidx.annotation.ChecksSdkIntAtLeast;
import androidx.annotation.RequiresApi;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DpSize;
import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
public final class MagnifierKt {

    @NotNull
    private static final SemanticsPropertyKey<e8.a<Offset>> MagnifierPositionInRoot = new SemanticsPropertyKey<>("MagnifierPositionInRoot", null, 2, null);

    @NotNull
    public static final SemanticsPropertyKey<e8.a<Offset>> a() {
        return MagnifierPositionInRoot;
    }

    @ChecksSdkIntAtLeast
    public static final boolean b(int i10) {
        return i10 >= 28;
    }

    public static /* synthetic */ boolean c(int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = Build.VERSION.SDK_INT;
        }
        return b(i10);
    }

    @ExperimentalFoundationApi
    @NotNull
    public static final Modifier d(@NotNull Modifier modifier, @NotNull l<? super Density, Offset> sourceCenter, @NotNull l<? super Density, Offset> magnifierCenter, float f, @NotNull MagnifierStyle style, @Nullable l<? super DpSize, l0> lVar) {
        t.j(modifier, "<this>");
        t.j(sourceCenter, "sourceCenter");
        t.j(magnifierCenter, "magnifierCenter");
        t.j(style, "style");
        l magnifierKt$magnifier$$inlined$debugInspectorInfo$1 = InspectableValueKt.c() ? new MagnifierKt$magnifier$$inlined$debugInspectorInfo$1(sourceCenter, magnifierCenter, f, style) : InspectableValueKt.a();
        Modifier modifierE = Modifier.Companion;
        if (c(0, 1, null)) {
            modifierE = e(modifierE, sourceCenter, magnifierCenter, f, style, lVar, PlatformMagnifierFactory.Companion.a());
        }
        return InspectableValueKt.b(modifier, magnifierKt$magnifier$$inlined$debugInspectorInfo$1, modifierE);
    }

    @RequiresApi
    @SuppressLint({"ModifierInspectorInfo"})
    @NotNull
    public static final Modifier e(@NotNull Modifier modifier, @NotNull l<? super Density, Offset> sourceCenter, @NotNull l<? super Density, Offset> magnifierCenter, float f, @NotNull MagnifierStyle style, @Nullable l<? super DpSize, l0> lVar, @NotNull PlatformMagnifierFactory platformMagnifierFactory) {
        t.j(modifier, "<this>");
        t.j(sourceCenter, "sourceCenter");
        t.j(magnifierCenter, "magnifierCenter");
        t.j(style, "style");
        t.j(platformMagnifierFactory, "platformMagnifierFactory");
        return ComposedModifierKt.d(modifier, null, new MagnifierKt$magnifier$4(sourceCenter, magnifierCenter, f, lVar, platformMagnifierFactory, style), 1, null);
    }

    public static /* synthetic */ Modifier f(Modifier modifier, l lVar, l lVar2, float f, MagnifierStyle magnifierStyle, l lVar3, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            lVar2 = MagnifierKt$magnifier$1.INSTANCE;
        }
        l lVar4 = lVar2;
        if ((i10 & 4) != 0) {
            f = Float.NaN;
        }
        float f6 = f;
        if ((i10 & 8) != 0) {
            magnifierStyle = MagnifierStyle.Companion.a();
        }
        MagnifierStyle magnifierStyle2 = magnifierStyle;
        if ((i10 & 16) != 0) {
            lVar3 = null;
        }
        return d(modifier, lVar, lVar4, f6, magnifierStyle2, lVar3);
    }
}
