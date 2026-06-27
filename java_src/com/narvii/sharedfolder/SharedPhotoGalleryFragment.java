package com.narvii.sharedfolder;

import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.view.ViewPager;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.narvii.adapter.FragmentGalleryAdapter;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.model.SharedFile;
import com.narvii.notification.Notification;
import com.narvii.util.Callback;
import com.narvii.util.CollectionUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.statistics.TmpValue;
import com.narvii.widget.NVViewPager;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
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

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131755020;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.list = JacksonUtils.readListAs(getStringParam("list"), SharedFile.class);
        if (CollectionUtils.isEmpty(this.list)) {
            this.list = FILE_LIST.getAndRemove();
            if (CollectionUtils.isEmpty(this.list)) {
                getActivity().finish();
                return;
            }
        }
        this.hideDetailStatusManager = new HideDetailStatusManager();
        setTitle((CharSequence) null);
        this.count = getIntParam("count");
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_gallery_shared_photo, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onActivityCreated(bundle);
        ((ImageView) getActivity().getActionBar().getCustomView().findViewById(R.id.actionbar_back)).setImageResource(R.drawable.ic_back_cross);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        this.viewPager = (NVViewPager) view.findViewById(R.id.pager);
        this.viewPager.setOffscreenPageLimit(1);
        this.galleryAdapter = new GalleryAdapter(getActivity().getSupportFragmentManager(), this, this.list, getStringParam("stopTime"), getIntParam(TtmlNode.START), getBooleanParam("isEnd"));
        this.galleryAdapter.setUserVisibleHint(getUserVisibleHint());
        if (bundle != null) {
            bundle.getBundle("adapter");
        }
        this.viewPager.setAdapter(this.galleryAdapter);
        this.viewPager.setCurrentPosition(getIntParam("position"));
        this.viewPager.setOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.narvii.sharedfolder.SharedPhotoGalleryFragment.2
            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public void onPageScrolled(int i, float f, int i2) {
            }

            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public void onPageSelected(int i) {
                SharedPhotoGalleryFragment.this.updateTitle();
            }

            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int i) {
                GalleryAdapter galleryAdapter = SharedPhotoGalleryFragment.this.galleryAdapter;
                if (galleryAdapter != null) {
                    galleryAdapter.setViewPagerIdle(i == 0);
                }
            }
        });
        updateTitle();
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        GalleryAdapter galleryAdapter = this.galleryAdapter;
        if (galleryAdapter != null) {
            galleryAdapter.setUserVisibleHint(z);
        }
    }

    @Override // com.narvii.app.NVFragment
    protected void updateChildrenVisibleHint(boolean z) {
        GalleryAdapter galleryAdapter = this.galleryAdapter;
        if (galleryAdapter != null) {
            galleryAdapter.setUserVisibleHint(z);
        }
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
        setTitle((this.viewPager.getCurrentItem() + 1) + "/" + this.count);
    }

    @Override // com.narvii.app.NVFragment
    public Boolean hasPostEntry() {
        return false;
    }

    private class GalleryAdapter extends FragmentGalleryAdapter<SharedFile, SharedFileListResponse> {
        public GalleryAdapter(FragmentManager fragmentManager, NVContext nVContext, List<SharedFile> list, String str, int i, boolean z) {
            super(fragmentManager, nVContext, list, str, i, z);
        }

        @Override // com.narvii.adapter.FragmentGalleryAdapter
        protected Class<SharedFile> dataType() {
            return SharedFile.class;
        }

        @Override // com.narvii.adapter.FragmentGalleryAdapter
        protected Class<? extends SharedFileListResponse> responseType() {
            return SharedFileListResponse.class;
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

        @Override // com.narvii.adapter.FragmentGalleryAdapter, android.support.v4.view.PagerAdapter
        public int getCount() {
            int count = super.getCount();
            if (count == 0) {
                SharedPhotoGalleryFragment.this.finish();
            }
            return count;
        }

        @Override // com.narvii.adapter.FragmentGalleryAdapter
        protected void onNotificationDeleteSuccess() {
            r0.count--;
            SharedPhotoGalleryFragment.this.updateTitle();
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
        protected ApiRequest createRequest(int i, int i2, String str) {
            ApiRequest.Builder builderPath = ApiRequest.builder().path(SharedPhotoGalleryFragment.this.getStringParam("apiPath"));
            builderPath.param(TtmlNode.START, Integer.valueOf(i));
            builderPath.param("size", Integer.valueOf(i2));
            if (!TextUtils.isEmpty(SharedPhotoGalleryFragment.this.getStringParam("sourceType"))) {
                builderPath.param("type", SharedPhotoGalleryFragment.this.getStringParam("sourceType"));
            }
            return builderPath.build();
        }
    }
}
