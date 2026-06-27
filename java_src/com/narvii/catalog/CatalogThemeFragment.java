package com.narvii.catalog;

import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.list.NVListFragment;
import com.narvii.widget.FullsizeImageView;
import com.narvii.widget.NVImageView;

/* loaded from: classes2.dex */
public abstract class CatalogThemeFragment extends NVListFragment {
    public static final String WRAPPER_ACTIVITY = CatalogWrapperActivity.class.getName();
    protected NVImageView backgroundImageView;

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131755026;
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        FrameLayout frameLayout = (FrameLayout) super.onCreateView(layoutInflater, viewGroup, bundle);
        this.backgroundImageView = new FullsizeImageView(frameLayout.getContext());
        this.backgroundImageView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
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

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
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

    protected void dismissGuideline() {
        ViewGroup viewGroup;
        View viewFindViewById;
        FragmentActivity activity = getActivity();
        if (isDestoryed() || activity == null || (viewGroup = (ViewGroup) ((ViewGroup) activity.getWindow().getDecorView()).findViewById(R.id.drawer_layout)) == null || (viewFindViewById = viewGroup.findViewById(R.id.catalog_guideline)) == null) {
            return;
        }
        viewGroup.removeView(viewFindViewById);
    }

    public boolean isGoldTheme() {
        return (getStringParam("uid") != null || getBooleanParam("mine") || getBooleanParam("fromUrl") || getBooleanParam("isAllEntry")) ? false : true;
    }
}
