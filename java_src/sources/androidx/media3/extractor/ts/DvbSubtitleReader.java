package androidx.media3.extractor.ts;

import androidx.media3.common.Format;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.TrackOutput;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@UnstableApi
public final class DvbSubtitleReader implements ElementaryStreamReader {
    private int bytesToCheck;
    private final TrackOutput[] outputs;
    private int sampleBytesWritten;
    private long sampleTimeUs = -9223372036854775807L;
    private final List<TsPayloadReader.DvbSubtitleInfo> subtitleInfos;
    private boolean writingSample;

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void b(long j6, int i10) {
        if ((i10 & 4) == 0) {
            return;
        }
        this.writingSample = true;
        if (j6 != -9223372036854775807L) {
            this.sampleTimeUs = j6;
        }
        this.sampleBytesWritten = 0;
        this.bytesToCheck = 2;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void c(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        for (int i10 = 0; i10 < this.outputs.length; i10++) {
            TsPayloadReader.DvbSubtitleInfo dvbSubtitleInfo = this.subtitleInfos.get(i10);
            trackIdGenerator.a();
            TrackOutput trackOutputTrack = extractorOutput.track(trackIdGenerator.c(), 3);
            trackOutputTrack.d(new Format.Builder().U(trackIdGenerator.b()).g0("application/dvbsubs").V(Collections.singletonList(dvbSubtitleInfo.initializationData)).X(dvbSubtitleInfo.language).G());
            this.outputs[i10] = trackOutputTrack;
        }
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void seek() {
        this.writingSample = false;
        this.sampleTimeUs = -9223372036854775807L;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void a(ParsableByteArray parsableByteArray) {
        if (this.writingSample) {
            if (this.bytesToCheck != 2 || d(parsableByteArray, 32)) {
                if (this.bytesToCheck != 1 || d(parsableByteArray, 0)) {
                    int iF = parsableByteArray.f();
                    int iA = parsableByteArray.a();
                    for (TrackOutput trackOutput : this.outputs) {
                        parsableByteArray.U(iF);
                        trackOutput.b(parsableByteArray, iA);
                    }
                    this.sampleBytesWritten += iA;
                }
            }
        }
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void packetFinished() {
        if (this.writingSample) {
            if (this.sampleTimeUs != -9223372036854775807L) {
                for (TrackOutput trackOutput : this.outputs) {
                    trackOutput.f(this.sampleTimeUs, 1, this.sampleBytesWritten, 0, null);
                }
            }
            this.writingSample = false;
        }
    }

    public DvbSubtitleReader(List<TsPayloadReader.DvbSubtitleInfo> list) {
        this.subtitleInfos = list;
        this.outputs = new TrackOutput[list.size()];
    }

    private boolean d(ParsableByteArray parsableByteArray, int i10) {
        if (parsableByteArray.a() == 0) {
            return false;
        }
        if (parsableByteArray.H() != i10) {
            this.writingSample = false;
        }
        this.bytesToCheck--;
        return this.writingSample;
    }
}
