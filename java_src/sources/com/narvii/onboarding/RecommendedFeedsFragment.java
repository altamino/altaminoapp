package com.narvii.onboarding;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.feed.FeedListAdapter;
import com.narvii.feed.FeedListItem;
import com.narvii.list.NVListFragment;
import com.narvii.model.Blog;
import com.narvii.model.Feed;
import com.narvii.model.Item;
import com.narvii.model.api.ListResponse;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.NicknameView;
import java.util.ArrayList;
import java.util.HashSet;

/* JADX INFO: loaded from: classes11.dex */
public class RecommendedFeedsFragment extends NVListFragment {
    ArrayList<Feed> feeds;
    private OnBoardingRecommendHelper onBoardingRecommendHelper;

    private class Adapter extends FeedListAdapter {
        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
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

        private boolean hasVoted(Feed feed) {
            if (feed instanceof Blog) {
                return ((Blog) feed).getVotedValue(isGlobalInteractionScope()) > 0;
            }
            return (feed instanceof Item) && ((Item) feed).getVotedValue(isGlobalInteractionScope()) > 0;
        }

        private boolean isProcessing(Feed feed) {
            HashSet<String> hashSet = this.progressList;
            return hashSet != null && hashSet.contains(feed.id());
        }

        @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void onAttach() {
            this._list = RecommendedFeedsFragment.this.feeds;
            this._isEnd = true;
            super.onAttach();
        }

        @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (!(obj instanceof Feed)) {
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }
            Feed feed = (Feed) obj;
            if (hasVoted(feed)) {
                vote(feed, 0);
                return true;
            }
            vote(feed, 4);
            return true;
        }

        @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            int i10;
            int i11;
            View itemView = super.getItemView(obj, view, viewGroup);
            boolean z6 = itemView instanceof FeedListItem;
            View view2 = itemView;
            if (z6) {
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
                View viewFindViewById2 = feedListItem.findViewById(R.id.on_boarding_overlay);
                int i12 = 4;
                if (!hasVoted(feed) && !isProcessing(feed)) {
                    i10 = 4;
                } else {
                    i10 = 0;
                }
                viewFindViewById2.setVisibility(i10);
                View viewFindViewById3 = feedListItem.findViewById(R.id.on_boarding_heart);
                if (hasVoted(feed) && !isProcessing(feed)) {
                    i11 = 0;
                } else {
                    i11 = 4;
                }
                viewFindViewById3.setVisibility(i11);
                View viewFindViewById4 = feedListItem.findViewById(R.id.on_boarding_process);
                if (isProcessing(feed)) {
                    i12 = 0;
                }
                viewFindViewById4.setVisibility(i12);
                feedListItem.setPadding(feedListItem.getPaddingLeft(), (int) Utils.dpToPx(getContext(), 8.0f), feedListItem.getPaddingRight(), (int) Utils.dpToPx(getContext(), 8.0f));
                feedListItem.setClipToPadding(false);
                feedListItem.disableClick = true;
                view2 = feedListItem;
            }
            return view2;
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        return new Adapter(this);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        OnBoardingRecommendHelper onBoardingRecommendHelper = new OnBoardingRecommendHelper(getParentContext());
        this.onBoardingRecommendHelper = onBoardingRecommendHelper;
        this.feeds = onBoardingRecommendHelper.getRecommendedFeeds();
    }

    @Override // com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.like_feed_layout, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        ((TextView) view.findViewById(R.id.title)).setText(R.string.like_feed_title);
    }
}
