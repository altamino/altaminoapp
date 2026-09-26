package com.narvii.suggest.interest;

import android.content.Intent;
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
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.narvii.amino.master.R;
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
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import com.narvii.util.layouts.NVFlowLayout;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes8.dex */
public class InterestPickerSubInterestFragment extends InterestPickerFragment.InterestPickerBaseFragment {
    private static final int MIN_PICKS = 4;
    private CheckBox agree;
    private ViewGroup agreeLayout;
    private TextView agreeText;
    private Button btNext;
    private MergeAdapter mergeAdapter;
    private InterestPickerSubInterestAdapter subInterestAdapter;
    private Set<String> expendedInterests = new HashSet();
    private HashMap<Integer, StoryTopic> selectedTopics = new HashMap<>();
    private int createTimes = 0;
    private List<StoryTopic> searchedTopics = new ArrayList();
    private List<Integer> uploadTopicList = new ArrayList();

    private class InterestPickerSubInterestAdapter extends NVPagedAdapter<InterestData, SubInterestResponse> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<InterestData> dataType() {
            return InterestData.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemType(Object obj) {
            return 0;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemTypeCount() {
            return 1;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<? extends SubInterestResponse> responseType() {
            return SubInterestResponse.class;
        }

        public InterestPickerSubInterestAdapter(NVContext nVContext) {
            super(nVContext, -2);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected List<InterestData> filterResponseList(List<InterestData> list, int i10) {
            ArrayList arrayList = new ArrayList(super.filterResponseList(list, i10));
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                InterestData interestData = (InterestData) it.next();
                if (interestData != null) {
                    List<StoryTopic> list2 = interestData.foldedTopicList;
                    boolean z6 = true;
                    boolean z10 = list2 == null || list2.isEmpty();
                    List<StoryTopic> list3 = interestData.visibleTopicList;
                    boolean z11 = list3 == null || list3.isEmpty();
                    List<StoryTopic> list4 = interestData.topicList;
                    if (list4 != null && !list4.isEmpty()) {
                        z6 = false;
                    }
                    if (z10 && z11 && z6) {
                        it.remove();
                    }
                } else {
                    it.remove();
                }
            }
            return arrayList;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (!(view2 instanceof InterestTopicView)) {
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }
            InterestTopicView interestTopicView = (InterestTopicView) view2;
            StoryTopic topicData = interestTopicView.getTopicData();
            if (topicData instanceof InterestTopicView.MoreTopicMock) {
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

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, SubInterestResponse subInterestResponse, int i10) {
            super.onPageResponse(apiRequest, subInterestResponse, i10);
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

        private void checkAndShowSkip() {
            boolean z6;
            boolean zIsEmpty = isEmpty();
            if (errorMessage() != null) {
                z6 = true;
            } else {
                z6 = false;
            }
            boolean zIsListShown = isListShown();
            TextView textView = InterestPickerSubInterestFragment.this.btSkip;
            if (textView != null) {
                if ((zIsListShown && zIsEmpty) || z6) {
                    textView.setVisibility(0);
                }
            }
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            ApiRequest.Builder builderParam = ApiRequest.builder().path("/persona/interest-detail").param("language", InterestPickerSubInterestFragment.this.getLanguageCode());
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

        @Override // com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            boolean z6;
            InterestTopicView interestTopicView;
            boolean z10;
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
                if (list3 != null && !list3.isEmpty()) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (z6 && InterestPickerSubInterestFragment.this.expendedInterests.contains(interestData.interestId)) {
                    arrayList.addAll(interestData.foldedTopicList);
                }
                if (z6 && !InterestPickerSubInterestFragment.this.expendedInterests.contains(interestData.interestId)) {
                    arrayList.add(new InterestTopicView.MoreTopicMock());
                }
                NVFlowLayout nVFlowLayout = (NVFlowLayout) viewCreateView.findViewById(R.id.topic_flow);
                int size = arrayList.size();
                int childCount = nVFlowLayout.getChildCount();
                for (int i10 = 0; i10 < size; i10++) {
                    if (i10 < childCount) {
                        interestTopicView = (InterestTopicView) nVFlowLayout.getChildAt(i10);
                    } else {
                        interestTopicView = (InterestTopicView) this.inflater.inflate(R.layout.interest_picker_sub_interest_topic_item, (ViewGroup) nVFlowLayout, false);
                        interestTopicView.setOnClickListener(this.subviewClickListener);
                        nVFlowLayout.addView(interestTopicView);
                    }
                    StoryTopic storyTopic = (StoryTopic) arrayList.get(i10);
                    if (storyTopic != null && InterestPickerSubInterestFragment.this.selectedTopics.containsKey(Integer.valueOf(storyTopic.topicId))) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    interestTopicView.setTopicData(storyTopic);
                    interestTopicView.setChecked(z10);
                }
                while (size < nVFlowLayout.getChildCount()) {
                    nVFlowLayout.removeViewAt(nVFlowLayout.getChildCount() - 1);
                }
            }
            return viewCreateView;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected void onFailResponse(ApiRequest apiRequest, String str, ApiResponse apiResponse, int i10) {
            super.onFailResponse(apiRequest, str, apiResponse, i10);
            checkAndShowSkip();
        }
    }

    private class SearchedTopicsAdapter extends NVAdapter {
        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return 0L;
        }

        public SearchedTopicsAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return InterestPickerSubInterestFragment.this.searchedTopics.size() > 0 ? 1 : 0;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (!(view2 instanceof InterestTopicView)) {
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }
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

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            InterestTopicView interestTopicView;
            boolean z6;
            View viewCreateView = createView(R.layout.interest_picker_layout_searched_interest_item, viewGroup, view);
            NVFlowLayout nVFlowLayout = (NVFlowLayout) viewCreateView.findViewById(R.id.topic_flow);
            if (nVFlowLayout != null && !InterestPickerSubInterestFragment.this.searchedTopics.isEmpty()) {
                int childCount = nVFlowLayout.getChildCount();
                int size = InterestPickerSubInterestFragment.this.searchedTopics.size();
                for (int i11 = 0; i11 < size; i11++) {
                    if (i11 < childCount) {
                        interestTopicView = (InterestTopicView) nVFlowLayout.getChildAt(i11);
                    } else {
                        interestTopicView = (InterestTopicView) this.inflater.inflate(R.layout.interest_picker_sub_interest_topic_item, (ViewGroup) nVFlowLayout, false);
                        interestTopicView.setOnClickListener(this.subviewClickListener);
                        nVFlowLayout.addView(interestTopicView);
                    }
                    StoryTopic storyTopic = (StoryTopic) InterestPickerSubInterestFragment.this.searchedTopics.get((size - 1) - i11);
                    if (storyTopic != null && InterestPickerSubInterestFragment.this.selectedTopics.containsKey(Integer.valueOf(storyTopic.topicId))) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    interestTopicView.setTopicData(storyTopic);
                    interestTopicView.setChecked(z6);
                }
            }
            return viewCreateView;
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @Nullable
    public String getPageName() {
        return "sub_interests";
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        StoryTopic next;
        if (i11 != -1 || i10 != 101) {
            super.onActivityResult(i10, i11, intent);
            return;
        }
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
            Iterator<StoryTopic> it = this.searchedTopics.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (next.topicId != storyTopic.topicId);
            if (next != null) {
                this.searchedTopics.remove(next);
            }
            this.searchedTopics.add(storyTopic);
        }
        this.mergeAdapter.notifyDataSetChanged();
        updateButton();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$0(View view) {
        CheckBox checkBox = this.agree;
        checkBox.setChecked(!checkBox.isChecked());
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
            public View getView(int i10, View view, ViewGroup viewGroup) {
                View view2 = super.getView(i10, view, viewGroup);
                View viewFindViewById = view2.findViewById(R.id.sub_interest_title);
                if (viewFindViewById instanceof TextView) {
                    ((TextView) viewFindViewById).setText(InterestPickerSubInterestFragment.this.getString(R.string.interest_picker_sub_interest_title_short, 4));
                }
                return view2;
            }
        };
        staticViewAdapter.addLayouts(R.layout.interest_picker_layout_sub_interest_header);
        this.mergeAdapter.addAdapter(staticViewAdapter);
        this.mergeAdapter.addAdapter(new AdriftAdapter(this) { // from class: com.narvii.suggest.interest.InterestPickerSubInterestFragment.2
            public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
                Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivityForResult(p1, p5);
            }

            @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
            public String getAreaName() {
                return "Search";
            }

            @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
            public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, @org.jetbrains.annotations.Nullable View view2) {
                if (view2 == null || view2.getId() != R.id.search_layout) {
                    return super.onItemClick(listAdapter, i10, obj, view, view2);
                }
                logClickEvent(ActSemantic.pageEnter);
                Intent intent = FragmentWrapperActivity.intent(TopicSearchFragment.class);
                intent.putExtra(TopicSearchFragment.TOPIC_ID_LIST, JacksonUtils.writeAsString(new ArrayList(InterestPickerSubInterestFragment.this.selectedTopics.keySet())));
                safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(InterestPickerSubInterestFragment.this, intent, 101);
                return true;
            }

            @Override // com.narvii.list.AdriftAdapter, android.widget.Adapter
            public int getCount() {
                return super.getCount();
            }

            @Override // android.widget.Adapter
            public View getView(int i10, View view, ViewGroup viewGroup) {
                View viewCreateView = createView(R.layout.interest_search_view, viewGroup, view);
                viewCreateView.setOnClickListener(this.subviewClickListener);
                return viewCreateView;
            }
        });
        this.mergeAdapter.addAdapter(new SearchedTopicsAdapter(this));
        InterestPickerSubInterestAdapter interestPickerSubInterestAdapter = new InterestPickerSubInterestAdapter(this);
        this.subInterestAdapter = interestPickerSubInterestAdapter;
        this.mergeAdapter.addAdapter(interestPickerSubInterestAdapter, true);
        this.mergeAdapter.addAdapter(new InterestPickerFragment.InterestPickerBaseFragment.BottomPaddingAdapter(this.subInterestAdapter) { // from class: com.narvii.suggest.interest.InterestPickerSubInterestFragment.3
            @Override // com.narvii.suggest.interest.InterestPickerFragment.InterestPickerBaseFragment.BottomPaddingAdapter
            protected int getMinimumHeight() {
                return Utils.dpToPxInt(InterestPickerSubInterestFragment.this.getContext(), 12.0f);
            }
        });
        return this.mergeAdapter;
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

    @Override // com.narvii.list.NVListFragment
    public Drawable getListDividerDrawable() {
        return new ColorDrawable(0);
    }

    @Override // com.narvii.list.NVListFragment
    public Drawable getListSelector() {
        return new ColorDrawable(0);
    }

    @Override // com.narvii.suggest.interest.InterestPickerFragment.InterestPickerBaseFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NonNull View view, @Nullable Bundle bundle) {
        this.createTimes++;
        super.onViewCreated(view, bundle);
        this.btNext = (Button) view.findViewById(R.id.next_button);
        ((TextView) view.findViewById(R.id.title)).setText(R.string.welcome);
        this.agreeLayout = (ViewGroup) view.findViewById(R.id.agree_layout);
        this.agree = (CheckBox) view.findViewById(R.id.agree);
        this.agreeText = (TextView) view.findViewById(R.id.agree_text);
        this.agree.setChecked(true);
        this.agreeLayout.setVisibility(0);
        this.agreeLayout.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.suggest.interest.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f2749a.lambda$onViewCreated$0(view2);
            }
        });
        updateButton();
    }

    @Override // com.narvii.suggest.interest.InterestPickerFragment.InterestPickerBaseFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.selectedTopics.clear();
        this.expendedInterests.clear();
    }

    @Override // com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.interest_picker_layout_default, viewGroup, false);
    }
}
