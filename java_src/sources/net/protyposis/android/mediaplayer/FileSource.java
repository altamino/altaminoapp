package net.protyposis.android.mediaplayer;

import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes8.dex */
public class FileSource implements MediaSource {
    private File mAudioFile;
    private File mFile;

    public FileSource(File file) {
        this.mFile = file;
    }

    public File getAudioFile() {
        return this.mAudioFile;
    }

    public File getFile() {
        return this.mFile;
    }

    public FileSource(File file, File file2) {
        this.mFile = file;
        this.mAudioFile = file2;
    }

    @Override // net.protyposis.android.mediaplayer.MediaSource
    public MediaExtractor getAudioExtractor() throws IOException {
        if (this.mAudioFile == null) {
            return null;
        }
        MediaExtractor mediaExtractor = new MediaExtractor();
        mediaExtractor.setDataSource(this.mAudioFile.getAbsolutePath());
        return mediaExtractor;
    }

    @Override // net.protyposis.android.mediaplayer.MediaSource
    public MediaExtractor getVideoExtractor() throws IOException {
        MediaExtractor mediaExtractor = new MediaExtractor();
        mediaExtractor.setDataSource(this.mFile.getAbsolutePath());
        return mediaExtractor;
    }
}
