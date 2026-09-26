package com.narvii.media.online.audio;

import androidx.annotation.NonNull;
import com.narvii.app.NVContext;
import com.narvii.media.online.audio.model.Sound;
import com.narvii.util.fileloader.FileLoader;
import com.narvii.util.fileloader.FileLoaderRequest;
import com.narvii.util.fileloader.IFileDownloadCallback;
import com.narvii.util.fileloader.INVFileCache;
import java.io.File;
import java.io.FileNotFoundException;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public class AudioDownloader extends FileLoader {
    public static final int DOWNLOAD_STATUS_DOWNLOADED = -1;
    public static final int DOWNLOAD_STATUS_ERROR = -3;
    public static final int DOWNLOAD_STATUS_IDEL = -2;

    public interface AudioDownloaderCallback {
        void onError(@Nullable Sound sound, Exception exc);

        void onPostExecute(File file, Sound sound);

        void onProgressUpdate(@NonNull Sound sound, int i10, int i11);
    }

    @Override // com.narvii.util.fileloader.FileLoader
    public boolean dispatchToMainThread() {
        return true;
    }

    @Override // com.narvii.util.fileloader.FileLoader
    @NotNull
    public String getFileName(@NotNull FileLoaderRequest fileLoaderRequest) {
        Object obj = fileLoaderRequest.getBuilder().getObj();
        return obj instanceof Sound ? getFileName((Sound) obj) : super.getFileName(fileLoaderRequest);
    }

    @Override // com.narvii.util.fileloader.FileLoader
    @NotNull
    public String getSessionKey(@NotNull FileLoaderRequest fileLoaderRequest) {
        Object obj = fileLoaderRequest.getBuilder().getObj();
        return obj instanceof Sound ? getSessionKey((Sound) obj) : super.getSessionKey(fileLoaderRequest);
    }

    @Override // com.narvii.util.fileloader.FileLoader
    @Nullable
    public INVFileCache provideCache(@NotNull File file) {
        return null;
    }

    @Override // com.narvii.util.fileloader.FileLoader
    public boolean validateCacheFile(@NotNull File file) {
        return true;
    }

    public AudioDownloader(@NotNull NVContext nVContext) {
        super(nVContext, "online_audio");
    }

    public File getDwonloadedFile(Sound sound) {
        return new File(this.dir, getFileName(sound));
    }

    public void loadAudioFile(final Sound sound, final Object obj, final AudioDownloaderCallback audioDownloaderCallback) {
        if (sound == null) {
            audioDownloaderCallback.onError(null, new FileNotFoundException());
        } else {
            final String mediaUrl = sound.getMediaUrl();
            requireFile(new FileLoaderRequest.Companion.Builder(mediaUrl).applyZipExtract(false).applyCache(false).attachObject(sound).build(), new IFileDownloadCallback() { // from class: com.narvii.media.online.audio.AudioDownloader.1
                @Override // com.narvii.util.fileloader.IFileDownloadCallback
                @Nullable
                public Object getRealCallback() {
                    return null;
                }

                @Override // com.narvii.util.fileloader.IFileDownloadCallback
                @Nullable
                public Object getTag() {
                    return obj;
                }

                @Override // com.narvii.util.fileloader.IFileDownloadCallback
                public void onError(@NotNull String str, @Nullable Exception exc) {
                    audioDownloaderCallback.onError(sound, exc);
                }

                @Override // com.narvii.util.fileloader.IFileDownloadCallback
                public void onProgressUpdate(int i10, int i11) {
                    audioDownloaderCallback.onProgressUpdate(sound, i10, i11);
                }

                @Override // com.narvii.util.fileloader.IFileDownloadCallback
                public void onPostExecute(@NotNull File file) {
                    if (!file.exists()) {
                        onError(mediaUrl, new FileNotFoundException());
                    }
                    audioDownloaderCallback.onPostExecute(file, sound);
                }
            });
        }
    }

    public int getDownloadState(Sound sound) {
        FileLoader.Session session = getSession(getSessionKey(sound));
        if (session != null) {
            if (session.getContentLength() == 0) {
                return 0;
            }
            return (session.getDownloadedByte() * 100) / session.getContentLength();
        }
        if (new File(this.dir, getFileName(sound)).exists()) {
            return -1;
        }
        return -2;
    }

    private String getFileName(Sound sound) {
        String mediaUrl = sound.getMediaUrl();
        return sound.id + mediaUrl.substring(mediaUrl.lastIndexOf("."));
    }

    private String getSessionKey(Sound sound) {
        String str = sound.id;
        return str == null ? sound.getMediaUrl() : str;
    }
}
