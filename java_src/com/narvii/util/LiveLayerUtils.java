package com.narvii.util;

import com.narvii.app.NVContext;
import com.narvii.model.Blog;
import com.narvii.model.Feed;
import com.narvii.model.Item;
import com.narvii.model.Media;
import com.narvii.model.NVObject;
import com.narvii.model.PollOption;
import java.util.List;

/* loaded from: classes3.dex */
public class LiveLayerUtils {
    public static final boolean REPORT_ACTIVE = false;

    public static void reportCommenting(NVContext nVContext, int i, String str, int i2) {
    }

    public static void reportPolling(NVContext nVContext, Blog blog) {
    }

    public static void reportVoting(NVContext nVContext, NVObject nVObject, int i) {
    }

    public static boolean isStatusOk(NVObject nVObject) {
        return (nVObject == null || nVObject.status() == 9) ? false : true;
    }

    private static Media getBaseCoverMedia(Feed feed) {
        if (feed == null) {
            return null;
        }
        Media mediaFirstMedia = feed.firstMedia();
        return mediaFirstMedia == null ? feed.getBackgroundMedia() : mediaFirstMedia;
    }

    public static Media getCoverMedia(Feed feed) {
        List<PollOption> list;
        Media mediaFirstMedia;
        if (feed instanceof Blog) {
            Media baseCoverMedia = getBaseCoverMedia(feed);
            Blog blog = (Blog) feed;
            if (baseCoverMedia == null && blog.type == 4 && (list = blog.polloptList) != null) {
                for (PollOption pollOption : list) {
                    if (pollOption != null) {
                        Media mediaFirstMedia2 = pollOption.firstMedia();
                        if (mediaFirstMedia2 != null) {
                            return mediaFirstMedia2;
                        }
                        Feed feed2 = pollOption.refObject;
                        if (feed2 != null && (mediaFirstMedia = feed2.firstMedia()) != null) {
                            return mediaFirstMedia;
                        }
                    }
                }
            }
            return baseCoverMedia;
        }
        if (feed instanceof Item) {
            return getBaseCoverMedia(feed);
        }
        return null;
    }
}
