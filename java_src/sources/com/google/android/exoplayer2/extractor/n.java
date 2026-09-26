package com.google.android.exoplayer2.extractor;

/* JADX INFO: loaded from: classes10.dex */
public interface n {
    public static final n PLACEHOLDER = new a();

    class a implements n {
        @Override // com.google.android.exoplayer2.extractor.n
        public void endTracks() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.android.exoplayer2.extractor.n
        public void h(b0 b0Var) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.android.exoplayer2.extractor.n
        public e0 track(int i10, int i11) {
            throw new UnsupportedOperationException();
        }

        a() {
        }
    }

    void endTracks();

    void h(b0 b0Var);

    e0 track(int i10, int i11);
}
