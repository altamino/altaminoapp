package com.narvii.sharedfolder;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.viewpager.widget.ViewPager;
import com.google.firebase.sessions.settings.c;
import com.narvii.adapter.FragmentGalleryAdapter;
import com.narvii.app.NVContext;
import com.narvii.media.MediaPickerGalleryFragment;
import com.narvii.media.MediaSelectItem;
import com.narvii.model.SharedFile;
import com.narvii.util.CollectionUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.http.ApiRequest;
import ha.f;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class SharedPhotoGalleryPickFragment extends MediaPickerGalleryFragment {
    int count;
    public GalleryAdapter galleryAdapter;

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
            MediaSelectFragment mediaSelectFragment = new MediaSelectFragment();
            Bundle bundle = new Bundle();
            bundle.putString("item", JacksonUtils.writeAsString(sharedFile));
            bundle.putSerializable("class", SharedFile.class);
            mediaSelectFragment.setArguments(bundle);
            return mediaSelectFragment;
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

        public MediaSelectItem getMediaSelectItem(int i10) {
            if (!CollectionUtils.isEmpty(this._list) && i10 < this._list.size()) {
                return (MediaSelectItem) this._list.get(i10);
            }
            return null;
        }

        @Override // com.narvii.adapter.FragmentGalleryAdapter
        protected ApiRequest createRequest(int i10, int i11, String str) {
            ApiRequest.Builder builderPath = ApiRequest.builder().path(SharedPhotoGalleryPickFragment.this.getStringParam("apiPath"));
            builderPath.param("start", Integer.valueOf(i10));
            builderPath.param("size", Integer.valueOf(i11));
            if (!TextUtils.isEmpty(SharedPhotoGalleryPickFragment.this.getStringParam("sourceType"))) {
                builderPath.param("type", SharedPhotoGalleryPickFragment.this.getStringParam("sourceType"));
            }
            if (!TextUtils.isEmpty(str)) {
                builderPath.param("stoptime", str);
            }
            return builderPath.build();
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public void notifyDataSetChanged() {
            super.notifyDataSetChanged();
            SharedPhotoGalleryPickFragment.this.updateSelectView();
        }
    }

    @Override // com.narvii.media.MediaPickerGalleryFragment, com.narvii.app.NVFragment
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
        if (this.pager == null) {
            return;
        }
        if (this.count < 0) {
            this.count = 0;
        }
        setTitle((this.pager.getCurrentItem() + 1) + c.FORWARD_SLASH_STRING + this.count);
    }

    @Override // com.narvii.media.MediaPickerGalleryFragment
    public MediaSelectItem getCurrentMediaItem() {
        int currentItem = this.pager.getCurrentItem();
        if (currentItem < 0 || currentItem >= this.galleryAdapter.getCount()) {
            return null;
        }
        return this.galleryAdapter.getMediaSelectItem(currentItem);
    }

    @Override // com.narvii.media.MediaPickerGalleryFragment
    protected void setUpPagerAdapter(Bundle bundle) {
        GalleryAdapter galleryAdapter = new GalleryAdapter(getActivity().getSupportFragmentManager(), this, this.mediaItems, getStringParam("stopTime"), getIntParam("start"), getBooleanParam("isEnd"));
        this.galleryAdapter = galleryAdapter;
        galleryAdapter.setUserVisibleHint(getUserVisibleHint());
        if (bundle != null) {
            bundle.getBundle("adapter");
        }
        this.pager.setAdapter(this.galleryAdapter);
    }

    @Override // com.narvii.app.NVFragment
    protected void updateChildrenVisibleHint(boolean z6) {
        GalleryAdapter galleryAdapter = this.galleryAdapter;
        if (galleryAdapter != null) {
            galleryAdapter.setUserVisibleHint(z6);
        }
    }

    @Override // com.narvii.media.MediaPickerGalleryFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.count = getIntParam(f.COUNT_KEY);
    }

    @Override // com.narvii.media.MediaPickerGalleryFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.pager.setOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.narvii.sharedfolder.SharedPhotoGalleryPickFragment.1
            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrolled(int i10, float f, int i11) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int i10) {
                GalleryAdapter galleryAdapter = SharedPhotoGalleryPickFragment.this.galleryAdapter;
                if (galleryAdapter != null) {
                    galleryAdapter.setViewPagerIdle(i10 == 0);
                }
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageSelected(int i10) {
                SharedPhotoGalleryPickFragment.this.updateTitle();
                SharedPhotoGalleryPickFragment.this.updateSelectView();
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
