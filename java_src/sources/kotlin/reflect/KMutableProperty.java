package kotlin.reflect;

import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
public interface KMutableProperty<V> extends KProperty<V> {

    public static final class DefaultImpls {
        public static /* synthetic */ void getSetter$annotations() {
        }
    }

    public interface Setter<V> extends KProperty.Accessor<V>, KFunction<l0> {
    }

    @NotNull
    Setter<V> getSetter();
}
