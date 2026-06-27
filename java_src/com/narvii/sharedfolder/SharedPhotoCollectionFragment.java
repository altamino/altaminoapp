package com.narvii.sharedfolder;

import android.content.res.Resources;
import android.os.Bundle;
import android.widget.ListAdapter;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.list.DivideColumnAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.StaticViewAdapter;
import com.narvii.list.overlay.OverlayListPlaceholder;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.CollectionUtils;
import com.narvii.util.http.ApiRequest;

/* loaded from: classes3.dex */
public class SharedPhotoCollectionFragment extends SharedBaseFragment {
    public MergeAdapter mergeAdapter;

    @Override // com.narvii.sharedfolder.SharedBaseFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getStringParam("id") == null) {
            finish();
            startActivity(FragmentWrapperActivity.intent(SharedFolderFragment.class));
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) throws Resources.NotFoundException {
        this.mergeAdapter = new MergeAdapter(this);
        StaticViewAdapter staticViewAdapter = new StaticViewAdapter();
        staticViewAdapter.addViews(new OverlayListPlaceholder(getContext()));
        this.mergeAdapter.addAdapter(staticViewAdapter);
        SharedPhotosAdapter sharedPhotosAdapter = new SharedPhotosAdapter(this) { // from class: com.narvii.sharedfolder.SharedPhotoCollectionFragment.1
            @Override // com.narvii.sharedfolder.SharedPhotosAdapter, com.narvii.list.NVPagedAdapter
            protected ApiRequest createRequest(boolean z) {
                return ApiRequest.builder().path("shared-folder/files?type=reference&refId=" + SharedPhotoCollectionFragment.this.getStringParam("id")).build();
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.narvii.sharedfolder.SharedPhotosAdapter, com.narvii.list.NVPagedAdapter
            public void onPageResponse(ApiRequest apiRequest, SharedFileListResponse sharedFileListResponse, int i) {
                if (CollectionUtils.isEmpty(sharedFileListResponse.fileList)) {
                    SharedPhotoCollectionFragment.this.finish();
                    startActivity(FragmentWrapperActivity.intent(SharedFolderFragment.class));
                } else {
                    super.onPageResponse(apiRequest, sharedFileListResponse, i);
                    this._isEnd = true;
                    notifyDataSetChanged();
                }
            }

            @Override // com.narvii.list.NVPagedAdapter
            protected void onFailResponse(ApiRequest apiRequest, String str, ApiResponse apiResponse, int i) {
                if (apiResponse != null && apiResponse.statusCode != 0) {
                    SharedPhotoCollectionFragment.this.finish();
                    startActivity(FragmentWrapperActivity.intent(SharedFolderFragment.class));
                } else {
                    super.onFailResponse(apiRequest, str, apiResponse, i);
                }
            }
        };
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.shared_photo_item_padding);
        DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize);
        divideColumnAdapter.setAdapter(sharedPhotosAdapter, 3);
        this.mergeAdapter.addAdapter(divideColumnAdapter, true);
        return this.mergeAdapter;
    }
}
