package com.narvii.chat;

/* JADX INFO: loaded from: classes10.dex */
public interface RecordInfoListener {
    void onBeyondMaxDuration();

    void onBeyondMaxOver();

    void onMessageTooShort();

    void onRecordCancel();

    void onRecordEnd();

    void onRecordStart(long j6);
}
