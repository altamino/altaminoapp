package com.narvii.media.online.audio;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.list.NVAdapter;
import com.narvii.logging.LogEvent;
import com.narvii.media.online.audio.model.AssetCategory;
import com.narvii.util.http.ApiRequest;

/* JADX INFO: loaded from: classes7.dex */
public class OnlineAudioPickerListCategoryFragment extends OnlineAudioPickerBaseOnlineListFragment {

    protected class Adapter extends OnlineAudioPickerBaseOnlineListFragment.SoundAssetAdapter {
        public Adapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            ApiRequest.Builder builderPath = ApiRequest.builder().global().path("/asset/sound/search2");
            builderPath.param("categoryId", OnlineAudioPickerListCategoryFragment.this.category.id);
            configDefaultRequestParam(builderPath, z6);
            return builderPath.build();
        }
    }

    @Override // com.narvii.media.online.audio.OnlineAudioPickerBaseListFragment
    protected NVAdapter createMainAdapter(Bundle bundle) {
        Adapter adapter = new Adapter(this);
        ((OnlineAudioPickerBaseOnlineListFragment) this).adapter = adapter;
        return adapter;
    }

    @Override // com.narvii.media.online.audio.OnlineAudioPickerBaseOnlineListFragment
    protected void presetSubCategoryViewData(Intent intent) {
        intent.putExtra("categoryId", this.category.id);
    }

    @Override // com.narvii.app.NVFragment
    protected void completePageViewEvent(LogEvent.Builder builder, boolean z6) {
        String str;
        super.completePageViewEvent(builder, z6);
        AssetCategory assetCategory = this.category;
        if (assetCategory != null) {
            str = assetCategory.title;
        } else {
            str = null;
        }
        builder.extraParam("musicCategory", str);
    }

    @Override // com.narvii.media.online.audio.OnlineAudioPickerBaseOnlineListFragment
    protected View initPopupWindow(View view) {
        View viewInitPopupWindow = super.initPopupWindow(view);
        viewInitPopupWindow.findViewById(R.id.sort_select_relevance).setVisibility(8);
        return viewInitPopupWindow;
    }

    @Override // com.narvii.media.online.audio.OnlineAudioPickerBaseOnlineListFragment, com.narvii.media.online.audio.OnlineAudioPickerBaseListFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        AssetCategory assetCategory = this.category;
        if (assetCategory == null) {
            finish();
        } else {
            setTitle(assetCategory.title);
        }
    }

    @Override // com.narvii.media.online.audio.OnlineAudioPickerBaseOnlineListFragment, com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return super.onCreateView(layoutInflater, viewGroup, bundle);
    }
}
