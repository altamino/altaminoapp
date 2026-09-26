package r7;

import java.io.EOFException;
import java.nio.ByteBuffer;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public class a {

    @NotNull
    public static final C0495a Companion = new C0495a(null);
    public static final int ReservedSize = 8;
    private final int capacity;
    private int limit;

    @NotNull
    private final ByteBuffer memory;
    private int readPosition;
    private int startGap;
    private int writePosition;

    /* JADX INFO: renamed from: r7.a$a, reason: collision with other inner class name */
    public static final class C0495a {
        public /* synthetic */ C0495a(kotlin.jvm.internal.k kVar) {
            this();
        }

        private C0495a() {
        }

        @NotNull
        public final a a() {
            return s7.a.Companion.a();
        }
    }

    public /* synthetic */ a(ByteBuffer byteBuffer, kotlin.jvm.internal.k kVar) {
        this(byteBuffer);
    }

    public final int e() {
        return this.capacity;
    }

    public final int f() {
        return this.limit;
    }

    @NotNull
    public final ByteBuffer g() {
        return this.memory;
    }

    public final int h() {
        return this.readPosition;
    }

    public final int i() {
        return this.startGap;
    }

    public final int j() {
        return this.writePosition;
    }

    public final void l() {
        this.limit = this.capacity;
    }

    public final void m() {
        n(0);
        l();
    }

    public final void s(int i10) {
        int i11 = this.startGap;
        this.readPosition = i11;
        this.writePosition = i11;
        this.limit = i10;
    }

    private a(ByteBuffer memory) {
        t.j(memory, "memory");
        this.memory = memory;
        this.limit = memory.limit();
        this.capacity = memory.limit();
    }

    public final void a(int i10) {
        int i11 = this.writePosition + i10;
        if (i10 < 0 || i11 > this.limit) {
            d.a(i10, f() - j());
            throw new w7.i();
        }
        this.writePosition = i11;
    }

    public final boolean b(int i10) {
        int i11 = this.limit;
        int i12 = this.writePosition;
        if (i10 < i12) {
            d.a(i10 - i12, f() - j());
            throw new w7.i();
        }
        if (i10 < i11) {
            this.writePosition = i10;
            return true;
        }
        if (i10 == i11) {
            this.writePosition = i10;
            return false;
        }
        d.a(i10 - i12, f() - j());
        throw new w7.i();
    }

    public final void c(int i10) {
        if (i10 == 0) {
            return;
        }
        int i11 = this.readPosition + i10;
        if (i10 < 0 || i11 > this.writePosition) {
            d.b(i10, j() - h());
            throw new w7.i();
        }
        this.readPosition = i11;
    }

    public final void d(int i10) {
        if (i10 < 0 || i10 > this.writePosition) {
            d.b(i10 - this.readPosition, j() - h());
            throw new w7.i();
        }
        if (this.readPosition != i10) {
            this.readPosition = i10;
        }
    }

    public final byte k() throws EOFException {
        int i10 = this.readPosition;
        if (i10 == this.writePosition) {
            throw new EOFException("No readable bytes available.");
        }
        this.readPosition = i10 + 1;
        return this.memory.get(i10);
    }

    public final void n(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException(("newReadPosition shouldn't be negative: " + i10).toString());
        }
        if (i10 <= this.readPosition) {
            this.readPosition = i10;
            if (this.startGap > i10) {
                this.startGap = i10;
                return;
            }
            return;
        }
        throw new IllegalArgumentException(("newReadPosition shouldn't be ahead of the read position: " + i10 + " > " + this.readPosition).toString());
    }

    public final void o(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException(("endGap shouldn't be negative: " + i10).toString());
        }
        int i11 = this.capacity - i10;
        if (i11 >= this.writePosition) {
            this.limit = i11;
            return;
        }
        if (i11 < 0) {
            d.c(this, i10);
        }
        if (i11 < this.startGap) {
            d.e(this, i10);
        }
        if (this.readPosition != this.writePosition) {
            d.d(this, i10);
            return;
        }
        this.limit = i11;
        this.readPosition = i11;
        this.writePosition = i11;
    }

    public final void p(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException(("startGap shouldn't be negative: " + i10).toString());
        }
        int i11 = this.readPosition;
        if (i11 >= i10) {
            this.startGap = i10;
            return;
        }
        if (i11 != this.writePosition) {
            d.g(this, i10);
            throw new w7.i();
        }
        if (i10 > this.limit) {
            d.h(this, i10);
            throw new w7.i();
        }
        this.writePosition = i10;
        this.readPosition = i10;
        this.startGap = i10;
    }

    public final void r() {
        s(this.capacity - this.startGap);
    }

    @NotNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Buffer[0x");
        String string = Integer.toString(hashCode(), kotlin.text.b.a(16));
        t.i(string, "toString(this, checkRadix(radix))");
        sb.append(string);
        sb.append("](");
        sb.append(j() - h());
        sb.append(" used, ");
        sb.append(f() - j());
        sb.append(" free, ");
        sb.append(this.startGap + (e() - f()));
        sb.append(" reserved of ");
        sb.append(this.capacity);
        sb.append(')');
        return sb.toString();
    }

    public void q() {
        m();
        r();
    }
}
