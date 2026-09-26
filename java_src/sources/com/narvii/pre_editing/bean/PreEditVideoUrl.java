package com.narvii.pre_editing.bean;

import com.narvii.youtube.YoutubeVideoList;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.u;

/* JADX INFO: loaded from: classes9.dex */
public final class PreEditVideoUrl {

    @NotNull
    private u<String, String> downloadUrl;

    @NotNull
    private String thumbnailVideoUrl;

    @NotNull
    private String videoUrl;

    public PreEditVideoUrl(@NotNull String url) {
        t.j(url, "url");
        this.videoUrl = url;
        this.downloadUrl = new u<>(url, url);
        this.thumbnailVideoUrl = url;
    }

    @NotNull
    public final u<String, String> getDownloadUrl() {
        return this.downloadUrl;
    }

    @NotNull
    public final String getThumbnailVideoUrl() {
        return this.thumbnailVideoUrl;
    }

    @NotNull
    public final String getVideoUrl() {
        return this.videoUrl;
    }

    public final void setDownloadUrl(@NotNull u<String, String> uVar) {
        t.j(uVar, "<set-?>");
        this.downloadUrl = uVar;
    }

    public final void setThumbnailVideoUrl(@NotNull String str) {
        t.j(str, "<set-?>");
        this.thumbnailVideoUrl = str;
    }

    public final void setVideoUrl(@NotNull String str) {
        t.j(str, "<set-?>");
        this.videoUrl = str;
    }

    public PreEditVideoUrl(@NotNull YoutubeVideoList videoList) {
        t.j(videoList, "videoList");
        String url = videoList.getUrl();
        t.i(url, "getUrl(...)");
        this.videoUrl = url;
        u<String, String> downloadMp4Url = videoList.getDownloadMp4Url();
        t.i(downloadMp4Url, "getDownloadMp4Url(...)");
        this.downloadUrl = downloadMp4Url;
        String thumbnailMp4Url = videoList.getThumbnailMp4Url();
        t.i(thumbnailMp4Url, "getThumbnailMp4Url(...)");
        this.thumbnailVideoUrl = thumbnailMp4Url;
    }
}
