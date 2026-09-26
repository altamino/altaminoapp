package v0;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.data.e;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes7.dex */
public class a implements e<ByteBuffer> {
    private final ByteBuffer buffer;

    /* JADX INFO: renamed from: v0.a$a, reason: collision with other inner class name */
    public static class C0501a implements e.a<ByteBuffer> {
        @Override // com.bumptech.glide.load.data.e.a
        @NonNull
        public Class<ByteBuffer> a() {
            return ByteBuffer.class;
        }

        @Override // com.bumptech.glide.load.data.e.a
        @NonNull
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public e<ByteBuffer> b(ByteBuffer byteBuffer) {
            return new a(byteBuffer);
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public void b() {
    }

    @Override // com.bumptech.glide.load.data.e
    @NonNull
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public ByteBuffer a() {
        this.buffer.position(0);
        return this.buffer;
    }

    public a(ByteBuffer byteBuffer) {
        this.buffer = byteBuffer;
    }
}
