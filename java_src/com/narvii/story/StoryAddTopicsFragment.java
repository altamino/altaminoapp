package com.narvii.story;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.support.v4.internal.view.SupportMenu;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.language.ContentLanguageService;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.model.TopicTag;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.TopicSuggestResponse;
import com.narvii.model.story.StoryTopic;
import com.narvii.util.ActionBarIcon;
import com.narvii.util.AndroidBug5497Workaround;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.layouts.NVFlowLayout;
import com.narvii.util.statusbar.StatusBarUtils;
import com.narvii.util.text.TextUtils;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.TagEditFlowView;
import com.narvii.widget.TopicEditFlowView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* loaded from: classes3.dex */
public class StoryAddTopicsFragment extends NVListFragment implements FragmentOnBackListener {
    private ApiService apiService;
    private List<TopicTag> copyHistory;
    private TopicHistoryAdapter historyAdapter;
    private StoryTopicHistoryPrefsHelper historyHelper;
    private ContentLanguageService languageService;
    private MergeAdapter mergeAdapter;
    private ApiRequest oldTopicSuggestRequest;
    private TopicSuggestAdapter suggestAdapter;
    private View tagLayout;
    private TopicEditAdapter topicAdapter;
    private List<TopicTag> topicHistory;
    private TopicAddContainerViewHolder topicHolder;
    private List<TopicTag> topicSuggest;
    private ArrayList<TopicTag> topicTags;
    private boolean stopMatching = false;
    private String keyword = "";

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131755020;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "StoryTopicEdit";
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        getActivity().getWindow().setSoftInputMode(16);
        super.onCreate(bundle);
        StatusBarUtils.setSystemUiFlagLightStatusBar((NVContext) this, true);
        if (bundle == null) {
            String stringParam = getStringParam("topicList");
            if (!TextUtils.isEmpty(stringParam)) {
                this.topicTags = JacksonUtils.readListAs(stringParam, TopicTag.class);
            }
        }
        if (this.topicTags == null) {
            this.topicTags = new ArrayList<>();
        }
        this.topicSuggest = new ArrayList();
        this.historyHelper = new StoryTopicHistoryPrefsHelper(getContext());
        this.topicHistory = this.historyHelper.getTopic();
        this.copyHistory = copyTags(this.topicHistory);
        if (this.topicHistory == null) {
            this.topicHistory = new ArrayList();
        } else {
            historyRemoveTopics();
        }
        setBackButtonDrawable(ContextCompat.getDrawable(getContext(), R.drawable.ic_actionbar_close));
        setBackButtonTint(ContextCompat.getColor(getContext(), R.color.story_theme_action_bar_view));
        setActionBarTitleColor(ContextCompat.getColor(getContext(), R.color.story_theme_text_color));
        setTitle(getResources().getString(R.string.add_topic));
        setHasOptionsMenu(true);
        this.apiService = (ApiService) getService("api");
        this.languageService = (ContentLanguageService) getService("content_language");
    }

    @Override // com.narvii.app.NVFragment
    protected int getActionBarLayoutId() {
        return isDarkTheme() ? R.layout.actionbar_dark_layout : R.layout.actionbar_layout_no_shadow;
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.story_edit_topics_layout, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        AndroidBug5497Workaround.assistActivity(getActivity());
        getListView().setOnTouchListener(new View.OnTouchListener() { // from class: com.narvii.story.StoryAddTopicsFragment.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view2, MotionEvent motionEvent) {
                StoryAddTopicsFragment.this.hideKeyBoard();
                return false;
            }
        });
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.mergeAdapter = new MergeAdapter(this);
        this.topicAdapter = new TopicEditAdapter(this);
        this.historyAdapter = new TopicHistoryAdapter(this);
        this.suggestAdapter = new TopicSuggestAdapter(this);
        this.mergeAdapter.addAdapter(this.topicAdapter, true);
        this.mergeAdapter.addAdapter(this.historyAdapter);
        this.mergeAdapter.addAdapter(this.suggestAdapter);
        return this.mergeAdapter;
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        menu.add(0, R.string.post_submit, 0, R.string.post_submit).setIcon(new ActionBarIcon(getContext(), getString(R.string.fa_check), 0.75f, ContextCompat.getColor(getContext(), R.color.story_theme_action_bar_view))).setShowAsAction(2);
        super.onCreateOptionsMenu(menu, menuInflater);
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.string.post_submit) {
            this.topicHolder.editTopicFlowLayout.editSubmit();
            saveTopic();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    protected void hideKeyBoard() {
        try {
            if (((InputMethodManager) getContext().getSystemService("input_method")).isAcceptingText()) {
                SoftKeyboard.hideSoftKeyboard(getContext());
            }
        } catch (Exception e) {
            Log.e("fail to hide keyboard", e);
        }
    }

    private void saveTopic() {
        SoftKeyboard.hideSoftKeyboard(getContext());
        List<TagEditFlowView.Tag> tagList = this.topicHolder.editTopicFlowLayout.getTagList();
        this.topicTags.clear();
        if (tagList == null) {
            return;
        }
        for (TagEditFlowView.Tag tag : tagList) {
            if (tag instanceof TopicTag) {
                TopicTag topicTag = new TopicTag();
                TopicTag topicTag2 = (TopicTag) tag;
                topicTag.id = topicTag2.id;
                topicTag.title = topicTag2.title;
                this.topicTags.add(topicTag);
            }
        }
        Intent intent = new Intent();
        intent.putExtra("topicList", JacksonUtils.writeAsString(this.topicTags));
        setResult(-1, intent);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void matchTopic(final String str) {
        ApiRequest apiRequestBuild = ApiRequest.builder().path("/topic/suggest-topics").param(IjkMediaMeta.IJKM_KEY_LANGUAGE, this.languageService.getRequestPrefLanguageWithLocalAsDefault()).param("q", str).build();
        ApiRequest apiRequest = this.oldTopicSuggestRequest;
        if (apiRequest != null) {
            this.apiService.abort(apiRequest);
        }
        this.oldTopicSuggestRequest = apiRequestBuild;
        this.apiService.exec(apiRequestBuild, new ApiResponseListener<TopicSuggestResponse>(TopicSuggestResponse.class) { // from class: com.narvii.story.StoryAddTopicsFragment.2
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest2, TopicSuggestResponse topicSuggestResponse) throws Exception {
                super.onFinish(apiRequest2, (ApiRequest) topicSuggestResponse);
                if (StoryAddTopicsFragment.this.stopMatching) {
                    return;
                }
                StoryAddTopicsFragment.this.topicSuggest.clear();
                List<StoryTopic> list = topicSuggestResponse.topicList;
                if (list != null) {
                    Iterator<StoryTopic> it = list.iterator();
                    while (it.hasNext()) {
                        StoryAddTopicsFragment.this.topicSuggest.add(TopicTag.create(it.next()));
                    }
                }
                StoryAddTopicsFragment.this.suggestAdapter.setHighlightText(str);
                StoryAddTopicsFragment.this.mergeAdapter.notifyDataSetChanged();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest2, int i, List<NameValuePair> list, String str2, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest2, i, list, str2, apiResponse, th);
                if (StoryAddTopicsFragment.this.oldTopicSuggestRequest != null) {
                    StoryAddTopicsFragment.this.apiService.abort(StoryAddTopicsFragment.this.oldTopicSuggestRequest);
                }
                StoryAddTopicsFragment.this.topicSuggest.clear();
                StoryAddTopicsFragment.this.mergeAdapter.notifyDataSetChanged();
            }
        });
    }

    public boolean isTagFull() {
        return this.topicHolder.editTopicFlowLayout.isTagFull();
    }

    private List<TopicTag> copyTags(List<TopicTag> list) {
        ArrayList listAs = JacksonUtils.readListAs(JacksonUtils.writeAsString(list), TopicTag.class);
        return listAs == null ? new ArrayList() : listAs;
    }

    private void historyRemoveTopics() {
        ArrayList arrayList = new ArrayList();
        Iterator<TopicTag> it = this.topicTags.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().title);
        }
        Iterator<TopicTag> it2 = this.topicHistory.iterator();
        while (it2.hasNext()) {
            if (arrayList.contains(it2.next().title)) {
                it2.remove();
            }
        }
    }

    @Override // com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(NVActivity nVActivity) {
        hideKeyBoard();
        return false;
    }

    class TopicEditAdapter extends NVAdapter {
        @Override // android.widget.Adapter
        public int getCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        public TopicEditAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return Integer.valueOf(i);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (StoryAddTopicsFragment.this.tagLayout == null) {
                StoryAddTopicsFragment.this.tagLayout = createView(R.layout.story_topic_add_container, viewGroup, view);
            }
            StoryAddTopicsFragment storyAddTopicsFragment = StoryAddTopicsFragment.this;
            storyAddTopicsFragment.topicHolder = (TopicAddContainerViewHolder) storyAddTopicsFragment.tagLayout.getTag();
            if (StoryAddTopicsFragment.this.topicHolder == null) {
                StoryAddTopicsFragment storyAddTopicsFragment2 = StoryAddTopicsFragment.this;
                storyAddTopicsFragment2.topicHolder = storyAddTopicsFragment2.new TopicAddContainerViewHolder(storyAddTopicsFragment2.tagLayout);
            }
            StoryAddTopicsFragment.this.topicHolder.updateView();
            return StoryAddTopicsFragment.this.tagLayout;
        }
    }

    public class TopicAddContainerViewHolder implements View.OnClickListener, TagEditFlowView.TagTransformer, TagEditFlowView.TagEditListener, TagEditFlowView.OnTagRemovedListener, TagEditFlowView.OnSelectedChangedListener {
        public TopicEditFlowView editTopicFlowLayout;
        public View itemView;

        @Override // com.narvii.widget.TagEditFlowView.TagEditListener
        public void onSaveTextBeyondLimit() {
        }

        public TopicAddContainerViewHolder(View view) {
            this.itemView = view;
            view.setTag(this);
            this.editTopicFlowLayout = (TopicEditFlowView) view.findViewById(R.id.edit_topic_flow_layout);
            this.editTopicFlowLayout.setOnClickListener(this);
            this.editTopicFlowLayout.setTagTransformer(this);
            this.editTopicFlowLayout.setTagEditListener(this);
            this.editTopicFlowLayout.setOnTagRemovedListener(this);
            this.editTopicFlowLayout.setOnSelectedChangedListener(this);
            ArrayList arrayList = new ArrayList();
            Iterator it = StoryAddTopicsFragment.this.topicTags.iterator();
            while (it.hasNext()) {
                arrayList.add((TopicTag) it.next());
            }
            this.editTopicFlowLayout.setTagList(arrayList);
            this.editTopicFlowLayout.requestEdittextFocus();
        }

        public void updateView() {
            TopicEditFlowView topicEditFlowView = this.editTopicFlowLayout;
            if (topicEditFlowView != null) {
                topicEditFlowView.requestEditFocus();
            }
        }

        public void setTag(TopicTag topicTag) {
            this.editTopicFlowLayout.addTag(topicTag);
        }

        @Override // com.narvii.widget.TagEditFlowView.TagTransformer
        public TagEditFlowView.Tag transform(String str) {
            TopicTag topicTag = new TopicTag();
            topicTag.title = str;
            return topicTag;
        }

        @Override // com.narvii.widget.TagEditFlowView.TagEditListener
        public void afterTextChangedNotEmpty(String str) {
            final String strTrim = str.trim();
            if (TextUtils.isEmpty(strTrim)) {
                return;
            }
            StoryAddTopicsFragment.this.stopMatching = false;
            StoryAddTopicsFragment.this.keyword = strTrim;
            Utils.postDelayed(new Runnable() { // from class: com.narvii.story.StoryAddTopicsFragment.TopicAddContainerViewHolder.1
                @Override // java.lang.Runnable
                public void run() {
                    if (android.text.TextUtils.equals(strTrim, StoryAddTopicsFragment.this.keyword)) {
                        StoryAddTopicsFragment.this.matchTopic(strTrim);
                    }
                }
            }, 250L);
        }

        @Override // com.narvii.widget.TagEditFlowView.TagEditListener
        public void afterTextChangedEmpty() {
            StoryAddTopicsFragment.this.stopMatching = true;
            StoryAddTopicsFragment.this.topicSuggest.clear();
            StoryAddTopicsFragment.this.mergeAdapter.notifyDataSetChanged();
        }

        @Override // com.narvii.widget.TagEditFlowView.OnTagRemovedListener
        public void onTagRemoved(TagEditFlowView.Tag tag) {
            if (tag instanceof TopicTag) {
                StoryAddTopicsFragment.this.topicTags.remove(tag);
                if (StoryAddTopicsFragment.this.copyHistory.contains(tag)) {
                    StoryAddTopicsFragment.this.topicHistory.add((TopicTag) tag);
                }
                StoryAddTopicsFragment.this.mergeAdapter.notifyDataSetChanged();
            }
        }

        @Override // com.narvii.widget.TagEditFlowView.OnSelectedChangedListener
        public void onChanged(List<TagEditFlowView.Tag> list) {
            StoryAddTopicsFragment.this.topicTags.clear();
            if (list != null) {
                for (TagEditFlowView.Tag tag : list) {
                    if (tag instanceof TopicTag) {
                        StoryAddTopicsFragment.this.topicTags.add((TopicTag) tag);
                    }
                }
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            StoryAddTopicsFragment.this.hideKeyBoard();
        }
    }

    class TopicHistoryAdapter extends NVAdapter {
        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        public TopicHistoryAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return (StoryAddTopicsFragment.this.topicSuggest.size() > 0 || StoryAddTopicsFragment.this.topicHistory.size() == 0) ? 0 : 1;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return Integer.valueOf(i);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.story_topic_history_container, viewGroup, view);
            TopicHistoryContainerViewHolder topicHistoryContainerViewHolder = (TopicHistoryContainerViewHolder) viewCreateView.getTag();
            if (topicHistoryContainerViewHolder == null) {
                topicHistoryContainerViewHolder = StoryAddTopicsFragment.this.new TopicHistoryContainerViewHolder(viewCreateView);
            }
            topicHistoryContainerViewHolder.setHistory(StoryAddTopicsFragment.this.topicHistory, StoryAddTopicsFragment.this.topicSuggest.size() != 0);
            return viewCreateView;
        }
    }

    public class TopicHistoryContainerViewHolder implements View.OnClickListener {
        public NVFlowLayout historyFlowLayout;
        public View itemView;
        public View ivDelete;
        private View.OnClickListener onTagClickListener = new View.OnClickListener() { // from class: com.narvii.story.StoryAddTopicsFragment.TopicHistoryContainerViewHolder.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view.getId() == R.id.iv_delete_history) {
                    final ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(StoryAddTopicsFragment.this.getContext());
                    aCMAlertDialog.setMessage(StoryAddTopicsFragment.this.getString(R.string.delete_topic_history));
                    aCMAlertDialog.setCancelable(true);
                    aCMAlertDialog.addButton(R.string.cancel, null);
                    aCMAlertDialog.addButton(R.string.delete, new View.OnClickListener() { // from class: com.narvii.story.StoryAddTopicsFragment.TopicHistoryContainerViewHolder.1.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view2) {
                            StoryAddTopicsFragment.this.historyHelper.clearHistory();
                            StoryAddTopicsFragment.this.topicHistory.clear();
                            StoryAddTopicsFragment.this.mergeAdapter.notifyDataSetChanged();
                            aCMAlertDialog.dismiss();
                        }
                    }, SupportMenu.CATEGORY_MASK);
                    aCMAlertDialog.show();
                    return;
                }
                if (StoryAddTopicsFragment.this.isTagFull()) {
                    final ACMAlertDialog aCMAlertDialog2 = new ACMAlertDialog(StoryAddTopicsFragment.this.getContext());
                    aCMAlertDialog2.setMessage(StoryAddTopicsFragment.this.getString(R.string.add_up_enough_topics));
                    aCMAlertDialog2.setCancelable(true);
                    aCMAlertDialog2.addButton(android.R.string.ok, new View.OnClickListener() { // from class: com.narvii.story.StoryAddTopicsFragment.TopicHistoryContainerViewHolder.1.2
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view2) {
                            aCMAlertDialog2.dismiss();
                        }
                    });
                    aCMAlertDialog2.show();
                    return;
                }
                Object tag = view.getTag();
                if (tag instanceof TopicTag) {
                    StoryAddTopicsFragment.this.topicHistory.remove(tag);
                    StoryAddTopicsFragment.this.topicHolder.setTag((TopicTag) tag);
                }
                StoryAddTopicsFragment.this.mergeAdapter.notifyDataSetChanged();
            }
        };

        public TopicHistoryContainerViewHolder(View view) {
            this.itemView = view;
            view.setOnClickListener(this);
            this.ivDelete = view.findViewById(R.id.iv_delete_history);
            this.historyFlowLayout = (NVFlowLayout) view.findViewById(R.id.history_flow_layout);
            this.ivDelete.setOnClickListener(this.onTagClickListener);
        }

        public void setHistory(List<TopicTag> list, boolean z) {
            if (list == null || list.size() == 0 || z) {
                this.itemView.setVisibility(8);
                return;
            }
            this.itemView.setVisibility(0);
            this.historyFlowLayout.removeAllViews();
            for (TopicTag topicTag : list) {
                NVFlowLayout nVFlowLayout = this.historyFlowLayout;
                nVFlowLayout.addView(createTopicView(topicTag, nVFlowLayout));
            }
        }

        private TextView createTopicView(TopicTag topicTag, NVFlowLayout nVFlowLayout) {
            TextView textView = (TextView) LayoutInflater.from(StoryAddTopicsFragment.this.getContext()).inflate(R.layout.story_topic_view_simple, (ViewGroup) nVFlowLayout, false);
            textView.setTag(topicTag);
            textView.setOnClickListener(this.onTagClickListener);
            textView.setText(topicTag.getTagTitle());
            return textView;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            StoryAddTopicsFragment.this.hideKeyBoard();
        }
    }

    class TopicSuggestAdapter extends NVAdapter {
        private String highlightText;

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        public TopicSuggestAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return StoryAddTopicsFragment.this.topicSuggest.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return Integer.valueOf(i);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.story_topic_view_matched, viewGroup, view);
            SuggestTopicViewHolder suggestTopicViewHolder = (SuggestTopicViewHolder) viewCreateView.getTag();
            if (suggestTopicViewHolder == null) {
                suggestTopicViewHolder = StoryAddTopicsFragment.this.new SuggestTopicViewHolder(viewCreateView);
            }
            if (StoryAddTopicsFragment.this.topicSuggest != null && i < StoryAddTopicsFragment.this.topicSuggest.size()) {
                final TopicTag topicTag = (TopicTag) StoryAddTopicsFragment.this.topicSuggest.get(i);
                suggestTopicViewHolder.setTopic(topicTag, this.highlightText);
                suggestTopicViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.story.StoryAddTopicsFragment.TopicSuggestAdapter.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        StoryAddTopicsFragment.this.topicHolder.setTag(topicTag);
                        StoryAddTopicsFragment.this.topicSuggest.clear();
                        StoryAddTopicsFragment.this.mergeAdapter.notifyDataSetChanged();
                    }
                });
            }
            return viewCreateView;
        }

        public void setHighlightText(String str) {
            this.highlightText = str;
        }
    }

    public class SuggestTopicViewHolder {
        public View itemView;
        private View.OnTouchListener onTouchListener = new View.OnTouchListener() { // from class: com.narvii.story.StoryAddTopicsFragment.SuggestTopicViewHolder.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                StoryAddTopicsFragment.this.hideKeyBoard();
                return false;
            }
        };
        TopicTag topicTag;
        TextView tvTopic;

        public SuggestTopicViewHolder(View view) {
            this.itemView = view;
            this.tvTopic = (TextView) view.findViewById(R.id.tv_topic);
        }

        public void setTopic(TopicTag topicTag, String str) {
            String lowerCase;
            int iIndexOf;
            this.topicTag = topicTag;
            if (!TextUtils.isEmpty(topicTag.title)) {
                String lowerCase2 = topicTag.title.toLowerCase(Locale.getDefault());
                if (!TextUtils.isEmpty(str) && (iIndexOf = lowerCase2.indexOf((lowerCase = str.toLowerCase(Locale.getDefault())))) != -1) {
                    SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(topicTag.title);
                    spannableStringBuilder.setSpan(new ForegroundColorSpan(-45934), iIndexOf, lowerCase.length() + iIndexOf, 0);
                    this.tvTopic.setText(spannableStringBuilder);
                    return;
                }
                this.tvTopic.setText(lowerCase2);
                return;
            }
            this.tvTopic.setText("");
        }
    }
}
