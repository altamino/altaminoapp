package com.narvii.chat.rtc;

import com.fasterxml.jackson.databind.node.ObjectNode;

/* loaded from: classes2.dex */
public interface DataStreamListener {
    void onDataStreamReceived(int i, byte[] bArr, ObjectNode objectNode);
}
