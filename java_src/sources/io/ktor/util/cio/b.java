package io.ktor.util.cio;

import e8.p;
import io.ktor.utils.io.g;
import io.ktor.utils.io.j;
import io.ktor.utils.io.q;
import io.ktor.utils.io.u;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.lang.reflect.InvocationTargetException;
import java.nio.channels.FileChannel;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.e1;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.t1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import r7.k;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes4.dex */
public final class b {

    @f(c = "io.ktor.util.cio.FileChannelsKt$writeChannel$1", f = "FileChannels.kt", l = {96}, m = "invokeSuspend")
    static final class a extends l implements p<u, d<? super l0>, Object> {
        final /* synthetic */ File $this_writeChannel;
        int I$0;
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(File file, d<? super a> dVar) {
            super(2, dVar);
            this.$this_writeChannel = file;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
            a aVar = new a(this.$this_writeChannel, dVar);
            aVar.L$0 = obj;
            return aVar;
        }

        @Override // e8.p
        @Nullable
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Object invoke(@NotNull u uVar, @Nullable d<? super l0> dVar) {
            return ((a) create(uVar, dVar)).invokeSuspend(l0.INSTANCE);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v0, types: [int] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.io.Closeable] */
        /* JADX WARN: Type inference failed for: r1v3, types: [java.io.Closeable] */
        /* JADX WARN: Type inference failed for: r1v6 */
        /* JADX WARN: Type inference failed for: r1v7 */
        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) throws IllegalAccessException, IOException, InvocationTargetException {
            RandomAccessFile randomAccessFile;
            Object objE = kotlin.coroutines.intrinsics.d.e();
            ?? r1 = this.label;
            try {
                if (r1 != 0) {
                    if (r1 == 1) {
                        RandomAccessFile randomAccessFile2 = (RandomAccessFile) this.L$1;
                        Closeable closeable = (Closeable) this.L$0;
                        w.b(obj);
                        randomAccessFile = randomAccessFile2;
                        r1 = closeable;
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    w.b(obj);
                    u uVar = (u) this.L$0;
                    RandomAccessFile randomAccessFile3 = new RandomAccessFile(this.$this_writeChannel, "rw");
                    g gVarMo1642d = uVar.mo1642d();
                    FileChannel channel = randomAccessFile3.getChannel();
                    t.i(channel, "file.channel");
                    this.L$0 = randomAccessFile3;
                    this.L$1 = randomAccessFile3;
                    this.I$0 = 0;
                    this.label = 1;
                    obj = io.ktor.utils.io.jvm.nio.a.b(gVarMo1642d, channel, 0L, this, 2, null);
                    if (obj == objE) {
                        return objE;
                    }
                    randomAccessFile = randomAccessFile3;
                    r1 = randomAccessFile3;
                }
                randomAccessFile.setLength(((Number) obj).longValue());
                l0 l0Var = l0.INSTANCE;
                r1.close();
                return l0.INSTANCE;
            } catch (Throwable th) {
                try {
                    r1.close();
                } catch (Throwable th2) {
                    k.a(th, th2);
                }
                throw th;
            }
        }
    }

    @NotNull
    public static final j a(@NotNull File file, @NotNull kotlin.coroutines.g coroutineContext) {
        t.j(file, "<this>");
        t.j(coroutineContext, "coroutineContext");
        return q.b(t1.INSTANCE, new n0("file-writer").plus(coroutineContext), true, new a(file, null)).mo1641d();
    }

    public static /* synthetic */ j b(File file, kotlin.coroutines.g gVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            gVar = e1.b();
        }
        return a(file, gVar);
    }
}
