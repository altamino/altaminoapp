package net.protyposis.android.mediaplayer;

import java.io.IOException;

/* loaded from: classes4.dex */
public interface MediaSource {
    MediaExtractor getAudioExtractor() throws IOException;

    MediaExtractor getVideoExtractor() throws IOException;
}
