package com.narvii.suggest.interest;

import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.list.DivideColumnAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVPagedAdapter;
import com.narvii.list.StaticViewAdapter;
import com.narvii.list.overlay.OverlayLayout;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.Impression.DivideColumnImpressionCollector;
import com.narvii.logging.LogEvent;
import com.narvii.model.InterestData;
import com.narvii.model.api.ApiResponse;
import com.narvii.suggest.interest.InterestPickerFragment;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NVListView;
import com.narvii.widget.RadiusLayout;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* loaded from: classes3.dex */
public class InterestPickerMainInterestFragment extends InterestPickerFragment.InterestPickerBaseFragment {
    private static final int MIN_PICKS = 3;
    private View btNext;
    private InterestPickerMainInterestAdapter mainInterestAdapter;
    private LinkedHashMap<String, InterestData> selectedInterest = new LinkedHashMap<>();

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "TopInterests";
    }

    protected String getSubmitAreaName() {
        return "Next";
    }

    @Override // com.narvii.suggest.interest.InterestPickerFragment.InterestPickerBaseFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.selectedInterest.clear();
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.interest_picker_layout_default, viewGroup, false);
    }

    @Override // com.narvii.suggest.interest.InterestPickerFragment.InterestPickerBaseFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        this.btNext = view.findViewById(R.id.next_button);
        OverlayLayout overlayLayout = (OverlayLayout) view.findViewById(R.id.overlay);
        if (overlayLayout != null) {
            overlayLayout.attach((NVListView) getListView());
            overlayLayout.setVisibility(0);
            overlayLayout.setLayout(0, getActionBarOverlaySize());
            overlayLayout.setHeight1(getActionBarOverlaySize());
            View viewFindViewById = overlayLayout.findViewById(R.id.actionbar_title);
            if (viewFindViewById instanceof TextView) {
                ((TextView) viewFindViewById).setText(getString(R.string.interest_picker_main_interest_title, 3));
            }
        }
        updateButton();
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        StaticViewAdapter staticViewAdapter = new StaticViewAdapter() { // from class: com.narvii.suggest.interest.InterestPickerMainInterestFragment.1
            @Override // com.narvii.list.StaticViewAdapter, android.widget.Adapter
            public int getCount() {
                if (InterestPickerMainInterestFragment.this.mainInterestAdapter == null || InterestPickerMainInterestFragment.this.mainInterestAdapter.isEmpty()) {
                    return 0;
                }
                return super.getCount();
            }

            @Override // com.narvii.list.StaticViewAdapter, android.widget.Adapter
            public View getView(int i, View view, ViewGroup viewGroup) {
                View view2 = super.getView(i, view, viewGroup);
                View viewFindViewById = view2.findViewById(R.id.main_interest_title);
                if (viewFindViewById instanceof TextView) {
                    ((TextView) viewFindViewById).setText(InterestPickerMainInterestFragment.this.getString(R.string.interest_picker_main_interest_title, 3));
                }
                return view2;
            }
        };
        staticViewAdapter.addLayouts(R.layout.interest_picker_layout_main_interest_header);
        mergeAdapter.addAdapter(staticViewAdapter);
        this.mainInterestAdapter = new InterestPickerMainInterestAdapter(this);
        DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this, Utils.dpToPxInt(getContext(), 5.0f), Utils.dpToPxInt(getContext(), 5.0f), 0, 0);
        divideColumnAdapter.setAdapter(this.mainInterestAdapter, 3);
        mergeAdapter.addAdapter(divideColumnAdapter, true);
        mergeAdapter.addAdapter(new InterestPickerFragment.InterestPickerBaseFragment.BottomPaddingAdapter(this.mainInterestAdapter));
        return mergeAdapter;
    }

    @Override // com.narvii.list.NVListFragment
    public Drawable getListSelector() {
        return new ColorDrawable(0);
    }

    @Override // com.narvii.list.NVListFragment
    public Drawable getListDividerDrawable() {
        return new ColorDrawable(0);
    }

    protected boolean isPickedEnough() {
        return this.selectedInterest.size() >= 3;
    }

    protected void updateButton() {
        View view = this.btNext;
        if (view != null) {
            view.setEnabled(isPickedEnough());
        }
    }

    @Override // com.narvii.suggest.interest.InterestPickerFragment.InterestPickerBaseFragment
    protected void doSubmit() {
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.setCancelable(false);
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.suggest.interest.InterestPickerMainInterestFragment.2
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                Bundle bundle = new Bundle();
                bundle.putStringArrayList("selectedInterest", new ArrayList<>(InterestPickerMainInterestFragment.this.selectedInterest.keySet()));
                InterestPickerMainInterestFragment.this.showNext(bundle);
            }
        };
        progressDialog.failureListener = new Callback<String>() { // from class: com.narvii.suggest.interest.InterestPickerMainInterestFragment.3
            @Override // com.narvii.util.Callback
            public void call(String str) {
                TextView textView = InterestPickerMainInterestFragment.this.btSkip;
                if (textView != null) {
                    textView.setVisibility(0);
                }
            }
        };
        progressDialog.show();
        ArrayList arrayList = new ArrayList();
        LinkedHashMap<String, InterestData> linkedHashMap = this.selectedInterest;
        if (linkedHashMap != null) {
            Iterator<InterestData> it = linkedHashMap.values().iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().getDisplayName());
            }
            LogEvent.clickBuilder(this, getSubmitSemantic()).area(getSubmitAreaName()).extraParam("interestCount", Integer.valueOf(this.selectedInterest.size())).extraParam("interestNameList", TextUtils.join(",", arrayList)).send();
        }
        ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
        for (String str : this.selectedInterest.keySet()) {
            ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
            objectNodeCreateObjectNode.put("interestId", str);
            arrayNodeCreateArrayNode.add(objectNodeCreateObjectNode);
        }
        ((ApiService) getService("api")).exec(ApiRequest.builder().post().path("/persona/interests?language=" + getLanguageCode()).param("interestList", arrayNodeCreateArrayNode).build(), progressDialog.dismissListener);
    }

    protected ActSemantic getSubmitSemantic() {
        return ActSemantic.pageEnter;
    }

    private class InterestPickerMainInterestAdapter extends NVPagedAdapter<InterestData, MainInterestResponse> {
        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "InterestsList";
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemType(Object obj) {
            return 0;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemTypeCount() {
            return 1;
        }

        public InterestPickerMainInterestAdapter(NVContext nVContext) {
            super(nVContext, -2);
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            addImpressionCollector(new DivideColumnImpressionCollector(this));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<InterestData> dataType() {
            return InterestData.class;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<? extends MainInterestResponse> responseType() {
            return MainInterestResponse.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            ApiRequest.Builder builderParam = ApiRequest.builder().path("/persona/onboarding-interests").param(IjkMediaMeta.IJKM_KEY_LANGUAGE, InterestPickerMainInterestFragment.this.getLanguageCode());
            Bundle data = InterestPickerMainInterestFragment.this.getData();
            if (data != null && data.containsKey("selectedAge") && data.containsKey("selectedGender")) {
                builderParam.param("age", Integer.valueOf(data.getInt("selectedAge"))).param("gender", Integer.valueOf(data.getInt("selectedGender")));
            }
            return builderParam.build();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, MainInterestResponse mainInterestResponse, int i) {
            super.onPageResponse(apiRequest, (ApiRequest) mainInterestResponse, i);
            checkAndShowSkip();
            Map<String, InterestData> selectedInterest = mainInterestResponse.getSelectedInterest();
            if (selectedInterest != null) {
                InterestPickerMainInterestFragment.this.selectedInterest.putAll(selectedInterest);
                InterestPickerMainInterestFragment.this.updateButton();
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
            if (InterestPickerMainInterestFragment.this.btSkip != null) {
                if ((zIsListShown && zIsEmpty) || z) {
                    InterestPickerMainInterestFragment.this.btSkip.setVisibility(0);
                }
            }
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.interest_picker_layout_main_interest_item, viewGroup, view);
            if (obj instanceof InterestData) {
                InterestData interestData = (InterestData) obj;
                boolean zContainsKey = InterestPickerMainInterestFragment.this.selectedInterest.containsKey(interestData.interestId);
                NVImageView nVImageView = (NVImageView) viewCreateView.findViewById(R.id.image);
                InterestData.Style style = interestData.style;
                nVImageView.setImageUrl(style != null ? style.backgroundImage : null);
                InterestData.Style style2 = interestData.style;
                int i = style2 != null ? style2.backgroundColor : -479451;
                View viewFindViewById = viewCreateView.findViewById(R.id.picked_cover);
                viewFindViewById.setVisibility(zContainsKey ? 0 : 8);
                viewFindViewById.setBackgroundColor(i);
                viewCreateView.findViewById(R.id.picked_check).setVisibility(zContainsKey ? 0 : 8);
                TextView textView = (TextView) viewCreateView.findViewById(R.id.title);
                textView.setBackgroundColor(zContainsKey ? i : -1308622848);
                textView.setText(interestData.getDisplayName());
                if (viewCreateView instanceof RadiusLayout) {
                    if (zContainsKey) {
                        ((RadiusLayout) viewCreateView).setStroke(i, Utils.dpToPxInt(getContext(), 1.5f), 0, 0);
                    } else {
                        ((RadiusLayout) viewCreateView).setStroke(-1, Utils.dpToPxInt(getContext(), 1.0f), Utils.dpToPxInt(getContext(), 3.0f), Utils.dpToPxInt(getContext(), 2.0f));
                    }
                }
            }
            return viewCreateView;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (obj instanceof InterestData) {
                InterestData interestData = (InterestData) obj;
                if (interestData.interestId != null) {
                    if (InterestPickerMainInterestFragment.this.selectedInterest.containsKey(interestData.interestId)) {
                        InterestPickerMainInterestFragment.this.selectedInterest.remove(interestData.interestId);
                    } else {
                        InterestPickerMainInterestFragment.this.selectedInterest.put(interestData.interestId, interestData);
                        logClickEvent(interestData, ActSemantic.chooseInterest);
                    }
                    InterestPickerMainInterestFragment.this.updateButton();
                    InterestPickerMainInterestFragment.this.mainInterestAdapter.notifyDataSetChanged();
                    return true;
                }
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }
    }
}
