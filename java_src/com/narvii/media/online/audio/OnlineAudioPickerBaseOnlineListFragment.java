package com.narvii.media.online.audio;

import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.list.NVPagedAdapter;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.media.online.audio.model.AssetCategory;
import com.narvii.media.online.audio.model.AssetData;
import com.narvii.media.online.audio.model.AssetListResponse;
import com.narvii.media.online.audio.model.Sound;
import com.narvii.model.NVObject;
import com.narvii.util.JacksonUtils;
import com.narvii.util.http.ApiRequest;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* loaded from: classes3.dex */
public abstract class OnlineAudioPickerBaseOnlineListFragment extends OnlineAudioPickerBaseListFragment {
    private static final int REQUEST_CODE_SELECT_FILTERS = 201;
    protected static final int SORT_MODE_DEFAULT = 0;
    protected static final int SORT_MODE_LONGEST = 3;
    protected static final int SORT_MODE_RELEVANCE = 1;
    protected static final int SORT_MODE_SHORTEST = 2;
    private static final String[] SORT_REQUEST_ENUM = {"default", "relevance", "shortest", "longest"};
    protected SoundAssetAdapter adapter;
    protected AssetCategory category;
    private PopupWindow sortSelectWindow;
    private TextView subcategoryCount;
    private ImageView subcategoryEntrance;
    private TextView subcategoryResultCount;
    protected int selectSortMode = 0;
    private Set<String> selectedSubcategory = new HashSet();
    private boolean isFilterAndSortEnable = true;

    protected int getDefaultSelectMode() {
        return 0;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "MusicCategory";
    }

    protected void presetSubCategoryViewData(Intent intent) {
    }

    @Override // com.narvii.media.online.audio.OnlineAudioPickerBaseListFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.category = (AssetCategory) JacksonUtils.readAs(getStringParam("category"), AssetCategory.class);
        this.isFilterAndSortEnable = getBooleanParam("isFilterAndSortEnable", true);
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.media_audio_online_picker_list, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        initPopupWindow(view);
        this.subcategoryResultCount = (TextView) view.findViewById(R.id.filter_result_count);
        this.subcategoryEntrance = (ImageView) view.findViewById(R.id.filter_entrance);
        this.subcategoryCount = (TextView) view.findViewById(R.id.filter_count);
        this.subcategoryEntrance.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.media.online.audio.-$$Lambda$OnlineAudioPickerBaseOnlineListFragment$yWUfzDUJWBPp9DKHYNnpHgUFYCg
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$onViewCreated$0$OnlineAudioPickerBaseOnlineListFragment(view2);
            }
        });
        updateSubcategoryEntrance();
    }

    public /* synthetic */ void lambda$onViewCreated$0$OnlineAudioPickerBaseOnlineListFragment(View view) {
        LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("Filter").send();
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("ndc://fragment/" + OnlineAudioSubCategoryPicker.class.getName()));
        presetSubCategoryViewData(intent);
        intent.putExtra("selectedCategory", JacksonUtils.writeAsString(new ArrayList(this.selectedSubcategory)));
        intent.putExtra("customFinishAnimIn", 0);
        intent.putExtra("customFinishAnimOut", R.anim.activity_push_bottom_out);
        startActivityForResult(intent, 201);
        getActivity().overridePendingTransition(R.anim.activity_push_bottom_in, 0);
    }

    @Override // com.narvii.media.online.audio.OnlineAudioPickerBaseListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) throws IllegalStateException {
        if (i == 201 && i2 == -1) {
            this.selectedSubcategory.clear();
            ArrayList listAs = JacksonUtils.readListAs(intent.getStringExtra("selectedCategory"), String.class);
            if (listAs != null) {
                this.selectedSubcategory.addAll(listAs);
            }
            updateSubcategoryEntrance();
            this.adapter.resetList();
            return;
        }
        super.onActivityResult(i, i2, intent);
    }

    private void updateSubcategoryEntrance() {
        List<String> list;
        if (this.subcategoryEntrance != null) {
            AssetCategory assetCategory = this.category;
            boolean z = assetCategory != null && ((list = assetCategory.children) == null || list.isEmpty());
            this.subcategoryEntrance.setImageResource(this.selectedSubcategory.isEmpty() ? R.drawable.ic_online_picker_filter : R.drawable.ic_online_picker_filter_green);
            this.subcategoryEntrance.setAlpha((!this.isFilterAndSortEnable || z) ? 0.3f : 1.0f);
            this.subcategoryEntrance.setClickable(this.isFilterAndSortEnable && !z);
        }
        if (this.subcategoryCount != null) {
            if (this.selectedSubcategory.isEmpty()) {
                this.subcategoryCount.setVisibility(8);
            } else {
                this.subcategoryCount.setVisibility(0);
                this.subcategoryCount.setText(String.valueOf(this.selectedSubcategory.size()));
            }
        }
    }

    protected View initPopupWindow(final View view) {
        final View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.media_audio_online_picker_sort_select, (ViewGroup) null);
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.narvii.media.online.audio.-$$Lambda$OnlineAudioPickerBaseOnlineListFragment$Z85E6AJONPVooZiYpiQOZFFyjmE
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) throws IllegalStateException {
                this.f$0.lambda$initPopupWindow$1$OnlineAudioPickerBaseOnlineListFragment(view, view2);
            }
        };
        viewInflate.findViewById(R.id.sort_select_default).setOnClickListener(onClickListener);
        viewInflate.findViewById(R.id.sort_select_relevance).setOnClickListener(onClickListener);
        viewInflate.findViewById(R.id.sort_select_shortest).setOnClickListener(onClickListener);
        viewInflate.findViewById(R.id.sort_select_longest).setOnClickListener(onClickListener);
        this.sortSelectWindow = new PopupWindow(viewInflate, -2, -2, true);
        final View viewFindViewById = view.findViewById(R.id.sort_filter);
        viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.media.online.audio.-$$Lambda$OnlineAudioPickerBaseOnlineListFragment$OkpeU5BwvBy7gJP9GIqkHUm9eNE
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$initPopupWindow$2$OnlineAudioPickerBaseOnlineListFragment(viewInflate, viewFindViewById, view2);
            }
        });
        viewFindViewById.setAlpha(this.isFilterAndSortEnable ? 1.0f : 0.3f);
        viewFindViewById.setClickable(this.isFilterAndSortEnable);
        return viewInflate;
    }

    public /* synthetic */ void lambda$initPopupWindow$1$OnlineAudioPickerBaseOnlineListFragment(View view, View view2) throws IllegalStateException {
        if (view2 == null) {
            return;
        }
        int id = view2.getId();
        TextView textView = (TextView) view.findViewById(R.id.sort_text);
        if (id == R.id.sort_select_default) {
            this.selectSortMode = 0;
            textView.setText(R.string._default);
        } else if (id == R.id.sort_select_relevance) {
            this.selectSortMode = 1;
            textView.setText(R.string.relevance);
        } else if (id == R.id.sort_select_longest) {
            this.selectSortMode = 3;
            textView.setText(R.string.longest);
        } else if (id == R.id.sort_select_shortest) {
            this.selectSortMode = 2;
            textView.setText(R.string.shortest);
        }
        this.sortSelectWindow.dismiss();
        this.adapter.resetList();
    }

    public /* synthetic */ void lambda$initPopupWindow$2$OnlineAudioPickerBaseOnlineListFragment(View view, View view2, View view3) {
        ViewGroup viewGroup = (ViewGroup) view.findViewById(R.id.popup_list);
        int i = 0;
        while (i < viewGroup.getChildCount()) {
            ViewGroup viewGroup2 = (ViewGroup) viewGroup.getChildAt(i);
            viewGroup2.setBackgroundColor(i == this.selectSortMode ? 1023410175 : 0);
            viewGroup2.findViewById(R.id.sort_selected).setVisibility(i == this.selectSortMode ? 0 : 8);
            i++;
        }
        this.sortSelectWindow.showAsDropDown(view2);
    }

    protected abstract class SoundAssetAdapter extends NVPagedAdapter<AssetData, AssetListResponse> {
        private String seed;

        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "MusicList";
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemType(Object obj) {
            return 0;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemTypeCount() {
            return 1;
        }

        public SoundAssetAdapter(NVContext nVContext) {
            super(nVContext);
            this.seed = null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<AssetData> dataType() {
            return AssetData.class;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<? extends AssetListResponse> responseType() {
            return AssetListResponse.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        public void resetList() throws IllegalStateException {
            OnlineAudioPickerBaseOnlineListFragment.this.stopPlayMusic();
            super.resetList();
        }

        protected void configDefaultRequestParam(ApiRequest.Builder builder, boolean z) {
            if (!OnlineAudioPickerBaseOnlineListFragment.this.selectedSubcategory.isEmpty()) {
                StringBuilder sb = new StringBuilder();
                for (String str : OnlineAudioPickerBaseOnlineListFragment.this.selectedSubcategory) {
                    sb.append(",");
                    sb.append(str);
                }
                builder.param("filterIds", sb.substring(1));
            }
            int i = OnlineAudioPickerBaseOnlineListFragment.this.selectSortMode;
            if (i >= 0 && i < OnlineAudioPickerBaseOnlineListFragment.SORT_REQUEST_ENUM.length) {
                builder.param("sortBy", OnlineAudioPickerBaseOnlineListFragment.SORT_REQUEST_ENUM[OnlineAudioPickerBaseOnlineListFragment.this.selectSortMode]);
            }
            String str2 = this.seed;
            if (str2 != null) {
                builder.param("seed", str2);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, AssetListResponse assetListResponse, int i) {
            super.onPageResponse(apiRequest, (ApiRequest) assetListResponse, i);
            if (OnlineAudioPickerBaseOnlineListFragment.this.subcategoryResultCount != null) {
                OnlineAudioPickerBaseOnlineListFragment.this.subcategoryResultCount.setText(OnlineAudioPickerBaseOnlineListFragment.this.getString(R.string.filter_results_count, Integer.valueOf(assetListResponse.total)));
            }
            this.seed = assetListResponse.seed;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.media_audio_online_picker_list_item, viewGroup, view);
            NVObject refObject = obj instanceof AssetData ? ((AssetData) obj).getRefObject() : null;
            if (!(refObject instanceof Sound)) {
                return viewCreateView;
            }
            OnlineAudioPickerBaseOnlineListFragment.this.configItemView((Sound) refObject, viewCreateView);
            return viewCreateView;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            NVObject refObject = obj instanceof AssetData ? ((AssetData) obj).getRefObject() : null;
            if (!(refObject instanceof Sound)) {
                return false;
            }
            if (OnlineAudioPickerBaseOnlineListFragment.this.dealClickEvent((Sound) refObject, view, view2)) {
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }
    }
}
