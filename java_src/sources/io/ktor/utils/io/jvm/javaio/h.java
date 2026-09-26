package io.ktor.utils.io.jvm.javaio;

import e8.p;
import io.ktor.utils.io.q;
import io.ktor.utils.io.w;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import kotlin.coroutines.jvm.internal.l;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.e1;
import kotlinx.coroutines.t1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
public final class h {

    @kotlin.coroutines.jvm.internal.f(c = "io.ktor.utils.io.jvm.javaio.ReadingKt$toByteReadChannel$1", f = "Reading.kt", l = {61}, m = "invokeSuspend")
    static final class a extends l implements p<w, kotlin.coroutines.d<? super l0>, Object> {
        final /* synthetic */ t7.g<ByteBuffer> $pool;
        final /* synthetic */ InputStream $this_toByteReadChannel;
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(t7.g<ByteBuffer> gVar, InputStream inputStream, kotlin.coroutines.d<? super a> dVar) {
            super(2, dVar);
            this.$pool = gVar;
            this.$this_toByteReadChannel = inputStream;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
            a aVar = new a(this.$pool, this.$this_toByteReadChannel, dVar);
            aVar.L$0 = obj;
            return aVar;
        }

        @Override // e8.p
        @Nullable
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Object invoke(@NotNull w wVar, @Nullable kotlin.coroutines.d<? super l0> dVar) {
            return ((a) create(wVar, dVar)).invokeSuspend(l0.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) throws IOException {
            ByteBuffer byteBufferS0;
            w wVar;
            Throwable th;
            a aVar;
            InputStream inputStream;
            Object objE = kotlin.coroutines.intrinsics.d.e();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    byteBufferS0 = (ByteBuffer) this.L$1;
                    wVar = (w) this.L$0;
                    try {
                        w7.w.b(obj);
                    } catch (Throwable th2) {
                        th = th2;
                        aVar = this;
                        try {
                            wVar.mo1642d().c(th);
                            aVar.$pool.S(byteBufferS0);
                            inputStream = aVar.$this_toByteReadChannel;
                            inputStream.close();
                            return l0.INSTANCE;
                        } catch (Throwable th3) {
                            aVar.$pool.S(byteBufferS0);
                            aVar.$this_toByteReadChannel.close();
                            throw th3;
                        }
                    }
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                w7.w.b(obj);
                w wVar2 = (w) this.L$0;
                byteBufferS0 = this.$pool.s0();
                wVar = wVar2;
            }
            while (true) {
                try {
                    byteBufferS0.clear();
                    int i11 = this.$this_toByteReadChannel.read(byteBufferS0.array(), byteBufferS0.arrayOffset() + byteBufferS0.position(), byteBufferS0.remaining());
                    if (i11 >= 0) {
                        if (i11 != 0) {
                            byteBufferS0.position(byteBufferS0.position() + i11);
                            byteBufferS0.flip();
                            io.ktor.utils.io.j jVarMo1642d = wVar.mo1642d();
                            this.L$0 = wVar;
                            this.L$1 = byteBufferS0;
                            this.label = 1;
                            if (jVarMo1642d.d(byteBufferS0, this) == objE) {
                                return objE;
                            }
                        }
                    } else {
                        this.$pool.S(byteBufferS0);
                        inputStream = this.$this_toByteReadChannel;
                    }
                } catch (Throwable th4) {
                    aVar = this;
                    th = th4;
                    wVar.mo1642d().c(th);
                    aVar.$pool.S(byteBufferS0);
                    inputStream = aVar.$this_toByteReadChannel;
                }
                inputStream.close();
                return l0.INSTANCE;
            }
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "io.ktor.utils.io.jvm.javaio.ReadingKt$toByteReadChannel$2", f = "Reading.kt", l = {90}, m = "invokeSuspend")
    static final class b extends l implements p<w, kotlin.coroutines.d<? super l0>, Object> {
        final /* synthetic */ t7.g<byte[]> $pool;
        final /* synthetic */ InputStream $this_toByteReadChannel;
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(t7.g<byte[]> gVar, InputStream inputStream, kotlin.coroutines.d<? super b> dVar) {
            super(2, dVar);
            this.$pool = gVar;
            this.$this_toByteReadChannel = inputStream;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
            b bVar = new b(this.$pool, this.$this_toByteReadChannel, dVar);
            bVar.L$0 = obj;
            return bVar;
        }

        @Override // e8.p
        @Nullable
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Object invoke(@NotNull w wVar, @Nullable kotlin.coroutines.d<? super l0> dVar) {
            return ((b) create(wVar, dVar)).invokeSuspend(l0.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) throws IOException {
            byte[] bArrS0;
            w wVar;
            Throwable th;
            b bVar;
            InputStream inputStream;
            Object objE = kotlin.coroutines.intrinsics.d.e();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    bArrS0 = (byte[]) this.L$1;
                    wVar = (w) this.L$0;
                    try {
                        w7.w.b(obj);
                    } catch (Throwable th2) {
                        th = th2;
                        bVar = this;
                        try {
                            wVar.mo1642d().c(th);
                            bVar.$pool.S(bArrS0);
                            inputStream = bVar.$this_toByteReadChannel;
                            inputStream.close();
                            return l0.INSTANCE;
                        } catch (Throwable th3) {
                            bVar.$pool.S(bArrS0);
                            bVar.$this_toByteReadChannel.close();
                            throw th3;
                        }
                    }
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                w7.w.b(obj);
                w wVar2 = (w) this.L$0;
                bArrS0 = this.$pool.s0();
                wVar = wVar2;
            }
            while (true) {
                try {
                    int i11 = this.$this_toByteReadChannel.read(bArrS0, 0, bArrS0.length);
                    if (i11 >= 0) {
                        if (i11 != 0) {
                            io.ktor.utils.io.j jVarMo1642d = wVar.mo1642d();
                            this.L$0 = wVar;
                            this.L$1 = bArrS0;
                            this.label = 1;
                            if (jVarMo1642d.m(bArrS0, 0, i11, this) == objE) {
                                return objE;
                            }
                        }
                    } else {
                        this.$pool.S(bArrS0);
                        inputStream = this.$this_toByteReadChannel;
                    }
                } catch (Throwable th4) {
                    bVar = this;
                    th = th4;
                    wVar.mo1642d().c(th);
                    bVar.$pool.S(bArrS0);
                    inputStream = bVar.$this_toByteReadChannel;
                }
                inputStream.close();
                return l0.INSTANCE;
            }
        }
    }

    @NotNull
    public static final io.ktor.utils.io.g a(@NotNull InputStream inputStream, @NotNull kotlin.coroutines.g context, @NotNull t7.g<ByteBuffer> pool) {
        t.j(inputStream, "<this>");
        t.j(context, "context");
        t.j(pool, "pool");
        return q.d(t1.INSTANCE, context, true, new a(pool, inputStream, null)).mo1641d();
    }

    @NotNull
    public static final io.ktor.utils.io.g b(@NotNull InputStream inputStream, @NotNull kotlin.coroutines.g context, @NotNull t7.g<byte[]> pool) {
        t.j(inputStream, "<this>");
        t.j(context, "context");
        t.j(pool, "pool");
        return q.d(t1.INSTANCE, context, true, new b(pool, inputStream, null)).mo1641d();
    }

    public static /* synthetic */ io.ktor.utils.io.g c(InputStream inputStream, kotlin.coroutines.g gVar, t7.g gVar2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            gVar = e1.b();
        }
        if ((i10 & 2) != 0) {
            gVar2 = t7.a.a();
        }
        return b(inputStream, gVar, gVar2);
    }
}
