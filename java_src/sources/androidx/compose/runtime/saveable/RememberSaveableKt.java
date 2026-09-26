package androidx.compose.runtime.saveable;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.snapshots.SnapshotMutableState;
import e8.a;
import java.util.Arrays;
import kotlin.jvm.internal.t;
import kotlin.text.b;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class RememberSaveableKt {
    private static final int MaxSupportedRadix = 36;

    @Composable
    @NotNull
    public static final <T> T b(@NotNull Object[] inputs, @Nullable Saver<T, ? extends Object> saver, @Nullable String str, @NotNull a<? extends T> init, @Nullable Composer composer, int i10, int i11) {
        Object objC;
        t.j(inputs, "inputs");
        t.j(init, "init");
        composer.G(441892779);
        if ((i11 & 2) != 0) {
            saver = SaverKt.b();
        }
        int i12 = i11 & 4;
        T tB = null;
        if (i12 != 0) {
            str = null;
        }
        composer.G(1059366469);
        if (str == null || str.length() == 0) {
            str = Integer.toString(ComposablesKt.a(composer, 0), b.a(MaxSupportedRadix));
            t.i(str, "toString(this, checkRadix(radix))");
        }
        composer.Q();
        if (saver == null) {
            throw new NullPointerException("null cannot be cast to non-null type androidx.compose.runtime.saveable.Saver<T of androidx.compose.runtime.saveable.RememberSaveableKt.rememberSaveable, kotlin.Any>");
        }
        SaveableStateRegistry saveableStateRegistry = (SaveableStateRegistry) composer.x(SaveableStateRegistryKt.b());
        Object[] objArrCopyOf = Arrays.copyOf(inputs, inputs.length);
        composer.G(-568225417);
        boolean zK = false;
        for (Object obj : objArrCopyOf) {
            zK |= composer.k(obj);
        }
        T tInvoke = (T) composer.H();
        if (zK || tInvoke == Composer.Companion.a()) {
            if (saveableStateRegistry != null && (objC = saveableStateRegistry.c(str)) != null) {
                tB = saver.b(objC);
            }
            tInvoke = tB == null ? init.invoke() : tB;
            composer.z(tInvoke);
        }
        composer.Q();
        if (saveableStateRegistry != null) {
            EffectsKt.b(saveableStateRegistry, str, new RememberSaveableKt$rememberSaveable$1(saveableStateRegistry, str, SnapshotStateKt.n(saver, composer, 0), SnapshotStateKt.n(tInvoke, composer, 0)), composer, 0);
        }
        composer.Q();
        return tInvoke;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(SaveableStateRegistry saveableStateRegistry, Object obj) {
        String str;
        if (obj == null || saveableStateRegistry.a(obj)) {
            return;
        }
        if (obj instanceof SnapshotMutableState) {
            SnapshotMutableState snapshotMutableState = (SnapshotMutableState) obj;
            if (snapshotMutableState.g() == SnapshotStateKt.i() || snapshotMutableState.g() == SnapshotStateKt.p() || snapshotMutableState.g() == SnapshotStateKt.m()) {
                str = "MutableState containing " + snapshotMutableState.getValue() + " cannot be saved using the current SaveableStateRegistry. The default implementation only supports types which can be stored inside the Bundle. Please consider implementing a custom Saver for this class and pass it as a stateSaver parameter to rememberSaveable().";
            } else {
                str = "If you use a custom SnapshotMutationPolicy for your MutableState you have to write a custom Saver";
            }
        } else {
            str = obj + " cannot be saved using the current SaveableStateRegistry. The default implementation only supports types which can be stored inside the Bundle. Please consider implementing a custom Saver for this class and pass it to rememberSaveable().";
        }
        throw new IllegalArgumentException(str);
    }
}
