package io.agora.rtc.internal;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
interface IMarshallable {
    void marshall(ByteBuffer buf);

    byte[] marshall();

    void unmarshall(ByteBuffer buf);

    void unmarshall(byte[] buf);
}
