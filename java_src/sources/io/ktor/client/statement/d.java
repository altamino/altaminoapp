package io.ktor.client.statement;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class d {

    @NotNull
    private final o7.a expectedType;

    @NotNull
    private final Object response;

    @NotNull
    public final o7.a a() {
        return this.expectedType;
    }

    @NotNull
    public final Object b() {
        return this.response;
    }

    @NotNull
    public final Object c() {
        return this.response;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return t.e(this.expectedType, dVar.expectedType) && t.e(this.response, dVar.response);
    }

    public int hashCode() {
        return (this.expectedType.hashCode() * 31) + this.response.hashCode();
    }

    @NotNull
    public String toString() {
        return "HttpResponseContainer(expectedType=" + this.expectedType + ", response=" + this.response + ')';
    }

    public d(@NotNull o7.a expectedType, @NotNull Object response) {
        t.j(expectedType, "expectedType");
        t.j(response, "response");
        this.expectedType = expectedType;
        this.response = response;
    }
}
