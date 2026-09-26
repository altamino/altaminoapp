package io.ktor.utils.io.internal;

import java.nio.ByteBuffer;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
public abstract class g {

    @NotNull
    public final ByteBuffer backingBuffer;

    @NotNull
    public final i capacity;

    public static final class b extends g {

        @NotNull
        private final c initial;

        @NotNull
        public final c g() {
            return this.initial;
        }

        @NotNull
        public String toString() {
            return "IDLE(with buffer)";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull c initial) {
            super(initial.backingBuffer, initial.capacity, null);
            t.j(initial, "initial");
            this.initial = initial;
        }

        @Override // io.ktor.utils.io.internal.g
        @NotNull
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public d c() {
            return this.initial.h();
        }

        @Override // io.ktor.utils.io.internal.g
        @NotNull
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public C0416g d() {
            return this.initial.j();
        }
    }

    public static final class c extends g {

        @NotNull
        private final b idleState;

        @NotNull
        private final ByteBuffer readBuffer;

        @NotNull
        private final d readingState;

        @NotNull
        private final e readingWritingState;

        @NotNull
        private final ByteBuffer writeBuffer;

        @NotNull
        private final C0416g writingState;

        public /* synthetic */ c(ByteBuffer byteBuffer, int i10, int i11, kotlin.jvm.internal.k kVar) {
            this(byteBuffer, (i11 & 2) != 0 ? 8 : i10);
        }

        @Override // io.ktor.utils.io.internal.g
        @NotNull
        public ByteBuffer a() {
            return this.readBuffer;
        }

        @Override // io.ktor.utils.io.internal.g
        @NotNull
        public ByteBuffer b() {
            return this.writeBuffer;
        }

        @NotNull
        public final b g() {
            return this.idleState;
        }

        @NotNull
        public final d h() {
            return this.readingState;
        }

        @NotNull
        public final e i() {
            return this.readingWritingState;
        }

        @NotNull
        public final C0416g j() {
            return this.writingState;
        }

        @Override // io.ktor.utils.io.internal.g
        @NotNull
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public d c() {
            return this.readingState;
        }

        @Override // io.ktor.utils.io.internal.g
        @NotNull
        /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
        public C0416g d() {
            return this.writingState;
        }

        @NotNull
        public String toString() {
            return "Initial";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(@NotNull ByteBuffer backingBuffer, int i10) {
            super(backingBuffer, new i(backingBuffer.capacity() - i10), null);
            t.j(backingBuffer, "backingBuffer");
            if (backingBuffer.position() != 0) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            if (backingBuffer.limit() != backingBuffer.capacity()) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            ByteBuffer byteBufferDuplicate = backingBuffer.duplicate();
            t.i(byteBufferDuplicate, "backingBuffer.duplicate()");
            this.writeBuffer = byteBufferDuplicate;
            ByteBuffer byteBufferDuplicate2 = backingBuffer.duplicate();
            t.i(byteBufferDuplicate2, "backingBuffer.duplicate()");
            this.readBuffer = byteBufferDuplicate2;
            this.idleState = new b(this);
            this.readingState = new d(this);
            this.writingState = new C0416g(this);
            this.readingWritingState = new e(this);
        }
    }

    public static final class d extends g {

        @NotNull
        private final c initial;

        @NotNull
        public String toString() {
            return "Reading";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(@NotNull c initial) {
            super(initial.backingBuffer, initial.capacity, null);
            t.j(initial, "initial");
            this.initial = initial;
        }

        @Override // io.ktor.utils.io.internal.g
        @NotNull
        public ByteBuffer a() {
            return this.initial.a();
        }

        @Override // io.ktor.utils.io.internal.g
        @NotNull
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public e d() {
            return this.initial.i();
        }

        @Override // io.ktor.utils.io.internal.g
        @NotNull
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public b e() {
            return this.initial.g();
        }
    }

    public static final class e extends g {

        @NotNull
        private final c initial;

        @NotNull
        public String toString() {
            return "Reading+Writing";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(@NotNull c initial) {
            super(initial.backingBuffer, initial.capacity, null);
            t.j(initial, "initial");
            this.initial = initial;
        }

        @Override // io.ktor.utils.io.internal.g
        @NotNull
        public ByteBuffer a() {
            return this.initial.a();
        }

        @Override // io.ktor.utils.io.internal.g
        @NotNull
        public ByteBuffer b() {
            return this.initial.b();
        }

        @Override // io.ktor.utils.io.internal.g
        @NotNull
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public C0416g e() {
            return this.initial.j();
        }

        @Override // io.ktor.utils.io.internal.g
        @NotNull
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public d f() {
            return this.initial.h();
        }
    }

    /* JADX INFO: renamed from: io.ktor.utils.io.internal.g$g, reason: collision with other inner class name */
    public static final class C0416g extends g {

        @NotNull
        private final c initial;

        @NotNull
        public String toString() {
            return "Writing";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0416g(@NotNull c initial) {
            super(initial.backingBuffer, initial.capacity, null);
            t.j(initial, "initial");
            this.initial = initial;
        }

        @Override // io.ktor.utils.io.internal.g
        @NotNull
        public ByteBuffer b() {
            return this.initial.b();
        }

        @Override // io.ktor.utils.io.internal.g
        @NotNull
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public e c() {
            return this.initial.i();
        }

        @Override // io.ktor.utils.io.internal.g
        @NotNull
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public b f() {
            return this.initial.g();
        }
    }

    public /* synthetic */ g(ByteBuffer byteBuffer, i iVar, kotlin.jvm.internal.k kVar) {
        this(byteBuffer, iVar);
    }

    public static final class a extends g {

        @NotNull
        public static final a INSTANCE = new a();

        @NotNull
        public String toString() {
            return "IDLE(empty)";
        }

        private a() {
            super(h.a(), h.b(), null);
        }
    }

    public static final class f extends g {

        @NotNull
        public static final f INSTANCE = new f();

        @NotNull
        public String toString() {
            return "Terminated";
        }

        private f() {
            super(h.a(), h.b(), null);
        }
    }

    private g(ByteBuffer byteBuffer, i iVar) {
        this.backingBuffer = byteBuffer;
        this.capacity = iVar;
    }

    @NotNull
    public ByteBuffer a() {
        throw new IllegalStateException(("read buffer is not available in state " + this).toString());
    }

    @NotNull
    public ByteBuffer b() {
        throw new IllegalStateException(("write buffer is not available in state " + this).toString());
    }

    @NotNull
    public g c() {
        throw new IllegalStateException(("ByteChannel[state: " + this + "] Concurrent reading is not supported").toString());
    }

    @NotNull
    public g d() {
        throw new IllegalStateException(("ByteChannel[state: " + this + "] Concurrent writing is not supported").toString());
    }

    @NotNull
    public g e() {
        throw new IllegalStateException(("Unable to stop reading in state " + this).toString());
    }

    @NotNull
    public g f() {
        throw new IllegalStateException(("Unable to stop writing in state " + this).toString());
    }
}
