package com.narvii.nvplayer.ijkplayer;

import com.narvii.app.NVContext;
import com.narvii.model.ExternalSourceOrigin;
import com.narvii.nvplayer.INVPlayer;
import com.narvii.util.YoutubeUtils;
import com.narvii.video.MediaPreloadService;
import com.narvii.youtube.YoutubeService;
import com.narvii.youtube.YoutubeVideoCallback;
import com.narvii.youtube.YoutubeVideoList;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.FutureTask;

/* loaded from: classes3.dex */
public class IjkCacheUtil {
    private static IjkCacheUtil mInstance;
    private MediaPreloadService mp;
    private WeakHashMap<String, FutureTask> mWeakHashMap = new WeakHashMap<>();
    private List<String> urlList = new ArrayList();

    private IjkCacheUtil() {
    }

    public static IjkCacheUtil getInstance() {
        if (mInstance == null) {
            mInstance = new IjkCacheUtil();
        }
        return mInstance;
    }

    public void preload(NVContext nVContext, INVPlayer iNVPlayer, String[] strArr) {
        if (this.mp == null) {
            this.mp = (MediaPreloadService) nVContext.getService("mediapreload");
        }
        Iterator<Map.Entry<String, FutureTask>> it = this.mWeakHashMap.entrySet().iterator();
        while (it.hasNext()) {
            it.next().getValue().cancel(true);
        }
        this.mWeakHashMap.clear();
        this.urlList.clear();
        for (String str : strArr) {
            if (str != null) {
                this.urlList.add(str);
                preload(nVContext, iNVPlayer, str);
            }
        }
    }

    public void preload(NVContext nVContext, INVPlayer iNVPlayer, final String str) {
        if (YoutubeUtils.isYtvScheme(str)) {
            ((YoutubeService) nVContext.getService(ExternalSourceOrigin.EXTERNAL_SOURCE_ORIGIN_YOUTUBE)).exec(YoutubeUtils.getYoutubeVideoIdFromUrl(str), null, new YoutubeVideoCallback() { // from class: com.narvii.nvplayer.ijkplayer.IjkCacheUtil.1
                @Override // com.narvii.youtube.YoutubeVideoCallback
                public void onFail(String str2, int i, String str3) {
                }

                @Override // com.narvii.youtube.YoutubeVideoCallback
                public void onFinish(String str2, YoutubeVideoList youtubeVideoList) {
                    Runnable runnableStartPreload;
                    if (!IjkCacheUtil.this.urlList.contains(str) || (runnableStartPreload = IjkCacheUtil.this.mp.startPreload(str2, youtubeVideoList.getUrl())) == null) {
                        return;
                    }
                    IjkCacheUtil.this.mWeakHashMap.put(str, new FutureTask(runnableStartPreload, null));
                }
            });
            return;
        }
        Runnable runnableStartPreload = this.mp.startPreload(str, str);
        if (runnableStartPreload != null) {
            this.mWeakHashMap.put(str, new FutureTask(runnableStartPreload, null));
        }
    }
}
