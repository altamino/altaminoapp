package com.narvii.media.giphy;

import android.text.TextUtils;
import com.narvii.app.NVContext;
import com.narvii.asset.DownloadStatusInfo;
import com.narvii.config.ConfigService;
import com.narvii.model.api.ApiResponse;
import com.narvii.scene.helper.StickerHelper;
import com.narvii.util.FileUtils;
import com.narvii.util.fileloader.IFileDownloadCallback;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.m;
import w7.o;

/* JADX INFO: loaded from: classes4.dex */
public final class GiphyStickerService {

    @NotNull
    private final String GIPHY_STICKER_DOWNLOAD_DIR_PATH;
    private final String apiKey;
    private final ApiService apiService;

    @NotNull
    private ArrayList<GiphyPack> cachedGiphyPackList;

    @NotNull
    private final ArrayList<String> downloadingItems;

    @NotNull
    private final ArrayList<String> errorItems;

    @NotNull
    private final m giphyLoader$delegate;

    @NotNull
    private final NVContext nvContext;

    @Nullable
    private GiphyPackListingListener packListingListener;

    public interface GiphyPackListingListener {
        void onGiphyPackListLoaded(@Nullable ArrayList<GiphyPack> arrayList);
    }

    public interface GiphyStickerDownloadListener {
        void onGiphyStickerLoadFailed(@NotNull GiphyItem giphyItem);

        void onGiphyStickerLoaded(@NotNull File file, @NotNull GiphyItem giphyItem);
    }

    @NotNull
    public final NVContext getNvContext() {
        return this.nvContext;
    }

    public final void unregisterPackListingListener() {
        this.packListingListener = null;
    }

    public GiphyStickerService(@NotNull NVContext nvContext) {
        t.j(nvContext, "nvContext");
        this.nvContext = nvContext;
        this.GIPHY_STICKER_DOWNLOAD_DIR_PATH = StickerHelper.STICKER_COPIED_SRC_DIR;
        this.cachedGiphyPackList = new ArrayList<>();
        this.apiKey = ((ConfigService) nvContext.getService("config")).getString("giphyApiKey", "12ss5TcLvRjUze");
        this.apiService = (ApiService) nvContext.getService("api");
        this.giphyLoader$delegate = o.a(new GiphyStickerService$giphyLoader$2(this));
        this.downloadingItems = new ArrayList<>();
        this.errorItems = new ArrayList<>();
    }

    private final GiphyStickerLoader getGiphyLoader() {
        return (GiphyStickerLoader) this.giphyLoader$delegate.getValue();
    }

    public static /* synthetic */ void loadGiphyPackList$default(GiphyStickerService giphyStickerService, boolean z6, GiphyPackListingListener giphyPackListingListener, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z6 = false;
        }
        giphyStickerService.loadGiphyPackList(z6, giphyPackListingListener);
    }

    public final void downloadGiphySticker(@NotNull final GiphyItem giphyItem, @NotNull GiphyStickerDownloadListener listener) {
        t.j(giphyItem, "giphyItem");
        t.j(listener, "listener");
        if (!this.downloadingItems.contains(giphyItem.id)) {
            this.downloadingItems.add(giphyItem.id);
        }
        this.errorItems.remove(giphyItem.id);
        final WeakReference weakReference = new WeakReference(listener);
        getGiphyLoader().loadGiphySticker(giphyItem, new IFileDownloadCallback() { // from class: com.narvii.media.giphy.GiphyStickerService.downloadGiphySticker.1
            @Override // com.narvii.util.fileloader.IFileDownloadCallback
            public void onProgressUpdate(int i10, int i11) {
            }

            @Override // com.narvii.util.fileloader.IFileDownloadCallback
            public void onError(@NotNull String url, @Nullable Exception exc) {
                t.j(url, "url");
                GiphyStickerService.this.downloadingItems.remove(giphyItem.id);
                if (!GiphyStickerService.this.errorItems.contains(giphyItem.id)) {
                    GiphyStickerService.this.errorItems.add(giphyItem.id);
                }
                GiphyStickerDownloadListener giphyStickerDownloadListener = weakReference.get();
                if (giphyStickerDownloadListener != null) {
                    giphyStickerDownloadListener.onGiphyStickerLoadFailed(giphyItem);
                }
            }

            @Override // com.narvii.util.fileloader.IFileDownloadCallback
            public void onPostExecute(@NotNull File file) {
                t.j(file, "file");
                GiphyStickerService.this.downloadingItems.remove(giphyItem.id);
                if (!FileUtils.isEmpty(file)) {
                    GiphyStickerDownloadListener giphyStickerDownloadListener = weakReference.get();
                    if (giphyStickerDownloadListener != null) {
                        giphyStickerDownloadListener.onGiphyStickerLoaded(file, giphyItem);
                        return;
                    }
                    return;
                }
                if (!GiphyStickerService.this.errorItems.contains(giphyItem.id)) {
                    GiphyStickerService.this.errorItems.add(giphyItem.id);
                }
                GiphyStickerDownloadListener giphyStickerDownloadListener2 = weakReference.get();
                if (giphyStickerDownloadListener2 != null) {
                    giphyStickerDownloadListener2.onGiphyStickerLoadFailed(giphyItem);
                }
            }

            @Override // com.narvii.util.fileloader.IFileDownloadCallback
            @Nullable
            public Object getRealCallback() {
                return IFileDownloadCallback.DefaultImpls.getRealCallback(this);
            }

            @Override // com.narvii.util.fileloader.IFileDownloadCallback
            @Nullable
            public Object getTag() {
                return IFileDownloadCallback.DefaultImpls.getTag(this);
            }
        });
    }

    @NotNull
    public final DownloadStatusInfo getGiphyItemDownloadStatus(@NotNull GiphyItem giphyItem) {
        t.j(giphyItem, "giphyItem");
        File localFile = getLocalFile(giphyItem);
        if (!FileUtils.isEmpty(localFile) && !this.downloadingItems.contains(giphyItem.id) && !this.errorItems.contains(giphyItem.id)) {
            DownloadStatusInfo downloadStatusInfo = DownloadStatusInfo.READY;
            t.g(downloadStatusInfo);
            return downloadStatusInfo;
        }
        if (FileUtils.isEmpty(localFile) && !this.downloadingItems.contains(giphyItem.id) && !this.errorItems.contains(giphyItem.id)) {
            DownloadStatusInfo downloadStatusInfo2 = DownloadStatusInfo.IDLE;
            t.g(downloadStatusInfo2);
            return downloadStatusInfo2;
        }
        if (this.errorItems.contains(giphyItem.id) && !this.downloadingItems.contains(giphyItem.id)) {
            DownloadStatusInfo downloadStatusInfo3 = DownloadStatusInfo.FAIL;
            t.g(downloadStatusInfo3);
            return downloadStatusInfo3;
        }
        if (this.downloadingItems.contains(giphyItem.id)) {
            return new DownloadStatusInfo(1, 0.5f);
        }
        DownloadStatusInfo downloadStatusInfo4 = DownloadStatusInfo.IDLE;
        t.g(downloadStatusInfo4);
        return downloadStatusInfo4;
    }

    @NotNull
    public final File getLocalFile(@NotNull GiphyItem giphyItem) {
        t.j(giphyItem, "giphyItem");
        File file = new File(this.nvContext.getContext().getFilesDir(), this.GIPHY_STICKER_DOWNLOAD_DIR_PATH);
        if (TextUtils.isEmpty(giphyItem.packId)) {
            return new File(file, giphyItem.id + ".gif");
        }
        return new File(file, giphyItem.packId + '_' + giphyItem.id + ".gif");
    }

    @NotNull
    public final String getLocalPath(@NotNull GiphyItem giphyItem) {
        t.j(giphyItem, "giphyItem");
        String absolutePath = getLocalFile(giphyItem).getAbsolutePath();
        t.i(absolutePath, "getAbsolutePath(...)");
        return absolutePath;
    }

    public final void loadGiphyPackList(boolean z6, @Nullable GiphyPackListingListener giphyPackListingListener) {
        this.packListingListener = giphyPackListingListener;
        if (z6) {
            this.cachedGiphyPackList.clear();
        }
        if (!(!this.cachedGiphyPackList.isEmpty())) {
            ApiRequest.Builder builder_url = ApiRequest.builder()._url("https://api.giphy.com/v1/stickers/packs");
            builder_url.param("api_key", this.apiKey);
            this.apiService.exec(builder_url.build(), new ApiResponseListener<GiphyPackListResponse>(GiphyPackListResponse.class) { // from class: com.narvii.media.giphy.GiphyStickerService.loadGiphyPackList.1
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(@Nullable ApiRequest apiRequest, @Nullable GiphyPackListResponse giphyPackListResponse) throws Exception {
                    List<GiphyPack> list;
                    super.onFinish(apiRequest, giphyPackListResponse);
                    if (giphyPackListResponse != null && (list = giphyPackListResponse.data) != null) {
                        GiphyStickerService.this.cachedGiphyPackList.addAll(list);
                    }
                    GiphyPackListingListener giphyPackListingListener2 = GiphyStickerService.this.packListingListener;
                    if (giphyPackListingListener2 != null) {
                        giphyPackListingListener2.onGiphyPackListLoaded(GiphyStickerService.this.cachedGiphyPackList);
                    }
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(@Nullable ApiRequest apiRequest, int i10, @Nullable List<NameValuePair> list, @Nullable String str, @Nullable ApiResponse apiResponse, @Nullable Throwable th) {
                    super.onFail(apiRequest, i10, list, str, apiResponse, th);
                    GiphyPackListingListener giphyPackListingListener2 = GiphyStickerService.this.packListingListener;
                    if (giphyPackListingListener2 != null) {
                        giphyPackListingListener2.onGiphyPackListLoaded(null);
                    }
                }
            });
        } else {
            GiphyPackListingListener giphyPackListingListener2 = this.packListingListener;
            if (giphyPackListingListener2 != null) {
                giphyPackListingListener2.onGiphyPackListLoaded(this.cachedGiphyPackList);
            }
        }
    }
}
