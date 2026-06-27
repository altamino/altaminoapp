package com.narvii.video.attachment.caption;

import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.narvii.app.NVContext;
import com.narvii.asset.AssetAdapter;
import com.narvii.asset.AssetDownloader;
import com.narvii.asset.OnAssetSelectListener;
import com.narvii.mediaeditor.R;
import com.narvii.paging.NVRecyclerViewFragment;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.source.DataSource;
import com.narvii.paging.source.PageDataSource;
import com.narvii.util.Utils;
import com.narvii.video.attachment.ResetAttachmentViewsListener;
import com.narvii.widget.SpaceItemDecoration;

/* loaded from: classes3.dex */
public abstract class CaptionStyleBaseFragment extends NVRecyclerViewFragment implements OnAssetSelectListener {
    AssetAdapter assetAdapter;
    DataSource sharedDataSource;
    String styleId;
    String styleObjectId;

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.isSwipeRefreshEnabled = false;
        this.styleId = getStringParam("styleId");
        this.styleObjectId = getStringParam("styleObjectId");
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    protected NVRecyclerViewBaseAdapter createAdapter() {
        if (getParentFragment() instanceof CaptionTabFragment) {
            this.sharedDataSource = ((CaptionTabFragment) getParentFragment()).getSharedDataSource(TtmlNode.TAG_STYLE);
        }
        this.assetAdapter = new Adapter(this, this.sharedDataSource);
        this.assetAdapter.setAssetDownloader((AssetDownloader) getService("captionStyle"));
        this.assetAdapter.setSelectedId(this.styleObjectId);
        this.assetAdapter.setOnAssetSelectedListener(this);
        return this.assetAdapter;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment
    public void onActiveChanged(boolean z) {
        super.onActiveChanged(z);
        if (z || !(getParentFragment() instanceof ResetAttachmentViewsListener)) {
            return;
        }
        ((ResetAttachmentViewsListener) getParentFragment()).resetViewsWhenEditing();
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

    class Adapter extends AssetAdapter {
        public Adapter(NVContext nVContext, DataSource dataSource) {
            super(nVContext, dataSource);
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter
        protected boolean autoLoadInitData() {
            return CaptionStyleBaseFragment.this.sharedDataSource == null;
        }

        @Override // com.narvii.asset.AssetAdapter, com.narvii.paging.adapter.PagingRecyclerViewAdapter
        public PageDataSource createPageDataSource(NVContext nVContext) {
            CaptionStyleDataSource captionStyleDataSource = new CaptionStyleDataSource(nVContext);
            if (CaptionStyleBaseFragment.this.getParentFragment() instanceof CaptionTabFragment) {
                ((CaptionTabFragment) CaptionStyleBaseFragment.this.getParentFragment()).setSharedDataSource(TtmlNode.TAG_STYLE, captionStyleDataSource);
            }
            return captionStyleDataSource;
        }
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_caption_style, viewGroup, false);
    }
}
