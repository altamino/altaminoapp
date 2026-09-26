package com.narvii.sharedfolder;

import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import com.narvii.amino.HomeFragment;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVFragment;
import com.narvii.app.NVScrollableTabFragment;
import com.narvii.config.ConfigService;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.list.NVListFragment;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.util.text.TextUtils;
import com.narvii.wallet.optinads.OptinAdsUtil;
import com.narvii.widget.NVPagerTabLayout;
import com.narvii.widget.NVViewPager;
import com.safedk.android.utils.Logger;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public class SharedFolderFragment extends NVScrollableTabFragment {
    public static final int INDEX_ALBUMS = 2;
    public static final int INDEX_RECENT = 1;
    private int fileCount;
    private int folderCount;
    private int bgColor = 0;
    ViewPager.OnPageChangeListener pageChangeListener = new ViewPager.SimpleOnPageChangeListener() { // from class: com.narvii.sharedfolder.SharedFolderFragment.2
        @Override // androidx.viewpager.widget.ViewPager.SimpleOnPageChangeListener, androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i10) {
            SharedFolderFragment.this.updateTabView(i10);
        }
    };

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131951629;
    }

    @Override // com.narvii.app.NVScrollableTabFragment
    protected Class<? extends NVFragment> getFragment(int i10) {
        if (i10 == 1) {
            return AllSharedPhotosFragment.class;
        }
        if (i10 != 2) {
            return null;
        }
        return SharedAlbumFragment.class;
    }

    @Override // com.narvii.app.NVFragment
    public int getPostEntryLift() {
        return OptinAdsUtil.getBannerLift(this, 2);
    }

    @Override // com.narvii.app.NVScrollableTabFragment
    protected String getTabLabel(int i10) {
        if (i10 == 1) {
            return getString(R.string.all_photos);
        }
        if (i10 != 2) {
            return null;
        }
        return getString(R.string.albums);
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    @Override // com.narvii.app.NVScrollableTabFragment
    protected Bundle getBundles(int i10) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("fromTab", true);
        bundle.putString(ExternalPostPreviewFragment.SOURCE, "Shared Folder");
        return bundle;
    }

    public void setFileCount(int i10) {
        this.fileCount = i10;
        updateTabCount();
    }

    public void setFolderCount(int i10) {
        this.folderCount = i10;
        updateTabCount();
    }

    private void sendStatsRequest() {
        ((ApiService) getService("api")).exec(ApiRequest.builder().path("/shared-folder/stats").build(), new ApiResponseListener<SharedFolderStatsResponse>(SharedFolderStatsResponse.class) { // from class: com.narvii.sharedfolder.SharedFolderFragment.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, SharedFolderStatsResponse sharedFolderStatsResponse) throws Exception {
                super.onFinish(apiRequest, sharedFolderStatsResponse);
                SharedFolderStatsResponse.Stats stats = sharedFolderStatsResponse.stats;
                if (stats == null) {
                    return;
                }
                SharedFolderFragment.this.fileCount = stats.fileCount;
                SharedFolderFragment.this.folderCount = sharedFolderStatsResponse.stats.folderCount;
                SharedFolderFragment.this.updateTabCount();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTabCount() {
        NVPagerTabLayout tabLayout = getTabLayout();
        if (tabLayout == null) {
            return;
        }
        TextView textView = (TextView) tabLayout.getChildTabAt(getRealPositionOfIndex(1)).findViewById(R.id.count);
        TextView textView2 = (TextView) tabLayout.getChildTabAt(getRealPositionOfIndex(2)).findViewById(R.id.count);
        if (this.fileCount == 0 && this.folderCount == 0) {
            textView.setVisibility(8);
            textView2.setVisibility(8);
        } else {
            textView.setVisibility(0);
            textView2.setVisibility(0);
        }
        textView.setText(TextUtils.numberFormat.format(this.fileCount));
        textView2.setText(TextUtils.numberFormat.format(this.folderCount));
    }

    @Override // com.narvii.app.NVScrollableTabFragment
    protected View getTabView(int i10, String str, Drawable drawable) {
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.shared_folder_tab, (ViewGroup) null);
        ((TextView) viewInflate.findViewById(R.id.tab_title)).setText(str);
        if (i10 != 1) {
            if (i10 == 2) {
                viewInflate.setBackgroundResource(R.drawable.switch_tab_right);
            }
        } else {
            viewInflate.setBackgroundResource(R.drawable.switch_tab_left);
        }
        return viewInflate;
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        sendStatsRequest();
        float[] fArr = new float[3];
        Color.colorToHSV(((ConfigService) getService("config")).getTheme().colorPrimary(), fArr);
        fArr[2] = fArr[2] * 0.85f;
        this.bgColor = Color.HSVToColor(fArr);
        setTitle(R.string.shared_folder);
        if (bundle == null) {
            ((StatisticsService) getService("statistics")).event("Shared Folder Opened").source(getStringParam(ExternalPostPreviewFragment.SOURCE)).userPropInc("Shared Folder Opened Total");
        }
        setHasOptionsMenu(true);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, R.string.my_uploads, 0, R.string.my_uploads).setIcon(R.drawable.ic_menu_shared_upload_photo).setShowAsAction(2);
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment, androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.shared_folder_tab_layout, viewGroup, false);
    }

    @Override // com.narvii.app.NVScrollableTabFragment
    protected void onInstantiateItem(Object obj) {
        if (isEmbedFragment() && (obj instanceof NVListFragment)) {
            NVListFragment nVListFragment = (NVListFragment) obj;
            nVListFragment.setOverScrollMode(2);
            if (getParentFragment() instanceof HomeFragment) {
                nVListFragment.setSwipeRefreshEnabled(false);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != R.string.my_uploads) {
            return super.onOptionsItemSelected(menuItem);
        }
        safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, FragmentWrapperActivity.intent(MyUploadsFragment.class));
        return true;
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        NVViewPager nVViewPager;
        super.onViewCreated(view, bundle);
        view.setBackgroundColor(this.bgColor);
        setPageChangeListener(this.pageChangeListener);
        if (isEmbedFragment() && (nVViewPager = this.mViewPager) != null) {
            nVViewPager.disableScroll = true;
        }
        updateTabCount();
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment
    public Drawable tabLayoutBackground() {
        return ContextCompat.getDrawable(getContext(), R.drawable.switch_tab_bg_stroke_white);
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment
    protected void updateTabView(int i10) {
        boolean z6;
        int i11;
        NVPagerTabLayout tabLayout = getTabLayout();
        if (tabLayout == null) {
            return;
        }
        for (int i12 = 0; i12 < tabLayout.getTabCount(); i12++) {
            View childTabAt = tabLayout.getChildTabAt(i12);
            if (childTabAt != null) {
                TextView textView = (TextView) childTabAt.findViewById(R.id.tab_title);
                int i13 = -1;
                if (i12 == i10) {
                    i11 = this.bgColor;
                } else {
                    i11 = -1;
                }
                textView.setTextColor(i11);
                TextView textView2 = (TextView) childTabAt.findViewById(R.id.count);
                if (i12 == i10) {
                    i13 = this.bgColor;
                }
                textView2.setTextColor(i13);
            }
            if (i12 == i10) {
                z6 = true;
            } else {
                z6 = false;
            }
            childTabAt.setSelected(z6);
        }
        tabLayout.setBackgroundDrawable(tabLayoutBackground());
    }
}
