package com.narvii.chat.rtc;

import com.fasterxml.jackson.databind.node.ObjectNode;

/* JADX INFO: loaded from: classes.dex */
public interface DataStreamListener {
    void onDataStreamReceived(int i10, byte[] bArr, ObjectNode objectNode);
}
