package com.narvii.monetization.sticker.shared;

import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.app.NotificationCompat;
import android.support.v4.content.LocalBroadcastManager;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWillFinishListener;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.list.NVListFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.monetization.sticker.StickerHelper;
import com.narvii.monetization.sticker.StickerService;
import com.narvii.monetization.sticker.model.StickerCollection;
import com.narvii.monetization.sticker.post.UgcStickerCollectionDetailFragment;
import com.narvii.monetization.store.data.ShareRequest;
import com.narvii.monetization.store.data.ShareRequestListResponse;
import com.narvii.notification.Notification;
import com.narvii.poweruser.history.ModerationHistoryBaseFragment;
import com.narvii.util.DateTimeFormatter;
import com.narvii.util.JacksonUtils;
import com.narvii.util.ViewUtils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.text.TextUtils;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NicknameView;
import com.narvii.widget.UserAvatarLayout;

/* loaded from: classes3.dex */
public class PendingStickerCollectionListFragment extends NVListFragment implements FragmentWillFinishListener {
    public static final int REQUEST_HANDLE_REQUEST = 200;
    private Adapter adapter;
    private boolean listChanged;

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.pending_approval);
    }

    @Override // com.narvii.app.NVFragment
    protected Drawable getActionBarCustomDrawable() {
        return new ColorDrawable(-13421773);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.adapter = new Adapter(this);
        return this.adapter;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 200 && i2 == -1 && intent != null) {
            String stringExtra = intent.getStringExtra("requestId");
            this.listChanged = true;
            if (this.adapter == null || stringExtra == null) {
                return;
            }
            ShareRequest shareRequest = new ShareRequest();
            shareRequest.requestId = stringExtra;
            this.adapter.editList(new Notification("delete", shareRequest), false);
            return;
        }
        super.onActivityResult(i, i2, intent);
    }

    class Adapter extends NVPagedAdapter<ShareRequest, ShareRequestListResponse> {
        DateTimeFormatter datetime;

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemType(Object obj) {
            return 0;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemTypeCount() {
            return 1;
        }

        public Adapter(NVContext nVContext) {
            super(nVContext);
            this.datetime = DateTimeFormatter.getInstance(getContext());
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<ShareRequest> dataType() {
            return ShareRequest.class;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<? extends ShareRequestListResponse> responseType() {
            return ShareRequestListResponse.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            return ApiRequest.builder().path("store/share-requests").param(ModerationHistoryBaseFragment.PARAMS_OBJECT_TYPE, 114).param(NotificationCompat.CATEGORY_STATUS, 1).build();
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (obj instanceof ShareRequest) {
                Intent intent = FragmentWrapperActivity.intent(UgcStickerCollectionDetailFragment.class);
                ShareRequest shareRequest = (ShareRequest) obj;
                intent.putExtra("requestId", shareRequest.requestId);
                StickerCollection stickerCollection = (StickerCollection) shareRequest.getRefObject();
                if (stickerCollection == null) {
                    return true;
                }
                intent.putExtra("id", stickerCollection.id());
                intent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(stickerCollection));
                intent.putExtra("approveMode", true);
                PendingStickerCollectionListFragment.this.startActivityForResult(intent, 200);
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            if (!(obj instanceof ShareRequest)) {
                return null;
            }
            ShareRequest shareRequest = (ShareRequest) obj;
            StickerCollection stickerCollection = (StickerCollection) shareRequest.getRefObject();
            if (stickerCollection == null) {
                return null;
            }
            View viewCreateView = createView(R.layout.pending_sticker_pack_item, viewGroup, view);
            NVImageView nVImageView = (NVImageView) viewCreateView.findViewById(R.id.collection_icon);
            nVImageView.setImageUrl(stickerCollection.icon);
            nVImageView.setShowPressedMask(false);
            ((TextView) viewCreateView.findViewById(R.id.collection_name)).setText(stickerCollection.name);
            ((TextView) viewCreateView.findViewById(R.id.datetime)).setText(this.datetime.format(shareRequest.createdTime));
            TextView textView = (TextView) viewCreateView.findViewById(R.id.sticker_count);
            textView.setText(TextUtils.getCountText(getContext(), stickerCollection.stickersCount, R.string.one_sticker, R.string.n_stickers));
            ViewUtils.show(textView, stickerCollection.stickersCount != 0);
            if (stickerCollection.author != null) {
                ((UserAvatarLayout) viewCreateView.findViewById(R.id.user_avatar_layout)).setUser(stickerCollection.author);
                ((NicknameView) viewCreateView.findViewById(R.id.nickname)).setUser(stickerCollection.author);
            }
            return viewCreateView;
        }
    }

    @Override // com.narvii.app.FragmentWillFinishListener
    public void willFinish(NVActivity nVActivity) {
        if (this.listChanged) {
            ((StickerService) getService("sticker")).refreshSharedStickerPackList(true);
            LocalBroadcastManager.getInstance(getContext()).sendBroadcast(new Intent(StickerHelper.STICKER_PENDING_REQUEST_COUNT_CAHNGE));
        }
    }
}
