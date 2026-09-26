package com.narvii.media.online.audio;

import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import com.narvii.app.NVActivity;
import com.narvii.lib.R;
import com.narvii.list.DivideColumnAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.list.StaticViewAdapter;
import com.narvii.media.online.audio.model.AssetCategory;
import com.narvii.media.online.audio.model.AssetListResponse;
import com.narvii.media.online.audio.model.QuerySoundCategoryResponse;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public class OnlineAudioSubCategoryPicker extends NVListFragment implements View.OnClickListener {
    private Adapter adapter;
    private ApiService apiService;
    private String categoryId;
    private ApiRequest currentRequest;
    private View pickButton;
    private String queryStr;
    private Set<String> selectedCategory = new HashSet();
    private boolean isPickButtonError = false;

    private class Adapter extends NVPagedAdapter<AssetCategory, QuerySoundCategoryResponse> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<AssetCategory> dataType() {
            return AssetCategory.class;
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
        public Class<? extends QuerySoundCategoryResponse> responseType() {
            return QuerySoundCategoryResponse.class;
        }

        public Adapter() {
            super(OnlineAudioSubCategoryPicker.this, 1);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.media_audio_subcategory_list_item, viewGroup, view);
            if (obj instanceof AssetCategory) {
                AssetCategory assetCategory = (AssetCategory) obj;
                ((TextView) viewCreateView.findViewById(R.id.subcategory_name)).setText(assetCategory.title);
                View viewFindViewById = viewCreateView.findViewById(R.id.subcategory_background_selected);
                View viewFindViewById2 = viewCreateView.findViewById(R.id.subcategory_background_unselected);
                if (OnlineAudioSubCategoryPicker.this.selectedCategory.contains(assetCategory.id)) {
                    viewFindViewById.setVisibility(0);
                    viewFindViewById2.setVisibility(8);
                } else {
                    viewFindViewById.setVisibility(8);
                    viewFindViewById2.setVisibility(0);
                }
                viewCreateView.setOnClickListener(this.subviewClickListener);
            }
            return viewCreateView;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (!(obj instanceof AssetCategory)) {
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }
            AssetCategory assetCategory = (AssetCategory) obj;
            if (!OnlineAudioSubCategoryPicker.this.selectedCategory.remove(assetCategory.id)) {
                OnlineAudioSubCategoryPicker.this.selectedCategory.add(assetCategory.id);
            }
            OnlineAudioSubCategoryPicker.this.updatePickText();
            notifyDataSetChanged();
            return true;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            ApiRequest.Builder builder = ApiRequest.builder();
            builder.path("/asset/sound/category2/children");
            if (OnlineAudioSubCategoryPicker.this.categoryId != null) {
                builder.param("categoryId", OnlineAudioSubCategoryPicker.this.categoryId);
            }
            return builder.build();
        }
    }

    protected class BottomPaddingAdapter extends StaticViewAdapter {
        private NVAdapter mainAdapter;

        protected BottomPaddingAdapter(NVAdapter nVAdapter) {
            this.mainAdapter = nVAdapter;
            View view = new View(OnlineAudioSubCategoryPicker.this.getContext());
            view.setMinimumHeight(Utils.dpToPxInt(OnlineAudioSubCategoryPicker.this.getContext(), 100.0f));
            addViews(view);
        }

        @Override // com.narvii.list.StaticViewAdapter, android.widget.Adapter
        public int getCount() {
            NVAdapter nVAdapter = this.mainAdapter;
            if (nVAdapter == null || nVAdapter.isEmpty()) {
                return 0;
            }
            return super.getCount();
        }
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public int initNVTheme() {
        return 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePickText() {
        View view = this.pickButton;
        if (view == null) {
            return;
        }
        final View viewFindViewById = view.findViewById(R.id.progress_pressed_frame);
        final TextView textView = (TextView) this.pickButton.findViewById(R.id.subcategory_pick_text);
        viewFindViewById.setVisibility(0);
        textView.setVisibility(8);
        ApiRequest.Builder builder = ApiRequest.builder();
        builder.path("/asset/sound/count");
        String str = this.queryStr;
        if (str != null) {
            builder.param("q", str);
        }
        String str2 = this.categoryId;
        if (str2 != null) {
            builder.param("categoryId", str2);
        }
        if (!this.selectedCategory.isEmpty()) {
            StringBuilder sb = new StringBuilder();
            for (String str3 : this.selectedCategory) {
                sb.append(",");
                sb.append(str3);
            }
            builder.param("filterIds", sb.substring(1));
        }
        ApiRequest apiRequest = this.currentRequest;
        if (apiRequest != null) {
            this.apiService.abort(apiRequest);
        }
        ApiRequest apiRequestBuild = builder.build();
        this.currentRequest = apiRequestBuild;
        this.apiService.exec(apiRequestBuild, new ApiResponseListener<AssetListResponse>(AssetListResponse.class) { // from class: com.narvii.media.online.audio.OnlineAudioSubCategoryPicker.2
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest2, int i10, List<NameValuePair> list, String str4, @Nullable ApiResponse apiResponse, Throwable th) {
                OnlineAudioSubCategoryPicker.this.isPickButtonError = true;
                viewFindViewById.setVisibility(8);
                textView.setVisibility(0);
                OnlineAudioSubCategoryPicker.this.pickButton.setBackgroundColor(-3057575);
                OnlineAudioSubCategoryPicker.this.pickButton.setClickable(true);
                textView.setTextColor(-1);
                textView.setText(R.string.subcategory_pick_text_fail);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest2, AssetListResponse assetListResponse) throws Exception {
                int i10 = assetListResponse.total;
                if (i10 == 0) {
                    OnlineAudioSubCategoryPicker.this.pickButton.setBackgroundColor(-11908534);
                    OnlineAudioSubCategoryPicker.this.pickButton.setClickable(false);
                    textView.setTextColor(-7500391);
                } else {
                    OnlineAudioSubCategoryPicker.this.pickButton.setBackgroundColor(-16456519);
                    OnlineAudioSubCategoryPicker.this.pickButton.setClickable(true);
                    textView.setTextColor(ContextCompat.getColor(OnlineAudioSubCategoryPicker.this.getContext(), R.color.account_text));
                }
                OnlineAudioSubCategoryPicker.this.isPickButtonError = false;
                viewFindViewById.setVisibility(8);
                textView.setVisibility(0);
                textView.setText(OnlineAudioSubCategoryPicker.this.getString(R.string.subcategory_pick_text, Integer.valueOf(i10)));
            }
        });
    }

    @Override // com.narvii.app.NVFragment
    protected Drawable getActionBarCustomDrawable() {
        return new ColorDrawable(-15000799);
    }

    @Override // com.narvii.list.NVListFragment
    public Drawable getListDividerDrawable() {
        return new ColorDrawable(0);
    }

    @Override // com.narvii.list.NVListFragment
    public Drawable getListSelector() {
        return new ColorDrawable(0);
    }

    @Override // com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.media_audio_subcategory_list, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        int iDpToPxInt = Utils.dpToPxInt(getContext(), 15.0f);
        DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this, iDpToPxInt, iDpToPxInt, iDpToPxInt, 0);
        Adapter adapter = new Adapter();
        this.adapter = adapter;
        divideColumnAdapter.setAdapter(adapter, 2);
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        mergeAdapter.addAdapter(divideColumnAdapter);
        mergeAdapter.addAdapter(new BottomPaddingAdapter(this.adapter));
        return mergeAdapter;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.subcategory_pick_button) {
            if (this.isPickButtonError) {
                updatePickText();
                return;
            }
            Intent intent = new Intent();
            intent.putExtra("selectedCategory", JacksonUtils.writeAsString(new ArrayList(this.selectedCategory)));
            setResult(-1, intent);
            finish();
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setBackButtonDrawable(ContextCompat.getDrawable(getContext(), R.drawable.ic_actionbar_close));
        this.categoryId = getStringParam("categoryId");
        this.queryStr = getStringParam("q");
        ArrayList listAs = JacksonUtils.readListAs(getStringParam("selectedCategory"), String.class);
        if (listAs != null) {
            this.selectedCategory.addAll(listAs);
        }
        if (this.categoryId != null && this.queryStr == null) {
            setTitle(R.string.subcategory_title);
        } else {
            setTitle(R.string.subcategory_title_search);
        }
        this.apiService = (ApiService) getService("api");
        if (getActivity() instanceof NVActivity) {
            ((NVActivity) getActivity()).setActionBarRightView(R.string.clear, ContextCompat.getColorStateList(getContext(), R.color.actionbar_text), true, new View.OnClickListener() { // from class: com.narvii.media.online.audio.OnlineAudioSubCategoryPicker.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    OnlineAudioSubCategoryPicker.this.selectedCategory.clear();
                    OnlineAudioSubCategoryPicker.this.updatePickText();
                    if (OnlineAudioSubCategoryPicker.this.adapter != null) {
                        OnlineAudioSubCategoryPicker.this.adapter.notifyDataSetChanged();
                    }
                }
            });
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        View viewFindViewById = view.findViewById(R.id.subcategory_pick_button);
        this.pickButton = viewFindViewById;
        viewFindViewById.setOnClickListener(this);
        updatePickText();
    }
}
