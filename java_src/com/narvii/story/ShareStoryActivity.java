package com.narvii.story;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVActivity;

/* loaded from: classes3.dex */
public class ShareStoryActivity extends NVActivity {
    private static final String TAG = ShareStoryActivity.class.getSimpleName();

    @Override // com.narvii.app.NVActivity
    protected int getActionbarLayoutId(boolean z, int i, int i2) {
        return R.layout.actionbar_layout_no_shadow;
    }

    @Override // com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onCreate(bundle);
        setTitle(R.string.share_on_amino);
        if (bundle == null) {
            getSupportFragmentManager().beginTransaction().add(android.R.id.content, getShareStoryFragment(), "fragment").commitAllowingStateLoss();
        }
    }

    @Override // com.narvii.app.NVActivity
    protected Drawable getActionBarCustomDrawable() {
        return new ColorDrawable(-1);
    }

    @Override // com.narvii.app.NVActivity, android.app.Activity
    protected void onPostCreate(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onPostCreate(bundle);
        setBackButtonTint(ContextCompat.getColor(getContext(), R.color.story_theme_action_bar_view));
        setActionBarTitleColor(ContextCompat.getColor(getContext(), R.color.story_theme_text_color));
    }

    private ShareStoryFragment getShareStoryFragment() {
        ShareStoryFragment shareStoryFragment = new ShareStoryFragment();
        if (getIntent() != null) {
            Bundle bundle = new Bundle();
            bundle.putParcelable("fileUri", getIntent().getData());
            bundle.putString("shareInfo", getIntent().getStringExtra("story_share_info"));
            bundle.putString("draftDir", getIntent().getStringExtra("draft_dir"));
            shareStoryFragment.setArguments(bundle);
        }
        return shareStoryFragment;
    }
}
