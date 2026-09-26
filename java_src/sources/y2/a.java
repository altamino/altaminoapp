package y2;

import com.google.android.exoplayer2.text.h;
import com.google.android.exoplayer2.text.i;
import com.google.android.exoplayer2.util.c0;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class a extends h {
    private final b parser;

    public a(List<byte[]> list) {
        super("DvbDecoder");
        c0 c0Var = new c0(list.get(0));
        this.parser = new b(c0Var.J(), c0Var.J());
    }

    @Override // com.google.android.exoplayer2.text.h
    protected i v(byte[] bArr, int i10, boolean z6) {
        if (z6) {
            this.parser.r();
        }
        return new c(this.parser.b(bArr, i10));
    }
}
