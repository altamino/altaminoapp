package p2;

import com.google.android.exoplayer2.extractor.m;
import com.google.android.exoplayer2.extractor.s;
import com.google.android.exoplayer2.extractor.v;
import java.io.IOException;
import java.util.Objects;

/* JADX INFO: loaded from: classes6.dex */
final class b extends com.google.android.exoplayer2.extractor.a {

    /* JADX INFO: renamed from: p2.b$b, reason: collision with other inner class name */
    private static final class C0490b implements com.google.android.exoplayer2.extractor.a.f {
        private final v flacStreamMetadata;
        private final int frameStartMarker;
        private final s.a sampleNumberHolder;

        @Override // com.google.android.exoplayer2.extractor.a.f
        public /* synthetic */ void a() {
            com.google.android.exoplayer2.extractor.b.a(this);
        }

        private C0490b(v vVar, int i10) {
            this.flacStreamMetadata = vVar;
            this.frameStartMarker = i10;
            this.sampleNumberHolder = new s.a();
        }

        private long c(m mVar) throws IOException {
            while (mVar.getPeekPosition() < mVar.getLength() - 6 && !s.h(mVar, this.flacStreamMetadata, this.frameStartMarker, this.sampleNumberHolder)) {
                mVar.advancePeekPosition(1);
            }
            if (mVar.getPeekPosition() >= mVar.getLength() - 6) {
                mVar.advancePeekPosition((int) (mVar.getLength() - mVar.getPeekPosition()));
                return this.flacStreamMetadata.totalSamples;
            }
            return this.sampleNumberHolder.sampleNumber;
        }

        @Override // com.google.android.exoplayer2.extractor.a.f
        public com.google.android.exoplayer2.extractor.a.e b(m mVar, long j6) throws IOException {
            long position = mVar.getPosition();
            long jC = c(mVar);
            long peekPosition = mVar.getPeekPosition();
            mVar.advancePeekPosition(Math.max(6, this.flacStreamMetadata.minFrameSize));
            long jC2 = c(mVar);
            long peekPosition2 = mVar.getPeekPosition();
            if (jC <= j6 && jC2 > j6) {
                return com.google.android.exoplayer2.extractor.a.e.e(peekPosition);
            }
            if (jC2 <= j6) {
                return com.google.android.exoplayer2.extractor.a.e.f(jC2, peekPosition2);
            }
            return com.google.android.exoplayer2.extractor.a.e.d(jC, position);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(final v vVar, int i10, long j6, long j10) {
        super(new com.google.android.exoplayer2.extractor.a.d() { // from class: p2.a
            @Override // com.google.android.exoplayer2.extractor.a.d
            public final long a(long j11) {
                return vVar.j(j11);
            }
        }, new C0490b(vVar, i10), vVar.g(), 0L, vVar.totalSamples, j6, j10, vVar.e(), Math.max(6, vVar.minFrameSize));
        Objects.requireNonNull(vVar);
    }
}
