package com.narvii.suggest.interest;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.list.AdriftAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVPagedAdapter;
import com.narvii.list.StaticViewAdapter;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.model.InterestData;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.story.StoryTopic;
import com.narvii.suggest.interest.InterestPickerFragment;
import com.narvii.suggest.interest.InterestTopicView;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import com.narvii.util.layouts.NVFlowLayout;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* loaded from: classes3.dex */
public class InterestPickerSubInterestFragment extends InterestPickerFragment.InterestPickerBaseFragment {
    private static final int MIN_PICKS = 4;
    private CheckBox agree;
    private ViewGroup agreeLayout;
    private TextView agreeText;
    private View bottomCover;
    private View bottomCover2;
    private Button btNext;
    private MergeAdapter mergeAdapter;
    private TextView skip;
    private InterestPickerSubInterestAdapter subInterestAdapter;
    private Set<String> expendedInterests = new HashSet();
    private HashMap<Integer, StoryTopic> selectedTopics = new HashMap<>();
    private int createTimes = 0;
    private List<StoryTopic> searchedTopics = new ArrayList();
    private List<Integer> uploadTopicList = new ArrayList();

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "SubInterests";
    }

    @Override // com.narvii.suggest.interest.InterestPickerFragment.InterestPickerBaseFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.selectedTopics.clear();
        this.expendedInterests.clear();
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.interest_picker_layout_default, viewGroup, false);
    }

    @Override // com.narvii.suggest.interest.InterestPickerFragment.InterestPickerBaseFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        this.createTimes++;
        super.onViewCreated(view, bundle);
        this.btNext = (Button) view.findViewById(R.id.next_button);
        this.skip = (TextView) view.findViewById(R.id.skip_button);
        this.agreeLayout = (ViewGroup) view.findViewById(R.id.agree_layout);
        this.bottomCover = view.findViewById(R.id.bottom_cover);
        this.bottomCover2 = view.findViewById(R.id.bottom_cover_2);
        this.agree = (CheckBox) view.findViewById(R.id.agree);
        this.agreeText = (TextView) view.findViewById(R.id.agree_text);
        this.agree.setChecked(true);
        this.bottomCover.setVisibility(8);
        this.bottomCover2.setVisibility(0);
        this.agreeLayout.setVisibility(0);
        this.agreeLayout.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.suggest.interest.-$$Lambda$InterestPickerSubInterestFragment$qyP0TfuD0zgqS6bv-3bJ7RLD5MM
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$onViewCreated$0$InterestPickerSubInterestFragment(view2);
            }
        });
        updateButton();
    }

    public /* synthetic */ void lambda$onViewCreated$0$InterestPickerSubInterestFragment(View view) {
        this.agree.setChecked(!r2.isChecked());
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.mergeAdapter = new MergeAdapter(this);
        StaticViewAdapter staticViewAdapter = new StaticViewAdapter() { // from class: com.narvii.suggest.interest.InterestPickerSubInterestFragment.1
            @Override // com.narvii.list.StaticViewAdapter, android.widget.Adapter
            public int getCount() {
                if (InterestPickerSubInterestFragment.this.subInterestAdapter == null || InterestPickerSubInterestFragment.this.subInterestAdapter.isEmpty()) {
                    return 0;
                }
                return super.getCount();
            }

            @Override // com.narvii.list.StaticViewAdapter, android.widget.Adapter
            public View getView(int i, View view, ViewGroup viewGroup) {
                View view2 = super.getView(i, view, viewGroup);
                View viewFindViewById = view2.findViewById(R.id.sub_interest_title);
                if (viewFindViewById instanceof TextView) {
                    ((TextView) viewFindViewById).setText(InterestPickerSubInterestFragment.this.getString(R.string.interest_picker_sub_interest_title, 4));
                }
                return view2;
            }
        };
        staticViewAdapter.addLayouts(R.layout.interest_picker_layout_sub_interest_header);
        this.mergeAdapter.addAdapter(staticViewAdapter);
        this.mergeAdapter.addAdapter(new AdriftAdapter(this) { // from class: com.narvii.suggest.interest.InterestPickerSubInterestFragment.2
            @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
            public String getAreaName() {
                return "Search";
            }

            @Override // com.narvii.list.AdriftAdapter, android.widget.Adapter
            public int getCount() {
                return super.getCount();
            }

            @Override // android.widget.Adapter
            public View getView(int i, View view, ViewGroup viewGroup) {
                View viewCreateView = createView(R.layout.interest_search_view, viewGroup, view);
                viewCreateView.setOnClickListener(this.subviewClickListener);
                return viewCreateView;
            }

            @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
            public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
                if (view2 != null && view2.getId() == R.id.search_layout) {
                    logClickEvent(ActSemantic.pageEnter);
                    Intent intent = FragmentWrapperActivity.intent(TopicSearchFragment.class);
                    intent.putExtra(TopicSearchFragment.TOPIC_ID_LIST, JacksonUtils.writeAsString(new ArrayList(InterestPickerSubInterestFragment.this.selectedTopics.keySet())));
                    InterestPickerSubInterestFragment.this.startActivityForResult(intent, 101);
                    return true;
                }
                return super.onItemClick(listAdapter, i, obj, view, view2);
            }
        });
        this.mergeAdapter.addAdapter(new SearchedTopicsAdapter(this));
        this.subInterestAdapter = new InterestPickerSubInterestAdapter(this);
        this.mergeAdapter.addAdapter(this.subInterestAdapter, true);
        this.mergeAdapter.addAdapter(new InterestPickerFragment.InterestPickerBaseFragment.BottomPaddingAdapter(this.subInterestAdapter) { // from class: com.narvii.suggest.interest.InterestPickerSubInterestFragment.3
            @Override // com.narvii.suggest.interest.InterestPickerFragment.InterestPickerBaseFragment.BottomPaddingAdapter
            protected int getMinimumHeight() {
                return Utils.dpToPxInt(InterestPickerSubInterestFragment.this.getContext(), 180.0f);
            }
        });
        return this.mergeAdapter;
    }

    @Override // com.narvii.list.NVListFragment
    public Drawable getListSelector() {
        return new ColorDrawable(0);
    }

    @Override // com.narvii.list.NVListFragment
    public Drawable getListDividerDrawable() {
        return new ColorDrawable(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateButton() {
        this.btNext.setEnabled(this.selectedTopics.size() >= 4);
        this.agreeLayout.setEnabled(this.selectedTopics.size() >= 4);
        this.agree.setEnabled(this.selectedTopics.size() >= 4);
        this.agreeText.setEnabled(this.selectedTopics.size() >= 4);
        if (this.selectedTopics.size() >= 4) {
            this.agreeLayout.setAlpha(1.0f);
        } else {
            this.agreeLayout.setAlpha(0.5f);
        }
    }

    @Override // com.narvii.suggest.interest.InterestPickerFragment.InterestPickerBaseFragment
    protected void doSubmit() {
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.setCancelable(false);
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.suggest.interest.InterestPickerSubInterestFragment.4
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                Bundle bundle = new Bundle();
                bundle.putIntegerArrayList("selectedTopics", new ArrayList<>(InterestPickerSubInterestFragment.this.selectedTopics.keySet()));
                InterestPickerSubInterestFragment.this.showNext(bundle);
            }
        };
        progressDialog.failureListener = new Callback<String>() { // from class: com.narvii.suggest.interest.InterestPickerSubInterestFragment.5
            @Override // com.narvii.util.Callback
            public void call(String str) {
                TextView textView = InterestPickerSubInterestFragment.this.btSkip;
                if (textView != null) {
                    textView.setVisibility(0);
                }
            }
        };
        progressDialog.show();
        boolean zIsChecked = this.agree.isChecked();
        if (this.selectedTopics != null) {
            HashSet hashSet = new HashSet();
            List<StoryTopic> list = this.searchedTopics;
            if (list != null) {
                Iterator<StoryTopic> it = list.iterator();
                while (it.hasNext()) {
                    hashSet.add(it.next().id());
                }
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (StoryTopic storyTopic : this.selectedTopics.values()) {
                if (hashSet.contains(storyTopic.id())) {
                    arrayList2.add(storyTopic.getDisplayName());
                } else {
                    arrayList.add(storyTopic.getDisplayName());
                }
            }
            LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("Next").extraParam("topicCount", Integer.valueOf(arrayList.size())).extraParam("topicNameList", TextUtils.join(",", arrayList)).extraParam("searchTopicCount", Integer.valueOf(arrayList2.size())).extraParam("searchTopicNameList", TextUtils.join(",", arrayList2)).extraParam("notificationEnabled", Boolean.valueOf(zIsChecked)).send();
        }
        ((ApiService) getService("api")).exec(ApiRequest.builder().post().path("/persona/picked-topics?language=" + getLanguageCode()).param("pickedTopicIds", this.uploadTopicList).param("subscribe", Boolean.valueOf(zIsChecked)).build(), progressDialog.dismissListener);
    }

    private class InterestPickerSubInterestAdapter extends NVPagedAdapter<InterestData, SubInterestResponse> {
        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemType(Object obj) {
            return 0;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemTypeCount() {
            return 1;
        }

        public InterestPickerSubInterestAdapter(NVContext nVContext) {
            super(nVContext, -2);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<InterestData> dataType() {
            return InterestData.class;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<? extends SubInterestResponse> responseType() {
            return SubInterestResponse.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            ApiRequest.Builder builderParam = ApiRequest.builder().path("/persona/interest-detail").param(IjkMediaMeta.IJKM_KEY_LANGUAGE, InterestPickerSubInterestFragment.this.getLanguageCode());
            Bundle data = InterestPickerSubInterestFragment.this.getData();
            if (data != null && data.containsKey("selectedInterest")) {
                ArrayList<String> stringArrayList = data.getStringArrayList("selectedInterest");
                if (!stringArrayList.isEmpty()) {
                    Iterator<String> it = stringArrayList.iterator();
                    String str = "";
                    while (it.hasNext()) {
                        str = str + "," + it.next();
                    }
                    builderParam.param("interestIds", str.substring(1));
                }
            }
            return builderParam.build();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, SubInterestResponse subInterestResponse, int i) {
            super.onPageResponse(apiRequest, (ApiRequest) subInterestResponse, i);
            checkAndShowSkip();
            if (InterestPickerSubInterestFragment.this.createTimes == 1) {
                Iterator<InterestData> it = subInterestResponse.interestDetails.iterator();
                while (it.hasNext()) {
                    List<StoryTopic> list = it.next().topicList;
                    if (list != null) {
                        for (StoryTopic storyTopic : list) {
                            InterestPickerSubInterestFragment.this.selectedTopics.put(Integer.valueOf(storyTopic.topicId), storyTopic);
                            InterestPickerSubInterestFragment.this.uploadTopicList.add(Integer.valueOf(storyTopic.topicId));
                        }
                        InterestPickerSubInterestFragment.this.updateButton();
                    }
                }
            }
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected void onFailResponse(ApiRequest apiRequest, String str, ApiResponse apiResponse, int i) {
            super.onFailResponse(apiRequest, str, apiResponse, i);
            checkAndShowSkip();
        }

        private void checkAndShowSkip() {
            boolean zIsEmpty = isEmpty();
            boolean z = errorMessage() != null;
            boolean zIsListShown = isListShown();
            if (InterestPickerSubInterestFragment.this.btSkip != null) {
                if ((zIsListShown && zIsEmpty) || z) {
                    InterestPickerSubInterestFragment.this.btSkip.setVisibility(0);
                }
            }
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected List<InterestData> filterResponseList(List<InterestData> list, int i) {
            ArrayList arrayList = new ArrayList(super.filterResponseList(list, i));
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                InterestData interestData = (InterestData) it.next();
                if (interestData != null) {
                    List<StoryTopic> list2 = interestData.foldedTopicList;
                    boolean z = list2 == null || list2.isEmpty();
                    List<StoryTopic> list3 = interestData.visibleTopicList;
                    boolean z2 = list3 == null || list3.isEmpty();
                    List<StoryTopic> list4 = interestData.topicList;
                    boolean z3 = list4 == null || list4.isEmpty();
                    if (z && z2 && z3) {
                        it.remove();
                    }
                } else {
                    it.remove();
                }
            }
            return arrayList;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            InterestTopicView interestTopicView;
            View viewCreateView = createView(R.layout.interest_picker_layout_sub_interest_item, viewGroup, view);
            if (obj instanceof InterestData) {
                InterestData interestData = (InterestData) obj;
                ((TextView) viewCreateView.findViewById(R.id.interest_name)).setText(interestData.getDisplayName());
                ArrayList arrayList = new ArrayList();
                List<StoryTopic> list = interestData.topicList;
                if (list != null && !list.isEmpty()) {
                    arrayList.addAll(interestData.topicList);
                }
                List<StoryTopic> list2 = interestData.visibleTopicList;
                if (list2 != null && !list2.isEmpty()) {
                    arrayList.addAll(interestData.visibleTopicList);
                }
                List<StoryTopic> list3 = interestData.foldedTopicList;
                boolean z = (list3 == null || list3.isEmpty()) ? false : true;
                if (z && InterestPickerSubInterestFragment.this.expendedInterests.contains(interestData.interestId)) {
                    arrayList.addAll(interestData.foldedTopicList);
                }
                if (z && !InterestPickerSubInterestFragment.this.expendedInterests.contains(interestData.interestId)) {
                    arrayList.add(new InterestTopicView.MoreTopicMock());
                }
                NVFlowLayout nVFlowLayout = (NVFlowLayout) viewCreateView.findViewById(R.id.topic_flow);
                int size = arrayList.size();
                int childCount = nVFlowLayout.getChildCount();
                for (int i = 0; i < size; i++) {
                    if (i < childCount) {
                        interestTopicView = (InterestTopicView) nVFlowLayout.getChildAt(i);
                    } else {
                        interestTopicView = (InterestTopicView) this.inflater.inflate(R.layout.interest_picker_sub_interest_topic_item, (ViewGroup) nVFlowLayout, false);
                        interestTopicView.setOnClickListener(this.subviewClickListener);
                        nVFlowLayout.addView(interestTopicView);
                    }
                    StoryTopic storyTopic = (StoryTopic) arrayList.get(i);
                    boolean z2 = storyTopic != null && InterestPickerSubInterestFragment.this.selectedTopics.containsKey(Integer.valueOf(storyTopic.topicId));
                    interestTopicView.setTopicData(storyTopic);
                    interestTopicView.setChecked(z2);
                }
                while (size < nVFlowLayout.getChildCount()) {
                    nVFlowLayout.removeViewAt(nVFlowLayout.getChildCount() - 1);
                }
            }
            return viewCreateView;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (view2 instanceof InterestTopicView) {
                InterestTopicView interestTopicView = (InterestTopicView) view2;
                StoryTopic topicData = interestTopicView.getTopicData();
                if (!(topicData instanceof InterestTopicView.MoreTopicMock)) {
                    if (InterestPickerSubInterestFragment.this.selectedTopics.containsKey(Integer.valueOf(topicData.topicId))) {
                        InterestPickerSubInterestFragment.this.selectedTopics.remove(Integer.valueOf(topicData.topicId));
                        InterestPickerSubInterestFragment.this.uploadTopicList.remove(Integer.valueOf(topicData.topicId));
                        interestTopicView.setChecked(false);
                    } else {
                        InterestPickerSubInterestFragment.this.selectedTopics.put(Integer.valueOf(topicData.topicId), topicData);
                        InterestPickerSubInterestFragment.this.uploadTopicList.add(Integer.valueOf(topicData.topicId));
                        interestTopicView.setChecked(true);
                    }
                    InterestPickerSubInterestFragment.this.mergeAdapter.notifyDataSetChanged();
                    InterestPickerSubInterestFragment.this.updateButton();
                    return true;
                }
                if (obj instanceof InterestData) {
                    InterestData interestData = (InterestData) obj;
                    if (interestData.interestId != null) {
                        InterestPickerSubInterestFragment.this.expendedInterests.add(interestData.interestId);
                        InterestPickerSubInterestFragment.this.subInterestAdapter.notifyDataSetChanged();
                        return true;
                    }
                }
                return false;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }
    }

    private class SearchedTopicsAdapter extends NVAdapter {
        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        public SearchedTopicsAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return InterestPickerSubInterestFragment.this.searchedTopics.size() > 0 ? 1 : 0;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            InterestTopicView interestTopicView;
            View viewCreateView = createView(R.layout.interest_picker_layout_searched_interest_item, viewGroup, view);
            NVFlowLayout nVFlowLayout = (NVFlowLayout) viewCreateView.findViewById(R.id.topic_flow);
            if (nVFlowLayout != null && !InterestPickerSubInterestFragment.this.searchedTopics.isEmpty()) {
                int childCount = nVFlowLayout.getChildCount();
                int size = InterestPickerSubInterestFragment.this.searchedTopics.size();
                for (int i2 = 0; i2 < size; i2++) {
                    if (i2 < childCount) {
                        interestTopicView = (InterestTopicView) nVFlowLayout.getChildAt(i2);
                    } else {
                        interestTopicView = (InterestTopicView) this.inflater.inflate(R.layout.interest_picker_sub_interest_topic_item, (ViewGroup) nVFlowLayout, false);
                        interestTopicView.setOnClickListener(this.subviewClickListener);
                        nVFlowLayout.addView(interestTopicView);
                    }
                    StoryTopic storyTopic = (StoryTopic) InterestPickerSubInterestFragment.this.searchedTopics.get((size - 1) - i2);
                    boolean z = storyTopic != null && InterestPickerSubInterestFragment.this.selectedTopics.containsKey(Integer.valueOf(storyTopic.topicId));
                    interestTopicView.setTopicData(storyTopic);
                    interestTopicView.setChecked(z);
                }
            }
            return viewCreateView;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (view2 instanceof InterestTopicView) {
                StoryTopic topicData = ((InterestTopicView) view2).getTopicData();
                if (InterestPickerSubInterestFragment.this.selectedTopics.containsKey(Integer.valueOf(topicData.topicId))) {
                    InterestPickerSubInterestFragment.this.selectedTopics.remove(Integer.valueOf(topicData.topicId));
                    InterestPickerSubInterestFragment.this.uploadTopicList.remove(Integer.valueOf(topicData.topicId));
                } else {
                    InterestPickerSubInterestFragment.this.selectedTopics.put(Integer.valueOf(topicData.topicId), topicData);
                    InterestPickerSubInterestFragment.this.uploadTopicList.add(Integer.valueOf(topicData.topicId));
                }
                InterestPickerSubInterestFragment.this.mergeAdapter.notifyDataSetChanged();
                InterestPickerSubInterestFragment.this.updateButton();
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i2 == -1 && i == 101) {
            StoryTopic storyTopic = (StoryTopic) JacksonUtils.readAs(intent.getStringExtra(TopicSearchFragment.SELECTED_TOPIC), StoryTopic.class);
            ArrayList<Integer> listAs = JacksonUtils.readListAs(intent.getStringExtra(TopicSearchFragment.CANCELED_TOPIC), Integer.class);
            if (listAs != null) {
                for (Integer num : listAs) {
                    this.selectedTopics.remove(num);
                    this.uploadTopicList.remove(num);
                }
            }
            if (storyTopic != null) {
                this.selectedTopics.put(Integer.valueOf(storyTopic.topicId), storyTopic);
                this.uploadTopicList.add(Integer.valueOf(storyTopic.topicId));
                StoryTopic storyTopic2 = null;
                Iterator<StoryTopic> it = this.searchedTopics.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    StoryTopic next = it.next();
                    if (next.topicId == storyTopic.topicId) {
                        storyTopic2 = next;
                        break;
                    }
                }
                if (storyTopic2 != null) {
                    this.searchedTopics.remove(storyTopic2);
                }
                this.searchedTopics.add(storyTopic);
            }
            this.mergeAdapter.notifyDataSetChanged();
            updateButton();
            return;
        }
        super.onActivityResult(i, i2, intent);
    }
}
