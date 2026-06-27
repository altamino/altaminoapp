package com.narvii.sharedfolder;

import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.view.ViewPager;
import android.text.TextUtils;
import android.view.View;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.narvii.adapter.FragmentGalleryAdapter;
import com.narvii.app.NVContext;
import com.narvii.media.MediaPickerGalleryFragment;
import com.narvii.media.MediaSelectItem;
import com.narvii.model.SharedFile;
import com.narvii.util.CollectionUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.http.ApiRequest;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class SharedPhotoGalleryPickFragment extends MediaPickerGalleryFragment {
    int count;
    public GalleryAdapter galleryAdapter;

    @Override // com.narvii.media.MediaPickerGalleryFragment, com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131755020;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    @Override // com.narvii.media.MediaPickerGalleryFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.count = getIntParam("count");
    }

    @Override // com.narvii.media.MediaPickerGalleryFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        this.pager.setOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.narvii.sharedfolder.SharedPhotoGalleryPickFragment.1
            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public void onPageScrolled(int i, float f, int i2) {
            }

            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public void onPageSelected(int i) {
                SharedPhotoGalleryPickFragment.this.updateTitle();
                SharedPhotoGalleryPickFragment.this.updateSelectView();
            }

            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int i) {
                GalleryAdapter galleryAdapter = SharedPhotoGalleryPickFragment.this.galleryAdapter;
                if (galleryAdapter != null) {
                    galleryAdapter.setViewPagerIdle(i == 0);
                }
            }
        });
        updateTitle();
    }

    @Override // com.narvii.media.MediaPickerGalleryFragment
    protected void setUpPagerAdapter(Bundle bundle) throws Resources.NotFoundException {
        this.galleryAdapter = new GalleryAdapter(getActivity().getSupportFragmentManager(), this, this.mediaItems, getStringParam("stopTime"), getIntParam(TtmlNode.START), getBooleanParam("isEnd"));
        this.galleryAdapter.setUserVisibleHint(getUserVisibleHint());
        if (bundle != null) {
            bundle.getBundle("adapter");
        }
        this.pager.setAdapter(this.galleryAdapter);
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
        if (this.pager == null) {
            return;
        }
        if (this.count < 0) {
            this.count = 0;
        }
        setTitle((this.pager.getCurrentItem() + 1) + "/" + this.count);
    }

    @Override // com.narvii.media.MediaPickerGalleryFragment
    public MediaSelectItem getCurrentMediaItem() {
        int currentItem = this.pager.getCurrentItem();
        if (currentItem < 0 || currentItem >= this.galleryAdapter.getCount()) {
            return null;
        }
        return this.galleryAdapter.getMediaSelectItem(currentItem);
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

        @Override // android.support.v4.view.PagerAdapter
        public void notifyDataSetChanged() {
            super.notifyDataSetChanged();
            SharedPhotoGalleryPickFragment.this.updateSelectView();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.adapter.FragmentGalleryAdapter
        public Fragment createFragment(SharedFile sharedFile) {
            MediaSelectFragment mediaSelectFragment = new MediaSelectFragment();
            Bundle bundle = new Bundle();
            bundle.putString("item", JacksonUtils.writeAsString(sharedFile));
            bundle.putSerializable("class", SharedFile.class);
            mediaSelectFragment.setArguments(bundle);
            return mediaSelectFragment;
        }

        public MediaSelectItem getMediaSelectItem(int i) {
            if (!CollectionUtils.isEmpty(this._list) && i < this._list.size()) {
                return (MediaSelectItem) this._list.get(i);
            }
            return null;
        }

        @Override // com.narvii.adapter.FragmentGalleryAdapter
        protected List<SharedFile> filterResponseList(List<SharedFile> list) {
            boolean booleanParam = SharedPhotoGalleryPickFragment.this.getBooleanParam("allowShowNormalDisable");
            boolean booleanParam2 = SharedPhotoGalleryPickFragment.this.getBooleanParam("allowShowIModeDisable");
            if (booleanParam2 && booleanParam2) {
                return list;
            }
            if (!booleanParam2 && !booleanParam) {
                return super.filterResponseList(list);
            }
            if (list == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (SharedFile sharedFile : list) {
                if (!sharedFile.isDisabledByAmino()) {
                    arrayList.add(sharedFile);
                }
            }
            return arrayList;
        }

        @Override // com.narvii.adapter.FragmentGalleryAdapter
        protected ApiRequest createRequest(int i, int i2, String str) {
            ApiRequest.Builder builderPath = ApiRequest.builder().path(SharedPhotoGalleryPickFragment.this.getStringParam("apiPath"));
            builderPath.param(TtmlNode.START, Integer.valueOf(i));
            builderPath.param("size", Integer.valueOf(i2));
            if (!TextUtils.isEmpty(SharedPhotoGalleryPickFragment.this.getStringParam("sourceType"))) {
                builderPath.param("type", SharedPhotoGalleryPickFragment.this.getStringParam("sourceType"));
            }
            if (!TextUtils.isEmpty(str)) {
                builderPath.param("stoptime", str);
            }
            return builderPath.build();
        }
    }
}
