package androidx.compose.ui.graphics;

import androidx.compose.ui.geometry.Offset;
import java.util.List;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
public final class Vertices {

    @NotNull
    private final int[] colors;

    @NotNull
    private final short[] indices;

    @NotNull
    private final float[] positions;

    @NotNull
    private final float[] textureCoordinates;
    private final int vertexMode;

    public /* synthetic */ Vertices(int i10, List list, List list2, List list3, List list4, kotlin.jvm.internal.k kVar) {
        this(i10, list, list2, list3, list4);
    }

    private Vertices(int i10, List<Offset> list, List<Offset> list2, List<Color> list3, List<Integer> list4) {
        this.vertexMode = i10;
        Vertices$outOfBounds$1 vertices$outOfBounds$1 = new Vertices$outOfBounds$1(list);
        if (list2.size() != list.size()) {
            throw new IllegalArgumentException("positions and textureCoordinates lengths must match.");
        }
        if (list3.size() != list.size()) {
            throw new IllegalArgumentException("positions and colors lengths must match.");
        }
        int size = list4.size();
        for (int i11 = 0; i11 < size; i11++) {
            if (vertices$outOfBounds$1.invoke(list4.get(i11)).booleanValue()) {
                throw new IllegalArgumentException("indices values must be valid indices in the positions list.");
            }
        }
        this.positions = b(list);
        this.textureCoordinates = b(list2);
        this.colors = a(list3);
        int size2 = list4.size();
        short[] sArr = new short[size2];
        for (int i12 = 0; i12 < size2; i12++) {
            sArr[i12] = (short) list4.get(i12).intValue();
        }
        this.indices = sArr;
    }

    private final int[] a(List<Color> list) {
        int size = list.size();
        int[] iArr = new int[size];
        for (int i10 = 0; i10 < size; i10++) {
            iArr[i10] = ColorKt.l(list.get(i10).v());
        }
        return iArr;
    }

    private final float[] b(List<Offset> list) {
        float fN;
        int size = list.size() * 2;
        float[] fArr = new float[size];
        for (int i10 = 0; i10 < size; i10++) {
            long jU = list.get(i10 / 2).u();
            if (i10 % 2 == 0) {
                fN = Offset.m(jU);
            } else {
                fN = Offset.n(jU);
            }
            fArr[i10] = fN;
        }
        return fArr;
    }
}
