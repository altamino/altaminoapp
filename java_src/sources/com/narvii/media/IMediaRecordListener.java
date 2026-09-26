package com.narvii.media;

import android.net.Uri;

/* JADX INFO: loaded from: classes10.dex */
public interface IMediaRecordListener {
    void onRecordFinish(Uri uri, long j6, boolean z6);

    void onRecordStart(long j6);

    void onRecordTimeChange(long j6);

    void onVolumeChange(int i10);
}
