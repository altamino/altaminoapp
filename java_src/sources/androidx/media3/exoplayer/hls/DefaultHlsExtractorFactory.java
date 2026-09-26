package androidx.media3.exoplayer.hls;

import android.annotation.SuppressLint;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.media3.common.FileTypes;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.mp3.Mp3Extractor;
import androidx.media3.extractor.mp4.FragmentedMp4Extractor;
import androidx.media3.extractor.ts.Ac3Extractor;
import androidx.media3.extractor.ts.Ac4Extractor;
import androidx.media3.extractor.ts.AdtsExtractor;
import androidx.media3.extractor.ts.DefaultTsPayloadReaderFactory;
import androidx.media3.extractor.ts.TsExtractor;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes11.dex */
@UnstableApi
public final class DefaultHlsExtractorFactory implements HlsExtractorFactory {
    private static final int[] DEFAULT_EXTRACTOR_ORDER = {8, 13, 11, 2, 0, 1, 7};
    private final boolean exposeCea608WhenMissingDeclarations;
    private final int payloadReaderFactoryFlags;

    public DefaultHlsExtractorFactory() {
        this(0, true);
    }

    public DefaultHlsExtractorFactory(int i10, boolean z6) {
        this.payloadReaderFactoryFlags = i10;
        this.exposeCea608WhenMissingDeclarations = z6;
    }

    private static void b(int i10, List<Integer> list) {
        if (com.google.common.primitives.e.h(DEFAULT_EXTRACTOR_ORDER, i10) == -1 || list.contains(Integer.valueOf(i10))) {
            return;
        }
        list.add(Integer.valueOf(i10));
    }

    @Nullable
    @SuppressLint({"SwitchIntDef"})
    private Extractor d(int i10, Format format, @Nullable List<Format> list, TimestampAdjuster timestampAdjuster) {
        if (i10 == 0) {
            return new Ac3Extractor();
        }
        if (i10 == 1) {
            return new Ac4Extractor();
        }
        if (i10 == 2) {
            return new AdtsExtractor();
        }
        if (i10 == 7) {
            return new Mp3Extractor(0, 0L);
        }
        if (i10 == 8) {
            return e(timestampAdjuster, format, list);
        }
        if (i10 == 11) {
            return f(this.payloadReaderFactoryFlags, this.exposeCea608WhenMissingDeclarations, format, list, timestampAdjuster);
        }
        if (i10 != 13) {
            return null;
        }
        return new WebvttExtractor(format.language, timestampAdjuster);
    }

    private static FragmentedMp4Extractor e(TimestampAdjuster timestampAdjuster, Format format, @Nullable List<Format> list) {
        int i10 = g(format) ? 4 : 0;
        if (list == null) {
            list = Collections.emptyList();
        }
        return new FragmentedMp4Extractor(i10, timestampAdjuster, null, list);
    }

    private static TsExtractor f(int i10, boolean z6, Format format, @Nullable List<Format> list, TimestampAdjuster timestampAdjuster) {
        int i11 = i10 | 16;
        if (list != null) {
            i11 = i10 | 48;
        } else {
            list = z6 ? Collections.singletonList(new Format.Builder().g0("application/cea-608").G()) : Collections.emptyList();
        }
        String str = format.codecs;
        if (!TextUtils.isEmpty(str)) {
            if (!MimeTypes.b(str, "audio/mp4a-latm")) {
                i11 |= 2;
            }
            if (!MimeTypes.b(str, "video/avc")) {
                i11 |= 4;
            }
        }
        return new TsExtractor(2, timestampAdjuster, new DefaultTsPayloadReaderFactory(i11, list));
    }

    private static boolean g(Format format) {
        Metadata metadata = format.metadata;
        if (metadata == null) {
            return false;
        }
        for (int i10 = 0; i10 < metadata.h(); i10++) {
            Metadata.Entry entryG = metadata.g(i10);
            if (entryG instanceof HlsTrackMetadataEntry) {
                return !((HlsTrackMetadataEntry) entryG).variantInfos.isEmpty();
            }
        }
        return false;
    }

    @Override // androidx.media3.exoplayer.hls.HlsExtractorFactory
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public BundledHlsMediaChunkExtractor a(Uri uri, Format format, @Nullable List<Format> list, TimestampAdjuster timestampAdjuster, Map<String, List<String>> map, ExtractorInput extractorInput, PlayerId playerId) throws IOException {
        int iA = FileTypes.a(format.sampleMimeType);
        int iB = FileTypes.b(map);
        int iC = FileTypes.c(uri);
        int[] iArr = DEFAULT_EXTRACTOR_ORDER;
        ArrayList arrayList = new ArrayList(iArr.length);
        b(iA, arrayList);
        b(iB, arrayList);
        b(iC, arrayList);
        for (int i10 : iArr) {
            b(i10, arrayList);
        }
        extractorInput.resetPeekPosition();
        Extractor extractor = null;
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            int iIntValue = ((Integer) arrayList.get(i11)).intValue();
            Extractor extractor2 = (Extractor) Assertions.e(d(iIntValue, format, list, timestampAdjuster));
            if (h(extractor2, extractorInput)) {
                return new BundledHlsMediaChunkExtractor(extractor2, format, timestampAdjuster);
            }
            if (extractor == null && (iIntValue == iA || iIntValue == iB || iIntValue == iC || iIntValue == 11)) {
                extractor = extractor2;
            }
        }
        return new BundledHlsMediaChunkExtractor((Extractor) Assertions.e(extractor), format, timestampAdjuster);
    }

    private static boolean h(Extractor extractor, ExtractorInput extractorInput) throws IOException {
        try {
            return extractor.d(extractorInput);
        } catch (EOFException unused) {
            return false;
        } finally {
            extractorInput.resetPeekPosition();
        }
    }
}
