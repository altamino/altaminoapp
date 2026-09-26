package kotlin.jvm.internal;

import kotlin.reflect.KClass;
import kotlin.reflect.KDeclarationContainer;

/* JADX INFO: loaded from: classes11.dex */
public class i0 extends h0 {
    public i0(KDeclarationContainer kDeclarationContainer, String str, String str2) {
        super(((h) kDeclarationContainer).a(), str, str2, !(kDeclarationContainer instanceof KClass) ? 1 : 0);
    }

    @Override // kotlin.reflect.KProperty2
    public Object get(Object obj, Object obj2) {
        return getGetter().call(obj, obj2);
    }

    public i0(Class cls, String str, String str2, int i10) {
        super(cls, str, str2, i10);
    }
}
