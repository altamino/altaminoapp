package com.narvii.onboarding;

import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.feed.FeedListAdapter;
import com.narvii.feed.FeedListItem;
import com.narvii.list.NVListFragment;
import com.narvii.model.Blog;
import com.narvii.model.Feed;
import com.narvii.model.Item;
import com.narvii.model.api.ListResponse;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.NicknameView;
import java.util.ArrayList;
import java.util.HashSet;

/* loaded from: classes3.dex */
public class RecommendedFeedsFragment extends NVListFragment {
    ArrayList<Feed> feeds;

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.feeds = JacksonUtils.readListUsing(getStringParam("feeds"), new Feed.FeedDeserializer());
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.like_feed_layout, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        ((TextView) view.findViewById(R.id.title)).setText(R.string.like_feed_title);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        return new Adapter(this);
    }

    private class Adapter extends FeedListAdapter {
        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<? extends ListResponse<? extends Feed>> responseType() {
            return null;
        }

        public Adapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void onAttach() {
            this._list = RecommendedFeedsFragment.this.feeds;
            this._isEnd = true;
            super.onAttach();
        }

        private boolean hasVoted(Feed feed) {
            return feed instanceof Blog ? ((Blog) feed).getVotedValue(isGlobalInteractionScope()) > 0 : (feed instanceof Item) && ((Item) feed).getVotedValue(isGlobalInteractionScope()) > 0;
        }

        private boolean isProcessing(Feed feed) {
            HashSet<String> hashSet = this.progressList;
            return hashSet != null && hashSet.contains(feed.id());
        }

        @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (obj instanceof Feed) {
                Feed feed = (Feed) obj;
                if (hasVoted(feed)) {
                    vote(feed, 0);
                    return true;
                }
                vote(feed, 4);
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }

        @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            View itemView = super.getItemView(obj, view, viewGroup);
            boolean z = itemView instanceof FeedListItem;
            View view2 = itemView;
            if (z) {
                Feed feed = (Feed) obj;
                FeedListItem feedListItem = (FeedListItem) itemView;
                feedListItem.findViewById(R.id.feed_toolbar).setVisibility(8);
                feedListItem.findViewById(R.id.feed_title_external_toolbar).setVisibility(8);
                View viewFindViewById = feedListItem.findViewById(R.id.nickname);
                if (viewFindViewById instanceof NicknameView) {
                    ((NicknameView) viewFindViewById).setTextColor(-11908534);
                } else if (viewFindViewById instanceof TextView) {
                    ((TextView) viewFindViewById).setTextColor(-11908534);
                }
                if (feedListItem.findViewById(R.id.on_boarding_overlay) == null) {
                    this.inflater.inflate(R.layout.like_feed_heart, (ViewGroup) feedListItem, true);
                }
                feedListItem.findViewById(R.id.on_boarding_overlay).setVisibility((hasVoted(feed) || isProcessing(feed)) ? 0 : 4);
                feedListItem.findViewById(R.id.on_boarding_heart).setVisibility((!hasVoted(feed) || isProcessing(feed)) ? 4 : 0);
                feedListItem.findViewById(R.id.on_boarding_process).setVisibility(isProcessing(feed) ? 0 : 4);
                feedListItem.setPadding(feedListItem.getPaddingLeft(), (int) Utils.dpToPx(getContext(), 8.0f), feedListItem.getPaddingRight(), (int) Utils.dpToPx(getContext(), 8.0f));
                feedListItem.setClipToPadding(false);
                feedListItem.disableClick = true;
                view2 = feedListItem;
            }
            return view2;
        }
    }
}
