package com.narvii.sharedfolder;

import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.amino.HomeFragment;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVFragment;
import com.narvii.app.NVScrollableTabFragment;
import com.narvii.config.ConfigService;
import com.narvii.list.NVListFragment;
import com.narvii.sharedfolder.SharedFolderStatsResponse;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.text.TextUtils;
import com.narvii.widget.NVPagerTabLayout;
import com.narvii.widget.NVViewPager;

/* loaded from: classes3.dex */
public class SharedFolderFragment extends NVScrollableTabFragment {
    public static final int INDEX_ALBUMS = 2;
    public static final int INDEX_RECENT = 1;
    private int fileCount;
    private int folderCount;
    private int bgColor = 0;
    ViewPager.OnPageChangeListener pageChangeListener = new ViewPager.SimpleOnPageChangeListener() { // from class: com.narvii.sharedfolder.SharedFolderFragment.2
        @Override // android.support.v4.view.ViewPager.SimpleOnPageChangeListener, android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            SharedFolderFragment.this.updateTabView(i);
        }
    };

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131755020;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    @Override // com.narvii.app.NVScrollableTabFragment
    protected String getTabLabel(int i) {
        if (i == 1) {
            return getString(R.string.all_photos);
        }
        if (i != 2) {
            return null;
        }
        return getString(R.string.albums);
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.shared_folder_tab_layout, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        sendStatsRequest();
        float[] fArr = new float[3];
        Color.colorToHSV(((ConfigService) getService("config")).getTheme().colorPrimary(), fArr);
        fArr[2] = fArr[2] * 0.85f;
        this.bgColor = Color.HSVToColor(fArr);
        setTitle(R.string.shared_folder);
        setHasOptionsMenu(true);
    }

    private void sendStatsRequest() {
        ((ApiService) getService("api")).exec(ApiRequest.builder().path("/shared-folder/stats").build(), new ApiResponseListener<SharedFolderStatsResponse>(SharedFolderStatsResponse.class) { // from class: com.narvii.sharedfolder.SharedFolderFragment.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, SharedFolderStatsResponse sharedFolderStatsResponse) throws Exception {
                super.onFinish(apiRequest, (ApiRequest) sharedFolderStatsResponse);
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

    public void setFileCount(int i) {
        this.fileCount = i;
        updateTabCount();
    }

    public void setFolderCount(int i) {
        this.folderCount = i;
        updateTabCount();
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
    protected Class<? extends NVFragment> getFragment(int i) {
        if (i == 1) {
            return AllSharedPhotosFragment.class;
        }
        if (i != 2) {
            return null;
        }
        return SharedAlbumFragment.class;
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

    @Override // com.narvii.app.NVScrollableTabFragment
    protected View getTabView(int i, String str, Drawable drawable) {
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.shared_folder_tab, (ViewGroup) null);
        ((TextView) viewInflate.findViewById(R.id.tab_title)).setText(str);
        if (i == 1) {
            viewInflate.setBackgroundResource(R.drawable.switch_tab_left);
        } else if (i == 2) {
            viewInflate.setBackgroundResource(R.drawable.switch_tab_right);
        }
        return viewInflate;
    }

    @Override // com.narvii.app.NVScrollableTabFragment
    protected Bundle getBundles(int i) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("fromTab", true);
        bundle.putString("Source", "Shared Folder");
        return bundle;
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.string.my_uploads) {
            startActivity(FragmentWrapperActivity.intent(MyUploadsFragment.class));
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, R.string.my_uploads, 0, R.string.my_uploads).setIcon(R.drawable.ic_menu_shared_upload_photo).setShowAsAction(2);
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment
    protected void updateTabView(int i) {
        NVPagerTabLayout tabLayout = getTabLayout();
        if (tabLayout == null) {
            return;
        }
        int i2 = 0;
        while (i2 < tabLayout.getTabCount()) {
            View childTabAt = tabLayout.getChildTabAt(i2);
            if (childTabAt != null) {
                ((TextView) childTabAt.findViewById(R.id.tab_title)).setTextColor(i2 == i ? this.bgColor : -1);
                ((TextView) childTabAt.findViewById(R.id.count)).setTextColor(i2 == i ? this.bgColor : -1);
            }
            childTabAt.setSelected(i2 == i);
            i2++;
        }
        tabLayout.setBackgroundDrawable(tabLayoutBackground());
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
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
}
