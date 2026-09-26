package kotlin.reflect;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public interface KProperty<V> extends KCallable<V> {

    public interface Accessor<V> {
        @NotNull
        KProperty<V> getProperty();
    }

    public static final class DefaultImpls {
        public static /* synthetic */ void getGetter$annotations() {
        }

        public static /* synthetic */ void isConst$annotations() {
        }

        public static /* synthetic */ void isLateinit$annotations() {
        }
    }

    public interface Getter<V> extends Accessor<V>, KFunction<V> {
    }

    @NotNull
    Getter<V> getGetter();

    boolean isConst();

    boolean isLateinit();
}
