package com.narvii.video;

import android.content.ComponentCallbacks;
import android.os.Bundle;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.media.giphy.GiphyItem;
import com.narvii.media.giphy.GiphyListResponse;
import com.narvii.media.giphy.GiphyStickerService;
import com.narvii.model.Sticker;
import com.narvii.paging.NVRecyclerViewFragment;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.adapter.PagingRecyclerViewAdapter;
import com.narvii.paging.source.PageDataSource;
import com.narvii.paging.source.PagingConfiguration;
import com.narvii.util.http.ApiRequest;
import com.narvii.video.EditorStickerPickerTabFragment;
import com.narvii.video.model.StickerInfoPack;
import com.narvii.video.services.VideoManager;
import com.narvii.video.widget.EditorStickerInstallFrameView;
import com.narvii.widget.NVImageView;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import tv.danmaku.ijk.media.player.IjkMediaPlayer;

/* compiled from: EditorStickerPickerListFragment.kt */
/* loaded from: classes3.dex */
public final class EditorStickerPickerListFragment extends NVRecyclerViewFragment {
    private HashMap _$_findViewCache;
    private String apiKey;
    private EditorStickerPickerTabFragment.GiphyStickerSelectedCallback giphyStickerSelectedCallback;
    private GiphyStickerService giphyStickerService;
    private GiphyItem selectedSticker;
    private String stickerPackId;
    private VideoManager videoManager;

    @Override // com.narvii.app.theme.NVThemeFragment
    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View view2 = getView();
        if (view2 == null) {
            return null;
        }
        View viewFindViewById = view2.findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    public static final /* synthetic */ String access$getApiKey$p(EditorStickerPickerListFragment editorStickerPickerListFragment) {
        String str = editorStickerPickerListFragment.apiKey;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException("apiKey");
        throw null;
    }

    public static final /* synthetic */ GiphyStickerService access$getGiphyStickerService$p(EditorStickerPickerListFragment editorStickerPickerListFragment) {
        GiphyStickerService giphyStickerService = editorStickerPickerListFragment.giphyStickerService;
        if (giphyStickerService != null) {
            return giphyStickerService;
        }
        Intrinsics.throwUninitializedPropertyAccessException("giphyStickerService");
        throw null;
    }

    public static final /* synthetic */ VideoManager access$getVideoManager$p(EditorStickerPickerListFragment editorStickerPickerListFragment) {
        VideoManager videoManager = editorStickerPickerListFragment.videoManager;
        if (videoManager != null) {
            return videoManager;
        }
        Intrinsics.throwUninitializedPropertyAccessException("videoManager");
        throw null;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.stickerPackId = getStringParam("stickerPackId");
        Object service = getService("videoManager");
        Intrinsics.checkExpressionValueIsNotNull(service, "getService<VideoManager>(\"videoManager\")");
        this.videoManager = (VideoManager) service;
        Object service2 = getService("giphySticker");
        Intrinsics.checkExpressionValueIsNotNull(service2, "getService<GiphyStickerService>(\"giphySticker\")");
        this.giphyStickerService = (GiphyStickerService) service2;
        String string = ((ConfigService) getService("config")).getString("giphyApiKey", "12ss5TcLvRjUze");
        Intrinsics.checkExpressionValueIsNotNull(string, "getService<ConfigService…piKey\", \"12ss5TcLvRjUze\")");
        this.apiKey = string;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    protected NVRecyclerViewBaseAdapter createAdapter() {
        return new Adapter(this, this);
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    public RecyclerView.LayoutManager createLayoutManager() {
        return new GridLayoutManager(getContext(), 4);
    }

    public final void setStickerPackId(String packId) {
        Intrinsics.checkParameterIsNotNull(packId, "packId");
        if (Intrinsics.areEqual(this.stickerPackId, packId)) {
            return;
        }
        this.stickerPackId = packId;
        NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter = this.adapter;
        if (nVRecyclerViewBaseAdapter != null) {
            nVRecyclerViewBaseAdapter.resetList();
        }
    }

    public final void setCurrentSelectedSticker(GiphyItem giphyItem) {
        this.selectedSticker = giphyItem;
        NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter = this.adapter;
        if (nVRecyclerViewBaseAdapter != null) {
            nVRecyclerViewBaseAdapter.notifyDataSetChanged();
        }
    }

    public final void setGiphyStickerSelectedCallback(EditorStickerPickerTabFragment.GiphyStickerSelectedCallback callback) {
        Intrinsics.checkParameterIsNotNull(callback, "callback");
        this.giphyStickerSelectedCallback = callback;
    }

    /* compiled from: EditorStickerPickerListFragment.kt */
    private final class Adapter extends PagingRecyclerViewAdapter<GiphyItem, GiphyListResponse> {
        final /* synthetic */ EditorStickerPickerListFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Adapter(EditorStickerPickerListFragment editorStickerPickerListFragment, NVContext ctx) {
            super(ctx);
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            this.this$0 = editorStickerPickerListFragment;
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        protected RecyclerView.ViewHolder onCreateItemViewHolder(ViewGroup parent, int i) {
            Intrinsics.checkParameterIsNotNull(parent, "parent");
            View itemView = LayoutInflater.from(getContext()).inflate(com.narvii.mediaeditor.R.layout.item_editor_sticker_list_item, parent, false);
            EditorStickerPickerListFragment editorStickerPickerListFragment = this.this$0;
            Intrinsics.checkExpressionValueIsNotNull(itemView, "itemView");
            return new GiphyItemHolder(editorStickerPickerListFragment, itemView);
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        protected void onBindItemViewHolder(RecyclerView.ViewHolder holder, int i) {
            Intrinsics.checkParameterIsNotNull(holder, "holder");
            if (holder instanceof GiphyItemHolder) {
                GiphyItem item = getItem(i);
                Intrinsics.checkExpressionValueIsNotNull(item, "getItem(position)");
                ((GiphyItemHolder) holder).bindHolder(item);
            }
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        public PageDataSource<GiphyItem, GiphyListResponse> createPageDataSource(NVContext context) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            PagingConfiguration pageConfiguration = PagingConfiguration.OFFSET_CONFIG;
            pageConfiguration.offsetStartKey = IjkMediaPlayer.OnNativeInvokeListener.ARG_OFFSET;
            pageConfiguration.offsetStepKey = "limit";
            pageConfiguration.pageSize = 12;
            EditorStickerPickerListFragment editorStickerPickerListFragment = this.this$0;
            Intrinsics.checkExpressionValueIsNotNull(pageConfiguration, "pageConfiguration");
            return new GiphyDataSource(editorStickerPickerListFragment, context, pageConfiguration);
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter, android.support.v7.widget.RecyclerView.Adapter
        public void onViewRecycled(RecyclerView.ViewHolder holder) {
            Intrinsics.checkParameterIsNotNull(holder, "holder");
            if (holder instanceof GiphyItemHolder) {
                ((GiphyItemHolder) holder).onHolderRecycled();
            }
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public boolean onItemClick(NVRecyclerViewBaseAdapter adapter, int i, Object item, View cell, View view) {
            Intrinsics.checkParameterIsNotNull(adapter, "adapter");
            Intrinsics.checkParameterIsNotNull(item, "item");
            Intrinsics.checkParameterIsNotNull(cell, "cell");
            if (item instanceof GiphyItem) {
                GiphyItem giphyItem = (GiphyItem) item;
                this.this$0.selectedSticker = giphyItem;
                EditorStickerPickerTabFragment.GiphyStickerSelectedCallback giphyStickerSelectedCallback = this.this$0.giphyStickerSelectedCallback;
                if (giphyStickerSelectedCallback != null) {
                    giphyStickerSelectedCallback.onGiphyStickerSelected(giphyItem);
                }
                if (giphyItem.stickerStatus() == 3) {
                    Sticker sticker = new Sticker();
                    sticker.stickerId = giphyItem.id();
                    sticker.stickerCollectionId = giphyItem.collectionId();
                    sticker.sourceType = 3;
                    StickerInfoPack stickerInfoPackObtainInstalledStickerInfo = EditorStickerPickerListFragment.access$getVideoManager$p(this.this$0).obtainInstalledStickerInfo(sticker, EditorStickerPickerListFragment.access$getGiphyStickerService$p(this.this$0).getLocalPath(giphyItem));
                    if (stickerInfoPackObtainInstalledStickerInfo != null) {
                        ComponentCallbacks parentFragment = this.this$0.getParentFragment();
                        if (parentFragment instanceof VideoManager.IInstallStickerCallback) {
                            ((VideoManager.IInstallStickerCallback) parentFragment).onStickerInstalled(stickerInfoPackObtainInstalledStickerInfo);
                        }
                        return true;
                    }
                } else if (giphyItem.stickerStatus() != 2) {
                    ((EditorStickerInstallFrameView) cell.findViewById(com.narvii.mediaeditor.R.id.sticker_install_frame)).bindGiphySticker(giphyItem, EditorStickerPickerListFragment.access$getGiphyStickerService$p(this.this$0));
                }
                return true;
            }
            return super.onItemClick(adapter, i, item, cell, view);
        }
    }

    /* compiled from: EditorStickerPickerListFragment.kt */
    private final class GiphyDataSource extends PageDataSource<GiphyItem, GiphyListResponse> {
        final /* synthetic */ EditorStickerPickerListFragment this$0;

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.narvii.paging.source.PageDataSource
        public List<GiphyItem> filterResponseList(List<? extends GiphyItem> list) {
            return list;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public GiphyDataSource(EditorStickerPickerListFragment editorStickerPickerListFragment, NVContext ctx, PagingConfiguration pageConfiguration) {
            super(ctx, null, pageConfiguration);
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            Intrinsics.checkParameterIsNotNull(pageConfiguration, "pageConfiguration");
            this.this$0 = editorStickerPickerListFragment;
        }

        @Override // com.narvii.paging.source.PageDataSource
        protected ApiRequest createRequest() {
            ApiRequest.Builder builder_url = ApiRequest.builder()._url("https://api.giphy.com/v1/stickers/packs/" + this.this$0.stickerPackId + "/stickers");
            builder_url.param("api_key", EditorStickerPickerListFragment.access$getApiKey$p(this.this$0));
            return builder_url.build();
        }

        @Override // com.narvii.paging.source.PageDataSource
        protected Class<GiphyListResponse> responseType() {
            return GiphyListResponse.class;
        }

        @Override // com.narvii.paging.source.PageDataSource
        public void onPageResponse(ApiRequest req, GiphyListResponse resp, int i) {
            Intrinsics.checkParameterIsNotNull(req, "req");
            Intrinsics.checkParameterIsNotNull(resp, "resp");
            super.onPageResponse(req, (ApiRequest) resp, i);
            Iterator<GiphyItem> it = resp.list().iterator();
            while (it.hasNext()) {
                it.next().packId = this.this$0.stickerPackId;
            }
        }
    }

    /* compiled from: EditorStickerPickerListFragment.kt */
    private final class GiphyItemHolder extends RecyclerView.ViewHolder {
        final /* synthetic */ EditorStickerPickerListFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public GiphyItemHolder(EditorStickerPickerListFragment editorStickerPickerListFragment, View itemView) {
            super(itemView);
            Intrinsics.checkParameterIsNotNull(itemView, "itemView");
            this.this$0 = editorStickerPickerListFragment;
        }

        public final void bindHolder(GiphyItem data) {
            Intrinsics.checkParameterIsNotNull(data, "data");
            View itemView = this.itemView;
            Intrinsics.checkExpressionValueIsNotNull(itemView, "itemView");
            ((NVImageView) itemView.findViewById(com.narvii.mediaeditor.R.id.thumbnail)).setImageUrl(data.thumbUrl());
            Sticker sticker = new Sticker();
            sticker.stickerId = data.id();
            sticker.stickerCollectionId = data.collectionId();
            int iStickerStatus = 1;
            if (EditorStickerPickerListFragment.access$getVideoManager$p(this.this$0).obtainInstalledStickerInfo(sticker, EditorStickerPickerListFragment.access$getGiphyStickerService$p(this.this$0).getLocalPath(data)) != null) {
                iStickerStatus = 3;
            } else if (data.stickerStatus() != 0) {
                iStickerStatus = data.stickerStatus();
            }
            data.stickerStatus = iStickerStatus;
            View itemView2 = this.itemView;
            Intrinsics.checkExpressionValueIsNotNull(itemView2, "itemView");
            ((EditorStickerInstallFrameView) itemView2.findViewById(com.narvii.mediaeditor.R.id.sticker_install_frame)).setStickerStatus(data.stickerStatus());
            View itemView3 = this.itemView;
            Intrinsics.checkExpressionValueIsNotNull(itemView3, "itemView");
            EditorStickerInstallFrameView editorStickerInstallFrameView = (EditorStickerInstallFrameView) itemView3.findViewById(com.narvii.mediaeditor.R.id.sticker_install_frame);
            GiphyItem giphyItem = this.this$0.selectedSticker;
            editorStickerInstallFrameView.setStickerSelected(Intrinsics.areEqual(giphyItem != null ? giphyItem.id : null, data.id));
            if (iStickerStatus == 2) {
                View itemView4 = this.itemView;
                Intrinsics.checkExpressionValueIsNotNull(itemView4, "itemView");
                ((EditorStickerInstallFrameView) itemView4.findViewById(com.narvii.mediaeditor.R.id.sticker_install_frame)).bindGiphySticker(data, EditorStickerPickerListFragment.access$getGiphyStickerService$p(this.this$0));
            }
        }

        public final void onHolderRecycled() {
            View itemView = this.itemView;
            Intrinsics.checkExpressionValueIsNotNull(itemView, "itemView");
            ((EditorStickerInstallFrameView) itemView.findViewById(com.narvii.mediaeditor.R.id.sticker_install_frame)).onViewRecycled();
        }
    }
}
