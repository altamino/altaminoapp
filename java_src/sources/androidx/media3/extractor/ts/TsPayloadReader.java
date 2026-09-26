package androidx.media3.extractor.ts;

import android.util.SparseArray;
import androidx.annotation.Nullable;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.extractor.ExtractorOutput;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
@UnstableApi
public interface TsPayloadReader {
    public static final int FLAG_DATA_ALIGNMENT_INDICATOR = 4;
    public static final int FLAG_PAYLOAD_UNIT_START_INDICATOR = 1;
    public static final int FLAG_RANDOM_ACCESS_INDICATOR = 2;

    public interface Factory {
        @Nullable
        TsPayloadReader a(int i10, EsInfo esInfo);

        SparseArray<TsPayloadReader> createInitialPayloadReaders();
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Flags {
    }

    public static final class TrackIdGenerator {
        private static final int ID_UNSET = Integer.MIN_VALUE;
        private final int firstTrackId;
        private String formatId;
        private final String formatIdPrefix;
        private int trackId;
        private final int trackIdIncrement;

        public TrackIdGenerator(int i10, int i11) {
            this(Integer.MIN_VALUE, i10, i11);
        }

        public TrackIdGenerator(int i10, int i11, int i12) {
            String str;
            if (i10 != Integer.MIN_VALUE) {
                str = i10 + com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING;
            } else {
                str = "";
            }
            this.formatIdPrefix = str;
            this.firstTrackId = i11;
            this.trackIdIncrement = i12;
            this.trackId = Integer.MIN_VALUE;
            this.formatId = "";
        }

        private void d() {
            if (this.trackId == Integer.MIN_VALUE) {
                throw new IllegalStateException("generateNewId() must be called before retrieving ids.");
            }
        }

        public void a() {
            int i10 = this.trackId;
            this.trackId = i10 == Integer.MIN_VALUE ? this.firstTrackId : i10 + this.trackIdIncrement;
            this.formatId = this.formatIdPrefix + this.trackId;
        }

        public String b() {
            d();
            return this.formatId;
        }

        public int c() {
            d();
            return this.trackId;
        }
    }

    void a(ParsableByteArray parsableByteArray, int i10) throws ParserException;

    void b(TimestampAdjuster timestampAdjuster, ExtractorOutput extractorOutput, TrackIdGenerator trackIdGenerator);

    void seek();

    public static final class DvbSubtitleInfo {
        public final byte[] initializationData;
        public final String language;
        public final int type;

        public DvbSubtitleInfo(String str, int i10, byte[] bArr) {
            this.language = str;
            this.type = i10;
            this.initializationData = bArr;
        }
    }

    public static final class EsInfo {
        public final byte[] descriptorBytes;
        public final List<DvbSubtitleInfo> dvbSubtitleInfos;

        @Nullable
        public final String language;
        public final int streamType;

        public EsInfo(int i10, @Nullable String str, @Nullable List<DvbSubtitleInfo> list, byte[] bArr) {
            List<DvbSubtitleInfo> listUnmodifiableList;
            this.streamType = i10;
            this.language = str;
            if (list == null) {
                listUnmodifiableList = Collections.emptyList();
            } else {
                listUnmodifiableList = Collections.unmodifiableList(list);
            }
            this.dvbSubtitleInfos = listUnmodifiableList;
            this.descriptorBytes = bArr;
        }
    }
}
