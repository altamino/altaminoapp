package kotlinx.serialization.internal;

import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class c {
    @NotNull
    public static final Void a(@Nullable String str, @NotNull KClass<?> baseClass) {
        String str2;
        kotlin.jvm.internal.t.j(baseClass, "baseClass");
        String str3 = "in the scope of '" + baseClass.getSimpleName() + '\'';
        if (str == null) {
            str2 = "Class discriminator was missing and no default polymorphic serializers were registered " + str3;
        } else {
            str2 = "Class '" + str + "' is not registered for polymorphic serialization " + str3 + ".\nMark the base class as 'sealed' or register the serializer explicitly.";
        }
        throw new kotlinx.serialization.j(str2);
    }

    @NotNull
    public static final Void b(@NotNull KClass<?> subClass, @NotNull KClass<?> baseClass) {
        kotlin.jvm.internal.t.j(subClass, "subClass");
        kotlin.jvm.internal.t.j(baseClass, "baseClass");
        String simpleName = subClass.getSimpleName();
        if (simpleName == null) {
            simpleName = String.valueOf(subClass);
        }
        a(simpleName, baseClass);
        throw new w7.i();
    }
}
