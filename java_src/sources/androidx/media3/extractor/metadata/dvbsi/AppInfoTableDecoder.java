package androidx.media3.extractor.metadata.dvbsi;

import androidx.annotation.Nullable;
import androidx.media3.common.Metadata;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.extractor.metadata.MetadataInputBuffer;
import androidx.media3.extractor.metadata.SimpleMetadataDecoder;
import com.google.common.base.e;
import java.nio.ByteBuffer;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes9.dex */
@UnstableApi
public final class AppInfoTableDecoder extends SimpleMetadataDecoder {
    public static final int APPLICATION_INFORMATION_TABLE_ID = 116;
    private static final int DESCRIPTOR_SIMPLE_APPLICATION_LOCATION = 21;
    private static final int DESCRIPTOR_TRANSPORT_PROTOCOL = 2;
    private static final int TRANSPORT_PROTOCOL_HTTP = 3;

    @Nullable
    private static Metadata c(ParsableBitArray parsableBitArray) {
        parsableBitArray.r(12);
        int iD = (parsableBitArray.d() + parsableBitArray.h(12)) - 4;
        parsableBitArray.r(44);
        parsableBitArray.s(parsableBitArray.h(12));
        parsableBitArray.r(16);
        ArrayList arrayList = new ArrayList();
        while (true) {
            String strL = null;
            if (parsableBitArray.d() >= iD) {
                break;
            }
            parsableBitArray.r(48);
            int iH = parsableBitArray.h(8);
            parsableBitArray.r(4);
            int iD2 = parsableBitArray.d() + parsableBitArray.h(12);
            String strL2 = null;
            while (parsableBitArray.d() < iD2) {
                int iH2 = parsableBitArray.h(8);
                int iH3 = parsableBitArray.h(8);
                int iD3 = parsableBitArray.d() + iH3;
                if (iH2 == 2) {
                    int iH4 = parsableBitArray.h(16);
                    parsableBitArray.r(8);
                    if (iH4 == 3) {
                        while (parsableBitArray.d() < iD3) {
                            strL = parsableBitArray.l(parsableBitArray.h(8), e.US_ASCII);
                            int iH5 = parsableBitArray.h(8);
                            for (int i10 = 0; i10 < iH5; i10++) {
                                parsableBitArray.s(parsableBitArray.h(8));
                            }
                        }
                    }
                } else if (iH2 == 21) {
                    strL2 = parsableBitArray.l(iH3, e.US_ASCII);
                }
                parsableBitArray.p(iD3 * 8);
            }
            parsableBitArray.p(iD2 * 8);
            if (strL != null && strL2 != null) {
                arrayList.add(new AppInfoTable(iH, strL + strL2));
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    @Override // androidx.media3.extractor.metadata.SimpleMetadataDecoder
    @Nullable
    protected Metadata b(MetadataInputBuffer metadataInputBuffer, ByteBuffer byteBuffer) {
        if (byteBuffer.get() == 116) {
            return c(new ParsableBitArray(byteBuffer.array(), byteBuffer.limit()));
        }
        return null;
    }
}
