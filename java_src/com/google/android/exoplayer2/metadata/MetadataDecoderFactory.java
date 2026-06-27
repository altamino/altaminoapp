package com.google.android.exoplayer2.metadata;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.util.MimeTypes;

/* loaded from: classes.dex */
public interface MetadataDecoderFactory {
    public static final MetadataDecoderFactory DEFAULT = new MetadataDecoderFactory() { // from class: com.google.android.exoplayer2.metadata.MetadataDecoderFactory.1
        @Override // com.google.android.exoplayer2.metadata.MetadataDecoderFactory
        public boolean supportsFormat(Format format) {
            String str = format.sampleMimeType;
            return MimeTypes.APPLICATION_ID3.equals(str) || MimeTypes.APPLICATION_EMSG.equals(str) || MimeTypes.APPLICATION_SCTE35.equals(str) || MimeTypes.APPLICATION_ICY.equals(str);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        /* JADX WARN: Removed duplicated region for block: B:17:0x0035  */
        @Override // com.google.android.exoplayer2.metadata.MetadataDecoderFactory
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.android.exoplayer2.metadata.MetadataDecoder createDecoder(com.google.android.exoplayer2.Format r5) {
            /*
                r4 = this;
                java.lang.String r5 = r5.sampleMimeType
                int r0 = r5.hashCode()
                r1 = 3
                r2 = 2
                r3 = 1
                switch(r0) {
                    case -1348231605: goto L2b;
                    case -1248341703: goto L21;
                    case 1154383568: goto L17;
                    case 1652648887: goto Ld;
                    default: goto Lc;
                }
            Lc:
                goto L35
            Ld:
                java.lang.String r0 = "application/x-scte35"
                boolean r5 = r5.equals(r0)
                if (r5 == 0) goto L35
                r5 = 2
                goto L36
            L17:
                java.lang.String r0 = "application/x-emsg"
                boolean r5 = r5.equals(r0)
                if (r5 == 0) goto L35
                r5 = 1
                goto L36
            L21:
                java.lang.String r0 = "application/id3"
                boolean r5 = r5.equals(r0)
                if (r5 == 0) goto L35
                r5 = 0
                goto L36
            L2b:
                java.lang.String r0 = "application/x-icy"
                boolean r5 = r5.equals(r0)
                if (r5 == 0) goto L35
                r5 = 3
                goto L36
            L35:
                r5 = -1
            L36:
                if (r5 == 0) goto L58
                if (r5 == r3) goto L52
                if (r5 == r2) goto L4c
                if (r5 != r1) goto L44
                com.google.android.exoplayer2.metadata.icy.IcyDecoder r5 = new com.google.android.exoplayer2.metadata.icy.IcyDecoder
                r5.<init>()
                return r5
            L44:
                java.lang.IllegalArgumentException r5 = new java.lang.IllegalArgumentException
                java.lang.String r0 = "Attempted to create decoder for unsupported format"
                r5.<init>(r0)
                throw r5
            L4c:
                com.google.android.exoplayer2.metadata.scte35.SpliceInfoDecoder r5 = new com.google.android.exoplayer2.metadata.scte35.SpliceInfoDecoder
                r5.<init>()
                return r5
            L52:
                com.google.android.exoplayer2.metadata.emsg.EventMessageDecoder r5 = new com.google.android.exoplayer2.metadata.emsg.EventMessageDecoder
                r5.<init>()
                return r5
            L58:
                com.google.android.exoplayer2.metadata.id3.Id3Decoder r5 = new com.google.android.exoplayer2.metadata.id3.Id3Decoder
                r5.<init>()
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.metadata.MetadataDecoderFactory.AnonymousClass1.createDecoder(com.google.android.exoplayer2.Format):com.google.android.exoplayer2.metadata.MetadataDecoder");
        }
    };

    MetadataDecoder createDecoder(Format format);

    boolean supportsFormat(Format format);
}
