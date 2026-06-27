package com.narvii.youtube;

import com.narvii.nvplayer.exoplayer.NVExoPlayer;
import java.util.List;
import kotlin.Pair;

/* loaded from: classes3.dex */
public class YoutubeVideoList {
    public List<YoutubeVideo> audioList;
    public List<YoutubeVideo> list;
    public List<YoutubeVideo> videoOnlyList;
    private static final String[] RESS = {"720p", NVExoPlayer.LOW_RES, "240p"};
    private static final String[] DOWNLOAD_RESS = {"1080p", "720p", "480p", NVExoPlayer.LOW_RES, "240p"};
    private static final String[] THUMBNAIL_RESS = {"720p", NVExoPlayer.LOW_RES, "240p", "144p"};

    public String getUrl() {
        return getUrl(0, 0);
    }

    public String getUrl(int i, int i2) {
        for (String str : RESS) {
            YoutubeVideo youtubeVideoFindVideoInTargetList = findVideoInTargetList(this.list, str, null);
            if (youtubeVideoFindVideoInTargetList != null) {
                return youtubeVideoFindVideoInTargetList.url;
            }
        }
        if (this.list.size() > 0) {
            return this.list.get(0).url;
        }
        return null;
    }

    public Pair<String, String> getDownloadMp4Url() {
        YoutubeVideo youtubeVideoFindVideoInTargetList;
        for (String str : DOWNLOAD_RESS) {
            YoutubeVideo youtubeVideoFindVideoInTargetList2 = findVideoInTargetList(this.list, str, 0);
            if (youtubeVideoFindVideoInTargetList2 != null) {
                String str2 = youtubeVideoFindVideoInTargetList2.url;
                return new Pair<>(str2, str2);
            }
            YoutubeVideo youtubeVideoFindVideoInTargetList3 = findVideoInTargetList(this.videoOnlyList, str, 0);
            if (youtubeVideoFindVideoInTargetList3 != null && (youtubeVideoFindVideoInTargetList = findVideoInTargetList(this.audioList, null, 256)) != null) {
                return new Pair<>(youtubeVideoFindVideoInTargetList3.url, youtubeVideoFindVideoInTargetList.url);
            }
        }
        String str3 = this.list.get(0).url;
        return new Pair<>(str3, str3);
    }

    public String getThumbnailMp4Url() {
        for (String str : THUMBNAIL_RESS) {
            YoutubeVideo youtubeVideoFindVideoInTargetList = findVideoInTargetList(this.videoOnlyList, str, 0);
            if (youtubeVideoFindVideoInTargetList != null) {
                return youtubeVideoFindVideoInTargetList.url;
            }
            YoutubeVideo youtubeVideoFindVideoInTargetList2 = findVideoInTargetList(this.list, str, 0);
            if (youtubeVideoFindVideoInTargetList2 != null) {
                return youtubeVideoFindVideoInTargetList2.url;
            }
        }
        return this.list.get(r0.size() - 1).url;
    }

    public YoutubeVideo findVideoInTargetList(List<YoutubeVideo> list, String str, Integer num) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        for (YoutubeVideo youtubeVideo : list) {
            if (str == null || str.equals(youtubeVideo.resolution)) {
                if (num == null || youtubeVideo.type == num.intValue()) {
                    return youtubeVideo;
                }
            }
        }
        return null;
    }
}
