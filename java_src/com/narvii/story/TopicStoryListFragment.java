package com.narvii.story;

import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.narvii.adapter.MarginAdapter;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.language.ContentLanguageService;
import com.narvii.list.DivideColumnAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.overlay.OverlayLayout;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.Impression.ScrollLinearLayoutInListViewImpressionCollector;
import com.narvii.logging.LogEvent;
import com.narvii.logging.LogUtils;
import com.narvii.model.Blog;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.story.StoryTopic;
import com.narvii.model.story.StoryTopicMetaResponse;
import com.narvii.story.widgets.StoryTopicView;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NVListView;
import java.util.List;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* loaded from: classes3.dex */
public class TopicStoryListFragment extends NVListFragment {
    private ViewGroup headerLayout;
    private StoryListAdapter storyListAdapter;
    private StoryTopic storyTopic;
    private TopperAdapter topperAdapter;

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131755020;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "TopicView";
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    @Override // com.narvii.app.NVFragment
    protected boolean sendPageViewEventToThirdParty() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.storyTopic = (StoryTopic) JacksonUtils.readAs(getStringParam("topic"), StoryTopic.class);
        StoryTopic storyTopic = this.storyTopic;
        if (storyTopic == null || storyTopic.topicId == 0) {
            Log.e("topic0problem : TopicStoryListFragment open with error: " + this.storyTopic);
        }
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_topic_story, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        OverlayLayout overlayLayout = (OverlayLayout) view.findViewById(R.id.overlay);
        if (overlayLayout != null) {
            overlayLayout.attach((NVListView) getListView());
            overlayLayout.setVisibility(0);
            overlayLayout.setLayout(R.layout.topic_story_list_header_overlay, getStatusBarOverlaySize() + getActionBarOverlaySize());
            overlayLayout.setHeight1(getStatusBarOverlaySize() + getActionBarOverlaySize());
            this.headerLayout = (ViewGroup) overlayLayout.findViewById(R.id.header_layout);
        }
        setTitle((CharSequence) null);
    }

    @Override // com.narvii.app.NVFragment
    public Boolean hasPostEntry() {
        return false;
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
        listView.setDividerHeight(0);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        TopperAdapter topperAdapter = new TopperAdapter(this);
        this.topperAdapter = topperAdapter;
        mergeAdapter.addAdapter(topperAdapter);
        int iDpToPxInt = Utils.dpToPxInt(getContext(), 4.0f);
        DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this, iDpToPxInt, iDpToPxInt, iDpToPxInt, iDpToPxInt);
        StoryTopic storyTopic = this.storyTopic;
        this.storyListAdapter = new TopicStoryListAdapter(this, storyTopic != null ? storyTopic.topicId : 0);
        divideColumnAdapter.setAdapter(this.storyListAdapter, 2);
        mergeAdapter.addAdapter(divideColumnAdapter);
        mergeAdapter.addAdapter(new MarginAdapter(this, Utils.dpToPxInt(getContext(), 62.0f)));
        return mergeAdapter;
    }

    @Override // com.narvii.list.NVListFragment
    public Drawable getListSelector() {
        return new ColorDrawable(0);
    }

    class TopicStoryListAdapter extends StoryListAdapter {
        @Override // com.narvii.story.StoryListAdapter
        protected boolean showCommentBarInDetailPage() {
            return true;
        }

        @Override // com.narvii.story.StoryListAdapter
        protected boolean showSearchButtonInDetailPage() {
            return false;
        }

        public TopicStoryListAdapter(NVContext nVContext, int i) {
            super(nVContext, i, StoryApi.TOPIC_LIST);
            if (i == 0) {
                Log.e("topic0problem : topic list type is 0 with topic-list : " + TopicStoryListFragment.this.storyTopic);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateHeaderView() {
        if (this.storyTopic == null) {
            return;
        }
        ((TextView) this.headerLayout.findViewById(R.id.topic_title)).setText(this.storyTopic.getDisplayName());
        this.topperAdapter.notifyDataSetChanged();
    }

    public class TopperAdapter extends NVAdapter {
        ContentLanguageService languageService;
        View.OnTouchListener onTouchListener;
        StoryTopicView.OnPreClickListener preClickListener;

        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "SubTopic";
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        public TopperAdapter(NVContext nVContext) {
            super(nVContext);
            this.onTouchListener = new View.OnTouchListener() { // from class: com.narvii.story.TopicStoryListFragment.TopperAdapter.1
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    if (motionEvent == null) {
                        return false;
                    }
                    int action = motionEvent.getAction();
                    if ((action != 1 && action != 3) || !(TopperAdapter.this.getParentContext() instanceof NVListFragment)) {
                        return false;
                    }
                    ((NVListFragment) TopperAdapter.this.getParentContext()).logImpressionQuit();
                    ((NVListFragment) TopperAdapter.this.getParentContext()).logImpression();
                    return false;
                }
            };
            this.preClickListener = new StoryTopicView.OnPreClickListener() { // from class: com.narvii.story.TopicStoryListFragment.TopperAdapter.2
                @Override // com.narvii.story.widgets.StoryTopicView.OnPreClickListener
                public void onPreClick(StoryTopicView storyTopicView, StoryTopic storyTopic) {
                    LogEvent.clickBuilder(TopperAdapter.this, ActSemantic.checkDetail).object(storyTopic).send();
                }
            };
            this.languageService = (ContentLanguageService) getService("content_language");
            sendRequest();
        }

        @Override // com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            addImpressionCollector(new ScrollLinearLayoutInListViewImpressionCollector(StoryTopic.class) { // from class: com.narvii.story.TopicStoryListFragment.TopperAdapter.3
                @Override // com.narvii.logging.Impression.ScrollLinearLayoutInListViewImpressionCollector
                public int getLinearLayoutId() {
                    return R.id.subtopic_list;
                }
            });
        }

        public void sendRequest() {
            if (TopicStoryListFragment.this.storyTopic == null) {
                return;
            }
            ApiRequest.Builder builder = new ApiRequest.Builder();
            builder.global().path("topic/" + TopicStoryListFragment.this.storyTopic.topicId + "/metadata");
            builder.param(IjkMediaMeta.IJKM_KEY_LANGUAGE, this.languageService.getRequestPrefLanguageWithLocalAsDefault());
            ((ApiService) getService("api")).exec(builder.build(), new ApiResponseListener<StoryTopicMetaResponse>(StoryTopicMetaResponse.class) { // from class: com.narvii.story.TopicStoryListFragment.TopperAdapter.4
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, StoryTopicMetaResponse storyTopicMetaResponse) throws Exception {
                    super.onFinish(apiRequest, (ApiRequest) storyTopicMetaResponse);
                    StoryTopic storyTopic = storyTopicMetaResponse.topic;
                    if (storyTopic != null) {
                        TopicStoryListFragment.this.storyTopic = storyTopic;
                        TopicStoryListFragment.this.updateHeaderView();
                    }
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    super.onFail(apiRequest, i, list, str, apiResponse, th);
                }
            });
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.topic_story_list_header, viewGroup, view);
            viewCreateView.setTag(NVListView.OVERSCROLL_STRETCH_TAG, true);
            if (TopicStoryListFragment.this.storyTopic != null) {
                ((TextView) viewCreateView.findViewById(R.id.topic_title)).setText(TopicStoryListFragment.this.storyTopic.getDisplayName());
                NVImageView nVImageView = (NVImageView) viewCreateView.findViewById(R.id.topic_background);
                Object item = TopicStoryListFragment.this.storyListAdapter == null ? null : TopicStoryListFragment.this.storyListAdapter.getItem(0);
                if (item instanceof Blog) {
                    nVImageView.setImageMedia(((Blog) item).getExtraCoverMedia());
                }
                ((HorizontalScrollView) viewCreateView.findViewById(R.id.subtopic_list_scrollview)).setOnTouchListener(this.onTouchListener);
                if (TopicStoryListFragment.this.storyTopic.subTopicList != null && !TopicStoryListFragment.this.storyTopic.subTopicList.isEmpty()) {
                    if (viewCreateView.getLayoutParams() != null) {
                        viewCreateView.getLayoutParams().height = Utils.dpToPxInt(getContext(), 200.0f);
                    }
                    LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
                    LinearLayout linearLayout = (LinearLayout) viewCreateView.findViewById(R.id.subtopic_list);
                    linearLayout.removeAllViews();
                    for (StoryTopic storyTopic : TopicStoryListFragment.this.storyTopic.subTopicList) {
                        StoryTopicView storyTopicView = (StoryTopicView) layoutInflaterFrom.inflate(R.layout.story_subtopic_view_layout, (ViewGroup) linearLayout, false);
                        storyTopicView.setTopic(storyTopic);
                        storyTopicView.setOnPreClickListener(this.preClickListener);
                        LogUtils.setAttachedObject(storyTopicView, storyTopic);
                        storyTopicView.setClickable(true);
                        linearLayout.addView(storyTopicView);
                    }
                } else if (viewCreateView.getLayoutParams() != null) {
                    viewCreateView.getLayoutParams().height = Utils.dpToPxInt(getContext(), 160.0f);
                }
            }
            viewCreateView.setTag(R.id._contains_scroll_linearLayout, true);
            LogUtils.setShownInAdapter(viewCreateView, this);
            return viewCreateView;
        }
    }
}
