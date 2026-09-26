package e0;

import coil.request.m;
import java.nio.ByteBuffer;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class a implements d<byte[], ByteBuffer> {
    @Override // e0.d
    @NotNull
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ByteBuffer a(@NotNull byte[] bArr, @NotNull m mVar) {
        return ByteBuffer.wrap(bArr);
    }
}
