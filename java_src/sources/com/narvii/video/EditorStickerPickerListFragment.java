package com.narvii.video;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.result.ActivityResultCaller;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.media.giphy.GiphyItem;
import com.narvii.media.giphy.GiphyListResponse;
import com.narvii.media.giphy.GiphyStickerService;
import com.narvii.mediaeditor.databinding.ItemEditorStickerListItemBinding;
import com.narvii.model.Sticker;
import com.narvii.paging.NVRecyclerViewFragment;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.adapter.PagingRecyclerViewAdapter;
import com.narvii.paging.source.PageDataSource;
import com.narvii.paging.source.PagingConfiguration;
import com.narvii.util.http.ApiRequest;
import com.narvii.video.model.StickerInfoPack;
import com.narvii.video.services.VideoManager;
import com.narvii.video.widget.EditorStickerInstallFrameView;
import java.util.Iterator;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class EditorStickerPickerListFragment extends NVRecyclerViewFragment {
    private String apiKey;

    @Nullable
    private EditorStickerPickerTabFragment.GiphyStickerSelectedCallback giphyStickerSelectedCallback;
    private GiphyStickerService giphyStickerService;

    @Nullable
    private GiphyItem selectedSticker;

    @Nullable
    private String stickerPackId;
    private VideoManager videoManager;

    private final class Adapter extends PagingRecyclerViewAdapter<GiphyItem, GiphyListResponse> {
        final /* synthetic */ EditorStickerPickerListFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Adapter(@NotNull EditorStickerPickerListFragment editorStickerPickerListFragment, NVContext ctx) {
            super(ctx);
            kotlin.jvm.internal.t.j(ctx, "ctx");
            this.this$0 = editorStickerPickerListFragment;
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        @NotNull
        public PageDataSource<GiphyItem, GiphyListResponse> createPageDataSource(@NotNull NVContext context) {
            kotlin.jvm.internal.t.j(context, "context");
            PagingConfiguration pagingConfiguration = PagingConfiguration.OFFSET_CONFIG;
            pagingConfiguration.offsetStartKey = TypedValues.CycleType.S_WAVE_OFFSET;
            pagingConfiguration.offsetStepKey = "limit";
            pagingConfiguration.pageSize = 12;
            EditorStickerPickerListFragment editorStickerPickerListFragment = this.this$0;
            kotlin.jvm.internal.t.g(pagingConfiguration);
            return new GiphyDataSource(editorStickerPickerListFragment, context, pagingConfiguration);
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        protected void onBindItemViewHolder(@NotNull RecyclerView.ViewHolder holder, int i10) {
            kotlin.jvm.internal.t.j(holder, "holder");
            if (holder instanceof GiphyItemHolder) {
                GiphyItem item = getItem(i10);
                kotlin.jvm.internal.t.i(item, "getItem(...)");
                ((GiphyItemHolder) holder).bindHolder(item);
            }
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        @NotNull
        protected RecyclerView.ViewHolder onCreateItemViewHolder(@NotNull ViewGroup parent, int i10) {
            kotlin.jvm.internal.t.j(parent, "parent");
            EditorStickerPickerListFragment editorStickerPickerListFragment = this.this$0;
            ItemEditorStickerListItemBinding itemEditorStickerListItemBindingInflate = ItemEditorStickerListItemBinding.inflate(LayoutInflater.from(getContext()), parent, false);
            kotlin.jvm.internal.t.i(itemEditorStickerListItemBindingInflate, "inflate(...)");
            return new GiphyItemHolder(editorStickerPickerListFragment, itemEditorStickerListItemBindingInflate);
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public boolean onItemClick(@NotNull NVRecyclerViewBaseAdapter adapter, int i10, @NotNull Object item, @NotNull View cell, @Nullable View view) {
            kotlin.jvm.internal.t.j(adapter, "adapter");
            kotlin.jvm.internal.t.j(item, "item");
            kotlin.jvm.internal.t.j(cell, "cell");
            if (!(item instanceof GiphyItem)) {
                return super.onItemClick(adapter, i10, item, cell, view);
            }
            GiphyItem giphyItem = (GiphyItem) item;
            this.this$0.selectedSticker = giphyItem;
            EditorStickerPickerTabFragment.GiphyStickerSelectedCallback giphyStickerSelectedCallback = this.this$0.giphyStickerSelectedCallback;
            if (giphyStickerSelectedCallback != null) {
                giphyStickerSelectedCallback.onGiphyStickerSelected(giphyItem);
            }
            GiphyStickerService giphyStickerService = null;
            if (giphyItem.stickerStatus() == 3) {
                Sticker sticker = new Sticker();
                sticker.stickerId = giphyItem.id();
                sticker.stickerCollectionId = giphyItem.collectionId();
                sticker.sourceType = 3;
                VideoManager videoManager = this.this$0.videoManager;
                if (videoManager == null) {
                    kotlin.jvm.internal.t.B("videoManager");
                    videoManager = null;
                }
                GiphyStickerService giphyStickerService2 = this.this$0.giphyStickerService;
                if (giphyStickerService2 == null) {
                    kotlin.jvm.internal.t.B("giphyStickerService");
                } else {
                    giphyStickerService = giphyStickerService2;
                }
                StickerInfoPack stickerInfoPackObtainInstalledStickerInfo = videoManager.obtainInstalledStickerInfo(sticker, giphyStickerService.getLocalPath(giphyItem));
                if (stickerInfoPackObtainInstalledStickerInfo != null) {
                    ActivityResultCaller parentFragment = this.this$0.getParentFragment();
                    if (parentFragment instanceof VideoManager.IInstallStickerCallback) {
                        ((VideoManager.IInstallStickerCallback) parentFragment).onStickerInstalled(stickerInfoPackObtainInstalledStickerInfo);
                    }
                    return true;
                }
            } else if (giphyItem.stickerStatus() != 2) {
                EditorStickerInstallFrameView editorStickerInstallFrameView = (EditorStickerInstallFrameView) cell.findViewById(com.narvii.mediaeditor.R.id.sticker_install_frame);
                GiphyStickerService giphyStickerService3 = this.this$0.giphyStickerService;
                if (giphyStickerService3 == null) {
                    kotlin.jvm.internal.t.B("giphyStickerService");
                } else {
                    giphyStickerService = giphyStickerService3;
                }
                editorStickerInstallFrameView.bindGiphySticker(giphyItem, giphyStickerService);
            }
            return true;
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewRecycled(@NotNull RecyclerView.ViewHolder holder) {
            kotlin.jvm.internal.t.j(holder, "holder");
            if (holder instanceof GiphyItemHolder) {
                ((GiphyItemHolder) holder).onHolderRecycled();
            }
        }
    }

    private final class GiphyDataSource extends PageDataSource<GiphyItem, GiphyListResponse> {
        final /* synthetic */ EditorStickerPickerListFragment this$0;

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.narvii.paging.source.PageDataSource
        @Nullable
        public List<GiphyItem> filterResponseList(@Nullable List<? extends GiphyItem> list) {
            return list;
        }

        @Override // com.narvii.paging.source.PageDataSource
        @NotNull
        protected Class<GiphyListResponse> responseType() {
            return GiphyListResponse.class;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public GiphyDataSource(@NotNull EditorStickerPickerListFragment editorStickerPickerListFragment, @NotNull NVContext ctx, PagingConfiguration pageConfiguration) {
            super(ctx, null, pageConfiguration);
            kotlin.jvm.internal.t.j(ctx, "ctx");
            kotlin.jvm.internal.t.j(pageConfiguration, "pageConfiguration");
            this.this$0 = editorStickerPickerListFragment;
        }

        @Override // com.narvii.paging.source.PageDataSource
        public void onPageResponse(@NotNull ApiRequest req, @NotNull GiphyListResponse resp, int i10) {
            kotlin.jvm.internal.t.j(req, "req");
            kotlin.jvm.internal.t.j(resp, "resp");
            super.onPageResponse(req, resp, i10);
            Iterator<GiphyItem> it = resp.list().iterator();
            while (it.hasNext()) {
                it.next().packId = this.this$0.stickerPackId;
            }
        }

        @Override // com.narvii.paging.source.PageDataSource
        @Nullable
        protected ApiRequest createRequest() {
            ApiRequest.Builder builder_url = ApiRequest.builder()._url("https://api.giphy.com/v1/stickers/packs/" + this.this$0.stickerPackId + "/stickers");
            String str = this.this$0.apiKey;
            if (str == null) {
                kotlin.jvm.internal.t.B("apiKey");
                str = null;
            }
            builder_url.param("api_key", str);
            return builder_url.build();
        }
    }

    private final class GiphyItemHolder extends RecyclerView.ViewHolder {

        @NotNull
        private final ItemEditorStickerListItemBinding binding;
        final /* synthetic */ EditorStickerPickerListFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public GiphyItemHolder(@NotNull EditorStickerPickerListFragment editorStickerPickerListFragment, ItemEditorStickerListItemBinding binding) {
            super(binding.getRoot());
            kotlin.jvm.internal.t.j(binding, "binding");
            this.this$0 = editorStickerPickerListFragment;
            this.binding = binding;
        }

        public final void bindHolder(@NotNull GiphyItem data) {
            int iStickerStatus;
            kotlin.jvm.internal.t.j(data, "data");
            this.binding.thumbnail.setImageUrl(data.thumbUrl());
            Sticker sticker = new Sticker();
            sticker.stickerId = data.id();
            sticker.stickerCollectionId = data.collectionId();
            VideoManager videoManager = this.this$0.videoManager;
            GiphyStickerService giphyStickerService = null;
            if (videoManager == null) {
                kotlin.jvm.internal.t.B("videoManager");
                videoManager = null;
            }
            GiphyStickerService giphyStickerService2 = this.this$0.giphyStickerService;
            if (giphyStickerService2 == null) {
                kotlin.jvm.internal.t.B("giphyStickerService");
                giphyStickerService2 = null;
            }
            if (videoManager.obtainInstalledStickerInfo(sticker, giphyStickerService2.getLocalPath(data)) != null) {
                iStickerStatus = 3;
            } else {
                iStickerStatus = data.stickerStatus() == 0 ? 1 : data.stickerStatus();
            }
            data.stickerStatus = iStickerStatus;
            this.binding.stickerInstallFrame.setStickerStatus(data.stickerStatus());
            EditorStickerInstallFrameView editorStickerInstallFrameView = this.binding.stickerInstallFrame;
            GiphyItem giphyItem = this.this$0.selectedSticker;
            editorStickerInstallFrameView.setStickerSelected(kotlin.jvm.internal.t.e(giphyItem != null ? giphyItem.id : null, data.id));
            if (iStickerStatus == 2) {
                EditorStickerInstallFrameView editorStickerInstallFrameView2 = this.binding.stickerInstallFrame;
                GiphyStickerService giphyStickerService3 = this.this$0.giphyStickerService;
                if (giphyStickerService3 == null) {
                    kotlin.jvm.internal.t.B("giphyStickerService");
                } else {
                    giphyStickerService = giphyStickerService3;
                }
                editorStickerInstallFrameView2.bindGiphySticker(data, giphyStickerService);
            }
        }

        public final void onHolderRecycled() {
            this.binding.stickerInstallFrame.onViewRecycled();
        }
    }

    public final void setGiphyStickerSelectedCallback(@NotNull EditorStickerPickerTabFragment.GiphyStickerSelectedCallback callback) {
        kotlin.jvm.internal.t.j(callback, "callback");
        this.giphyStickerSelectedCallback = callback;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    @NotNull
    protected NVRecyclerViewBaseAdapter createAdapter() {
        return new Adapter(this, this);
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    @NotNull
    public RecyclerView.LayoutManager createLayoutManager() {
        return new GridLayoutManager(getContext(), 4);
    }

    public final void setCurrentSelectedSticker(@Nullable GiphyItem giphyItem) {
        this.selectedSticker = giphyItem;
        NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter = this.adapter;
        if (nVRecyclerViewBaseAdapter != null) {
            nVRecyclerViewBaseAdapter.notifyDataSetChanged();
        }
    }

    public final void setStickerPackId(@NotNull String packId) {
        kotlin.jvm.internal.t.j(packId, "packId");
        if (kotlin.jvm.internal.t.e(this.stickerPackId, packId)) {
            return;
        }
        this.stickerPackId = packId;
        NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter = this.adapter;
        if (nVRecyclerViewBaseAdapter != null) {
            nVRecyclerViewBaseAdapter.resetList();
        }
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        this.stickerPackId = getStringParam("stickerPackId");
        Object service = getService("videoManager");
        kotlin.jvm.internal.t.i(service, "getService(...)");
        this.videoManager = (VideoManager) service;
        Object service2 = getService("giphySticker");
        kotlin.jvm.internal.t.i(service2, "getService(...)");
        this.giphyStickerService = (GiphyStickerService) service2;
        String string = ((ConfigService) getService("config")).getString("giphyApiKey", "12ss5TcLvRjUze");
        kotlin.jvm.internal.t.i(string, "getString(...)");
        this.apiKey = string;
    }
}
