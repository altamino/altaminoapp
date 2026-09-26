package net.protyposis.android.mediaplayer;

import java.io.IOException;

/* JADX INFO: loaded from: classes9.dex */
public interface MediaSource {
    MediaExtractor getAudioExtractor() throws IOException;

    MediaExtractor getVideoExtractor() throws IOException;
}
