package net.protyposis.android.mediaplayer;

import android.content.Context;
import android.net.Uri;
import java.io.IOException;
import java.util.Map;

/* loaded from: classes4.dex */
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

    public UriSource(Context context, Uri uri) {
        this.mContext = context;
        this.mUri = uri;
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

    @Override // net.protyposis.android.mediaplayer.MediaSource
    public MediaExtractor getVideoExtractor() throws IOException {
        MediaExtractor mediaExtractor = new MediaExtractor();
        mediaExtractor.setDataSource(this.mContext, this.mUri, this.mHeaders);
        return mediaExtractor;
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
}
