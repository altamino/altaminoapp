package com.narvii.flag.resolve;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.narvii.amino.mastes.R;
import com.narvii.flag.resolve.FlagResolveBar;
import com.narvii.item.detail.ItemDetailFragment;
import com.narvii.model.Item;
import com.narvii.model.NVObject;
import com.narvii.util.Callback;

/* loaded from: classes2.dex */
public class ItemDetailFlagModeFragment extends ItemDetailFragment implements FlagResolveBar.FlagAttachObject {
    FlagResolveBar flagResolveBar;
    Item item;

    @Override // com.narvii.item.detail.ItemDetailFragment
    protected boolean disableOptinAds() {
        return true;
    }

    @Override // com.narvii.detail.FeedDetailFragment
    protected boolean showBottomBar() {
        return false;
    }

    @Override // com.narvii.item.detail.ItemDetailFragment, com.narvii.detail.FeedDetailFragment, com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        if (isAdded()) {
            this.flagResolveBar = FlagModeHelper.attachFlagMode(view, this);
            this.onFinishListener = new Callback<Item>() { // from class: com.narvii.flag.resolve.ItemDetailFlagModeFragment.1
                @Override // com.narvii.util.Callback
                public void call(Item item) {
                    FlagResolveBar flagResolveBar;
                    ItemDetailFlagModeFragment.this.item = item;
                    if ((item == null || item.status == 9) && (flagResolveBar = ItemDetailFlagModeFragment.this.flagResolveBar) != null) {
                        flagResolveBar.showAlreadyResolved();
                    }
                }
            };
        }
    }

    @Override // com.narvii.item.detail.ItemDetailFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        FlagModeHelper.handleActivityResult(this, this.flagResolveBar, i, i2, intent, this.item, 2);
        super.onActivityResult(i, i2, intent);
    }

    @Override // com.narvii.detail.FeedDetailFragment, com.narvii.app.NVFragment
    public Boolean hasOnlineBar() {
        return false;
    }

    @Override // com.narvii.flag.resolve.FlagResolveBar.FlagAttachObject
    public NVObject attachObject() {
        return this.item;
    }

    @Override // com.narvii.detail.FeedDetailFragment
    protected int fansOnlyPostMarginBottom() {
        return getContext().getResources().getDimensionPixelSize(R.dimen.flag_resolve_bar_height);
    }
}
