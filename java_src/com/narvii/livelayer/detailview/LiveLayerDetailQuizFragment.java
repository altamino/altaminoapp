package com.narvii.livelayer.detailview;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.adapter.MarginAdapter;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.feed.FeedHelper;
import com.narvii.list.MergeAdapter;
import com.narvii.livelayer.LiveLayerMemberAdapter;
import com.narvii.livelayer.category.OnlineCategoryConfig;
import com.narvii.livelayer.category.QuizCategoryConfig;
import com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment;
import com.narvii.livelayer.detailview.LiveLayerDetailBasePostFragment;
import com.narvii.model.Blog;
import com.narvii.model.Media;
import com.narvii.util.LiveLayerUtils;
import com.narvii.util.Utils;
import com.narvii.util.logging.LoggingSource;
import com.narvii.widget.NVImageView;
import com.narvii.widget.SecretImageView;

/* loaded from: classes3.dex */
public class LiveLayerDetailQuizFragment extends LiveLayerDetailBasePostFragment {
    public LiveLayerDetailQuizFragment() {
        this.source = "Live Layer (Quizzes)";
    }

    @Override // com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        MergeAdapter mergeAdapterCreateDefaultAdapter = createDefaultAdapter();
        this.memberAdapter = new LiveLayerDetailBaseFragment.MemberListAdapterWithCapture(this);
        LiveLayerMemberAdapter liveLayerMemberAdapter = this.memberAdapter;
        liveLayerMemberAdapter.source = this.source;
        mergeAdapterCreateDefaultAdapter.addAdapter(liveLayerMemberAdapter);
        mergeAdapterCreateDefaultAdapter.addAdapter(new MarginAdapter(this, (int) Utils.dpToPx(getContext(), 10.0f)));
        QuizListAdapter quizListAdapter = new QuizListAdapter(this);
        this.mainListAdapter = quizListAdapter;
        mergeAdapterCreateDefaultAdapter.addAdapter(quizListAdapter);
        LiveLayerDetailBaseFragment.BaseListAdapter baseListAdapter = this.mainListAdapter;
        baseListAdapter.getClass();
        mergeAdapterCreateDefaultAdapter.addAdapter(new LiveLayerDetailBaseFragment.BaseListAdapter.RecommendAdapter(this));
        LiveLayerDetailBaseFragment.BaseListAdapter baseListAdapter2 = this.mainListAdapter;
        baseListAdapter2.getClass();
        LiveLayerDetailBaseFragment.BaseListAdapter.BaseRecommendedAdapter baseRecommendedAdapter = new LiveLayerDetailBaseFragment.BaseListAdapter.BaseRecommendedAdapter(this);
        this.recommendListAdapter = baseRecommendedAdapter;
        mergeAdapterCreateDefaultAdapter.addAdapter(baseRecommendedAdapter);
        LiveLayerDetailBaseFragment.EmptyAdapter emptyAdapter = new LiveLayerDetailBaseFragment.EmptyAdapter(this);
        emptyAdapter.setAdapter(this.mainListAdapter);
        emptyAdapter.addSubViewAdapter(this.recommendListAdapter);
        mergeAdapterCreateDefaultAdapter.addAdapter(emptyAdapter);
        return mergeAdapterCreateDefaultAdapter;
    }

    @Override // com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment
    protected OnlineCategoryConfig getOnlineCategoryConfig() {
        return new QuizCategoryConfig();
    }

    public class QuizListAdapter extends LiveLayerDetailBasePostFragment.BasePostListAdapter {
        @Override // com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment.BaseListAdapter
        protected int getLayoutId() {
            return R.layout.live_layer_detail_quiz_item;
        }

        @Override // com.narvii.livelayer.detailview.LiveLayerDetailBasePostFragment.BasePostListAdapter, com.narvii.list.NVAdapter, com.narvii.logging.Area
        public /* bridge */ /* synthetic */ String getAreaName() {
            return super.getAreaName();
        }

        @Override // com.narvii.livelayer.detailview.LiveLayerDetailBasePostFragment.BasePostListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public /* bridge */ /* synthetic */ void onAttach() {
            super.onAttach();
        }

        @Override // com.narvii.livelayer.detailview.LiveLayerDetailBasePostFragment.BasePostListAdapter, com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment.BaseListAdapter
        public /* bridge */ /* synthetic */ boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2, boolean z) {
            return super.onItemClick(listAdapter, i, obj, view, view2, z);
        }

        public QuizListAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment.BaseListAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup, boolean z) {
            View itemView = super.getItemView(obj, view, viewGroup, z);
            if (obj instanceof Blog) {
                Blog blog = (Blog) obj;
                NVImageView nVImageView = (NVImageView) itemView.findViewById(R.id.image);
                if (nVImageView != null) {
                    Media coverMedia = LiveLayerUtils.getCoverMedia(blog);
                    if (nVImageView instanceof SecretImageView) {
                        ((SecretImageView) nVImageView).setImageMedia(coverMedia, blog.needHidden);
                    } else {
                        nVImageView.setImageMedia(coverMedia);
                    }
                }
                TextView textView = (TextView) itemView.findViewById(R.id.title);
                if (textView != null) {
                    textView.setText(blog.title);
                }
                itemView.findViewById(R.id.start_quiz).setOnClickListener(this.subviewClickListener);
                alignOnlineBar(itemView, R.id.start_quiz_layout);
                View viewFindViewById = itemView.findViewById(R.id.fans_only_content_indicator);
                if (viewFindViewById != null) {
                    viewFindViewById.setVisibility(blog.isFansOnly() ? 0 : 8);
                }
            }
            return itemView;
        }

        @Override // com.narvii.livelayer.detailview.LiveLayerDetailBasePostFragment.BasePostListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (view2 != null && view2.getId() == R.id.start_quiz && (obj instanceof Blog)) {
                FeedHelper feedHelper = new FeedHelper(this.context);
                feedHelper.loggingSource = LoggingSource.FeedList;
                feedHelper.startQuiz((Blog) obj, LiveLayerDetailQuizFragment.this.getActivity().getIntent());
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }
    }
}
