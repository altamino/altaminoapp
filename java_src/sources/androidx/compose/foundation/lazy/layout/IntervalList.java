package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.ExperimentalFoundationApi;
import androidx.compose.runtime.internal.StabilityInferred;
import e8.l;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes9.dex */
@ExperimentalFoundationApi
public interface IntervalList<T> {
    void a(int i10, int i11, @NotNull l<? super Interval<T>, l0> lVar);

    @NotNull
    Interval<T> get(int i10);

    int getSize();

    @StabilityInferred
    public static final class Interval<T> {
        public static final int $stable = 0;
        private final int size;
        private final int startIndex;
        private final T value;

        public final int a() {
            return this.size;
        }

        public final int b() {
            return this.startIndex;
        }

        public final T c() {
            return this.value;
        }

        public Interval(int i10, int i11, T t5) {
            this.startIndex = i10;
            this.size = i11;
            this.value = t5;
            if (i10 >= 0) {
                if (i11 > 0) {
                    return;
                }
                throw new IllegalArgumentException(("size should be >0, but was " + i11).toString());
            }
            throw new IllegalArgumentException(("startIndex should be >= 0, but was " + i10).toString());
        }
    }
}
