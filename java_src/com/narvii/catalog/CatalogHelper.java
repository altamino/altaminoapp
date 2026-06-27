package com.narvii.catalog;

import android.content.Intent;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVFragment;
import com.narvii.catalog.picker.AllItemPickerFragment;

/* loaded from: classes2.dex */
public class CatalogHelper {
    public static final int PICK_ITEM_REQUEST = 11;
    private NVFragment nvFragment;

    public CatalogHelper(NVFragment nVFragment) {
        this.nvFragment = nVFragment;
    }

    public void openSubmitFavoritePicker() {
        Intent intent = FragmentWrapperActivity.intent(AllItemPickerFragment.class);
        intent.putExtra("mine", true);
        intent.putExtra("mode", 1);
        intent.putExtra("canSelectOfficial", false);
        intent.putExtra("title", this.nvFragment.getString(R.string.pick_from_my_favorites));
        this.nvFragment.startActivityForResult(intent, 11);
    }
}
