package com.narvii.video.attachment.caption;

import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.app.NVContext;
import com.narvii.asset.AssetAdapter;
import com.narvii.asset.AssetDownloader;
import com.narvii.asset.IAsset;
import com.narvii.asset.OnAssetSelectListener;
import com.narvii.mediaeditor.R;
import com.narvii.model.NVObject;
import com.narvii.paging.NVRecyclerViewFragment;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.source.DataSource;
import com.narvii.paging.source.PageDataSource;
import com.narvii.util.Utils;
import com.narvii.widget.SpaceItemDecoration;
import java.io.File;

/* loaded from: classes3.dex */
public class CaptionFontFragment extends NVRecyclerViewFragment implements OnAssetSelectListener {
    String fontObjectId;
    String fontPath;
    DataSource sharedDataSource;

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.isSwipeRefreshEnabled = false;
        this.fontPath = getStringParam("fontPath");
        this.fontObjectId = getStringParam("fontObjectId");
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_caption_font, viewGroup, false);
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.recyclerView.setItemAnimator(null);
        this.recyclerView.addItemDecoration(new SpaceItemDecoration((int) Utils.dpToPx(getContext(), 15.0f)));
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    public RecyclerView.LayoutManager createLayoutManager() {
        return new LinearLayoutManager(getContext(), 0, false);
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    protected NVRecyclerViewBaseAdapter createAdapter() {
        if (getParentFragment() instanceof CaptionTabFragment) {
            this.sharedDataSource = ((CaptionTabFragment) getParentFragment()).getSharedDataSource("font");
        }
        Adapter adapter = new Adapter(this, this.sharedDataSource);
        adapter.setAssetDownloader((AssetDownloader) getService("captionFont"));
        adapter.setSelectedId(this.fontObjectId);
        adapter.setOnAssetSelectedListener(this);
        return adapter;
    }

    class Adapter extends AssetAdapter {
        public Adapter(NVContext nVContext) {
            super(nVContext);
        }

        public Adapter(NVContext nVContext, DataSource<NVObject> dataSource) {
            super(nVContext, dataSource);
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter
        protected boolean autoLoadInitData() {
            return CaptionFontFragment.this.sharedDataSource == null;
        }

        @Override // com.narvii.asset.AssetAdapter, com.narvii.paging.adapter.PagingRecyclerViewAdapter
        public PageDataSource createPageDataSource(NVContext nVContext) {
            CaptionFontDataSource captionFontDataSource = new CaptionFontDataSource(nVContext);
            if (CaptionFontFragment.this.getParentFragment() instanceof CaptionTabFragment) {
                ((CaptionTabFragment) CaptionFontFragment.this.getParentFragment()).setSharedDataSource("font", captionFontDataSource);
            }
            return captionFontDataSource;
        }
    }

    @Override // com.narvii.asset.OnAssetSelectListener
    public boolean onAssetSelected(IAsset iAsset, File file) {
        if (!(getParentFragment() instanceof CaptionEditListener)) {
            return true;
        }
        ((CaptionEditListener) getParentFragment()).onFontChanged(file == null ? null : file.getAbsolutePath(), iAsset.id());
        return true;
    }
}
