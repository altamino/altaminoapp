package kotlin.jvm.internal;

import java.util.Collection;
import kotlin.reflect.KCallable;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public final class c0 implements h {

    @NotNull
    private final Class<?> jClass;

    @NotNull
    private final String moduleName;

    @Override // kotlin.jvm.internal.h
    @NotNull
    public Class<?> a() {
        return this.jClass;
    }

    public c0(@NotNull Class<?> jClass, @NotNull String moduleName) {
        t.j(jClass, "jClass");
        t.j(moduleName, "moduleName");
        this.jClass = jClass;
        this.moduleName = moduleName;
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof c0) && t.e(a(), ((c0) obj).a());
    }

    @Override // kotlin.reflect.KDeclarationContainer
    @NotNull
    public Collection<KCallable<?>> getMembers() {
        throw new d8.b();
    }

    @NotNull
    public String toString() {
        return a().toString() + " (Kotlin reflection is not available)";
    }

    public int hashCode() {
        return a().hashCode();
    }
}
