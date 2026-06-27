package com.narvii.monetization.sticker.picker;

import android.content.ComponentCallbacks;
import android.os.Bundle;
import android.view.View;
import android.widget.ListAdapter;
import com.narvii.amino.mastes.R;
import com.narvii.model.Sticker;
import com.narvii.monetization.sticker.StickerService;
import com.narvii.monetization.sticker.model.MoodStickerCollection;
import com.narvii.monetization.sticker.mood.MoodBaseListFragment;
import com.narvii.video.model.StickerInfoPack;
import com.narvii.video.services.VideoManager;
import com.narvii.video.widget.EditorStickerInstallFrameView;

/* loaded from: classes3.dex */
public class MoodPickerListFragment extends MoodBaseListFragment {
    protected StickerSelectListener stickerSelectListener;

    @Override // com.narvii.list.NVListFragment
    public boolean isNestedScrollingChild() {
        return false;
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    public void setStickerSelectListener(StickerSelectListener stickerSelectListener) {
        this.stickerSelectListener = stickerSelectListener;
    }

    @Override // com.narvii.monetization.sticker.mood.MoodBaseListFragment
    protected void onMoodClicked(View view) {
        String str = (String) view.getTag(R.id.icon);
        if (str != null) {
            Sticker sticker = new Sticker(str);
            StickerSelectListener stickerSelectListener = this.stickerSelectListener;
            if (stickerSelectListener != null) {
                stickerSelectListener.onStickerSelected(sticker, new MoodStickerCollection(getContext()));
            }
            if (this.editorTheme) {
                sticker.sourceType = 1;
                StickerInfoPack stickerInfoPackObtainInstalledStickerInfo = this.videoManager.obtainInstalledStickerInfo(sticker, sticker.getStickerPath());
                if (stickerInfoPackObtainInstalledStickerInfo != null) {
                    ComponentCallbacks parentFragment = getParentFragment();
                    if (parentFragment instanceof VideoManager.IInstallStickerCallback) {
                        ((VideoManager.IInstallStickerCallback) parentFragment).onStickerInstalled(stickerInfoPackObtainInstalledStickerInfo);
                        return;
                    }
                    return;
                }
                ((EditorStickerInstallFrameView) view.findViewById(R.id.sticker_install_frame)).installSticker(sticker, sticker.getStickerPath(), false);
            }
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected int externalOffset() {
        return -getActionBarOverlaySize();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.list.refresh.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        super.onRefresh();
        ((StickerService) getService("sticker")).refreshStickerCollectionInfo(true);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        return getMoodBaseAdapter();
    }
}
