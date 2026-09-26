package com.narvii.sharedfolder;

import android.content.Intent;
import android.os.Bundle;
import android.widget.ListAdapter;
import androidx.fragment.app.Fragment;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.list.DivideColumnAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.StaticViewAdapter;
import com.narvii.list.overlay.OverlayListPlaceholder;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.CollectionUtils;
import com.narvii.util.http.ApiRequest;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes3.dex */
public class SharedPhotoCollectionFragment extends SharedBaseFragment {
    public MergeAdapter mergeAdapter;

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.mergeAdapter = new MergeAdapter(this);
        StaticViewAdapter staticViewAdapter = new StaticViewAdapter();
        staticViewAdapter.addViews(new OverlayListPlaceholder(getContext()));
        this.mergeAdapter.addAdapter(staticViewAdapter);
        SharedPhotosAdapter sharedPhotosAdapter = new SharedPhotosAdapter(this) { // from class: com.narvii.sharedfolder.SharedPhotoCollectionFragment.1
            public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // com.narvii.list.NVPagedAdapter
            protected void onFailResponse(ApiRequest apiRequest, String str, ApiResponse apiResponse, int i10) {
                if (apiResponse == null || apiResponse.statusCode == 0) {
                    super.onFailResponse(apiRequest, str, apiResponse, i10);
                } else {
                    SharedPhotoCollectionFragment.this.finish();
                    safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, FragmentWrapperActivity.intent(SharedFolderFragment.class));
                }
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.narvii.sharedfolder.SharedPhotosAdapter, com.narvii.list.NVPagedAdapter
            public void onPageResponse(ApiRequest apiRequest, SharedFileListResponse sharedFileListResponse, int i10) {
                if (CollectionUtils.isEmpty(sharedFileListResponse.fileList)) {
                    SharedPhotoCollectionFragment.this.finish();
                    safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, FragmentWrapperActivity.intent(SharedFolderFragment.class));
                } else {
                    super.onPageResponse(apiRequest, sharedFileListResponse, i10);
                    this._isEnd = true;
                    notifyDataSetChanged();
                }
            }

            @Override // com.narvii.sharedfolder.SharedPhotosAdapter, com.narvii.list.NVPagedAdapter
            protected ApiRequest createRequest(boolean z6) {
                return ApiRequest.builder().path("shared-folder/files?type=reference&refId=" + SharedPhotoCollectionFragment.this.getStringParam("id")).build();
            }
        };
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.shared_photo_item_padding);
        DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize);
        divideColumnAdapter.setAdapter(sharedPhotosAdapter, 3);
        this.mergeAdapter.addAdapter(divideColumnAdapter, true);
        return this.mergeAdapter;
    }

    @Override // com.narvii.sharedfolder.SharedBaseFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getStringParam("id") == null) {
            finish();
            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, FragmentWrapperActivity.intent(SharedFolderFragment.class));
        }
    }
}
