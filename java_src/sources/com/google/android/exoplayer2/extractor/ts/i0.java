package com.google.android.exoplayer2.extractor.ts;

import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.v2;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public interface i0 {
    public static final int FLAG_DATA_ALIGNMENT_INDICATOR = 4;
    public static final int FLAG_PAYLOAD_UNIT_START_INDICATOR = 1;
    public static final int FLAG_RANDOM_ACCESS_INDICATOR = 2;

    public interface c {
        @Nullable
        i0 a(int i10, b bVar);

        SparseArray<i0> createInitialPayloadReaders();
    }

    public static final class d {
        private static final int ID_UNSET = Integer.MIN_VALUE;
        private final int firstTrackId;
        private String formatId;
        private final String formatIdPrefix;
        private int trackId;
        private final int trackIdIncrement;

        public d(int i10, int i11) {
            this(Integer.MIN_VALUE, i10, i11);
        }

        public d(int i10, int i11, int i12) {
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

    void a(l0 l0Var, com.google.android.exoplayer2.extractor.n nVar, d dVar);

    void b(com.google.android.exoplayer2.util.c0 c0Var, int i10) throws v2;

    void seek();

    public static final class a {
        public final byte[] initializationData;
        public final String language;
        public final int type;

        public a(String str, int i10, byte[] bArr) {
            this.language = str;
            this.type = i10;
            this.initializationData = bArr;
        }
    }

    public static final class b {
        public final byte[] descriptorBytes;
        public final List<a> dvbSubtitleInfos;

        @Nullable
        public final String language;
        public final int streamType;

        public b(int i10, @Nullable String str, @Nullable List<a> list, byte[] bArr) {
            List<a> listUnmodifiableList;
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
