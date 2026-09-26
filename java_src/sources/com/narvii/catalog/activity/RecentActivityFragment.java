package com.narvii.catalog.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.catalog.CatalogThemeFragment;
import com.narvii.date.DateSection;
import com.narvii.feed.FeedListAdapter;
import com.narvii.feed.FeedListItem;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.item.ItemHelper;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.StaticViewAdapter;
import com.narvii.list.overlay.OverlayListPlaceholder;
import com.narvii.model.Feed;
import com.narvii.model.Item;
import com.narvii.model.ItemCategory;
import com.narvii.model.Media;
import com.narvii.model.User;
import com.narvii.model.api.ListResponse;
import com.narvii.notification.Notification;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.Callback;
import com.narvii.util.Constants;
import com.narvii.util.DateUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.Card2View;
import com.narvii.widget.CardView;
import com.narvii.widget.NicknameView;
import com.narvii.widget.UserAvatarLayout;
import com.safedk.android.utils.Logger;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class RecentActivityFragment extends CatalogThemeFragment {
    Adapter adapter;
    private ItemHelper itemHelper;
    SimpleDateFormat dateFormatWithoutYear = new SimpleDateFormat("MMMM d", Locale.getDefault());
    SimpleDateFormat dateFormatWithYear = new SimpleDateFormat(Constants.BIRTHDAY_FORMAT, Locale.getDefault());
    private final Callback<String> callback = new Callback<String>() { // from class: com.narvii.catalog.activity.RecentActivityFragment.1
        @Override // com.narvii.util.Callback
        public void call(String str) {
            if (str == null) {
                return;
            }
            RecentActivityFragment.this.adapter.inMyFavoritesMapping.put(str, 1);
            RecentActivityFragment.this.adapter.notifyDataSetChanged();
        }
    };

    private class Adapter extends FeedListAdapter {
        HashMap<String, User> authorMap;
        final HashMap<String, Integer> inMyFavoritesMapping;
        private List l;

        public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            return false;
        }

        @Override // com.narvii.list.NVPagedAdapter
        public List<?> list() {
            return this.l;
        }

        @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter
        protected int pageSize() {
            return 25;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<? extends RecentActivityResponse> responseType() {
            return RecentActivityResponse.class;
        }

        public Adapter(NVContext nVContext) {
            super(nVContext);
            this.inMyFavoritesMapping = new HashMap<>();
            this.authorMap = new HashMap<>();
            this.source = "Catalog";
        }

        private String formatDate(Date date) {
            if (date == null) {
                return null;
            }
            if (DateUtils.isToday(date)) {
                return RecentActivityFragment.this.getString(R.string.today).toUpperCase(Locale.getDefault());
            }
            if (DateUtils.isYesterday(date)) {
                return RecentActivityFragment.this.getString(R.string.yesterday).toUpperCase(Locale.getDefault());
            }
            return DateUtils.isSameYear(date) ? RecentActivityFragment.this.dateFormatWithoutYear.format(date) : RecentActivityFragment.this.dateFormatWithYear.format(date);
        }

        @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter
        protected int getItemType(Object obj) {
            return obj instanceof DateSection ? getItemTypeCount() - 1 : super.getItemType(obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r8v1, types: [android.view.View] */
        /* JADX WARN: Type inference failed for: r8v2, types: [android.view.View] */
        /* JADX WARN: Type inference failed for: r8v3, types: [android.view.View, android.view.ViewGroup, com.narvii.feed.FeedListItem] */
        @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            boolean z6;
            if (obj instanceof DateSection) {
                TextView textView = (TextView) createView(R.layout.recent_activity_date_section_header, viewGroup, view);
                textView.setText(((DateSection) obj).time);
                return textView;
            }
            ?? itemView = super.getItemView(obj, view, viewGroup);
            if ((itemView instanceof FeedListItem) && ((z6 = obj instanceof Item))) {
                itemView = (FeedListItem) itemView;
                itemView.setDarkTheme(true, ((NVFragment) RecentActivityFragment.this)._backgroundColor);
                CardView cardView = (CardView) itemView.findViewById(R.id.feed_item_card);
                if (cardView != null) {
                    cardView.setStyle(1);
                }
                Card2View card2View = (Card2View) itemView.findViewById(R.id.feed_item_card2);
                if (card2View != null) {
                    card2View.setOfficial(true);
                }
                final Item item = (Item) obj;
                User user = this.authorMap.get(item.id());
                NicknameView nicknameView = (NicknameView) itemView.findViewById(R.id.nickname);
                if (nicknameView != null) {
                    nicknameView.setTextColor(-1);
                    if (user != null) {
                        nicknameView.setUser(user, true);
                    }
                }
                UserAvatarLayout userAvatarLayout = (UserAvatarLayout) itemView.findViewById(R.id.user_avatar_layout);
                if (userAvatarLayout != null && user != null) {
                    userAvatarLayout.setUser(user);
                }
                View viewFindViewWithTag = itemView.findViewWithTag("pin");
                if (viewFindViewWithTag == null) {
                    viewFindViewWithTag = new View(getContext());
                    viewFindViewWithTag.setBackgroundResource(R.drawable.ic_pin_round);
                    int iDpToPx = (int) Utils.dpToPx(getContext(), 26.0f);
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iDpToPx, iDpToPx);
                    layoutParams.addRule(10, -1);
                    layoutParams.addRule(21, -1);
                    int iDpToPx2 = (int) Utils.dpToPx(getContext(), 14.0f);
                    layoutParams.topMargin = iDpToPx2;
                    layoutParams.setMarginEnd(iDpToPx2);
                    viewFindViewWithTag.setTag("pin");
                    itemView.addView(viewFindViewWithTag, layoutParams);
                }
                if (z6) {
                    Integer num = this.inMyFavoritesMapping.get(item.id());
                    boolean z10 = num != null && num.intValue() == 1;
                    viewFindViewWithTag.setVisibility(z10 ? 8 : 0);
                    viewFindViewWithTag.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.catalog.activity.RecentActivityFragment.Adapter.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view2) {
                            RecentActivityFragment.this.itemHelper.addToMyFavorites(item.id(), RecentActivityFragment.this.callback);
                        }
                    });
                    View viewFindViewById = itemView.findViewById(R.id.user_click);
                    if (viewFindViewById != null) {
                        viewFindViewById.setPaddingRelative(viewFindViewById.getPaddingStart(), viewFindViewById.getPaddingTop(), (z10 ? 0 : getContext().getResources().getDimensionPixelSize(R.dimen.user_click_right_padding)) + getContext().getResources().getDimensionPixelSize(R.dimen.user_click_right_additional_pin_padding), viewFindViewById.getPaddingBottom());
                    }
                }
            }
            return itemView;
        }

        @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            User user;
            boolean z6 = obj instanceof Feed;
            if (z6 && view2 != null && view2.getId() == R.id.user_click && (user = this.authorMap.get(((Feed) obj).id())) != null) {
                Intent intent = UserProfileFragment.intent(this, user);
                if (intent == null) {
                    return true;
                }
                intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Feed");
                safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
                return true;
            }
            if (z6) {
                Feed feed = (Feed) obj;
                if (view2 == null) {
                    int i11 = 0;
                    for (int i12 = 0; i12 < i10; i12++) {
                        if (this.l.get(i12) instanceof Feed) {
                            i11++;
                        }
                    }
                    openFeedDetail(feed, i11);
                    return true;
                }
            }
            return super.onItemClick(listAdapter, i10, obj, view, view2);
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            int iIndexOfId;
            String strId;
            Integer num;
            Object obj = notification.obj;
            if ((obj instanceof Item) && notification.action == "delete" && (num = this.inMyFavoritesMapping.get((strId = ((Item) obj).id()))) != null && num.intValue() == 1) {
                this.inMyFavoritesMapping.remove(strId);
                notifyDataSetChanged();
                return;
            }
            Object obj2 = notification.obj;
            if (!(obj2 instanceof Item) || notification.action != "update" || (iIndexOfId = Utils.indexOfId(this._list, ((Item) obj2).id())) < 0) {
                super.onNotification(notification);
                return;
            }
            ((Item) notification.obj).author = ((Feed) this._list.get(iIndexOfId)).author;
            this._list.set(iIndexOfId, (Feed) notification.obj);
            notifyDataSetChanged();
        }

        private void addDateSection() {
            List<? extends T> listRawList = rawList();
            Date date = null;
            if (listRawList == 0) {
                this.l = null;
                return;
            }
            if (listRawList.isEmpty()) {
                this.l = new ArrayList();
                return;
            }
            this.l = new ArrayList();
            Iterator it = listRawList.iterator();
            while (it.hasNext()) {
                Feed feed = (Feed) it.next();
                if (!DateUtils.isSameDay(date, feed.modifiedTime)) {
                    this.l.add(new DateSection(formatDate(feed.modifiedTime)));
                }
                date = feed.modifiedTime;
                this.l.add(feed);
            }
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            return ApiRequest.builder().path("/knowledge-base-request/activities").build();
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected List<Feed> filterResponseList(List<Feed> list, int i10) {
            List<Feed> listFilterResponseList = super.filterResponseList(list, i10);
            if (listFilterResponseList != null && i10 != 2) {
                ArrayList arrayList = new ArrayList();
                HashSet hashSet = new HashSet();
                for (Feed feed : listFilterResponseList) {
                    if (!hashSet.contains(feed.id())) {
                        arrayList.add(feed);
                        hashSet.add(feed.id());
                    } else {
                        Log.d("item repeat " + feed.id());
                    }
                }
                return arrayList;
            }
            return listFilterResponseList;
        }

        @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter
        protected int getItemTypeCount() {
            return super.getItemTypeCount() + 1;
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i10) {
            if (getItem(i10) instanceof DateSection) {
                return false;
            }
            return super.isEnabled(i10);
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            addDateSection();
            super.notifyDataSetChanged();
        }

        @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter
        protected void onPageResponse(ApiRequest apiRequest, ListResponse<? extends Feed> listResponse, int i10) {
            super.onPageResponse(apiRequest, listResponse, i10);
            if (listResponse instanceof RecentActivityResponse) {
                RecentActivityResponse recentActivityResponse = (RecentActivityResponse) listResponse;
                Map<String, Integer> map = recentActivityResponse.inMyFavoritesMapping;
                if (map != null) {
                    this.inMyFavoritesMapping.putAll(map);
                }
                HashMap<String, User> mapAuthorMapping = recentActivityResponse.authorMapping();
                if (mapAuthorMapping != null) {
                    this.authorMap.putAll(mapAuthorMapping);
                }
            }
        }
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        StaticViewAdapter staticViewAdapter = new StaticViewAdapter();
        staticViewAdapter.addViews(new OverlayListPlaceholder(getContext()));
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        mergeAdapter.addAdapter(staticViewAdapter);
        Adapter adapter = new Adapter(this);
        this.adapter = adapter;
        mergeAdapter.addAdapter(adapter, true);
        return mergeAdapter;
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        if (i10 != 100 || i11 != -1 || intent == null) {
            super.onActivityResult(i10, i11, intent);
            return;
        }
        ArrayList listAs = JacksonUtils.readListAs(intent.getStringExtra("categoryList"), ItemCategory.class);
        if (intent.getStringExtra("itemId") != null) {
            this.itemHelper.addToCategory(listAs, intent.getStringExtra("itemId"), this.callback);
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ItemHelper itemHelper = new ItemHelper(this);
        this.itemHelper = itemHelper;
        itemHelper.source = "recent activities";
        setTitle(R.string.catalog_recent_activities);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDividerHeight(0);
        listView.setDivider(null);
    }

    @Override // com.narvii.catalog.CatalogThemeFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.backgroundImageView.setImageMedia((Media) JacksonUtils.readAs(getStringParam("background"), Media.class));
    }
}
