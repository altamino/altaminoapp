package kotlinx.serialization.json.internal;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public class k {

    @NotNull
    public final p0 writer;
    private boolean writingFirst;

    public final boolean a() {
        return this.writingFirst;
    }

    public void b() {
        this.writingFirst = true;
    }

    public void c() {
        this.writingFirst = false;
    }

    protected final void n(boolean z6) {
        this.writingFirst = z6;
    }

    public void o() {
    }

    public void p() {
    }

    public k(@NotNull p0 writer) {
        kotlin.jvm.internal.t.j(writer, "writer");
        this.writer = writer;
        this.writingFirst = true;
    }

    public void d(byte b7) {
        this.writer.writeLong(b7);
    }

    public final void e(char c7) {
        this.writer.a(c7);
    }

    public void f(double d) {
        this.writer.c(String.valueOf(d));
    }

    public void g(float f) {
        this.writer.c(String.valueOf(f));
    }

    public void h(int i10) {
        this.writer.writeLong(i10);
    }

    public void i(long j6) {
        this.writer.writeLong(j6);
    }

    public final void j(@NotNull String v5) {
        kotlin.jvm.internal.t.j(v5, "v");
        this.writer.c(v5);
    }

    public void k(short s) {
        this.writer.writeLong(s);
    }

    public void l(boolean z6) {
        this.writer.c(String.valueOf(z6));
    }

    public final void m(@NotNull String value) {
        kotlin.jvm.internal.t.j(value, "value");
        this.writer.b(value);
    }
}
