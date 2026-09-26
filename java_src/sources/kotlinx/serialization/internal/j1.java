package kotlinx.serialization.internal;

import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class j1 extends kotlinx.serialization.encoding.b {

    @NotNull
    public static final j1 INSTANCE = new j1();

    @NotNull
    private static final kotlinx.serialization.modules.c serializersModule = kotlinx.serialization.modules.d.a();

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    public void A(long j6) {
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    public void B() {
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    public void D(char c7) {
    }

    @Override // kotlinx.serialization.encoding.b
    public void J(@NotNull Object value) {
        kotlin.jvm.internal.t.j(value, "value");
    }

    @Override // kotlinx.serialization.encoding.Encoder
    @NotNull
    public kotlinx.serialization.modules.c a() {
        return serializersModule;
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    public void f(byte b7) {
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    public void g(@NotNull SerialDescriptor enumDescriptor, int i10) {
        kotlin.jvm.internal.t.j(enumDescriptor, "enumDescriptor");
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    public void k(short s) {
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    public void l(boolean z6) {
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    public void m(float f) {
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    public void s(int i10) {
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    public void v(@NotNull String value) {
        kotlin.jvm.internal.t.j(value, "value");
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    public void x(double d) {
    }

    private j1() {
    }
}
