package com.narvii.catalog;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.fragment.app.FragmentActivity;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.list.NVListFragment;
import com.narvii.widget.FullsizeImageView;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes7.dex */
public abstract class CatalogThemeFragment extends NVListFragment {
    public static final String WRAPPER_ACTIVITY = CatalogWrapperActivity.class.getName();
    protected NVImageView backgroundImageView;

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131951635;
    }

    public boolean isGoldTheme() {
        return (getStringParam("uid") != null || getBooleanParam("mine") || getBooleanParam("fromUrl") || getBooleanParam("isAllEntry")) ? false : true;
    }

    protected void dismissGuideline() {
        ViewGroup viewGroup;
        View viewFindViewById;
        FragmentActivity activity = getActivity();
        if (!isDestoryed() && activity != null && (viewGroup = (ViewGroup) ((ViewGroup) activity.getWindow().getDecorView()).findViewById(R.id.drawer_layout)) != null && (viewFindViewById = viewGroup.findViewById(R.id.catalog_guideline)) != null) {
            viewGroup.removeView(viewFindViewById);
        }
    }

    @Override // com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        FrameLayout frameLayout = (FrameLayout) super.onCreateView(layoutInflater, viewGroup, bundle);
        FullsizeImageView fullsizeImageView = new FullsizeImageView(frameLayout.getContext());
        this.backgroundImageView = fullsizeImageView;
        fullsizeImageView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.backgroundImageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        frameLayout.addView(this.backgroundImageView, 0);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.topMargin = getActionBarOverlaySize() + getStatusBarOverlaySize();
        View view = new View(frameLayout.getContext());
        view.setLayoutParams(layoutParams);
        view.setBackgroundColor(getResources().getColor(R.color.dark_theme_overlay));
        frameLayout.addView(view, 1);
        return frameLayout;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        setEmptyView(R.layout.catalog_empty_view);
    }

    protected void showGuideline() {
        ViewGroup viewGroup;
        FragmentActivity activity = getActivity();
        if (isDestoryed() || activity == null || (viewGroup = (ViewGroup) ((ViewGroup) activity.getWindow().getDecorView()).findViewById(R.id.drawer_layout)) == null || viewGroup.findViewById(R.id.catalog_guideline) != null) {
            return;
        }
        View viewInflate = getLayoutInflater(null).inflate(R.layout.catalog_guideline_layout, viewGroup, false);
        viewGroup.addView(viewInflate, 1);
        viewInflate.findViewById(R.id.close).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.catalog.CatalogThemeFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ((AccountService) CatalogThemeFragment.this.getService("account")).getPrefs().edit().putBoolean("disableCatalogGuideline", true).commit();
                CatalogThemeFragment.this.dismissGuideline();
            }
        });
    }
}
