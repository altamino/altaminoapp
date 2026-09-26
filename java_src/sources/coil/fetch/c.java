package coil.fetch;

import coil.decode.q;
import java.nio.ByteBuffer;
import okio.Buffer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class c implements i {

    @NotNull
    private final ByteBuffer data;

    @NotNull
    private final coil.request.m options;

    public static final class a implements i.a<ByteBuffer> {
        @Override // coil.fetch.i.a
        @NotNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public i a(@NotNull ByteBuffer byteBuffer, @NotNull coil.request.m mVar, @NotNull coil.e eVar) {
            return new c(byteBuffer, mVar);
        }
    }

    @Override // coil.fetch.i
    @Nullable
    public Object a(@NotNull kotlin.coroutines.d<? super h> dVar) {
        try {
            Buffer buffer = new Buffer();
            buffer.write(this.data);
            return new m(q.a(buffer, this.options.g()), null, coil.decode.f.MEMORY);
        } finally {
            this.data.position(0);
        }
    }

    public c(@NotNull ByteBuffer byteBuffer, @NotNull coil.request.m mVar) {
        this.data = byteBuffer;
        this.options = mVar;
    }
}
