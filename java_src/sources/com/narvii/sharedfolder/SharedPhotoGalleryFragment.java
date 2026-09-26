package com.narvii.sharedfolder;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.viewpager.widget.ViewPager;
import com.google.firebase.sessions.settings.c;
import com.narvii.adapter.FragmentGalleryAdapter;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.model.SharedFile;
import com.narvii.notification.Notification;
import com.narvii.util.Callback;
import com.narvii.util.CollectionUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.statistics.StatisticsEventBuilder;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.util.statistics.TmpValue;
import com.narvii.widget.NVViewPager;
import ha.f;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class SharedPhotoGalleryFragment extends NVFragment {
    public static final TmpValue<List<SharedFile>> FILE_LIST = new TmpValue<>();
    int count;
    public GalleryAdapter galleryAdapter;
    public HideDetailStatusManager hideDetailStatusManager;
    List<SharedFile> list;
    Callback<SharedFile> photoDeleteCallback = new Callback<SharedFile>() { // from class: com.narvii.sharedfolder.SharedPhotoGalleryFragment.1
        @Override // com.narvii.util.Callback
        public void call(SharedFile sharedFile) {
            if (SharedPhotoGalleryFragment.this.galleryAdapter == null) {
                return;
            }
            SharedPhotoGalleryFragment.this.galleryAdapter.editList(new Notification("delete", sharedFile), false);
        }
    };
    NVViewPager viewPager;

    private class GalleryAdapter extends FragmentGalleryAdapter<SharedFile, SharedFileListResponse> {
        @Override // com.narvii.adapter.FragmentGalleryAdapter
        protected Class<SharedFile> dataType() {
            return SharedFile.class;
        }

        @Override // com.narvii.adapter.FragmentGalleryAdapter
        protected Class<? extends SharedFileListResponse> responseType() {
            return SharedFileListResponse.class;
        }

        public GalleryAdapter(FragmentManager fragmentManager, NVContext nVContext, List<SharedFile> list, String str, int i10, boolean z6) {
            super(fragmentManager, nVContext, list, str, i10, z6);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.adapter.FragmentGalleryAdapter
        public Fragment createFragment(SharedFile sharedFile) {
            SharedPhotoDetailFragment sharedPhotoDetailFragment = new SharedPhotoDetailFragment();
            Bundle bundle = new Bundle();
            bundle.putString("id", sharedFile.id());
            bundle.putString(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(sharedFile));
            bundle.putBoolean("gallery", true);
            SharedPhotoGalleryFragment sharedPhotoGalleryFragment = SharedPhotoGalleryFragment.this;
            sharedPhotoDetailFragment.onPhotoDeleteCallback = sharedPhotoGalleryFragment.photoDeleteCallback;
            HideDetailStatusManager hideDetailStatusManager = sharedPhotoGalleryFragment.hideDetailStatusManager;
            sharedPhotoDetailFragment.hideDetailStatusManager = hideDetailStatusManager;
            hideDetailStatusManager.register(sharedPhotoDetailFragment);
            sharedPhotoDetailFragment.setArguments(bundle);
            return sharedPhotoDetailFragment;
        }

        @Override // com.narvii.adapter.FragmentGalleryAdapter
        protected List<SharedFile> filterResponseList(List<SharedFile> list) {
            List<SharedFile> listFilterDuplicated = Utils.filterDuplicated(this._list, list);
            boolean booleanParam = SharedPhotoGalleryFragment.this.getBooleanParam("allowShowNormalDisable");
            boolean booleanParam2 = SharedPhotoGalleryFragment.this.getBooleanParam("allowShowIModeDisable");
            if (booleanParam2 && booleanParam2) {
                return listFilterDuplicated;
            }
            if (!booleanParam2 && !booleanParam) {
                return super.filterResponseList(listFilterDuplicated);
            }
            if (listFilterDuplicated == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (SharedFile sharedFile : listFilterDuplicated) {
                if (!sharedFile.isDisabledByAmino()) {
                    arrayList.add(sharedFile);
                }
            }
            return arrayList;
        }

        @Override // com.narvii.adapter.FragmentGalleryAdapter
        protected void onNotificationDeleteSuccess() {
            SharedPhotoGalleryFragment sharedPhotoGalleryFragment = SharedPhotoGalleryFragment.this;
            sharedPhotoGalleryFragment.count--;
            sharedPhotoGalleryFragment.updateTitle();
        }

        @Override // com.narvii.adapter.FragmentGalleryAdapter
        protected ApiRequest createRequest(int i10, int i11, String str) {
            ApiRequest.Builder builderPath = ApiRequest.builder().path(SharedPhotoGalleryFragment.this.getStringParam("apiPath"));
            builderPath.param("start", Integer.valueOf(i10));
            builderPath.param("size", Integer.valueOf(i11));
            if (!TextUtils.isEmpty(SharedPhotoGalleryFragment.this.getStringParam("sourceType"))) {
                builderPath.param("type", SharedPhotoGalleryFragment.this.getStringParam("sourceType"));
            }
            return builderPath.build();
        }

        @Override // com.narvii.adapter.FragmentGalleryAdapter, androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            int count = super.getCount();
            if (count == 0) {
                SharedPhotoGalleryFragment.this.finish();
            }
            return count;
        }
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131951629;
    }

    @Override // com.narvii.app.NVFragment
    public Boolean hasPostEntry() {
        return Boolean.FALSE;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTitle() {
        if (this.viewPager == null) {
            return;
        }
        if (this.count < 0) {
            this.count = 0;
        }
        if (this.count == 0) {
            setTitle((CharSequence) null);
            return;
        }
        setTitle((this.viewPager.getCurrentItem() + 1) + c.FORWARD_SLASH_STRING + this.count);
    }

    @Override // com.narvii.app.NVFragment
    protected void updateChildrenVisibleHint(boolean z6) {
        GalleryAdapter galleryAdapter = this.galleryAdapter;
        if (galleryAdapter != null) {
            galleryAdapter.setUserVisibleHint(z6);
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        ((ImageView) getActivity().getActionBar().getCustomView().findViewById(R.id.actionbar_back)).setImageResource(R.drawable.ic_back_cross);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ArrayList listAs = JacksonUtils.readListAs(getStringParam("list"), SharedFile.class);
        this.list = listAs;
        if (CollectionUtils.isEmpty(listAs)) {
            List<SharedFile> andRemove = FILE_LIST.getAndRemove();
            this.list = andRemove;
            if (CollectionUtils.isEmpty(andRemove)) {
                getActivity().finish();
                return;
            }
        }
        this.hideDetailStatusManager = new HideDetailStatusManager();
        setTitle((CharSequence) null);
        this.count = getIntParam(f.COUNT_KEY);
        if (bundle == null) {
            StatisticsEventBuilder statisticsEventBuilderUserPropInc = ((StatisticsService) getService("statistics")).event("Detailed Page Opened").userPropInc("Detailed Page Opened Total");
            statisticsEventBuilderUserPropInc.param("type", "shared folder media").source(getStringParam(ExternalPostPreviewFragment.SOURCE));
            statisticsEventBuilderUserPropInc.userPropInc("Detailed shared folder media Page Opened");
        }
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_gallery_shared_photo, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        NVViewPager nVViewPager = (NVViewPager) view.findViewById(R.id.pager);
        this.viewPager = nVViewPager;
        nVViewPager.setOffscreenPageLimit(1);
        GalleryAdapter galleryAdapter = new GalleryAdapter(getActivity().getSupportFragmentManager(), this, this.list, getStringParam("stopTime"), getIntParam("start"), getBooleanParam("isEnd"));
        this.galleryAdapter = galleryAdapter;
        galleryAdapter.setUserVisibleHint(getUserVisibleHint());
        if (bundle != null) {
            bundle.getBundle("adapter");
        }
        this.viewPager.setAdapter(this.galleryAdapter);
        this.viewPager.setCurrentPosition(getIntParam("position"));
        this.viewPager.setOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.narvii.sharedfolder.SharedPhotoGalleryFragment.2
            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrolled(int i10, float f, int i11) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int i10) {
                GalleryAdapter galleryAdapter2 = SharedPhotoGalleryFragment.this.galleryAdapter;
                if (galleryAdapter2 != null) {
                    galleryAdapter2.setViewPagerIdle(i10 == 0);
                }
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageSelected(int i10) {
                SharedPhotoGalleryFragment.this.updateTitle();
            }
        });
        updateTitle();
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z6) {
        super.setUserVisibleHint(z6);
        GalleryAdapter galleryAdapter = this.galleryAdapter;
        if (galleryAdapter != null) {
            galleryAdapter.setUserVisibleHint(z6);
        }
    }
}
