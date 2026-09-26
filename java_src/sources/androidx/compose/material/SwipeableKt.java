package androidx.compose.material;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.platform.InspectableValueKt;
import e8.l;
import e8.p;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.d0;
import kotlin.collections.u;
import kotlin.collections.v;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
public final class SwipeableKt {
    private static final List<Float> d(float f, Set<Float> set) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : set) {
            if (((Number) obj).floatValue() <= ((double) f) + 0.001d) {
                arrayList.add(obj);
            }
        }
        Float fY0 = d0.y0(arrayList);
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : set) {
            if (((Number) obj2).floatValue() >= ((double) f) - 0.001d) {
                arrayList2.add(obj2);
            }
        }
        Float fA0 = d0.A0(arrayList2);
        if (fY0 == null) {
            return v.q(fA0);
        }
        if (fA0 != null && !t.d(fY0, fA0)) {
            return v.p(fY0, fA0);
        }
        return u.e(fY0);
    }

    @NotNull
    public static final <T> NestedScrollConnection f(@NotNull SwipeableState<T> swipeableState) {
        t.j(swipeableState, "<this>");
        return new SwipeableKt$PreUpPostDownNestedScrollConnection$1(swipeableState);
    }

    @Composable
    @ExperimentalMaterialApi
    @NotNull
    public static final <T> SwipeableState<T> g(@NotNull T value, @NotNull l<? super T, l0> onValueChange, @Nullable AnimationSpec<Float> animationSpec, @Nullable Composer composer, int i10, int i11) {
        t.j(value, "value");
        t.j(onValueChange, "onValueChange");
        composer.G(1156387078);
        if ((i11 & 4) != 0) {
            animationSpec = SwipeableDefaults.INSTANCE.a();
        }
        composer.G(-492369756);
        Object objH = composer.H();
        Composer.Companion companion = Composer.Companion;
        if (objH == companion.a()) {
            objH = new SwipeableState(value, animationSpec, SwipeableKt$rememberSwipeableStateFor$swipeableState$1$1.INSTANCE);
            composer.z(objH);
        }
        composer.Q();
        SwipeableState<T> swipeableState = (SwipeableState) objH;
        composer.G(-492369756);
        Object objH2 = composer.H();
        if (objH2 == companion.a()) {
            objH2 = SnapshotStateKt__SnapshotStateKt.e(Boolean.FALSE, null, 2, null);
            composer.z(objH2);
        }
        composer.Q();
        MutableState mutableState = (MutableState) objH2;
        int i12 = i10 & 8;
        EffectsKt.e(value, mutableState.getValue(), new SwipeableKt$rememberSwipeableStateFor$1(value, swipeableState, null), composer, (i10 & 14) | i12);
        EffectsKt.a(swipeableState.p(), new SwipeableKt$rememberSwipeableStateFor$2(value, swipeableState, onValueChange, mutableState), composer, i12);
        composer.Q();
        return swipeableState;
    }

    @ExperimentalMaterialApi
    @NotNull
    public static final <T> Modifier h(@NotNull Modifier swipeable, @NotNull SwipeableState<T> state, @NotNull Map<Float, ? extends T> anchors, @NotNull Orientation orientation, boolean z6, boolean z10, @Nullable MutableInteractionSource mutableInteractionSource, @NotNull p<? super T, ? super T, ? extends ThresholdConfig> thresholds, @Nullable ResistanceConfig resistanceConfig, float f) {
        t.j(swipeable, "$this$swipeable");
        t.j(state, "state");
        t.j(anchors, "anchors");
        t.j(orientation, "orientation");
        t.j(thresholds, "thresholds");
        return ComposedModifierKt.c(swipeable, InspectableValueKt.c() ? new SwipeableKt$swipeablepPrIpRY$$inlined$debugInspectorInfo$1(state, anchors, orientation, z6, z10, mutableInteractionSource, thresholds, resistanceConfig, f) : InspectableValueKt.a(), new SwipeableKt$swipeable$3(anchors, state, orientation, z6, mutableInteractionSource, z10, resistanceConfig, thresholds, f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x003f, code lost:
    
        if (r3 < r6.invoke(java.lang.Float.valueOf(r0), java.lang.Float.valueOf(r5)).floatValue()) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x005c, code lost:
    
        if (r3 > r6.invoke(java.lang.Float.valueOf(r5), java.lang.Float.valueOf(r0)).floatValue()) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:?, code lost:
    
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:?, code lost:
    
        return r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final float c(float f, float f6, Set<Float> set, p<? super Float, ? super Float, Float> pVar, float f7, float f10) {
        List<Float> listD = d(f, set);
        int size = listD.size();
        if (size != 0) {
            if (size != 1) {
                float fFloatValue = listD.get(0).floatValue();
                float fFloatValue2 = listD.get(1).floatValue();
                if (f6 <= f) {
                    if (f7 >= f10) {
                        return fFloatValue2;
                    }
                } else if (f7 <= (-f10)) {
                    return fFloatValue;
                }
            } else {
                return listD.get(0).floatValue();
            }
        } else {
            return f6;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <T> Float e(Map<Float, ? extends T> map, T t5) {
        T next;
        Iterator<T> it = map.entrySet().iterator();
        do {
            if (it.hasNext()) {
                next = it.next();
            } else {
                next = null;
                break;
            }
        } while (!t.e(((Map.Entry) next).getValue(), t5));
        Map.Entry entry = (Map.Entry) next;
        if (entry == null) {
            return null;
        }
        return (Float) entry.getKey();
    }
}
