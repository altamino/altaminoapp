package com.narvii.item.list;

import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.feed.FeedHelper;
import com.narvii.feed.vote.VoteAnimationHelper;
import com.narvii.feed.vote.VotePopupDialog;
import com.narvii.item.ItemHelper;
import com.narvii.item.ItemPinObject;
import com.narvii.model.Item;
import com.narvii.model.ItemCategory;
import com.narvii.model.api.ItemListResponse;
import com.narvii.model.api.Pagination;
import com.narvii.notification.Notification;
import com.narvii.story.StoryNotificationStub;
import com.narvii.story.detail.VoteHelper;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.LiveLayerUtils;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import com.narvii.widget.VoteIcon;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class ItemGridExAdapter extends ItemGridAdapter {
    private List<String> apiRequestList;
    private List<String> apiRequestTimeStamp;
    private final Callback<String> callback;
    public String detailOpenSource;
    FeedHelper feedHelper;
    final HashMap<String, Integer> inMyFavoritesMapping;
    public ItemHelper itemHelper;
    private List<String> pageTokenList;
    private List<Integer> responseSizeList;
    public boolean showPin;
    View voteIconView;
    private HashSet<String> voting;

    public ItemGridExAdapter(NVContext nVContext) {
        super(nVContext);
        this.inMyFavoritesMapping = new HashMap<>();
        this.pageTokenList = new ArrayList();
        this.apiRequestList = new ArrayList();
        this.apiRequestTimeStamp = new ArrayList();
        this.responseSizeList = new ArrayList();
        this.callback = new Callback<String>() { // from class: com.narvii.item.list.ItemGridExAdapter.1
            @Override // com.narvii.util.Callback
            public void call(String str) {
                if (str == null) {
                    return;
                }
                ItemGridExAdapter.this.inMyFavoritesMapping.put(str, 1);
                ItemGridExAdapter.this.notifyDataSetChanged();
            }
        };
        if (nVContext instanceof NVFragment) {
            this.itemHelper = new ItemHelper((NVFragment) nVContext);
        } else {
            Log.e("not fragment in " + getClass().getSimpleName());
        }
        this.feedHelper = new FeedHelper(nVContext);
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
    public void refresh(int i, Callback<Integer> callback) {
        super.refresh(i, callback);
        this.pageTokenList.clear();
        this.apiRequestTimeStamp.clear();
        this.responseSizeList.clear();
        this.apiRequestList.clear();
    }

    @Override // com.narvii.item.list.ItemGridAdapter
    protected int layoutId() {
        return this.showPin ? R.layout.grid_item_card_pin : R.layout.grid_item_card_vote;
    }

    public void addToCategory(List<ItemCategory> list, String str) {
        ItemHelper itemHelper = this.itemHelper;
        if (itemHelper != null) {
            itemHelper.addToCategory(list, str, this.callback);
        }
    }

    @Override // com.narvii.item.list.ItemGridAdapter, com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        Object obj = notification.obj;
        if ((obj instanceof Item) && notification.action == "delete") {
            this.inMyFavoritesMapping.remove(((Item) obj).id());
            notifyDataSetChanged();
            return;
        }
        Object obj2 = notification.obj;
        if (obj2 instanceof ItemPinObject) {
            this.inMyFavoritesMapping.put(((ItemPinObject) obj2).id(), Integer.valueOf(((ItemPinObject) notification.obj).inMyFavorites));
            notifyDataSetChanged();
        } else {
            super.onNotification(notification);
        }
    }

    @Override // com.narvii.item.list.ItemGridAdapter, com.narvii.list.NVPagedAdapter
    protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
        View itemView = super.getItemView(obj, view, viewGroup);
        Item item = (Item) obj;
        if (this.showPin) {
            itemView.findViewById(R.id.grid_item_vote).setOnClickListener(this.subviewClickListener);
            itemView.findViewById(R.id.grid_item_vote).setOnLongClickListener(this.subviewLongClickListener);
            View viewFindViewById = itemView.findViewById(R.id.pin_icon);
            TextView textView = (TextView) itemView.findViewById(R.id.pin_text);
            Integer num = this.inMyFavoritesMapping.get(item.id());
            boolean z = num != null && num.intValue() == 1;
            itemView.findViewById(R.id.grid_item_vote).setBackgroundResource(z ? R.drawable.button_round_pinned : R.drawable.button_round_pin);
            viewFindViewById.setVisibility(z ? 8 : 0);
            textView.setText(z ? R.string.pinned : R.string.pin_it);
            return itemView;
        }
        itemView.findViewById(R.id.grid_item_vote).setOnClickListener(this.subviewClickListener);
        itemView.findViewById(R.id.grid_item_vote).setOnLongClickListener(this.subviewLongClickListener);
        VoteIcon voteIcon = (VoteIcon) itemView.findViewById(R.id.grid_item_vote_icon);
        voteIcon.setVotedValue(item.getVotedValue(isGlobalInteractionScope()));
        TextView textView2 = (TextView) itemView.findViewById(R.id.grid_item_vote_count);
        textView2.setText(item.getTotalVotesCount() == 0 ? getContext().getString(R.string.like) : String.valueOf(item.getTotalVotesCount()));
        View viewFindViewById2 = itemView.findViewById(R.id.grid_item_vote_progress);
        HashSet<String> hashSet = this.voting;
        boolean zContains = hashSet == null ? false : hashSet.contains(item.itemId);
        voteIcon.setVisibility(zContains ? 8 : 0);
        textView2.setVisibility(zContains ? 8 : 0);
        viewFindViewById2.setVisibility(zContains ? 0 : 8);
        return itemView;
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
        if (obj instanceof Item) {
            if (view2 != null && view2.getId() == R.id.grid_item_vote) {
                if (this.showPin) {
                    if (Utils.shouldShowLoginPage(getParentContext())) {
                        return true;
                    }
                    Item item = (Item) obj;
                    Integer num = this.inMyFavoritesMapping.get(item.id());
                    if (!(num != null && num.intValue() == 1)) {
                        this.itemHelper.addToMyFavorites(item.id(), this.callback);
                    } else {
                        this.feedHelper.delete(item, true);
                    }
                } else {
                    this.voteIconView = view2.findViewById(R.id.grid_item_vote_icon);
                    Intent intent = new Intent(StoryNotificationStub.ACTION_VOTE);
                    intent.putExtra("item", JacksonUtils.writeAsString(obj));
                    ensureLogin(intent);
                }
            } else {
                openItemDetail((Item) obj, i);
            }
            return true;
        }
        return super.onItemClick(listAdapter, i, obj, view, view2);
    }

    protected void openItemDetail(Item item, int i) {
        startActivity(openItemDetailIntent(item, i));
    }

    protected Intent openItemDetailIntent(Item item, int i) {
        Intent feedContinuousIntent = new FeedHelper(this).getFeedContinuousIntent(item, rawList(), pageSize(), this.apiRequestList, this.responseSizeList, this.pageTokenList, this.apiRequestTimeStamp);
        feedContinuousIntent.putExtra("Source", this.detailOpenSource);
        return feedContinuousIntent;
    }

    @Override // com.narvii.list.NVAdapter
    public boolean onLongClick(ListAdapter listAdapter, int i, final Object obj, View view, View view2) {
        if ((obj instanceof Item) && view2 != null && view2.getId() == R.id.grid_item_vote) {
            if (this.showPin) {
                return true;
            }
            final View viewFindViewById = view2.findViewById(R.id.grid_item_vote_icon);
            VotePopupDialog votePopupDialog = new VotePopupDialog(getContext());
            votePopupDialog.setFeed((Item) obj);
            votePopupDialog.setPosition(view2);
            votePopupDialog.setVoteListener(new Callback<Integer>() { // from class: com.narvii.item.list.ItemGridExAdapter.2
                @Override // com.narvii.util.Callback
                public void call(Integer num) {
                    ItemGridExAdapter.this.voteIconView = viewFindViewById;
                    Intent intent = new Intent(StoryNotificationStub.ACTION_VOTE);
                    intent.putExtra("item", JacksonUtils.writeAsString(obj));
                    intent.putExtra("voteValue", num.intValue());
                    ItemGridExAdapter.this.ensureLogin(intent);
                }
            });
            votePopupDialog.show();
            return true;
        }
        return super.onLongClick(listAdapter, i, obj, view, view2);
    }

    @Override // com.narvii.list.NVAdapter
    protected void onLoginResult(boolean z, Intent intent) {
        if (z && StoryNotificationStub.ACTION_VOTE.equals(intent.getAction())) {
            vote((Item) JacksonUtils.readAs(intent.getStringExtra("item"), Item.class), intent.hasExtra("voteValue") ? Integer.valueOf(intent.getIntExtra("voteValue", 4)) : null);
        }
        super.onLoginResult(z, intent);
    }

    public void vote(final Item item, Integer num) {
        HashSet<String> hashSet = this.voting;
        if (hashSet == null || !hashSet.contains(item.itemId)) {
            final int targetVotedValue = VoteHelper.getTargetVotedValue(num, item, isGlobalInteractionScope());
            LiveLayerUtils.reportVoting(getParentContext(), item, targetVotedValue);
            new VoteHelper(this).vote(item, Integer.valueOf(targetVotedValue), (ApiService) getService("api"), new VoteHelper.OnVoteListenerAdapter() { // from class: com.narvii.item.list.ItemGridExAdapter.3
                @Override // com.narvii.story.detail.VoteHelper.OnVoteListenerAdapter, com.narvii.story.detail.VoteHelper.OnVoteListener
                public void onVoteEnd(boolean z) {
                    ItemGridExAdapter.this.voting.remove(item.itemId);
                    ItemGridExAdapter.this.notifyDataSetChanged();
                    if (!z || targetVotedValue == 0) {
                        return;
                    }
                    ItemGridExAdapter itemGridExAdapter = ItemGridExAdapter.this;
                    if (itemGridExAdapter.voteIconView != null) {
                        new VoteAnimationHelper(itemGridExAdapter.getContext()).startAnimation(ItemGridExAdapter.this.voteIconView, targetVotedValue, null);
                    }
                }
            });
            if (this.voting == null) {
                this.voting = new HashSet<>();
            }
            this.voting.add(item.itemId);
            notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public void onPageResponse(ApiRequest apiRequest, ItemListResponse itemListResponse, int i) {
        Pagination pagination;
        super.onPageResponse(apiRequest, (ApiRequest) itemListResponse, i);
        if (itemListResponse.list() != null) {
            for (Item item : itemListResponse.list()) {
                Map<String, Integer> map = itemListResponse.inMyFavoritesMapping;
                if (map == null) {
                    this.inMyFavoritesMapping.remove(item.id());
                } else if (!map.containsKey(item.id())) {
                    this.inMyFavoritesMapping.remove(item.id());
                } else {
                    this.inMyFavoritesMapping.put(item.id(), itemListResponse.inMyFavoritesMapping.get(item.id()));
                }
            }
        }
        this.apiRequestTimeStamp.add(itemListResponse.timestamp);
        this.apiRequestList.add(apiRequest.url());
        this.responseSizeList.add(Integer.valueOf(itemListResponse.list() != null ? filterResponseList(itemListResponse.list(), 0).size() : 0));
        if (this.paginationType != 1 || (pagination = itemListResponse.paging) == null || TextUtils.isEmpty(pagination.nextPageToken)) {
            return;
        }
        this.pageTokenList.add(itemListResponse.paging.nextPageToken);
    }
}
