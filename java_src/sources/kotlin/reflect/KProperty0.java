package kotlin.reflect;

import e8.a;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public interface KProperty0<V> extends KProperty<V>, a<V> {

    public static final class DefaultImpls {
        public static /* synthetic */ void getGetter$annotations() {
        }
    }

    public interface Getter<V> extends KProperty.Getter<V>, a<V> {
        @Override // e8.a
        /* synthetic */ Object invoke();
    }

    V get();

    @Nullable
    Object getDelegate();

    @Override // kotlin.reflect.KProperty
    @NotNull
    Getter<V> getGetter();

    /* synthetic */ Object invoke();
}
