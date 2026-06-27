package com.narvii.sharedfolder;

import android.content.Intent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.list.NVPagedAdapter;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.model.ExternalSource;
import com.narvii.model.SharedAlbum;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.http.ApiRequest;

/* loaded from: classes3.dex */
public class SharedAlbumAdapter extends NVPagedAdapter<SharedAlbum, SharedAlbumListResponse> implements NotificationListener {
    public String source;

    @Override // com.narvii.list.NVPagedAdapter
    protected int getItemType(Object obj) {
        return 0;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected int getItemTypeCount() {
        return 1;
    }

    protected boolean showAllPhotos() {
        return true;
    }

    public SharedAlbumAdapter(NVContext nVContext) {
        super(nVContext);
        setDarkTheme(true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public Class<SharedAlbum> dataType() {
        return SharedAlbum.class;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public Class<? extends SharedAlbumListResponse> responseType() {
        return SharedAlbumListResponse.class;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected ApiRequest createRequest(boolean z) {
        ApiRequest.Builder builderPath = ApiRequest.builder().path("/shared-folder/folders");
        if (showAllPhotos()) {
            builderPath.param("type", ExternalSource.EXTERNAL_SOURCE_ALL_ID);
        } else {
            builderPath.param("type", "custom");
        }
        if (z) {
            builderPath.tag("start0");
        }
        return builderPath.build();
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
        if (!(obj instanceof SharedAlbum)) {
            return null;
        }
        SharedAlbumView sharedAlbumView = (SharedAlbumView) createView(R.layout.item_shared_album, viewGroup, view);
        sharedAlbumView.setSharedAlbum((SharedAlbum) obj);
        return sharedAlbumView;
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
    public void refresh(int i, Callback callback) {
        super.refresh(i | 512, callback);
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
        if (obj instanceof SharedAlbum) {
            SharedAlbum sharedAlbum = (SharedAlbum) obj;
            Intent intent = FragmentWrapperActivity.intent(SharedAlbumDetailFragment.class);
            intent.putExtra("id", sharedAlbum.id());
            intent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(sharedAlbum));
            intent.putExtra("Source", this.source);
            startActivity(intent);
        }
        return super.onItemClick(listAdapter, i, obj, view, view2);
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        if (notification.obj instanceof SharedAlbum) {
            if (notification.action == "new") {
                refresh(0, null);
            } else {
                editList(notification, false);
            }
        }
    }
}
