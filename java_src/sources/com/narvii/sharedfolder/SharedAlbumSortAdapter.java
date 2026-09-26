package com.narvii.sharedfolder;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.list.NVPagedAdapter;
import com.narvii.model.SharedAlbum;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.text.TextUtils;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes10.dex */
public class SharedAlbumSortAdapter extends NVPagedAdapter {
    @Override // com.narvii.list.NVPagedAdapter
    public boolean autoLoadNextPage() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public Class dataType() {
        return SharedAlbum.class;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected int getItemType(Object obj) {
        return 0;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected int getItemTypeCount() {
        return 1;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected int pageSize() {
        return 50;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public Class responseType() {
        return SharedAlbumListResponse.class;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
        if (!(obj instanceof SharedAlbum)) {
            return null;
        }
        SharedAlbum sharedAlbum = (SharedAlbum) obj;
        View viewCreateView = createView(R.layout.item_shared_album_sort, viewGroup, view);
        ((NVImageView) viewCreateView.findViewById(R.id.icon)).setImageMedia(sharedAlbum.getCoverImage());
        ((TextView) viewCreateView.findViewById(R.id.text)).setText(sharedAlbum.getTitle(getContext()));
        ((TextView) viewCreateView.findViewById(R.id.text2)).setText(TextUtils.getCountText(getContext(), sharedAlbum.filesCount, R.string.one_photo, R.string.n_photos));
        return viewCreateView;
    }

    public SharedAlbumSortAdapter(NVContext nVContext) {
        super(nVContext);
    }

    @Override // com.narvii.list.NVPagedAdapter
    public View createLoadMoreItem(ViewGroup viewGroup, View view) {
        if (list() != null && list().size() < pageSize() * 0.9f) {
            return new View(viewGroup.getContext());
        }
        return super.createLoadMoreItem(viewGroup, view);
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected ApiRequest createRequest(boolean z6) {
        ApiRequest.Builder builderPath = ApiRequest.builder().path("/shared-folder/folders");
        builderPath.param("type", "custom");
        return builderPath.build();
    }
}
