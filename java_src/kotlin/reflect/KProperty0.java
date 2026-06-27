package kotlin.reflect;

import kotlin.jvm.functions.Function0;
import kotlin.reflect.KProperty;

/* compiled from: KProperty.kt */
/* loaded from: classes4.dex */
public interface KProperty0<R> extends KProperty<R>, Function0<R> {

    /* compiled from: KProperty.kt */
    public interface Getter<R> extends KProperty.Getter<R>, Function0<R> {
    }

    R get();

    Object getDelegate();

    /* renamed from: getGetter */
    Getter<R> mo61getGetter();
}
