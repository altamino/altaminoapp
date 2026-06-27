package com.narvii.media.online.audio;

import com.narvii.app.NVContext;
import com.narvii.media.online.audio.model.Sound;
import com.narvii.util.fileloader.FileLoader;
import com.narvii.util.fileloader.FileLoaderRequest;
import com.narvii.util.fileloader.IFileDownloadCallback;
import com.narvii.util.fileloader.INVFileCache;
import java.io.File;
import java.io.FileNotFoundException;

/* loaded from: classes3.dex */
public class AudioDownloader extends FileLoader {
    public static final int DOWNLOAD_STATUS_DOWNLOADED = -1;
    public static final int DOWNLOAD_STATUS_ERROR = -3;
    public static final int DOWNLOAD_STATUS_IDEL = -2;

    public interface AudioDownloaderCallback {
        void onError(Sound sound, Exception exc);

        void onPostExecute(File file, Sound sound);

        void onProgressUpdate(Sound sound, int i, int i2);
    }

    @Override // com.narvii.util.fileloader.FileLoader
    public boolean dispatchToMainThread() {
        return true;
    }

    @Override // com.narvii.util.fileloader.FileLoader
    public INVFileCache provideCache(File file) {
        return null;
    }

    @Override // com.narvii.util.fileloader.FileLoader
    public boolean validateCacheFile(File file) {
        return true;
    }

    public AudioDownloader(NVContext nVContext) {
        super(nVContext, "online_audio");
    }

    public void loadAudioFile(final Sound sound, final Object obj, final AudioDownloaderCallback audioDownloaderCallback) {
        if (sound == null) {
            audioDownloaderCallback.onError(null, new FileNotFoundException());
        } else {
            final String mediaUrl = sound.getMediaUrl();
            requireFile(new FileLoaderRequest.Companion.Builder(mediaUrl).applyZipExtract(false).applyCache(false).attachObject(sound).build(), new IFileDownloadCallback() { // from class: com.narvii.media.online.audio.AudioDownloader.1
                @Override // com.narvii.util.fileloader.IFileDownloadCallback
                public Object getRealCallback() {
                    return null;
                }

                @Override // com.narvii.util.fileloader.IFileDownloadCallback
                public void onProgressUpdate(int i, int i2) {
                    audioDownloaderCallback.onProgressUpdate(sound, i, i2);
                }

                @Override // com.narvii.util.fileloader.IFileDownloadCallback
                public void onPostExecute(File file) {
                    if (!file.exists()) {
                        onError(mediaUrl, new FileNotFoundException());
                    }
                    audioDownloaderCallback.onPostExecute(file, sound);
                }

                @Override // com.narvii.util.fileloader.IFileDownloadCallback
                public void onError(String str, Exception exc) {
                    audioDownloaderCallback.onError(sound, exc);
                }

                @Override // com.narvii.util.fileloader.IFileDownloadCallback
                public Object getTag() {
                    return obj;
                }
            });
        }
    }

    @Override // com.narvii.util.fileloader.FileLoader
    public String getFileName(FileLoaderRequest fileLoaderRequest) {
        Object obj = fileLoaderRequest.getBuilder().getObj();
        if (obj instanceof Sound) {
            return getFileName((Sound) obj);
        }
        return super.getFileName(fileLoaderRequest);
    }

    private String getFileName(Sound sound) {
        String mediaUrl = sound.getMediaUrl();
        return sound.id + mediaUrl.substring(mediaUrl.lastIndexOf("."));
    }

    public int getDownloadState(Sound sound) {
        FileLoader.Session session = getSession(getSessionKey(sound));
        if (session == null) {
            return new File(this.dir, getFileName(sound)).exists() ? -1 : -2;
        }
        if (session.getContentLength() == 0) {
            return 0;
        }
        return (session.getDownloadedByte() * 100) / session.getContentLength();
    }

    public File getDwonloadedFile(Sound sound) {
        return new File(this.dir, getFileName(sound));
    }

    @Override // com.narvii.util.fileloader.FileLoader
    public String getSessionKey(FileLoaderRequest fileLoaderRequest) {
        Object obj = fileLoaderRequest.getBuilder().getObj();
        if (obj instanceof Sound) {
            return getSessionKey((Sound) obj);
        }
        return super.getSessionKey(fileLoaderRequest);
    }

    private String getSessionKey(Sound sound) {
        String str = sound.id;
        return str == null ? sound.getMediaUrl() : str;
    }
}
