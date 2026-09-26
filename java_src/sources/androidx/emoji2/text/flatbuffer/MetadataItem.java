package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes10.dex */
public final class MetadataItem extends Table {

    public static final class Vector extends BaseVector {
    }

    public boolean k() {
        int iB = b(6);
        return (iB == 0 || this.bb.get(iB + this.bb_pos) == 0) ? false : true;
    }

    public int m() {
        int iB = b(4);
        if (iB != 0) {
            return this.bb.getInt(iB + this.bb_pos);
        }
        return 0;
    }

    public int i(int i10) {
        int iB = b(16);
        if (iB != 0) {
            return this.bb.getInt(d(iB) + (i10 * 4));
        }
        return 0;
    }

    public int j() {
        int iB = b(16);
        if (iB != 0) {
            return e(iB);
        }
        return 0;
    }

    public short l() {
        int iB = b(14);
        if (iB != 0) {
            return this.bb.getShort(iB + this.bb_pos);
        }
        return (short) 0;
    }

    public short n() {
        int iB = b(8);
        if (iB != 0) {
            return this.bb.getShort(iB + this.bb_pos);
        }
        return (short) 0;
    }

    public short o() {
        int iB = b(12);
        if (iB != 0) {
            return this.bb.getShort(iB + this.bb_pos);
        }
        return (short) 0;
    }

    public MetadataItem g(int i10, ByteBuffer byteBuffer) {
        h(i10, byteBuffer);
        return this;
    }

    public void h(int i10, ByteBuffer byteBuffer) {
        c(i10, byteBuffer);
    }
}
