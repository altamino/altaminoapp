package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
public interface Animation<T, V extends AnimationVector> {

    public static final class DefaultImpls {
    }

    boolean a();

    boolean b(long j6);

    long c();

    @NotNull
    TwoWayConverter<T, V> d();

    T e(long j6);

    T f();

    @NotNull
    V g(long j6);
}
