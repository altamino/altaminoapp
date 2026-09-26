package com.narvii.asset;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.model.NVObject;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.adapter.PagingRecyclerViewAdapter;
import com.narvii.paging.source.DataSource;
import com.narvii.paging.source.PageDataSource;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.widget.CircleProgressBar;
import com.narvii.widget.NVImageView;
import java.io.File;

/* JADX INFO: loaded from: classes8.dex */
public class AssetAdapter extends PagingRecyclerViewAdapter implements AssetDownloadListener {
    IAssetDownloader assetDownloader;
    EmptyAssetHost emptyAssetHost;
    OnAssetSelectListener onAssetSelectListener;
    String pendingSelectId;
    String selectedId;

    class StyleHolder extends RecyclerView.ViewHolder {
        NVImageView cover;
        CircleProgressBar downloading;
        View downloadingLayout;
        ImageView notDownloaded;

        public StyleHolder(View view) {
            super(view);
            NVImageView nVImageView = (NVImageView) view.findViewById(R.id.cover);
            this.cover = nVImageView;
            nVImageView.setShowPressedMask(false);
            this.notDownloaded = (ImageView) view.findViewById(R.id.not_downloaded);
            this.downloading = (CircleProgressBar) view.findViewById(R.id.downloading);
            this.downloadingLayout = view.findViewById(R.id.downloading_layout);
        }
    }

    public AssetAdapter(NVContext nVContext) {
        super(nVContext);
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
    public PageDataSource createPageDataSource(NVContext nVContext) {
        return null;
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    protected boolean isDarkTheme() {
        return true;
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
    protected int pageStatusLayoutId() {
        return R.layout.item_asset_load_state;
    }

    public void setAssetDownloader(IAssetDownloader iAssetDownloader) {
        this.assetDownloader = iAssetDownloader;
    }

    public void setOnAssetSelectedListener(OnAssetSelectListener onAssetSelectListener) {
        this.onAssetSelectListener = onAssetSelectListener;
    }

    protected boolean supportDisable() {
        return true;
    }

    public AssetAdapter(NVContext nVContext, DataSource dataSource) {
        super(nVContext, dataSource);
    }

    private void applyAsset(IAsset iAsset, File file) {
        OnAssetSelectListener onAssetSelectListener = this.onAssetSelectListener;
        if (onAssetSelectListener == null || onAssetSelectListener.onAssetSelected(iAsset, file)) {
            this.selectedId = iAsset.id();
            notifyDataSetChanged();
        } else {
            NVToast.makeText(getContext(), R.string.failed_to_load_asset, 0).show();
            notifyDataSetChanged();
        }
    }

    private DownloadStatusInfo getDownloadStatusInfo(IAsset iAsset) {
        if (this.assetDownloader == null) {
            return DownloadStatusInfo.READY;
        }
        return iAsset.isNone() ? DownloadStatusInfo.READY : this.assetDownloader.getDownloadState(iAsset);
    }

    protected NVObject getEmptyAssetHost() {
        if (this.emptyAssetHost == null) {
            this.emptyAssetHost = new EmptyAssetHost();
        }
        return this.emptyAssetHost;
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public NVObject getItem(int i10) {
        if (supportDisable()) {
            return i10 == 0 ? getEmptyAssetHost() : super.getItem(i10 - 1);
        }
        return super.getItem(i10);
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
    protected void onBindItemViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i10) {
        IAsset iAsset;
        IAssetDownloader iAssetDownloader;
        if (viewHolder instanceof StyleHolder) {
            StyleHolder styleHolder = (StyleHolder) viewHolder;
            Cloneable item = getItem(i10);
            if (!(item instanceof IAssetHost) || (iAsset = ((IAssetHost) item).getIAsset()) == null) {
                return;
            }
            DownloadStatusInfo downloadStatusInfo = getDownloadStatusInfo(iAsset);
            styleHolder.cover.setImageUrl(iAsset.getCoverImage());
            styleHolder.downloadingLayout.setVisibility(downloadStatusInfo.status == 1 ? 0 : 8);
            if (downloadStatusInfo.status == 1 && (iAssetDownloader = this.assetDownloader) != null) {
                iAssetDownloader.loadAsset(iAsset, this);
            }
            styleHolder.downloading.setProgress((int) (downloadStatusInfo.progress * 100.0f));
            if (i10 == 0) {
                Log.i("iasset", ((int) (downloadStatusInfo.progress * 100.0f)) + "");
            }
            styleHolder.notDownloaded.setVisibility(downloadStatusInfo.status == 0 ? 0 : 8);
            viewHolder.itemView.setSelected(Utils.isEquals(iAsset.id(), this.selectedId));
            viewHolder.itemView.setTag(R.id._asset, iAsset);
        }
    }

    @Override // com.narvii.asset.AssetDownloadListener
    public void onError(IAsset iAsset, Exception exc) {
        IAssetDownloader iAssetDownloader = this.assetDownloader;
        if (iAssetDownloader != null) {
            iAssetDownloader.deleteDownloadedFile(iAsset);
        }
        NVToast.makeText(getContext(), R.string.failed_to_download, 0).show();
        notifyDataSetChanged();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean onItemClick(NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, int i10, Object obj, View view, View view2) {
        IAsset iAsset;
        if ((obj instanceof IAssetHost) && (iAsset = ((IAssetHost) obj).getIAsset()) != null) {
            if (iAsset.isNone()) {
                OnAssetSelectListener onAssetSelectListener = this.onAssetSelectListener;
                if (onAssetSelectListener != null) {
                    onAssetSelectListener.onAssetSelected(iAsset, null);
                }
                this.selectedId = iAsset.id();
                notifyDataSetChanged();
            } else {
                IAssetDownloader iAssetDownloader = this.assetDownloader;
                if (iAssetDownloader != null) {
                    int i11 = iAssetDownloader.getDownloadState(iAsset).status;
                    if (i11 == 0) {
                        Log.i("iasset", "start download");
                        this.assetDownloader.loadAsset(iAsset, this);
                        this.pendingSelectId = iAsset.id();
                        notifyDataSetChanged();
                    } else if (i11 == 2) {
                        applyAsset(iAsset, this.assetDownloader.getDownloadedFile(iAsset));
                    }
                }
            }
        }
        return super.onItemClick(nVRecyclerViewBaseAdapter, i10, obj, view, view2);
    }

    @Override // com.narvii.asset.AssetDownloadListener
    public void onProgressUpdate(IAsset iAsset, int i10, int i11) {
        Log.i("iasset", ((i10 * 100) / i11) + "-update");
        for (int i12 = 0; i12 < this.recyclerView.getChildCount(); i12++) {
            View childAt = this.recyclerView.getChildAt(i12);
            Object tag = childAt.getTag(R.id._asset);
            if ((tag instanceof IAsset) && Utils.isEqualsNotNull(iAsset.id(), ((IAsset) tag).id())) {
                notifyItemChanged(this.recyclerView.getChildAdapterPosition(childAt));
                return;
            }
        }
    }

    public void setSelectedId(String str) {
        this.selectedId = str;
        notifyDataSetChanged();
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (supportDisable()) {
            return super.getItemCount() + 1;
        }
        return super.getItemCount();
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
    protected RecyclerView.ViewHolder onCreateItemViewHolder(@NonNull ViewGroup viewGroup, int i10) {
        return new StyleHolder(LayoutInflater.from(getContext()).inflate(R.layout.item_asset, viewGroup, false));
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void onDetach() {
        super.onDetach();
        IAssetDownloader iAssetDownloader = this.assetDownloader;
        if (iAssetDownloader != null) {
            iAssetDownloader.removeDownloadListenerByTag(this);
        }
    }

    @Override // com.narvii.asset.AssetDownloadListener
    public void onPostExecute(IAsset iAsset, File file) {
        if (Utils.isEqualsNotNull(iAsset.id(), this.pendingSelectId)) {
            applyAsset(iAsset, file);
        } else {
            notifyDataSetChanged();
        }
    }
}
