package androidx.media3.extractor.avi;

import androidx.annotation.Nullable;
import androidx.media3.common.util.ParsableByteArray;
import com.google.common.collect.a0;
import com.google.common.collect.l1;

/* JADX INFO: loaded from: classes7.dex */
final class ListChunk implements AviChunk {
    public final a0<AviChunk> children;
    private final int type;

    @Override // androidx.media3.extractor.avi.AviChunk
    public int getType() {
        return this.type;
    }

    public static ListChunk c(int i10, ParsableByteArray parsableByteArray) {
        a0.a aVar = new a0.a();
        int iG = parsableByteArray.g();
        int iB = -2;
        while (parsableByteArray.a() > 8) {
            int iU = parsableByteArray.u();
            int iF = parsableByteArray.f() + parsableByteArray.u();
            parsableByteArray.T(iF);
            AviChunk aviChunkC = iU == 1414744396 ? c(parsableByteArray.u(), parsableByteArray) : a(iU, iB, parsableByteArray);
            if (aviChunkC != null) {
                if (aviChunkC.getType() == 1752331379) {
                    iB = ((AviStreamHeaderChunk) aviChunkC).b();
                }
                aVar.d(aviChunkC);
            }
            parsableByteArray.U(iF);
            parsableByteArray.T(iG);
        }
        return new ListChunk(i10, aVar.k());
    }

    @Nullable
    public <T extends AviChunk> T b(Class<T> cls) {
        l1<AviChunk> it = this.children.iterator();
        while (it.hasNext()) {
            T t5 = (T) it.next();
            if (t5.getClass() == cls) {
                return t5;
            }
        }
        return null;
    }

    private ListChunk(int i10, a0<AviChunk> a0Var) {
        this.type = i10;
        this.children = a0Var;
    }

    @Nullable
    private static AviChunk a(int i10, int i11, ParsableByteArray parsableByteArray) {
        switch (i10) {
            case 1718776947:
                return StreamFormatChunk.d(i11, parsableByteArray);
            case 1751742049:
                return AviMainHeaderChunk.b(parsableByteArray);
            case 1752331379:
                return AviStreamHeaderChunk.c(parsableByteArray);
            case 1852994675:
                return StreamNameChunk.a(parsableByteArray);
            default:
                return null;
        }
    }
}
