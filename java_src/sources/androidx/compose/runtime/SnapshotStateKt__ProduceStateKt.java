package androidx.compose.runtime;

import e8.p;
import java.util.Arrays;
import kotlin.coroutines.d;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes9.dex */
final /* synthetic */ class SnapshotStateKt__ProduceStateKt {
    @Composable
    @NotNull
    public static final <T> State<T> a(T t5, @Nullable Object obj, @Nullable Object obj2, @NotNull p<? super ProduceStateScope<T>, ? super d<? super l0>, ? extends Object> producer, @Nullable Composer composer, int i10) {
        t.j(producer, "producer");
        composer.G(-1703169085);
        composer.G(-492369756);
        Object objH = composer.H();
        if (objH == Composer.Companion.a()) {
            objH = SnapshotStateKt__SnapshotStateKt.e(t5, null, 2, null);
            composer.z(objH);
        }
        composer.Q();
        MutableState mutableState = (MutableState) objH;
        EffectsKt.e(obj, obj2, new SnapshotStateKt__ProduceStateKt$produceState$3(producer, mutableState, null), composer, 72);
        composer.Q();
        return mutableState;
    }

    @Composable
    @NotNull
    public static final <T> State<T> b(T t5, @NotNull Object[] keys, @NotNull p<? super ProduceStateScope<T>, ? super d<? super l0>, ? extends Object> producer, @Nullable Composer composer, int i10) {
        t.j(keys, "keys");
        t.j(producer, "producer");
        composer.G(490154582);
        composer.G(-492369756);
        Object objH = composer.H();
        if (objH == Composer.Companion.a()) {
            objH = SnapshotStateKt__SnapshotStateKt.e(t5, null, 2, null);
            composer.z(objH);
        }
        composer.Q();
        MutableState mutableState = (MutableState) objH;
        EffectsKt.g(Arrays.copyOf(keys, keys.length), new SnapshotStateKt__ProduceStateKt$produceState$5(producer, mutableState, null), composer, 8);
        composer.Q();
        return mutableState;
    }
}
