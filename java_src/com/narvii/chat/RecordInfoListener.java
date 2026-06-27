package com.narvii.chat;

/* loaded from: classes2.dex */
public interface RecordInfoListener {
    void onBeyondMaxDuration();

    void onBeyondMaxOver();

    void onMessageTooShort();

    void onRecordCancel();

    void onRecordEnd();

    void onRecordStart(long j);
}
