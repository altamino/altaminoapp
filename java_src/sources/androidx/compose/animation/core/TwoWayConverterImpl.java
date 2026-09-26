package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
final class TwoWayConverterImpl<T, V extends AnimationVector> implements TwoWayConverter<T, V> {

    @NotNull
    private final l<V, T> convertFromVector;

    @NotNull
    private final l<T, V> convertToVector;

    @Override // androidx.compose.animation.core.TwoWayConverter
    @NotNull
    public l<T, V> a() {
        return this.convertToVector;
    }

    @Override // androidx.compose.animation.core.TwoWayConverter
    @NotNull
    public l<V, T> b() {
        return this.convertFromVector;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public TwoWayConverterImpl(@NotNull l<? super T, ? extends V> convertToVector, @NotNull l<? super V, ? extends T> convertFromVector) {
        t.j(convertToVector, "convertToVector");
        t.j(convertFromVector, "convertFromVector");
        this.convertToVector = convertToVector;
        this.convertFromVector = convertFromVector;
    }
}
