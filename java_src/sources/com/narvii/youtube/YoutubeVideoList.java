package com.narvii.youtube;

import com.narvii.nvplayer.exoplayer.NVExoPlayer;
import java.util.List;
import w7.u;

/* JADX INFO: loaded from: classes9.dex */
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

    public u<String, String> getDownloadMp4Url() {
        YoutubeVideo youtubeVideoFindVideoInTargetList;
        for (String str : DOWNLOAD_RESS) {
            YoutubeVideo youtubeVideoFindVideoInTargetList2 = findVideoInTargetList(this.list, str, 0);
            if (youtubeVideoFindVideoInTargetList2 != null) {
                String str2 = youtubeVideoFindVideoInTargetList2.url;
                return new u<>(str2, str2);
            }
            YoutubeVideo youtubeVideoFindVideoInTargetList3 = findVideoInTargetList(this.videoOnlyList, str, 0);
            if (youtubeVideoFindVideoInTargetList3 != null && (youtubeVideoFindVideoInTargetList = findVideoInTargetList(this.audioList, null, 256)) != null) {
                return new u<>(youtubeVideoFindVideoInTargetList3.url, youtubeVideoFindVideoInTargetList.url);
            }
        }
        String str3 = this.list.get(0).url;
        return new u<>(str3, str3);
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
        List<YoutubeVideo> list = this.list;
        return list.get(list.size() - 1).url;
    }

    public String getUrl(int i10, int i11) {
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
}
