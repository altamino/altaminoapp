package net.protyposis.android.mediaplayer;

import android.content.Context;
import android.net.Uri;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes10.dex */
public class UriSource implements MediaSource {
    private Map<String, String> mAudioHeaders;
    private Uri mAudioUri;
    private Context mContext;
    private Map<String, String> mHeaders;
    private Uri mUri;

    public UriSource(Context context, Uri uri, Map<String, String> map) {
        this.mContext = context;
        this.mUri = uri;
        this.mHeaders = map;
    }

    public Map<String, String> getAudioHeaders() {
        return this.mAudioHeaders;
    }

    public Uri getAudioUri() {
        return this.mAudioUri;
    }

    public Context getContext() {
        return this.mContext;
    }

    public Map<String, String> getHeaders() {
        return this.mHeaders;
    }

    public Uri getUri() {
        return this.mUri;
    }

    public UriSource(Context context, Uri uri) {
        this.mContext = context;
        this.mUri = uri;
    }

    @Override // net.protyposis.android.mediaplayer.MediaSource
    public MediaExtractor getAudioExtractor() throws IOException {
        if (this.mAudioUri == null) {
            return null;
        }
        MediaExtractor mediaExtractor = new MediaExtractor();
        mediaExtractor.setDataSource(this.mContext, this.mAudioUri, this.mAudioHeaders);
        return mediaExtractor;
    }

    @Override // net.protyposis.android.mediaplayer.MediaSource
    public MediaExtractor getVideoExtractor() throws IOException {
        MediaExtractor mediaExtractor = new MediaExtractor();
        mediaExtractor.setDataSource(this.mContext, this.mUri, this.mHeaders);
        return mediaExtractor;
    }

    public UriSource(Context context, Uri uri, Map<String, String> map, Uri uri2, Map<String, String> map2) {
        this.mContext = context;
        this.mUri = uri;
        this.mHeaders = map;
        this.mAudioUri = uri2;
        this.mAudioHeaders = map2;
    }

    public UriSource(Context context, Uri uri, Uri uri2) {
        this.mContext = context;
        this.mUri = uri;
        this.mAudioUri = uri2;
    }
}
