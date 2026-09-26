package v0;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.engine.v;
import com.bumptech.glide.util.j;

/* JADX INFO: loaded from: classes9.dex */
public class b implements v<byte[]> {
    private final byte[] bytes;

    @Override // com.bumptech.glide.load.engine.v
    public void a() {
    }

    @Override // com.bumptech.glide.load.engine.v
    @NonNull
    public Class<byte[]> b() {
        return byte[].class;
    }

    @Override // com.bumptech.glide.load.engine.v
    @NonNull
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public byte[] get() {
        return this.bytes;
    }

    @Override // com.bumptech.glide.load.engine.v
    public int getSize() {
        return this.bytes.length;
    }

    public b(byte[] bArr) {
        this.bytes = (byte[]) j.d(bArr);
    }
}
