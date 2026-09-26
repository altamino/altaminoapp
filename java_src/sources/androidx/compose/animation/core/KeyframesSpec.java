package androidx.compose.animation.core;

import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.internal.StabilityInferred;
import e8.l;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.collections.r0;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.a0;
import w7.u;

/* JADX INFO: loaded from: classes4.dex */
@Immutable
public final class KeyframesSpec<T> implements DurationBasedAnimationSpec<T> {

    @NotNull
    private final KeyframesSpecConfig<T> config;

    @StabilityInferred
    public static final class KeyframeEntity<T> {
        public static final int $stable = 8;

        @NotNull
        private Easing easing;
        private final T value;

        public KeyframeEntity(T t5, @NotNull Easing easing) {
            t.j(easing, "easing");
            this.value = t5;
            this.easing = easing;
        }

        public final void a(@NotNull Easing easing) {
            t.j(easing, "<set-?>");
            this.easing = easing;
        }

        public /* synthetic */ KeyframeEntity(Object obj, Easing easing, int i10, k kVar) {
            this(obj, (i10 & 2) != 0 ? EasingKt.b() : easing);
        }

        @NotNull
        public final <V extends AnimationVector> u<V, Easing> b(@NotNull l<? super T, ? extends V> convertToVector) {
            t.j(convertToVector, "convertToVector");
            return a0.a(convertToVector.invoke(this.value), this.easing);
        }

        public boolean equals(@Nullable Object obj) {
            if (obj instanceof KeyframeEntity) {
                KeyframeEntity keyframeEntity = (KeyframeEntity) obj;
                if (t.e(keyframeEntity.value, this.value) && t.e(keyframeEntity.easing, this.easing)) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            T t5 = this.value;
            return ((t5 != null ? t5.hashCode() : 0) * 31) + this.easing.hashCode();
        }
    }

    @StabilityInferred
    public static final class KeyframesSpecConfig<T> {
        public static final int $stable = 8;
        private int delayMillis;
        private int durationMillis = 300;

        @NotNull
        private final Map<Integer, KeyframeEntity<T>> keyframes = new LinkedHashMap();

        public final int b() {
            return this.delayMillis;
        }

        public final int c() {
            return this.durationMillis;
        }

        @NotNull
        public final Map<Integer, KeyframeEntity<T>> d() {
            return this.keyframes;
        }

        public final void e(int i10) {
            this.durationMillis = i10;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @NotNull
        public final KeyframeEntity<T> a(T t5, int i10) {
            KeyframeEntity<T> keyframeEntity = new KeyframeEntity<>(t5, null, 2, 0 == true ? 1 : 0);
            this.keyframes.put(Integer.valueOf(i10), keyframeEntity);
            return keyframeEntity;
        }

        public boolean equals(@Nullable Object obj) {
            if (obj instanceof KeyframesSpecConfig) {
                KeyframesSpecConfig keyframesSpecConfig = (KeyframesSpecConfig) obj;
                if (this.delayMillis == keyframesSpecConfig.delayMillis && this.durationMillis == keyframesSpecConfig.durationMillis && t.e(this.keyframes, keyframesSpecConfig.keyframes)) {
                    return true;
                }
            }
            return false;
        }

        public final void f(@NotNull KeyframeEntity<T> keyframeEntity, @NotNull Easing easing) {
            t.j(keyframeEntity, "<this>");
            t.j(easing, "easing");
            keyframeEntity.a(easing);
        }

        public int hashCode() {
            return (((this.durationMillis * 31) + this.delayMillis) * 31) + this.keyframes.hashCode();
        }
    }

    public KeyframesSpec(@NotNull KeyframesSpecConfig<T> config) {
        t.j(config, "config");
        this.config = config;
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof KeyframesSpec) && t.e(this.config, ((KeyframesSpec) obj).config);
    }

    @Override // androidx.compose.animation.core.DurationBasedAnimationSpec, androidx.compose.animation.core.AnimationSpec
    @NotNull
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public <V extends AnimationVector> VectorizedKeyframesSpec<V> a(@NotNull TwoWayConverter<T, V> converter) {
        t.j(converter, "converter");
        Map<Integer, KeyframeEntity<T>> mapD = this.config.d();
        LinkedHashMap linkedHashMap = new LinkedHashMap(r0.e(mapD.size()));
        Iterator<T> it = mapD.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            linkedHashMap.put(entry.getKey(), ((KeyframeEntity) entry.getValue()).b(converter.a()));
        }
        return new VectorizedKeyframesSpec<>(linkedHashMap, this.config.c(), this.config.b());
    }

    public int hashCode() {
        return this.config.hashCode();
    }
}
