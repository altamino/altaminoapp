package com.narvii.media.online.audio;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
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
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes11.dex */
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

    protected abstract class SoundAssetAdapter extends NVPagedAdapter<AssetData, AssetListResponse> {
        private String seed;

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<AssetData> dataType() {
            return AssetData.class;
        }

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

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<? extends AssetListResponse> responseType() {
            return AssetListResponse.class;
        }

        public SoundAssetAdapter(NVContext nVContext) {
            super(nVContext);
            this.seed = null;
        }

        protected void configDefaultRequestParam(ApiRequest.Builder builder, boolean z6) {
            if (!OnlineAudioPickerBaseOnlineListFragment.this.selectedSubcategory.isEmpty()) {
                StringBuilder sb = new StringBuilder();
                for (String str : OnlineAudioPickerBaseOnlineListFragment.this.selectedSubcategory) {
                    sb.append(",");
                    sb.append(str);
                }
                builder.param("filterIds", sb.substring(1));
            }
            int i10 = OnlineAudioPickerBaseOnlineListFragment.this.selectSortMode;
            if (i10 >= 0 && i10 < OnlineAudioPickerBaseOnlineListFragment.SORT_REQUEST_ENUM.length) {
                builder.param("sortBy", OnlineAudioPickerBaseOnlineListFragment.SORT_REQUEST_ENUM[OnlineAudioPickerBaseOnlineListFragment.this.selectSortMode]);
            }
            String str2 = this.seed;
            if (str2 != null) {
                builder.param("seed", str2);
            }
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
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            NVObject refObject = obj instanceof AssetData ? ((AssetData) obj).getRefObject() : null;
            if (!(refObject instanceof Sound)) {
                return false;
            }
            if (OnlineAudioPickerBaseOnlineListFragment.this.dealClickEvent((Sound) refObject, view, view2)) {
                return true;
            }
            return super.onItemClick(listAdapter, i10, obj, view, view2);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, AssetListResponse assetListResponse, int i10) {
            super.onPageResponse(apiRequest, assetListResponse, i10);
            if (OnlineAudioPickerBaseOnlineListFragment.this.subcategoryResultCount != null) {
                OnlineAudioPickerBaseOnlineListFragment.this.subcategoryResultCount.setText(OnlineAudioPickerBaseOnlineListFragment.this.getString(R.string.filter_results_count, Integer.valueOf(assetListResponse.total)));
            }
            this.seed = assetListResponse.seed;
        }

        @Override // com.narvii.list.NVPagedAdapter
        public void resetList() {
            OnlineAudioPickerBaseOnlineListFragment.this.stopPlayMusic();
            super.resetList();
        }
    }

    public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
        if (p1 == null) {
            return;
        }
        p0.startActivityForResult(p1, p5);
    }

    protected int getDefaultSelectMode() {
        return 0;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "music_category";
    }

    protected void presetSubCategoryViewData(Intent intent) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initPopupWindow$1(View view, View view2) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initPopupWindow$2(View view, View view2, View view3) {
        ViewGroup viewGroup = (ViewGroup) view.findViewById(R.id.popup_list);
        int i10 = 0;
        while (i10 < viewGroup.getChildCount()) {
            ViewGroup viewGroup2 = (ViewGroup) viewGroup.getChildAt(i10);
            viewGroup2.setBackgroundColor(i10 == this.selectSortMode ? 1023410175 : 0);
            viewGroup2.findViewWithTag(getString(R.string.sort_selected)).setVisibility(i10 == this.selectSortMode ? 0 : 8);
            i10++;
        }
        this.sortSelectWindow.showAsDropDown(view2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$0(View view) {
        LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("Filter").send();
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("ndc://fragment/" + OnlineAudioSubCategoryPicker.class.getName()));
        presetSubCategoryViewData(intent);
        intent.putExtra("selectedCategory", JacksonUtils.writeAsString(new ArrayList(this.selectedSubcategory)));
        intent.putExtra("customFinishAnimIn", 0);
        intent.putExtra("customFinishAnimOut", R.anim.activity_push_bottom_out);
        safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(this, intent, 201);
        getActivity().overridePendingTransition(R.anim.activity_push_bottom_in, 0);
    }

    private void updateSubcategoryEntrance() {
        List<String> list;
        if (this.subcategoryEntrance != null) {
            AssetCategory assetCategory = this.category;
            boolean z6 = assetCategory != null && ((list = assetCategory.children) == null || list.isEmpty());
            this.subcategoryEntrance.setImageResource(this.selectedSubcategory.isEmpty() ? R.drawable.ic_online_picker_filter : R.drawable.ic_online_picker_filter_green);
            this.subcategoryEntrance.setAlpha((!this.isFilterAndSortEnable || z6) ? 0.3f : 1.0f);
            this.subcategoryEntrance.setClickable(this.isFilterAndSortEnable && !z6);
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

    @Override // com.narvii.media.online.audio.OnlineAudioPickerBaseListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        if (i10 != 201 || i11 != -1) {
            super.onActivityResult(i10, i11, intent);
            return;
        }
        this.selectedSubcategory.clear();
        ArrayList listAs = JacksonUtils.readListAs(intent.getStringExtra("selectedCategory"), String.class);
        if (listAs != null) {
            this.selectedSubcategory.addAll(listAs);
        }
        updateSubcategoryEntrance();
        this.adapter.resetList();
    }

    @Override // com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.media_audio_online_picker_list, viewGroup, false);
    }

    protected View initPopupWindow(final View view) {
        float f;
        final View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.media_audio_online_picker_sort_select, (ViewGroup) null);
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.narvii.media.online.audio.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f2466a.lambda$initPopupWindow$1(view, view2);
            }
        };
        viewInflate.findViewById(R.id.sort_select_default).setOnClickListener(onClickListener);
        viewInflate.findViewById(R.id.sort_select_relevance).setOnClickListener(onClickListener);
        viewInflate.findViewById(R.id.sort_select_shortest).setOnClickListener(onClickListener);
        viewInflate.findViewById(R.id.sort_select_longest).setOnClickListener(onClickListener);
        this.sortSelectWindow = new PopupWindow(viewInflate, -2, -2, true);
        final View viewFindViewById = view.findViewById(R.id.sort_filter);
        viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.media.online.audio.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f2468a.lambda$initPopupWindow$2(viewInflate, viewFindViewById, view2);
            }
        });
        if (this.isFilterAndSortEnable) {
            f = 1.0f;
        } else {
            f = 0.3f;
        }
        viewFindViewById.setAlpha(f);
        viewFindViewById.setClickable(this.isFilterAndSortEnable);
        return viewInflate;
    }

    @Override // com.narvii.media.online.audio.OnlineAudioPickerBaseListFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.category = (AssetCategory) JacksonUtils.readAs(getStringParam("category"), AssetCategory.class);
        this.isFilterAndSortEnable = getBooleanParam("isFilterAndSortEnable", true);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        initPopupWindow(view);
        this.subcategoryResultCount = (TextView) view.findViewById(R.id.filter_result_count);
        this.subcategoryEntrance = (ImageView) view.findViewById(R.id.filter_entrance);
        this.subcategoryCount = (TextView) view.findViewById(R.id.filter_count);
        this.subcategoryEntrance.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.media.online.audio.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f2471a.lambda$onViewCreated$0(view2);
            }
        });
        updateSubcategoryEntrance();
    }
}
