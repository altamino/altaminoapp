package com.narvii.media.giphy;

import android.content.Context;
import android.text.TextUtils;
import com.narvii.app.NVContext;
import com.narvii.asset.DownloadStatusInfo;
import com.narvii.config.ConfigService;
import com.narvii.model.api.ApiResponse;
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
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: GiphyStickerService.kt */
/* loaded from: classes3.dex */
public final class GiphyStickerService {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(GiphyStickerService.class), "giphyLoader", "getGiphyLoader()Lcom/narvii/media/giphy/GiphyStickerLoader;"))};
    private final String GIPHY_STICKER_DOWNLOAD_DIR_PATH;
    private final String apiKey;
    private final ApiService apiService;
    private ArrayList<GiphyPack> cachedGiphyPackList;
    private final ArrayList<String> downloadingItems;
    private final ArrayList<String> errorItems;
    private final Lazy giphyLoader$delegate;
    private final NVContext nvContext;
    private GiphyPackListingListener packListingListener;

    /* compiled from: GiphyStickerService.kt */
    public interface GiphyPackListingListener {
        void onGiphyPackListLoaded(ArrayList<GiphyPack> arrayList);
    }

    /* compiled from: GiphyStickerService.kt */
    public interface GiphyStickerDownloadListener {
        void onGiphyStickerLoadFailed(GiphyItem giphyItem);

        void onGiphyStickerLoaded(File file, GiphyItem giphyItem);
    }

    private final GiphyStickerLoader getGiphyLoader() {
        Lazy lazy = this.giphyLoader$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (GiphyStickerLoader) lazy.getValue();
    }

    public GiphyStickerService(NVContext nvContext) {
        Intrinsics.checkParameterIsNotNull(nvContext, "nvContext");
        this.nvContext = nvContext;
        this.GIPHY_STICKER_DOWNLOAD_DIR_PATH = "EditorSticker/CopiedStickerSrc";
        this.cachedGiphyPackList = new ArrayList<>();
        this.apiKey = ((ConfigService) this.nvContext.getService("config")).getString("giphyApiKey", "12ss5TcLvRjUze");
        this.apiService = (ApiService) this.nvContext.getService("api");
        this.giphyLoader$delegate = LazyKt__LazyJVMKt.lazy(new Function0<GiphyStickerLoader>() { // from class: com.narvii.media.giphy.GiphyStickerService$giphyLoader$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final GiphyStickerLoader invoke() {
                return new GiphyStickerLoader(this.this$0.getNvContext(), this.this$0.GIPHY_STICKER_DOWNLOAD_DIR_PATH);
            }
        });
        this.downloadingItems = new ArrayList<>();
        this.errorItems = new ArrayList<>();
    }

    public final NVContext getNvContext() {
        return this.nvContext;
    }

    public static /* synthetic */ void loadGiphyPackList$default(GiphyStickerService giphyStickerService, boolean z, GiphyPackListingListener giphyPackListingListener, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        giphyStickerService.loadGiphyPackList(z, giphyPackListingListener);
    }

    public final void loadGiphyPackList(boolean z, GiphyPackListingListener giphyPackListingListener) {
        this.packListingListener = giphyPackListingListener;
        if (z) {
            this.cachedGiphyPackList.clear();
        }
        if (!this.cachedGiphyPackList.isEmpty()) {
            GiphyPackListingListener giphyPackListingListener2 = this.packListingListener;
            if (giphyPackListingListener2 != null) {
                giphyPackListingListener2.onGiphyPackListLoaded(this.cachedGiphyPackList);
                return;
            }
            return;
        }
        ApiRequest.Builder builder_url = ApiRequest.builder()._url("https://api.giphy.com/v1/stickers/packs");
        builder_url.param("api_key", this.apiKey);
        this.apiService.exec(builder_url.build(), new ApiResponseListener<GiphyPackListResponse>(GiphyPackListResponse.class) { // from class: com.narvii.media.giphy.GiphyStickerService.loadGiphyPackList.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, GiphyPackListResponse giphyPackListResponse) throws Exception {
                List<GiphyPack> list;
                super.onFinish(apiRequest, (ApiRequest) giphyPackListResponse);
                if (giphyPackListResponse != null && (list = giphyPackListResponse.data) != null) {
                    GiphyStickerService.this.cachedGiphyPackList.addAll(list);
                }
                GiphyPackListingListener giphyPackListingListener3 = GiphyStickerService.this.packListingListener;
                if (giphyPackListingListener3 != null) {
                    giphyPackListingListener3.onGiphyPackListLoaded(GiphyStickerService.this.cachedGiphyPackList);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str, apiResponse, th);
                GiphyPackListingListener giphyPackListingListener3 = GiphyStickerService.this.packListingListener;
                if (giphyPackListingListener3 != null) {
                    giphyPackListingListener3.onGiphyPackListLoaded(null);
                }
            }
        });
    }

    public final void unregisterPackListingListener() {
        this.packListingListener = null;
    }

    public final void downloadGiphySticker(final GiphyItem giphyItem, GiphyStickerDownloadListener listener) {
        Intrinsics.checkParameterIsNotNull(giphyItem, "giphyItem");
        Intrinsics.checkParameterIsNotNull(listener, "listener");
        if (!this.downloadingItems.contains(giphyItem.id)) {
            this.downloadingItems.add(giphyItem.id);
        }
        this.errorItems.remove(giphyItem.id);
        final WeakReference weakReference = new WeakReference(listener);
        getGiphyLoader().loadGiphySticker(giphyItem, new IFileDownloadCallback() { // from class: com.narvii.media.giphy.GiphyStickerService.downloadGiphySticker.1
            @Override // com.narvii.util.fileloader.IFileDownloadCallback
            public void onProgressUpdate(int i, int i2) {
            }

            @Override // com.narvii.util.fileloader.IFileDownloadCallback
            public Object getRealCallback() {
                return IFileDownloadCallback.DefaultImpls.getRealCallback(this);
            }

            @Override // com.narvii.util.fileloader.IFileDownloadCallback
            public Object getTag() {
                return IFileDownloadCallback.DefaultImpls.getTag(this);
            }

            @Override // com.narvii.util.fileloader.IFileDownloadCallback
            public void onError(String url, Exception exc) {
                Intrinsics.checkParameterIsNotNull(url, "url");
                GiphyStickerService.this.downloadingItems.remove(giphyItem.id);
                if (!GiphyStickerService.this.errorItems.contains(giphyItem.id)) {
                    GiphyStickerService.this.errorItems.add(giphyItem.id);
                }
                GiphyStickerDownloadListener giphyStickerDownloadListener = (GiphyStickerDownloadListener) weakReference.get();
                if (giphyStickerDownloadListener != null) {
                    giphyStickerDownloadListener.onGiphyStickerLoadFailed(giphyItem);
                }
            }

            @Override // com.narvii.util.fileloader.IFileDownloadCallback
            public void onPostExecute(File file) {
                Intrinsics.checkParameterIsNotNull(file, "file");
                GiphyStickerService.this.downloadingItems.remove(giphyItem.id);
                if (FileUtils.isEmpty(file)) {
                    if (!GiphyStickerService.this.errorItems.contains(giphyItem.id)) {
                        GiphyStickerService.this.errorItems.add(giphyItem.id);
                    }
                    GiphyStickerDownloadListener giphyStickerDownloadListener = (GiphyStickerDownloadListener) weakReference.get();
                    if (giphyStickerDownloadListener != null) {
                        giphyStickerDownloadListener.onGiphyStickerLoadFailed(giphyItem);
                        return;
                    }
                    return;
                }
                GiphyStickerDownloadListener giphyStickerDownloadListener2 = (GiphyStickerDownloadListener) weakReference.get();
                if (giphyStickerDownloadListener2 != null) {
                    giphyStickerDownloadListener2.onGiphyStickerLoaded(file, giphyItem);
                }
            }
        });
    }

    public final String getLocalPath(GiphyItem giphyItem) {
        Intrinsics.checkParameterIsNotNull(giphyItem, "giphyItem");
        String absolutePath = getLocalFile(giphyItem).getAbsolutePath();
        Intrinsics.checkExpressionValueIsNotNull(absolutePath, "getLocalFile(giphyItem).absolutePath");
        return absolutePath;
    }

    public final File getLocalFile(GiphyItem giphyItem) {
        Intrinsics.checkParameterIsNotNull(giphyItem, "giphyItem");
        Context context = this.nvContext.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "nvContext.context");
        File file = new File(context.getFilesDir(), this.GIPHY_STICKER_DOWNLOAD_DIR_PATH);
        if (TextUtils.isEmpty(giphyItem.packId)) {
            return new File(file, giphyItem.id + ".gif");
        }
        return new File(file, giphyItem.packId + "_" + giphyItem.id + ".gif");
    }

    public final DownloadStatusInfo getGiphyItemDownloadStatus(GiphyItem giphyItem) {
        DownloadStatusInfo downloadStatusInfo;
        Intrinsics.checkParameterIsNotNull(giphyItem, "giphyItem");
        File localFile = getLocalFile(giphyItem);
        if (!FileUtils.isEmpty(localFile) && !this.downloadingItems.contains(giphyItem.id) && !this.errorItems.contains(giphyItem.id)) {
            DownloadStatusInfo downloadStatusInfo2 = DownloadStatusInfo.READY;
            Intrinsics.checkExpressionValueIsNotNull(downloadStatusInfo2, "DownloadStatusInfo.READY");
            return downloadStatusInfo2;
        }
        if (FileUtils.isEmpty(localFile) && !this.downloadingItems.contains(giphyItem.id) && !this.errorItems.contains(giphyItem.id)) {
            downloadStatusInfo = DownloadStatusInfo.IDLE;
        } else if (this.errorItems.contains(giphyItem.id) && !this.downloadingItems.contains(giphyItem.id)) {
            downloadStatusInfo = DownloadStatusInfo.FAIL;
        } else if (this.downloadingItems.contains(giphyItem.id)) {
            downloadStatusInfo = new DownloadStatusInfo(1, 0.5f);
        } else {
            downloadStatusInfo = DownloadStatusInfo.IDLE;
        }
        Intrinsics.checkExpressionValueIsNotNull(downloadStatusInfo, "if (FileUtils.isEmpty(do…StatusInfo.IDLE\n        }");
        return downloadStatusInfo;
    }
}
