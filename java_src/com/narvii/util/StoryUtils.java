package com.narvii.util;

import android.view.View;
import com.narvii.logging.LogEvent;
import com.narvii.model.Blog;
import com.narvii.model.Scene;
import com.narvii.nvplayer.INVPlayer;
import com.narvii.nvplayer.NVPlayerManager;
import com.narvii.paging.PageView;
import com.narvii.paging.PageViewUtils;

/* loaded from: classes3.dex */
public class StoryUtils {
    public static String getSceneId(Blog blog, int i) {
        Scene scene;
        if (blog == null) {
            return null;
        }
        int size = CollectionUtils.getSize(blog.sceneList);
        if (i < 0 || i >= size || (scene = blog.sceneList.get(i)) == null) {
            return null;
        }
        return scene.sceneId;
    }

    public static LogEvent.Builder getLogEventClickBuilder(View view, Blog blog, boolean z, boolean z2) {
        String storyPlayId = NVPlayerManager.getNVPlayer(view.getContext()).getVideoLogHelper().getStoryPlayId();
        INVPlayer nVPlayer = NVPlayerManager.getNVPlayer(view.getContext());
        int currentWindowIndex = nVPlayer.getCurrentWindowIndex() < 0 ? 0 : nVPlayer.getCurrentWindowIndex();
        PageView pageViewParent = PageViewUtils.getPageViewParent(view);
        if (z) {
            pageViewParent = null;
        }
        LogEvent.Builder builderActClick = LogEvent.builder(pageViewParent).extraParam("storyPlayId", storyPlayId).object(blog).actClick();
        String sceneId = getSceneId(blog, currentWindowIndex);
        if (z2) {
            builderActClick.extraParam("sceneId", sceneId);
        } else {
            builderActClick.extraParam("currentSceneId", sceneId);
        }
        return builderActClick;
    }

    public static LogEvent.Builder getLogEventClickBuilder(View view, Blog blog, boolean z) {
        return getLogEventClickBuilder(view, blog, z, false);
    }
}
