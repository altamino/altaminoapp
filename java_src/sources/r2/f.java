package r2;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.metadata.Metadata;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes7.dex */
public abstract class f implements b {
    @Nullable
    protected abstract Metadata b(d dVar, ByteBuffer byteBuffer);

    @Override // r2.b
    @Nullable
    public final Metadata a(d dVar) {
        ByteBuffer byteBuffer = (ByteBuffer) com.google.android.exoplayer2.util.a.e(dVar.data);
        com.google.android.exoplayer2.util.a.a(byteBuffer.position() == 0 && byteBuffer.hasArray() && byteBuffer.arrayOffset() == 0);
        if (dVar.f()) {
            return null;
        }
        return b(dVar, byteBuffer);
    }
}
