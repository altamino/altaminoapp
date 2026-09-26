package com.narvii.model;

import android.text.TextUtils;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import java.util.List;
import java.util.Locale;
import qa.y;

/* JADX INFO: loaded from: classes7.dex */
public class PlayListItem {
    public static final int PLAY_STATUS_PAUSE = 3;
    public static final int PLAY_STATUS_PLAYING = 2;
    public static final int PLAY_STATUS_READY = 1;
    public static final int TYPE_LOCAL_MUSIC = 3;
    public static final int TYPE_LOCAL_VIDEO = 1;
    public static final int TYPE_YOUTUBE = 2;

    @JsonIgnore
    public int albumId;
    public String author;
    public double duration;
    public boolean isDone;

    @JsonIgnore
    public String localMediaUrl;

    @JsonDeserialize(contentAs = Media.class)
    public List<Media> mediaList;

    @JsonIgnore
    public boolean needUploadThumbnail;

    @JsonIgnore
    public int songId;

    @JsonIgnore
    public String thumbnailUrl;
    public String title;
    public int type;
    public String url;

    public String getMediaUrl() {
        String str = this.url;
        return str != null ? str : this.localMediaUrl;
    }

    public boolean isLocalMedia() {
        String mediaUrl = getMediaUrl();
        if (TextUtils.isEmpty(mediaUrl)) {
            return false;
        }
        Locale locale = Locale.US;
        if (mediaUrl.toLowerCase(locale).startsWith(y.HTTP) || mediaUrl.toLowerCase(locale).startsWith(y.HTTPS)) {
            return false;
        }
        return true;
    }
}
