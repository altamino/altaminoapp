package androidx.media3.extractor.metadata.emsg;

import androidx.media3.common.util.UnstableApi;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
@UnstableApi
public final class EventMessageEncoder {
    private final ByteArrayOutputStream byteArrayOutputStream;
    private final DataOutputStream dataOutputStream;

    public byte[] a(EventMessage eventMessage) {
        this.byteArrayOutputStream.reset();
        try {
            b(this.dataOutputStream, eventMessage.schemeIdUri);
            String str = eventMessage.value;
            if (str == null) {
                str = "";
            }
            b(this.dataOutputStream, str);
            this.dataOutputStream.writeLong(eventMessage.durationMs);
            this.dataOutputStream.writeLong(eventMessage.id);
            this.dataOutputStream.write(eventMessage.messageData);
            this.dataOutputStream.flush();
            return this.byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public EventMessageEncoder() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(512);
        this.byteArrayOutputStream = byteArrayOutputStream;
        this.dataOutputStream = new DataOutputStream(byteArrayOutputStream);
    }

    private static void b(DataOutputStream dataOutputStream, String str) throws IOException {
        dataOutputStream.writeBytes(str);
        dataOutputStream.writeByte(0);
    }
}
