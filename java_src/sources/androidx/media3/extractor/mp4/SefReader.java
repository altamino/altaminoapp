package androidx.media3.extractor.mp4;

import androidx.media3.common.Metadata;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.metadata.mp4.SlowMotionData;
import com.google.common.base.s;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
final class SefReader {
    private static final int LENGTH_OF_ONE_SDR = 12;
    private static final int SAMSUNG_TAIL_SIGNATURE = 1397048916;
    private static final int STATE_CHECKING_FOR_SEF = 1;
    private static final int STATE_READING_SDRS = 2;
    private static final int STATE_READING_SEF_DATA = 3;
    private static final int STATE_SHOULD_CHECK_FOR_SEF = 0;
    private static final String TAG = "SefReader";
    private static final int TAIL_FOOTER_LENGTH = 8;
    private static final int TAIL_HEADER_LENGTH = 12;
    private static final int TYPE_SLOW_MOTION_DATA = 2192;
    private static final int TYPE_SUPER_SLOW_DEFLICKERING_ON = 2820;
    private static final int TYPE_SUPER_SLOW_MOTION_BGM = 2817;
    private static final int TYPE_SUPER_SLOW_MOTION_DATA = 2816;
    private static final int TYPE_SUPER_SLOW_MOTION_EDIT_DATA = 2819;
    private final List<DataReference> dataReferences = new ArrayList();
    private int readerState = 0;
    private int tailLength;
    private static final s COLON_SPLITTER = s.d(kotlinx.serialization.json.internal.b.COLON);
    private static final s ASTERISK_SPLITTER = s.d('*');

    private static final class DataReference {
        public final int dataType;
        public final int size;
        public final long startOffset;

        public DataReference(int i10, long j6, int i11) {
            this.dataType = i10;
            this.startOffset = j6;
            this.size = i11;
        }
    }

    private void a(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        ParsableByteArray parsableByteArray = new ParsableByteArray(8);
        extractorInput.readFully(parsableByteArray.e(), 0, 8);
        this.tailLength = parsableByteArray.u() + 8;
        if (parsableByteArray.q() != SAMSUNG_TAIL_SIGNATURE) {
            positionHolder.position = 0L;
        } else {
            positionHolder.position = extractorInput.getPosition() - ((long) (this.tailLength - 12));
            this.readerState = 2;
        }
    }

    private static SlowMotionData f(ParsableByteArray parsableByteArray, int i10) throws ParserException {
        ArrayList arrayList = new ArrayList();
        List<String> listF = ASTERISK_SPLITTER.f(parsableByteArray.E(i10));
        for (int i11 = 0; i11 < listF.size(); i11++) {
            List<String> listF2 = COLON_SPLITTER.f(listF.get(i11));
            if (listF2.size() != 3) {
                throw ParserException.a(null, null);
            }
            try {
                arrayList.add(new SlowMotionData.Segment(Long.parseLong(listF2.get(0)), Long.parseLong(listF2.get(1)), 1 << (Integer.parseInt(listF2.get(2)) - 1)));
            } catch (NumberFormatException e) {
                throw ParserException.a(null, e);
            }
        }
        return new SlowMotionData(arrayList);
    }

    public int c(ExtractorInput extractorInput, PositionHolder positionHolder, List<Metadata.Entry> list) throws IOException {
        int i10 = this.readerState;
        long j6 = 0;
        if (i10 == 0) {
            long length = extractorInput.getLength();
            if (length != -1 && length >= 8) {
                j6 = length - 8;
            }
            positionHolder.position = j6;
            this.readerState = 1;
        } else if (i10 == 1) {
            a(extractorInput, positionHolder);
        } else if (i10 == 2) {
            d(extractorInput, positionHolder);
        } else {
            if (i10 != 3) {
                throw new IllegalStateException();
            }
            e(extractorInput, list);
            positionHolder.position = 0L;
        }
        return 1;
    }

    public void g() {
        this.dataReferences.clear();
        this.readerState = 0;
    }

    private static int b(String str) throws ParserException {
        str.hashCode();
        switch (str) {
            case "SlowMotion_Data":
                return TYPE_SLOW_MOTION_DATA;
            case "Super_SlowMotion_Edit_Data":
                return TYPE_SUPER_SLOW_MOTION_EDIT_DATA;
            case "Super_SlowMotion_Data":
                return TYPE_SUPER_SLOW_MOTION_DATA;
            case "Super_SlowMotion_Deflickering_On":
                return TYPE_SUPER_SLOW_DEFLICKERING_ON;
            case "Super_SlowMotion_BGM":
                return TYPE_SUPER_SLOW_MOTION_BGM;
            default:
                throw ParserException.a("Invalid SEF name", null);
        }
    }

    private void d(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        long length = extractorInput.getLength();
        int i10 = this.tailLength - 20;
        ParsableByteArray parsableByteArray = new ParsableByteArray(i10);
        extractorInput.readFully(parsableByteArray.e(), 0, i10);
        for (int i11 = 0; i11 < i10 / 12; i11++) {
            parsableByteArray.V(2);
            short sW = parsableByteArray.w();
            if (sW != TYPE_SLOW_MOTION_DATA && sW != TYPE_SUPER_SLOW_MOTION_DATA && sW != TYPE_SUPER_SLOW_MOTION_BGM && sW != TYPE_SUPER_SLOW_MOTION_EDIT_DATA && sW != TYPE_SUPER_SLOW_DEFLICKERING_ON) {
                parsableByteArray.V(8);
            } else {
                this.dataReferences.add(new DataReference(sW, (length - ((long) this.tailLength)) - ((long) parsableByteArray.u()), parsableByteArray.u()));
            }
        }
        if (this.dataReferences.isEmpty()) {
            positionHolder.position = 0L;
        } else {
            this.readerState = 3;
            positionHolder.position = this.dataReferences.get(0).startOffset;
        }
    }

    private void e(ExtractorInput extractorInput, List<Metadata.Entry> list) throws IOException {
        long position = extractorInput.getPosition();
        int length = (int) ((extractorInput.getLength() - extractorInput.getPosition()) - ((long) this.tailLength));
        ParsableByteArray parsableByteArray = new ParsableByteArray(length);
        extractorInput.readFully(parsableByteArray.e(), 0, length);
        for (int i10 = 0; i10 < this.dataReferences.size(); i10++) {
            DataReference dataReference = this.dataReferences.get(i10);
            parsableByteArray.U((int) (dataReference.startOffset - position));
            parsableByteArray.V(4);
            int iU = parsableByteArray.u();
            int iB = b(parsableByteArray.E(iU));
            int i11 = dataReference.size - (iU + 8);
            if (iB != TYPE_SLOW_MOTION_DATA) {
                if (iB != TYPE_SUPER_SLOW_MOTION_DATA && iB != TYPE_SUPER_SLOW_MOTION_BGM && iB != TYPE_SUPER_SLOW_MOTION_EDIT_DATA && iB != TYPE_SUPER_SLOW_DEFLICKERING_ON) {
                    throw new IllegalStateException();
                }
            } else {
                list.add(f(parsableByteArray, i11));
            }
        }
    }
}
