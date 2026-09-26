package com.narvii.media.online.audio;

import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.list.DivideColumnAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.media.online.audio.model.AssetCategory;
import com.narvii.media.online.audio.model.AssetSection;
import com.narvii.media.online.audio.model.QuerySoundCategoryResponse;
import com.narvii.model.Media;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.NVImageView;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes7.dex */
public class OnlineAudioPickerCategoryPageFragment extends NVListFragment {
    private static final int REQUEST_AUDIO = 256;
    private AssetSection section;

    private class AssetCategoryAdapter extends NVPagedAdapter<AssetCategory, QuerySoundCategoryResponse> {
        public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
            Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
            if (p1 == null) {
                return;
            }
            p0.startActivityForResult(p1, p5);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<AssetCategory> dataType() {
            return AssetCategory.class;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "Category";
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
        public Class<QuerySoundCategoryResponse> responseType() {
            return QuerySoundCategoryResponse.class;
        }

        private AssetCategoryAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.media_audio_online_picker_category_list_item, viewGroup, view);
            if (obj instanceof AssetCategory) {
                AssetCategory assetCategory = (AssetCategory) obj;
                ((TextView) viewCreateView.findViewById(R.id.track_album_name)).setText(assetCategory.title);
                TextView textView = (TextView) viewCreateView.findViewById(R.id.track_count);
                int i10 = assetCategory.totalCount;
                textView.setText(i10 == 1 ? OnlineAudioPickerCategoryPageFragment.this.getString(R.string.track_count_one) : OnlineAudioPickerCategoryPageFragment.this.getString(R.string.track_count, Integer.valueOf(i10)));
                NVImageView nVImageView = (NVImageView) viewCreateView.findViewById(R.id.category_background);
                nVImageView.setBackgroundColor(assetCategory.getCoverBackgroundColor());
                Media coverMediaCover = assetCategory.getCoverMediaCover();
                if (coverMediaCover != null) {
                    nVImageView.setImageMedia(coverMediaCover);
                }
            }
            return viewCreateView;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (obj instanceof AssetCategory) {
                LogEvent.Builder clickEventBuilder = getClickEventBuilder(obj, ActSemantic.checkDetail);
                clickEventBuilder.extraParam("categoryId", ((AssetCategory) obj).id);
                clickEventBuilder.send();
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("ndc://fragment/" + OnlineAudioPickerListCategoryFragment.class.getName()));
                intent.putExtra("category", JacksonUtils.writeAsString(obj));
                intent.putExtra("isFilterAndSortEnable", "SFX".equals(OnlineAudioPickerCategoryPageFragment.this.section.name) ^ true);
                safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(OnlineAudioPickerCategoryPageFragment.this, intent, 256);
            }
            return true;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            ApiRequest.Builder builderPath = ApiRequest.builder().global().path("/asset/sound/category2");
            builderPath.param("section", OnlineAudioPickerCategoryPageFragment.this.section.name);
            return builderPath.build();
        }
    }

    @Override // com.narvii.list.NVListFragment
    public Drawable getListSelector() {
        return null;
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public int initNVTheme() {
        return 2;
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this, (int) Utils.dpToPx(getContext(), 7.0f), (int) Utils.dpToPx(getContext(), 7.0f), (int) Utils.dpToPx(getContext(), 15.0f), 0);
        divideColumnAdapter.setAdapter(new AssetCategoryAdapter(this), 2);
        return divideColumnAdapter;
    }

    @Override // com.narvii.list.NVListFragment
    @NonNull
    protected Drawable getFrameDarkBackgroundDrawable() {
        return new ColorDrawable(0);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @Nullable
    public String getPageName() {
        AssetSection assetSection = this.section;
        if (assetSection != null) {
            String str = assetSection.name;
            str.hashCode();
            if (str.equals("SFX")) {
                return "sfx_picker";
            }
            if (str.equals("music")) {
                return "music_picker";
            }
        }
        return super.getPageName();
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        if (i10 != 256 || i11 != -1) {
            super.onActivityResult(i10, i11, intent);
        } else {
            setResult(-1, intent);
            finish();
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        this.section = (AssetSection) JacksonUtils.readAs(getStringParam("categorySection"), AssetSection.class);
        super.onCreate(bundle);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
    }
}
