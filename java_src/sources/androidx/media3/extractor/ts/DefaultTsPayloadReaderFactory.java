package androidx.media3.extractor.ts;

import android.util.SparseArray;
import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.util.CodecSpecificDataUtil;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import com.google.common.collect.a0;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
@UnstableApi
public final class DefaultTsPayloadReaderFactory implements TsPayloadReader.Factory {
    private static final int DESCRIPTOR_TAG_CAPTION_SERVICE = 134;
    public static final int FLAG_ALLOW_NON_IDR_KEYFRAMES = 1;
    public static final int FLAG_DETECT_ACCESS_UNITS = 8;
    public static final int FLAG_ENABLE_HDMV_DTS_AUDIO_STREAMS = 64;
    public static final int FLAG_IGNORE_AAC_STREAM = 2;
    public static final int FLAG_IGNORE_H264_STREAM = 4;
    public static final int FLAG_IGNORE_SPLICE_INFO_STREAM = 16;
    public static final int FLAG_OVERRIDE_CAPTION_DESCRIPTORS = 32;
    private final List<Format> closedCaptionFormats;
    private final int flags;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Flags {
    }

    public DefaultTsPayloadReaderFactory() {
        this(0);
    }

    private boolean e(int i10) {
        return (i10 & this.flags) != 0;
    }

    @Override // androidx.media3.extractor.ts.TsPayloadReader.Factory
    @Nullable
    public TsPayloadReader a(int i10, TsPayloadReader.EsInfo esInfo) {
        if (i10 != 2) {
            if (i10 == 3 || i10 == 4) {
                return new PesReader(new MpegAudioReader(esInfo.language));
            }
            if (i10 == 21) {
                return new PesReader(new Id3Reader());
            }
            if (i10 == 27) {
                if (e(4)) {
                    return null;
                }
                return new PesReader(new H264Reader(b(esInfo), e(1), e(8)));
            }
            if (i10 == 36) {
                return new PesReader(new H265Reader(b(esInfo)));
            }
            if (i10 == 89) {
                return new PesReader(new DvbSubtitleReader(esInfo.dvbSubtitleInfos));
            }
            if (i10 != 138) {
                if (i10 == 172) {
                    return new PesReader(new Ac4Reader(esInfo.language));
                }
                if (i10 == 257) {
                    return new SectionReader(new PassthroughSectionPayloadReader("application/vnd.dvb.ait"));
                }
                if (i10 == 134) {
                    if (e(16)) {
                        return null;
                    }
                    return new SectionReader(new PassthroughSectionPayloadReader("application/x-scte35"));
                }
                if (i10 != 135) {
                    switch (i10) {
                        case 15:
                            if (e(2)) {
                                return null;
                            }
                            return new PesReader(new AdtsReader(false, esInfo.language));
                        case 16:
                            return new PesReader(new H263Reader(c(esInfo)));
                        case 17:
                            if (e(2)) {
                                return null;
                            }
                            return new PesReader(new LatmReader(esInfo.language));
                        default:
                            switch (i10) {
                                case 128:
                                    break;
                                case 129:
                                    break;
                                case 130:
                                    if (!e(64)) {
                                        return null;
                                    }
                                    break;
                                default:
                                    return null;
                            }
                            break;
                    }
                }
                return new PesReader(new Ac3Reader(esInfo.language));
            }
            return new PesReader(new DtsReader(esInfo.language));
        }
        return new PesReader(new H262Reader(c(esInfo)));
    }

    public DefaultTsPayloadReaderFactory(int i10) {
        this(i10, a0.x());
    }

    private SeiReader b(TsPayloadReader.EsInfo esInfo) {
        return new SeiReader(d(esInfo));
    }

    private UserDataReader c(TsPayloadReader.EsInfo esInfo) {
        return new UserDataReader(d(esInfo));
    }

    private List<Format> d(TsPayloadReader.EsInfo esInfo) {
        String str;
        int i10;
        if (e(32)) {
            return this.closedCaptionFormats;
        }
        ParsableByteArray parsableByteArray = new ParsableByteArray(esInfo.descriptorBytes);
        List<Format> arrayList = this.closedCaptionFormats;
        while (parsableByteArray.a() > 0) {
            int iH = parsableByteArray.H();
            int iF = parsableByteArray.f() + parsableByteArray.H();
            if (iH == 134) {
                arrayList = new ArrayList<>();
                int iH2 = parsableByteArray.H() & 31;
                for (int i11 = 0; i11 < iH2; i11++) {
                    String strE = parsableByteArray.E(3);
                    int iH3 = parsableByteArray.H();
                    boolean z6 = (iH3 & 128) != 0;
                    if (z6) {
                        i10 = iH3 & 63;
                        str = "application/cea-708";
                    } else {
                        str = "application/cea-608";
                        i10 = 1;
                    }
                    byte bH = (byte) parsableByteArray.H();
                    parsableByteArray.V(1);
                    arrayList.add(new Format.Builder().g0(str).X(strE).H(i10).V(z6 ? CodecSpecificDataUtil.b((bH & 64) != 0) : null).G());
                }
            }
            parsableByteArray.U(iF);
        }
        return arrayList;
    }

    @Override // androidx.media3.extractor.ts.TsPayloadReader.Factory
    public SparseArray<TsPayloadReader> createInitialPayloadReaders() {
        return new SparseArray<>();
    }

    public DefaultTsPayloadReaderFactory(int i10, List<Format> list) {
        this.flags = i10;
        this.closedCaptionFormats = list;
    }
}
