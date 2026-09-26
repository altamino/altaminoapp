package androidx.media3.extractor.flv;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.TrackOutput;

/* JADX INFO: loaded from: classes10.dex */
abstract class TagPayloadReader {
    protected final TrackOutput output;

    public static final class UnsupportedFormatException extends ParserException {
        public UnsupportedFormatException(String str) {
            super(str, null, false, 1);
        }
    }

    protected abstract boolean b(ParsableByteArray parsableByteArray) throws ParserException;

    protected abstract boolean c(ParsableByteArray parsableByteArray, long j6) throws ParserException;

    protected TagPayloadReader(TrackOutput trackOutput) {
        this.output = trackOutput;
    }

    public final boolean a(ParsableByteArray parsableByteArray, long j6) throws ParserException {
        if (b(parsableByteArray) && c(parsableByteArray, j6)) {
            return true;
        }
        return false;
    }
}
