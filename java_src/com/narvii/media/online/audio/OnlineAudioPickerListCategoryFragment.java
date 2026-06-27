package com.narvii.media.online.audio;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.list.NVAdapter;
import com.narvii.logging.LogEvent;
import com.narvii.media.online.audio.OnlineAudioPickerBaseOnlineListFragment;
import com.narvii.media.online.audio.model.AssetCategory;
import com.narvii.util.http.ApiRequest;

/* loaded from: classes3.dex */
public class OnlineAudioPickerListCategoryFragment extends OnlineAudioPickerBaseOnlineListFragment {
    @Override // com.narvii.media.online.audio.OnlineAudioPickerBaseOnlineListFragment, com.narvii.media.online.audio.OnlineAudioPickerBaseListFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        AssetCategory assetCategory = this.category;
        if (assetCategory == null) {
            finish();
        } else {
            setTitle(assetCategory.title);
        }
    }

    @Override // com.narvii.media.online.audio.OnlineAudioPickerBaseOnlineListFragment, com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return super.onCreateView(layoutInflater, viewGroup, bundle);
    }

    @Override // com.narvii.media.online.audio.OnlineAudioPickerBaseOnlineListFragment
    protected void presetSubCategoryViewData(Intent intent) {
        intent.putExtra("categoryId", this.category.id);
    }

    @Override // com.narvii.media.online.audio.OnlineAudioPickerBaseOnlineListFragment
    protected View initPopupWindow(View view) {
        View viewInitPopupWindow = super.initPopupWindow(view);
        viewInitPopupWindow.findViewById(R.id.sort_select_relevance).setVisibility(8);
        return viewInitPopupWindow;
    }

    @Override // com.narvii.media.online.audio.OnlineAudioPickerBaseListFragment
    protected NVAdapter createMainAdapter(Bundle bundle) {
        Adapter adapter = new Adapter(this);
        ((OnlineAudioPickerBaseOnlineListFragment) this).adapter = adapter;
        return adapter;
    }

    @Override // com.narvii.app.NVFragment
    protected void completePageViewEvent(LogEvent.Builder builder, boolean z) {
        super.completePageViewEvent(builder, z);
        AssetCategory assetCategory = this.category;
        builder.extraParam("musicCategory", assetCategory != null ? assetCategory.title : null);
    }

    protected class Adapter extends OnlineAudioPickerBaseOnlineListFragment.SoundAssetAdapter {
        public Adapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            ApiRequest.Builder builderPath = ApiRequest.builder().global().path("/asset/sound/search2");
            builderPath.param("categoryId", OnlineAudioPickerListCategoryFragment.this.category.id);
            configDefaultRequestParam(builderPath, z);
            return builderPath.build();
        }
    }
}
