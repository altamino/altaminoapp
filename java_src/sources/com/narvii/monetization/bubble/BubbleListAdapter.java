package com.narvii.monetization.bubble;

import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVPagedAdapter;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.model.ChatBubble;
import com.narvii.model.ChatBubbleListResponse;
import com.narvii.model.RestrictionInfo;
import com.narvii.monetization.bubble.detail.BubbleDetailFragment;
import com.narvii.monetization.utils.StoreItemNameView;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.wallet.MembershipService;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.NVImageView;
import com.safedk.android.utils.Logger;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class BubbleListAdapter extends NVPagedAdapter<ChatBubble, ChatBubbleListResponse> implements NotificationListener {
    MembershipService membershipService;

    public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public Class<ChatBubble> dataType() {
        return ChatBubble.class;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected List<ChatBubble> filterResponseList(List<ChatBubble> list, int i10) {
        return list;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected int getItemType(Object obj) {
        return 0;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected int getItemTypeCount() {
        return 1;
    }

    protected int layoutId() {
        return R.layout.item_bubble_base_layout;
    }

    protected void onFirstPageResponse() {
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected int pageSize() {
        return 20;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public Class<? extends ChatBubbleListResponse> responseType() {
        return ChatBubbleListResponse.class;
    }

    protected String threadId() {
        return null;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected ApiRequest createRequest(boolean z6) {
        ApiRequest.Builder builderPath = new ApiRequest.Builder().path("chat/chat-bubble");
        builderPath.global();
        builderPath.param("type", "all-my-bubbles");
        if (threadId() != null) {
            builderPath.param("threadId", threadId());
        }
        if (z6) {
            builderPath.tag("start0");
        }
        return builderPath.build();
    }

    protected void deleteBubble(final ChatBubble chatBubble, final Callback<Boolean> callback) {
        if (chatBubble != null) {
            new BubbleHelper(this).deleteBubble(chatBubble.id(), new Callback<Boolean>() { // from class: com.narvii.monetization.bubble.BubbleListAdapter.2
                @Override // com.narvii.util.Callback
                public void call(Boolean bool) {
                    if (bool.booleanValue()) {
                        BubbleListAdapter.this.sendNotification(new Notification("delete", chatBubble));
                        Callback callback2 = callback;
                        if (callback2 != null) {
                            callback2.call(Boolean.TRUE);
                        }
                    }
                }
            });
        } else if (callback != null) {
            callback.call(Boolean.FALSE);
        }
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
        if (!(obj instanceof ChatBubble)) {
            return null;
        }
        ChatBubble chatBubble = (ChatBubble) obj;
        int i10 = chatBubble.type;
        boolean z6 = i10 == -1;
        boolean z10 = i10 == 2;
        View viewCreateView = createView(layoutId(), viewGroup, view);
        NVImageView nVImageView = (NVImageView) viewCreateView.findViewById(R.id.bubble_preview);
        if (nVImageView != null) {
            nVImageView.setScaleType(z10 ? ImageView.ScaleType.CENTER_CROP : ImageView.ScaleType.FIT_CENTER);
            int iDpToPx = z10 ? 0 : (int) Utils.dpToPx(getContext(), 9.0f);
            nVImageView.setPadding(iDpToPx, iDpToPx, iDpToPx, iDpToPx);
            if (chatBubble.type == -1) {
                nVImageView.setImageDrawable(ContextCompat.getDrawable(getContext(), R.drawable.ic_default_bubble));
            } else {
                nVImageView.setImageUrl(chatBubble.getPreviewUrl());
            }
            nVImageView.setShowPressedMask(false);
            nVImageView.setBackgroundDrawable(new ColorDrawable(chatBubble.status == 9 ? 1090453504 : -591879));
        }
        View viewFindViewById = viewCreateView.findViewById(R.id.custom_container);
        if (viewFindViewById != null) {
            viewFindViewById.setVisibility(8);
        }
        StoreItemNameView storeItemNameView = (StoreItemNameView) viewCreateView.findViewById(R.id.item_name);
        if (storeItemNameView != null) {
            storeItemNameView.setStoreItem(chatBubble);
            TextView textView = (TextView) storeItemNameView.findViewById(R.id.collection_name);
            if (textView != null) {
                textView.setTextColor(chatBubble.status == 9 ? -1437166 : -13421772);
            }
        }
        View viewFindViewById2 = viewCreateView.findViewById(R.id.bubble_content);
        if (viewFindViewById2 != null) {
            RestrictionInfo restrictionInfo = chatBubble.getRestrictionInfo();
            viewFindViewById2.setAlpha(((restrictionInfo == null || !restrictionInfo.isSupported() || (!this.membershipService.isMembership() && restrictionInfo.restrictType == 2)) && !z6) ? 0.5f : 1.0f);
        }
        View viewFindViewById3 = viewCreateView.findViewById(R.id.subtitle);
        if (viewFindViewById3 != null) {
            viewFindViewById3.setVisibility(8);
        }
        return viewCreateView;
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
        if (obj instanceof ChatBubble) {
            final ChatBubble chatBubble = (ChatBubble) obj;
            if (chatBubble.status == 9 && chatBubble.deletable) {
                ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
                aCMAlertDialog.setMessage(R.string.bubble_disable_hint);
                aCMAlertDialog.addButton(R.string.cancel, (View.OnClickListener) null, -4473925);
                aCMAlertDialog.addButton(R.string.delete, new View.OnClickListener() { // from class: com.narvii.monetization.bubble.BubbleListAdapter.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view3) {
                        BubbleListAdapter.this.deleteBubble(chatBubble, null);
                    }
                });
                aCMAlertDialog.show();
            } else {
                int i11 = chatBubble.type;
                if (i11 == 2) {
                    Intent intent = FragmentWrapperActivity.intent(BubbleDetailFragment.class);
                    intent.putExtra("id", chatBubble.id());
                    intent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(chatBubble));
                    intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Store");
                    safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
                    return true;
                }
                if (i11 == 1) {
                    new BubbleHelper(this.context).editChatBubble(chatBubble);
                }
            }
        }
        return super.onItemClick(listAdapter, i10, obj, view, view2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public void onPageResponse(ApiRequest apiRequest, ChatBubbleListResponse chatBubbleListResponse, int i10) {
        super.onPageResponse(apiRequest, chatBubbleListResponse, i10);
        if ("start0".equals(apiRequest.tag())) {
            onFirstPageResponse();
        }
    }

    public BubbleListAdapter(NVContext nVContext) {
        super(nVContext);
        this.membershipService = (MembershipService) nVContext.getService("membership");
    }
}
