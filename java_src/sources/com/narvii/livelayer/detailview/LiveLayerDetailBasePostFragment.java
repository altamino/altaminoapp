package com.narvii.livelayer.detailview;

import android.content.Intent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.detail.FeedDetailFragment;
import com.narvii.feed.FeedToolbarLayout;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.list.NVAdapter;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.Impression.LinearImpressionCollector;
import com.narvii.model.Blog;
import com.narvii.model.Feed;
import com.narvii.model.Item;
import com.narvii.model.Media;
import com.narvii.model.api.ListResponse;
import com.narvii.util.LiveLayerUtils;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.widget.NVImageView;
import com.narvii.widget.SecretImageView;
import com.narvii.widget.TintButton;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class LiveLayerDetailBasePostFragment extends LiveLayerDetailBaseFragment {

    protected abstract class BasePostListAdapter extends LiveLayerDetailBaseFragment.BaseListAdapter<OnlineBlog, ListResponse<? extends OnlineBlog>> {
        public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<OnlineBlog> dataType() {
            return OnlineBlog.class;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "FeedsList";
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            return onItemClick(listAdapter, i10, obj, view, view2, false);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<? extends ListResponse<? extends OnlineBlog>> responseType() {
            return OnlineBlogListResponse.class;
        }

        public BasePostListAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment.BaseListAdapter
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2, boolean z6) {
            if ((obj instanceof Feed) && openFeed((Feed) obj, i10, z6)) {
                return true;
            }
            return super.onItemClick(listAdapter, i10, obj, view, view2);
        }

        protected boolean openFeed(Feed feed, int i10, boolean z6) {
            List list;
            Intent intent;
            AccountService accountService = (AccountService) getService("account");
            if (feed.isiModeDisableForUser(accountService != null ? accountService.getUserProfile() : null)) {
                final AlertDialog alertDialog = new AlertDialog(getContext());
                View viewInflate = this.inflater.inflate(R.layout.feed_disable_by_imod_layout, (ViewGroup) null);
                if (viewInflate.findViewById(R.id.action) != null) {
                    viewInflate.findViewById(R.id.action).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.livelayer.detailview.LiveLayerDetailBasePostFragment.BasePostListAdapter.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            alertDialog.dismiss();
                        }
                    });
                }
                alertDialog.setContentView(viewInflate);
                alertDialog.show();
                return true;
            }
            logClickEvent(feed, ActSemantic.checkDetail);
            if (z6) {
                intent = FeedDetailFragment.intent(this.context, feed, this.recommendList, null, this.timestamp, i10);
            } else {
                List listRawList = rawList();
                if (listRawList == null || this.recommendList == null) {
                    list = listRawList;
                } else {
                    ArrayList arrayList = new ArrayList();
                    arrayList.addAll(listRawList);
                    arrayList.addAll(this.recommendList);
                    list = arrayList;
                }
                intent = FeedDetailFragment.intent(this.context, feed, list, null, this.timestamp, i10);
            }
            intent.putExtra(ExternalPostPreviewFragment.SOURCE, LiveLayerDetailBasePostFragment.this.source);
            safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
            return true;
        }

        protected void setFootToolbar(Feed feed, View view) {
            FeedToolbarLayout feedToolbarLayout;
            if (feed == null || (feedToolbarLayout = (FeedToolbarLayout) view.findViewById(R.id.feed_toolbar)) == null) {
                return;
            }
            feedToolbarLayout.setFeed(feed);
            feedToolbarLayout.setDarkTheme(true);
            ((TextView) feedToolbarLayout.findViewById(R.id.feed_toolbar_vote_count)).setText(feed.getTotalVotesCount() > 0 ? String.valueOf(feed.getTotalVotesCount()) : null);
            TintButton tintButton = (TintButton) feedToolbarLayout.findViewById(R.id.feed_toolbar_vote_icon);
            if (feed.getVotedValue(isGlobalInteractionScope()) == 0) {
                tintButton.setImageDrawable(ContextCompat.getDrawable(getContext(), R.drawable.ic_vote_heart));
                tintButton.setTintColor(-1);
            } else {
                feedToolbarLayout.setFeed(feed);
            }
            feedToolbarLayout.setVisibility(0);
        }

        protected Feed setTitleAndImgFromFeed(Object obj, View view) {
            if (!(obj instanceof Blog)) {
                return null;
            }
            Blog blog = (Blog) obj;
            if (blog.type == 1) {
                Feed feed = blog.refObject;
                if (feed instanceof Item) {
                    Item item = (Item) feed;
                    NVImageView nVImageView = (NVImageView) view.findViewById(R.id.image);
                    if (nVImageView != null) {
                        Media coverMedia = LiveLayerUtils.getCoverMedia(item);
                        if (nVImageView instanceof SecretImageView) {
                            ((SecretImageView) nVImageView).setImageMedia(coverMedia, item.needHidden);
                        } else {
                            nVImageView.setImageMedia(coverMedia);
                        }
                    }
                    TextView textView = (TextView) view.findViewById(R.id.title);
                    if (textView != null) {
                        textView.setText(item.title());
                    }
                    View viewFindViewById = view.findViewById(R.id.fans_only_content_indicator);
                    if (viewFindViewById == null) {
                        return item;
                    }
                    viewFindViewById.setVisibility(item.isFansOnly() ? 0 : 8);
                    return item;
                }
            }
            NVImageView nVImageView2 = (NVImageView) view.findViewById(R.id.image);
            if (nVImageView2 != null) {
                Media coverMedia2 = LiveLayerUtils.getCoverMedia(blog);
                if (nVImageView2 instanceof SecretImageView) {
                    ((SecretImageView) nVImageView2).setImageMedia(coverMedia2, blog.needHidden);
                } else {
                    nVImageView2.setImageMedia(coverMedia2);
                }
            }
            TextView textView2 = (TextView) view.findViewById(R.id.title);
            if (textView2 != null) {
                textView2.setText(blog.title);
            }
            View viewFindViewById2 = view.findViewById(R.id.fans_only_content_indicator);
            if (viewFindViewById2 == null) {
                return blog;
            }
            viewFindViewById2.setVisibility(blog.isFansOnly() ? 0 : 8);
            return blog;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            addImpressionCollector(new LinearImpressionCollector(Feed.class));
        }
    }
}
