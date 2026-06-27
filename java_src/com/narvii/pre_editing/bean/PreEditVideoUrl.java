package com.narvii.pre_editing.bean;

import com.narvii.youtube.YoutubeVideoList;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PreEditVideoUrl.kt */
/* loaded from: classes3.dex */
public final class PreEditVideoUrl {
    private Pair<String, String> downloadUrl;
    private String thumbnailVideoUrl;
    private String videoUrl;

    public final String getVideoUrl() {
        return this.videoUrl;
    }

    public final void setVideoUrl(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.videoUrl = str;
    }

    public final Pair<String, String> getDownloadUrl() {
        return this.downloadUrl;
    }

    public final void setDownloadUrl(Pair<String, String> pair) {
        Intrinsics.checkParameterIsNotNull(pair, "<set-?>");
        this.downloadUrl = pair;
    }

    public final String getThumbnailVideoUrl() {
        return this.thumbnailVideoUrl;
    }

    public final void setThumbnailVideoUrl(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.thumbnailVideoUrl = str;
    }

    public PreEditVideoUrl(String url) {
        Intrinsics.checkParameterIsNotNull(url, "url");
        this.videoUrl = url;
        this.downloadUrl = new Pair<>(url, url);
        this.thumbnailVideoUrl = url;
    }

    public PreEditVideoUrl(YoutubeVideoList videoList) {
        Intrinsics.checkParameterIsNotNull(videoList, "videoList");
        String url = videoList.getUrl();
        Intrinsics.checkExpressionValueIsNotNull(url, "videoList.url");
        this.videoUrl = url;
        Pair<String, String> downloadMp4Url = videoList.getDownloadMp4Url();
        Intrinsics.checkExpressionValueIsNotNull(downloadMp4Url, "videoList.downloadMp4Url");
        this.downloadUrl = downloadMp4Url;
        String thumbnailMp4Url = videoList.getThumbnailMp4Url();
        Intrinsics.checkExpressionValueIsNotNull(thumbnailMp4Url, "videoList.thumbnailMp4Url");
        this.thumbnailVideoUrl = thumbnailMp4Url;
    }
}
