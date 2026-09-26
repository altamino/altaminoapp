package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes9.dex */
public final class MetadataList extends Table {

    public static final class Vector extends BaseVector {
    }

    public MetadataItem k(MetadataItem metadataItem, int i10) {
        int iB = b(6);
        if (iB != 0) {
            return metadataItem.g(a(d(iB) + (i10 * 4)), this.bb);
        }
        return null;
    }

    public int l() {
        int iB = b(6);
        if (iB != 0) {
            return e(iB);
        }
        return 0;
    }

    public int m() {
        int iB = b(4);
        if (iB != 0) {
            return this.bb.getInt(iB + this.bb_pos);
        }
        return 0;
    }

    public static MetadataList i(ByteBuffer byteBuffer) {
        return j(byteBuffer, new MetadataList());
    }

    public static MetadataList j(ByteBuffer byteBuffer, MetadataList metadataList) {
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        return metadataList.g(byteBuffer.getInt(byteBuffer.position()) + byteBuffer.position(), byteBuffer);
    }

    public MetadataList g(int i10, ByteBuffer byteBuffer) {
        h(i10, byteBuffer);
        return this;
    }

    public void h(int i10, ByteBuffer byteBuffer) {
        c(i10, byteBuffer);
    }
}
