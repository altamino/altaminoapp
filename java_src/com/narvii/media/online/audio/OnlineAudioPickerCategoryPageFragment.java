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

/* loaded from: classes3.dex */
public class OnlineAudioPickerCategoryPageFragment extends NVListFragment {
    private static final int REQUEST_AUDIO = 256;
    private AssetSection section;

    @Override // com.narvii.list.NVListFragment
    public Drawable getListSelector() {
        return null;
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public int initNVTheme() {
        return 2;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        this.section = (AssetSection) JacksonUtils.readAs(getStringParam("categorySection"), AssetSection.class);
        super.onCreate(bundle);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this, (int) Utils.dpToPx(getContext(), 7.0f), (int) Utils.dpToPx(getContext(), 7.0f), (int) Utils.dpToPx(getContext(), 15.0f), 0);
        divideColumnAdapter.setAdapter(new AssetCategoryAdapter(this), 2);
        return divideColumnAdapter;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        AssetSection assetSection = this.section;
        if (assetSection != null) {
            String str = assetSection.name;
            char c = 65535;
            int iHashCode = str.hashCode();
            if (iHashCode != 82021) {
                if (iHashCode == 104263205 && str.equals("music")) {
                    c = 0;
                }
            } else if (str.equals("SFX")) {
                c = 1;
            }
            if (c == 0) {
                return "Music";
            }
            if (c == 1) {
                return "SFX";
            }
        }
        return super.getPageName();
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 256 && i2 == -1) {
            setResult(-1, intent);
            finish();
        } else {
            super.onActivityResult(i, i2, intent);
        }
    }

    private class AssetCategoryAdapter extends NVPagedAdapter<AssetCategory, QuerySoundCategoryResponse> {
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

        private AssetCategoryAdapter(NVContext nVContext) {
            super(nVContext);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<AssetCategory> dataType() {
            return AssetCategory.class;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<QuerySoundCategoryResponse> responseType() {
            return QuerySoundCategoryResponse.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            ApiRequest.Builder builderPath = ApiRequest.builder().global().path("/asset/sound/category2");
            builderPath.param("section", OnlineAudioPickerCategoryPageFragment.this.section.name);
            return builderPath.build();
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.media_audio_online_picker_category_list_item, viewGroup, view);
            if (obj instanceof AssetCategory) {
                AssetCategory assetCategory = (AssetCategory) obj;
                ((TextView) viewCreateView.findViewById(R.id.track_album_name)).setText(assetCategory.title);
                TextView textView = (TextView) viewCreateView.findViewById(R.id.track_count);
                int i = assetCategory.totalCount;
                textView.setText(i == 1 ? OnlineAudioPickerCategoryPageFragment.this.getString(R.string.track_count_one) : OnlineAudioPickerCategoryPageFragment.this.getString(R.string.track_count, Integer.valueOf(i)));
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
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (obj instanceof AssetCategory) {
                LogEvent.Builder clickEventBuilder = getClickEventBuilder(obj, ActSemantic.checkDetail);
                clickEventBuilder.extraParam("categoryId", ((AssetCategory) obj).id);
                clickEventBuilder.send();
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("ndc://fragment/" + OnlineAudioPickerListCategoryFragment.class.getName()));
                intent.putExtra("category", JacksonUtils.writeAsString(obj));
                intent.putExtra("isFilterAndSortEnable", "SFX".equals(OnlineAudioPickerCategoryPageFragment.this.section.name) ^ true);
                OnlineAudioPickerCategoryPageFragment.this.startActivityForResult(intent, 256);
            }
            return true;
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected Drawable getFrameDarkBackgroundDrawable() {
        return new ColorDrawable(0);
    }
}
