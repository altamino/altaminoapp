package com.narvii.sharedfolder;

import android.content.Intent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVPagedAdapter;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.model.SharedAlbum;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.http.ApiRequest;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes4.dex */
public class SharedAlbumAdapter extends NVPagedAdapter<SharedAlbum, SharedAlbumListResponse> implements NotificationListener {
    public String source;

    public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public Class<SharedAlbum> dataType() {
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public Class<? extends SharedAlbumListResponse> responseType() {
        return SharedAlbumListResponse.class;
    }

    protected boolean showAllPhotos() {
        return true;
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

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
        if (obj instanceof SharedAlbum) {
            SharedAlbum sharedAlbum = (SharedAlbum) obj;
            Intent intent = FragmentWrapperActivity.intent(SharedAlbumDetailFragment.class);
            intent.putExtra("id", sharedAlbum.id());
            intent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(sharedAlbum));
            intent.putExtra(ExternalPostPreviewFragment.SOURCE, this.source);
            safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
        }
        return super.onItemClick(listAdapter, i10, obj, view, view2);
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

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
    public void refresh(int i10, Callback callback) {
        super.refresh(i10 | 512, callback);
    }

    public SharedAlbumAdapter(NVContext nVContext) {
        super(nVContext);
        setDarkTheme(true);
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected ApiRequest createRequest(boolean z6) {
        ApiRequest.Builder builderPath = ApiRequest.builder().path("/shared-folder/folders");
        if (showAllPhotos()) {
            builderPath.param("type", "all");
        } else {
            builderPath.param("type", "custom");
        }
        if (z6) {
            builderPath.tag("start0");
        }
        return builderPath.build();
    }
}
