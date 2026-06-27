package com.narvii.nvplayer.delegate;

import android.app.Activity;
import android.view.View;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.model.Media;
import com.narvii.nvplayer.INVPlayer;
import com.narvii.nvplayer.NVMediaSource;
import com.narvii.nvplayerview.delegate.NVVideoListDelegate;
import com.narvii.util.Utils;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DiscoverModuleVideoListDelegate.kt */
/* loaded from: classes3.dex */
public final class DiscoverModuleVideoListDelegate extends DiscoverVideoListDelegate {
    @Override // com.narvii.nvplayerview.delegate.NVVideoListDelegate, com.narvii.nvplayerview.delegate.IVideoListDelegate
    public void onRefresh() {
    }

    public DiscoverModuleVideoListDelegate(NVContext nVContext, Activity activity) {
        super(nVContext, activity);
    }

    public final void forceRefresh() {
        Utils.postDelayed(new Runnable() { // from class: com.narvii.nvplayer.delegate.DiscoverModuleVideoListDelegate.forceRefresh.1
            @Override // java.lang.Runnable
            public final void run() {
                if (((NVVideoListDelegate) DiscoverModuleVideoListDelegate.this).active && DiscoverModuleVideoListDelegate.this.shouldRemoveVideo()) {
                    INVPlayer mPlayer = ((NVVideoListDelegate) DiscoverModuleVideoListDelegate.this).mPlayer;
                    Intrinsics.checkExpressionValueIsNotNull(mPlayer, "mPlayer");
                    mPlayer.setPlayWhenReady(false);
                    ((NVVideoListDelegate) DiscoverModuleVideoListDelegate.this).mPlayerPosition = -1;
                    DiscoverModuleVideoListDelegate.this.removeVideoView();
                    ((NVVideoListDelegate) DiscoverModuleVideoListDelegate.this).listView.post(new Runnable() { // from class: com.narvii.nvplayer.delegate.DiscoverModuleVideoListDelegate.forceRefresh.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            DiscoverModuleVideoListDelegate.this.refreshPlayerPosition();
                        }
                    });
                }
            }
        }, 200L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean shouldRemoveVideo() {
        View childAt;
        NVMediaSource nVMediaSource;
        List<Media> list;
        List<Media> list2;
        if (this.mPlayerPosition == -1) {
            return false;
        }
        int desiredPlayerPosition = getDesiredPlayerPosition(false);
        if (this.mPlayerPosition == desiredPlayerPosition && (childAt = getChildAt(this.listView, desiredPlayerPosition)) != null) {
            Object tag = childAt.getTag(R.id.video_tag_media);
            if ((tag instanceof NVMediaSource) && (list = (nVMediaSource = (NVMediaSource) tag).mediaList) != null && list.size() > 0) {
                String urlWithoutQuery = Utils.getUrlWithoutQuery(Utils.getLowResVideoUrl(nVMediaSource.mediaList.get(0).url));
                NVMediaSource nVMediaSource2 = this.currentMediaSource;
                if (nVMediaSource2 != null && (list2 = nVMediaSource2.mediaList) != null && list2.size() > 0 && Utils.isEqualsNotNull(Utils.getUrlWithoutQuery(this.currentMediaSource.mediaList.get(0).url), urlWithoutQuery)) {
                    return false;
                }
            }
        }
        return true;
    }
}
