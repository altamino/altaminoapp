package com.narvii.flag.resolve;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.narvii.amino.master.R;
import com.narvii.item.detail.ItemDetailFragment;
import com.narvii.model.Item;
import com.narvii.model.NVObject;
import com.narvii.util.Callback;

/* JADX INFO: loaded from: classes6.dex */
public class ItemDetailFlagModeFragment extends ItemDetailFragment implements FlagResolveBar.FlagAttachObject {
    FlagResolveBar flagResolveBar;
    Item item;

    @Override // com.narvii.flag.resolve.FlagResolveBar.FlagAttachObject
    public NVObject attachObject() {
        return this.item;
    }

    @Override // com.narvii.item.detail.ItemDetailFragment
    protected boolean disableOptinAds() {
        return true;
    }

    @Override // com.narvii.detail.FeedDetailFragment, com.narvii.app.NVFragment
    public Boolean hasOnlineBar() {
        return Boolean.FALSE;
    }

    @Override // com.narvii.detail.FeedDetailFragment
    protected boolean showBottomBar() {
        return false;
    }

    @Override // com.narvii.item.detail.ItemDetailFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        FlagModeHelper.handleActivityResult(this, this.flagResolveBar, i10, i11, intent, this.item, 2);
        super.onActivityResult(i10, i11, intent);
    }

    @Override // com.narvii.detail.FeedDetailFragment
    protected int fansOnlyPostMarginBottom() {
        return getContext().getResources().getDimensionPixelSize(R.dimen.flag_resolve_bar_height);
    }

    @Override // com.narvii.item.detail.ItemDetailFragment, com.narvii.detail.FeedDetailFragment, com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        if (isAdded()) {
            this.flagResolveBar = FlagModeHelper.attachFlagMode(view, this);
            this.onFinishListener = new Callback<Item>() { // from class: com.narvii.flag.resolve.ItemDetailFlagModeFragment.1
                @Override // com.narvii.util.Callback
                public void call(Item item) {
                    FlagResolveBar flagResolveBar;
                    ItemDetailFlagModeFragment itemDetailFlagModeFragment = ItemDetailFlagModeFragment.this;
                    itemDetailFlagModeFragment.item = item;
                    if ((item == null || item.status == 9) && (flagResolveBar = itemDetailFlagModeFragment.flagResolveBar) != null) {
                        flagResolveBar.showAlreadyResolved();
                    }
                }
            };
        }
    }
}
