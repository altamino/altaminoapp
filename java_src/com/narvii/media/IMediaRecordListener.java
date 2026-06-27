package com.narvii.media;

import android.net.Uri;

/* loaded from: classes3.dex */
public interface IMediaRecordListener {
    void onRecordFinish(Uri uri, long j, boolean z);

    void onRecordStart(long j);

    void onRecordTimeChange(long j);

    void onVolumeChange(int i);
}
