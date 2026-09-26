package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;
import java.util.Comparator;

/* JADX INFO: loaded from: classes9.dex */
public class Table {
    protected ByteBuffer bb;
    protected int bb_pos;
    Utf8 utf8 = Utf8.a();
    private int vtable_size;
    private int vtable_start;

    /* JADX INFO: renamed from: androidx.emoji2.text.flatbuffer.Table$1, reason: invalid class name */
    /* JADX INFO: loaded from: classes10.dex */
    class AnonymousClass1 implements Comparator<Integer> {
        final /* synthetic */ Table this$0;
        final /* synthetic */ ByteBuffer val$bb;

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(Integer num, Integer num2) {
            return this.this$0.f(num, num2, this.val$bb);
        }
    }

    protected int f(Integer num, Integer num2, ByteBuffer byteBuffer) {
        return 0;
    }

    protected int a(int i10) {
        return i10 + this.bb.getInt(i10);
    }

    protected int b(int i10) {
        if (i10 < this.vtable_size) {
            return this.bb.getShort(this.vtable_start + i10);
        }
        return 0;
    }

    protected void c(int i10, ByteBuffer byteBuffer) {
        this.bb = byteBuffer;
        if (byteBuffer == null) {
            this.bb_pos = 0;
            this.vtable_start = 0;
            this.vtable_size = 0;
        } else {
            this.bb_pos = i10;
            int i11 = i10 - byteBuffer.getInt(i10);
            this.vtable_start = i11;
            this.vtable_size = this.bb.getShort(i11);
        }
    }

    protected int d(int i10) {
        int i11 = i10 + this.bb_pos;
        return i11 + this.bb.getInt(i11) + 4;
    }

    protected int e(int i10) {
        int i11 = i10 + this.bb_pos;
        return this.bb.getInt(i11 + this.bb.getInt(i11));
    }
}
