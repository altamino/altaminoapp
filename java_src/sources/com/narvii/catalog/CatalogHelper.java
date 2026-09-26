package com.narvii.catalog;

import android.content.Intent;
import androidx.fragment.app.Fragment;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVFragment;
import com.narvii.catalog.picker.AllItemPickerFragment;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes11.dex */
public class CatalogHelper {
    public static final int PICK_ITEM_REQUEST = 11;
    private NVFragment nvFragment;

    public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
        if (p1 == null) {
            return;
        }
        p0.startActivityForResult(p1, p5);
    }

    public void openSubmitFavoritePicker() {
        Intent intent = FragmentWrapperActivity.intent(AllItemPickerFragment.class);
        intent.putExtra("mine", true);
        intent.putExtra("mode", 1);
        intent.putExtra("canSelectOfficial", false);
        intent.putExtra("title", this.nvFragment.getString(R.string.pick_from_my_favorites));
        safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(this.nvFragment, intent, 11);
    }

    public CatalogHelper(NVFragment nVFragment) {
        this.nvFragment = nVFragment;
    }
}
