package com.narvii.catalog;

import android.content.res.Resources;
import android.os.Bundle;
import android.widget.ImageView;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.util.statusbar.StatusBarUtils;
import io.agora.rtc.Constants;

/* loaded from: classes2.dex */
public class CatalogWrapperActivity extends FragmentWrapperActivity {
    private boolean goldTheme;

    @Override // com.narvii.app.FragmentWrapperActivity, com.narvii.app.NVActivity
    public int getCustomTheme() {
        int customTheme = super.getCustomTheme();
        if (customTheme != 2131755026 || getStringParam("uid") != null || getBooleanParam("mine") || getBooleanParam("fromUrl") || getBooleanParam("isAllEntry")) {
            return customTheme;
        }
        this.goldTheme = true;
        return 2131755025;
    }

    @Override // com.narvii.app.DrawerActivity, com.narvii.app.NVActivity, android.app.Activity
    protected void onPostCreate(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, Resources.NotFoundException, IllegalArgumentException {
        super.onPostCreate(bundle);
        if (this.goldTheme) {
            int color = getResources().getColor(R.color.gold);
            ((ImageView) getActionBar().getCustomView().findViewById(R.id.actionbar_back)).setImageDrawable(getResources().getDrawable(R.drawable.ic_back_gold_mirror));
            ((TextView) getActionBar().getCustomView().findViewById(R.id.actionbar_title)).setTextColor(color);
        }
    }

    @Override // com.narvii.app.FragmentWrapperActivity, com.narvii.app.NVActivity
    public void setStatusBar() {
        StatusBarUtils.setTranslucentStatusBar(this, Constants.ERR_PUBLISH_STREAM_NUM_REACH_LIMIT);
    }
}
