package com.narvii.topic;

import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.language.ContentLanguageService;
import com.narvii.list.DivideColumnAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.logging.ActSemantic;
import com.narvii.master.home.discover.adapter.ModuleDivideColumnIPC;
import com.narvii.model.story.StoryTopic;
import com.narvii.model.story.StoryTopicListResponse;
import com.narvii.topic.model.discover.ContentModule;
import com.narvii.topic.widgets.GeneralTopicCard;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* loaded from: classes3.dex */
public class TopicListFragment extends NVListFragment {
    public static final String KEY_PATH = "KEY_PATH";
    public static final String KEY_TITLE = "KEY_TITLE";
    protected TopicItemAdapter adapter;

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "ModuleTopicList";
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public int initNVTheme() {
        return 2;
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(getStringParam("KEY_TITLE"));
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
        listView.setDividerHeight(0);
    }

    @Override // com.narvii.list.NVListFragment
    public Drawable getListSelector() {
        return new ColorDrawable(0);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this);
        TopicItemAdapter topicItemAdapter = new TopicItemAdapter(this);
        this.adapter = topicItemAdapter;
        divideColumnAdapter.setAdapter(topicItemAdapter, 3);
        return divideColumnAdapter;
    }

    protected class TopicItemAdapter extends NVPagedAdapter<StoryTopic, StoryTopicListResponse> {
        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "TopicList";
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemType(Object obj) {
            return 0;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemTypeCount() {
            return 1;
        }

        protected boolean showOnlineInfo() {
            return false;
        }

        protected boolean showSubscribeTag() {
            return false;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            addImpressionCollector(new ModuleDivideColumnIPC(this, (ContentModule) JacksonUtils.readAs(TopicListFragment.this.getStringParam("_module"), ContentModule.class)));
        }

        public TopicItemAdapter(NVContext nVContext) {
            super(nVContext, 1);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<StoryTopic> dataType() {
            return StoryTopic.class;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<? extends StoryTopicListResponse> responseType() {
            return StoryTopicListResponse.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            ApiRequest.Builder apiRequestFromPath = Utils.getApiRequestFromPath(TopicListFragment.this.getStringParam("KEY_PATH"));
            if (apiRequestFromPath != null) {
                return apiRequestFromPath.build();
            }
            ApiRequest.Builder builder = new ApiRequest.Builder();
            builder.global().path("/topic/trending");
            builder.param(IjkMediaMeta.IJKM_KEY_LANGUAGE, ((ContentLanguageService) getService("content_language")).getRequestPrefLanguageWithLocalAsDefault());
            return builder.build();
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.item_cell_topic_grid, viewGroup, view);
            viewCreateView.setPadding(viewCreateView.getPaddingLeft(), Utils.dpToPxInt(getContext(), 20.0f), viewCreateView.getPaddingRight(), viewCreateView.getPaddingBottom());
            View viewFindViewById = viewCreateView.findViewById(R.id.story_topic_card_view);
            if ((obj instanceof StoryTopic) && (viewFindViewById instanceof GeneralTopicCard)) {
                GeneralTopicCard generalTopicCard = (GeneralTopicCard) viewFindViewById;
                generalTopicCard.setShownOnlineInfo(showOnlineInfo());
                generalTopicCard.setShownSubscribeTag(showSubscribeTag());
                generalTopicCard.setTopic((StoryTopic) obj);
            }
            viewCreateView.setOnClickListener(this.subviewClickListener);
            return viewCreateView;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (obj instanceof StoryTopic) {
                StoryTopic storyTopic = (StoryTopic) obj;
                logClickEvent(storyTopic, ActSemantic.checkDetail);
                Intent intent = FragmentWrapperActivity.intent(TopicTabFragment.class);
                intent.putExtra("topic", JacksonUtils.writeAsString(storyTopic));
                if (storyTopic.topicId == 0) {
                    Log.e("topic0problem : StoryTopicView open with error: $topic");
                    return false;
                }
                getContext().startActivity(intent);
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }
    }
}
