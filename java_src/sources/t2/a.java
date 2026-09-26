package t2;

import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.emsg.EventMessage;
import com.google.android.exoplayer2.util.c0;
import java.nio.ByteBuffer;
import java.util.Arrays;
import r2.d;
import r2.f;

/* JADX INFO: loaded from: classes8.dex */
public final class a extends f {
    @Override // r2.f
    protected Metadata b(d dVar, ByteBuffer byteBuffer) {
        return new Metadata(c(new c0(byteBuffer.array(), byteBuffer.limit())));
    }

    public EventMessage c(c0 c0Var) {
        return new EventMessage((String) com.google.android.exoplayer2.util.a.e(c0Var.x()), (String) com.google.android.exoplayer2.util.a.e(c0Var.x()), c0Var.w(), c0Var.w(), Arrays.copyOfRange(c0Var.d(), c0Var.e(), c0Var.f()));
    }
}
