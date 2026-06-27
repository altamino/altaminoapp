package com.google.android.exoplayer2.metadata.emsg;

import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.MetadataDecoder;
import com.google.android.exoplayer2.metadata.MetadataInputBuffer;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.ParsableByteArray;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class EventMessageDecoder implements MetadataDecoder {
    @Override // com.google.android.exoplayer2.metadata.MetadataDecoder
    public Metadata decode(MetadataInputBuffer metadataInputBuffer) {
        ByteBuffer byteBuffer = metadataInputBuffer.data;
        EventMessage eventMessageDecode = decode(new ParsableByteArray(byteBuffer.array(), byteBuffer.limit()));
        if (eventMessageDecode == null) {
            return null;
        }
        return new Metadata(eventMessageDecode);
    }

    public EventMessage decode(ParsableByteArray parsableByteArray) {
        try {
            String nullTerminatedString = parsableByteArray.readNullTerminatedString();
            Assertions.checkNotNull(nullTerminatedString);
            String str = nullTerminatedString;
            String nullTerminatedString2 = parsableByteArray.readNullTerminatedString();
            Assertions.checkNotNull(nullTerminatedString2);
            return new EventMessage(str, nullTerminatedString2, parsableByteArray.readUnsignedInt(), parsableByteArray.readUnsignedInt(), Arrays.copyOfRange(parsableByteArray.data, parsableByteArray.getPosition(), parsableByteArray.limit()));
        } catch (RuntimeException unused) {
            return null;
        }
    }
}
