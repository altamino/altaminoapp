package com.narvii.prefs;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.asset.AssetDownloader;
import com.narvii.list.NVListFragment;
import com.narvii.list.prefs.PrefsAdapter;
import com.narvii.media.MediaLoader;
import com.narvii.media.online.audio.AudioDownloader;
import com.narvii.monetization.bubble.BubbleService;
import com.narvii.nvplayer.INVPlayer;
import com.narvii.nvplayer.NVPlayerManager;
import com.narvii.post.DraftManager;
import com.narvii.scene.helper.StickerHelper;
import com.narvii.sticker.StickerCacheService;
import com.narvii.theme.ThemePackService;
import com.narvii.util.Log;
import com.narvii.util.Tag;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.drawables.gif.GifLoader;
import com.narvii.util.image.DiskLruCacheWrapper;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.util.text.TextUtils;
import com.narvii.video.MediaPreloadService;
import com.narvii.widget.NVListView;
import com.narvii.widget.SpinningView;
import com.safedk.android.utils.Logger;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.v;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class StorageFragment extends NVListFragment {

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int REQUEST_ASSETS_CODE = 10001;
    private Adapter adapter;

    @Nullable
    private AssetDownloader captionFont;

    @Nullable
    private AssetDownloader captionStyle;
    private List<StorageModel> list;

    @Nullable
    private StickerHelper stickerHelper;

    private final class Adapter extends PrefsAdapter {

        @NotNull
        private final Tag ASSETS_TAG;

        @NotNull
        private final Tag CACHE_TAG;

        @NotNull
        private final Tag DRAFT_TAG;

        @NotNull
        private final List<StorageModel> modelList;
        final /* synthetic */ StorageFragment this$0;

        public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
            Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
            if (p1 == null) {
                return;
            }
            p0.startActivityForResult(p1, p5);
        }

        @NotNull
        public final List<StorageModel> getModelList() {
            return this.modelList;
        }

        @Override // com.narvii.list.prefs.PrefsAdapter, com.narvii.list.NVAdapter
        protected boolean supportNVTheme() {
            return true;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Adapter(@NotNull StorageFragment storageFragment, @NotNull NVContext nvContext, List<StorageModel> modelList) {
            super(nvContext);
            t.j(nvContext, "nvContext");
            t.j(modelList, "modelList");
            this.this$0 = storageFragment;
            this.modelList = modelList;
            this.CACHE_TAG = new Tag("cache");
            this.ASSETS_TAG = new Tag("assets");
            this.DRAFT_TAG = new Tag("drafts");
        }

        @Override // com.narvii.list.prefs.PrefsAdapter
        protected void buildCells(@Nullable List<Object> list) {
            if (list != null) {
                list.add(this.CACHE_TAG);
            }
            if (list != null) {
                Tag DIVIDER = PrefsAdapter.DIVIDER;
                t.i(DIVIDER, "DIVIDER");
                list.add(DIVIDER);
            }
            if (list != null) {
                list.add(this.ASSETS_TAG);
            }
            if (list != null) {
                Tag DIVIDER2 = PrefsAdapter.DIVIDER;
                t.i(DIVIDER2, "DIVIDER");
                list.add(DIVIDER2);
            }
            if (list != null) {
                list.add(this.DRAFT_TAG);
            }
        }

        @Override // com.narvii.list.prefs.PrefsAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(@Nullable ListAdapter listAdapter, int i10, @Nullable Object obj, @Nullable View view, @Nullable View view2) {
            List list = null;
            if (t.e(obj, this.CACHE_TAG)) {
                StorageFragment storageFragment = this.this$0;
                List list2 = storageFragment.list;
                if (list2 == null) {
                    t.B("list");
                } else {
                    list = list2;
                }
                storageFragment.cleanCache(((StorageModel) list.get(0)).getStorageSize());
                return true;
            }
            if (t.e(obj, this.ASSETS_TAG)) {
                safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(this.this$0, FragmentWrapperActivity.intent(AssetsStorageFragment.class), 10001);
                return true;
            }
            if (!t.e(obj, this.DRAFT_TAG)) {
                return false;
            }
            StorageFragment storageFragment2 = this.this$0;
            List list3 = storageFragment2.list;
            if (list3 == null) {
                t.B("list");
            } else {
                list = list3;
            }
            storageFragment2.cleanDrafts(((StorageModel) list.get(2)).getStorageSize());
            return true;
        }

        private final View setView(int i10, View view, ViewGroup viewGroup) {
            int i11;
            RelativeLayout relativeLayout = (RelativeLayout) createView(R.layout.fragment_settings_storage_item, viewGroup, view);
            ((TextView) relativeLayout.findViewById(R.id.title)).setText(this.modelList.get(i10).getTitle());
            TextView textView = (TextView) relativeLayout.findViewById(R.id.detail);
            textView.setText(this.modelList.get(i10).getDetail());
            int i12 = 0;
            if (TextUtils.isEmpty(this.modelList.get(i10).getDetail())) {
                i11 = 8;
            } else {
                i11 = 0;
            }
            textView.setVisibility(i11);
            ((TextView) relativeLayout.findViewById(R.id.storage)).setText(this.modelList.get(i10).getStorageSize());
            SpinningView spinningView = (SpinningView) relativeLayout.findViewById(R.id.loading);
            if (!TextUtils.isEmpty(this.modelList.get(i10).getStorageSize())) {
                i12 = 4;
            }
            spinningView.setVisibility(i12);
            t.g(relativeLayout);
            return relativeLayout;
        }

        @Override // com.narvii.list.prefs.PrefsAdapter, android.widget.Adapter
        @NotNull
        public View getView(int i10, @Nullable View view, @Nullable ViewGroup viewGroup) {
            Object item = getItem(i10);
            if (t.e(item, this.CACHE_TAG)) {
                return setView(0, view, viewGroup);
            }
            if (t.e(item, this.ASSETS_TAG)) {
                return setView(1, view, viewGroup);
            }
            if (t.e(item, this.DRAFT_TAG)) {
                return setView(2, view, viewGroup);
            }
            View view2 = super.getView(i10, view, viewGroup);
            t.i(view2, "getView(...)");
            return view2;
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public final class StorageAsyncTask extends AsyncTask<Void, Void, String> {
        private final int pos;

        public final int getPos() {
            return this.pos;
        }

        public StorageAsyncTask(int i10) {
            this.pos = i10;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        @NotNull
        public String doInBackground(@NotNull Void... params) {
            t.j(params, "params");
            int i10 = this.pos;
            if (i10 == 0) {
                return StorageFragment.this.getCacheSize();
            }
            if (i10 != 1) {
                return i10 != 2 ? "" : StorageFragment.this.getDraftsSize();
            }
            return StorageFragment.this.getAssetsSize();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(@Nullable String str) {
            if (str != null) {
                List list = StorageFragment.this.list;
                Adapter adapter = null;
                if (list == null) {
                    t.B("list");
                    list = null;
                }
                ((StorageModel) list.get(this.pos)).setStorageSize(str);
                Adapter adapter2 = StorageFragment.this.adapter;
                if (adapter2 == null) {
                    t.B("adapter");
                } else {
                    adapter = adapter2;
                }
                adapter.notifyDataSetChanged();
            }
        }
    }

    public static final class StorageModel {

        @NotNull
        private final String detail;
        private boolean isLoading;

        @NotNull
        private String storageSize;

        @NotNull
        private final String title;

        public StorageModel() {
            this(null, null, false, null, 15, null);
        }

        public static /* synthetic */ StorageModel copy$default(StorageModel storageModel, String str, String str2, boolean z6, String str3, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                str = storageModel.title;
            }
            if ((i10 & 2) != 0) {
                str2 = storageModel.detail;
            }
            if ((i10 & 4) != 0) {
                z6 = storageModel.isLoading;
            }
            if ((i10 & 8) != 0) {
                str3 = storageModel.storageSize;
            }
            return storageModel.copy(str, str2, z6, str3);
        }

        @NotNull
        public final String component1() {
            return this.title;
        }

        @NotNull
        public final String component2() {
            return this.detail;
        }

        public final boolean component3() {
            return this.isLoading;
        }

        @NotNull
        public final String component4() {
            return this.storageSize;
        }

        @NotNull
        public final StorageModel copy(@NotNull String title, @NotNull String detail, boolean z6, @NotNull String storageSize) {
            t.j(title, "title");
            t.j(detail, "detail");
            t.j(storageSize, "storageSize");
            return new StorageModel(title, detail, z6, storageSize);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof StorageModel)) {
                return false;
            }
            StorageModel storageModel = (StorageModel) obj;
            return t.e(this.title, storageModel.title) && t.e(this.detail, storageModel.detail) && this.isLoading == storageModel.isLoading && t.e(this.storageSize, storageModel.storageSize);
        }

        @NotNull
        public final String getDetail() {
            return this.detail;
        }

        @NotNull
        public final String getStorageSize() {
            return this.storageSize;
        }

        @NotNull
        public final String getTitle() {
            return this.title;
        }

        public int hashCode() {
            return (((((this.title.hashCode() * 31) + this.detail.hashCode()) * 31) + androidx.compose.foundation.c.a(this.isLoading)) * 31) + this.storageSize.hashCode();
        }

        public final boolean isLoading() {
            return this.isLoading;
        }

        public final void setLoading(boolean z6) {
            this.isLoading = z6;
        }

        public final void setStorageSize(@NotNull String str) {
            t.j(str, "<set-?>");
            this.storageSize = str;
        }

        @NotNull
        public String toString() {
            return "StorageModel(title=" + this.title + ", detail=" + this.detail + ", isLoading=" + this.isLoading + ", storageSize=" + this.storageSize + ")";
        }

        public StorageModel(@NotNull String title, @NotNull String detail, boolean z6, @NotNull String storageSize) {
            t.j(title, "title");
            t.j(detail, "detail");
            t.j(storageSize, "storageSize");
            this.title = title;
            this.detail = detail;
            this.isLoading = z6;
            this.storageSize = storageSize;
        }

        public /* synthetic */ StorageModel(String str, String str2, boolean z6, String str3, int i10, kotlin.jvm.internal.k kVar) {
            this((i10 & 1) != 0 ? "" : str, (i10 & 2) != 0 ? "" : str2, (i10 & 4) != 0 ? true : z6, (i10 & 8) != 0 ? "" : str3);
        }
    }

    @Override // com.narvii.list.NVListFragment
    @NotNull
    protected ListAdapter createAdapter(@Nullable Bundle bundle) {
        String string = getResources().getString(R.string.settings_storage_cache);
        t.i(string, "getString(...)");
        String string2 = getResources().getString(R.string.settings_storage_assets);
        t.i(string2, "getString(...)");
        String string3 = getString(R.string.settings_storage_assets_subtitle);
        t.i(string3, "getString(...)");
        String string4 = getResources().getString(R.string.settings_storage_post_drafts);
        t.i(string4, "getString(...)");
        this.list = v.p(new StorageModel(string, "", true, ""), new StorageModel(string2, string3, true, ""), new StorageModel(string4, "", true, ""));
        List<StorageModel> list = this.list;
        if (list == null) {
            t.B("list");
            list = null;
        }
        this.adapter = new Adapter(this, this, list);
        new StorageAsyncTask(0).execute(new Void[0]);
        new StorageAsyncTask(1).execute(new Void[0]);
        new StorageAsyncTask(2).execute(new Void[0]);
        Adapter adapter = this.adapter;
        if (adapter != null) {
            return adapter;
        }
        t.B("adapter");
        return null;
    }

    @Override // com.narvii.list.NVListFragment
    protected int getSelectorDarkColor() {
        return 872415231;
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public int initNVTheme() {
        return 2;
    }

    private final String calculateSize(long j6) {
        long j10 = 500;
        long j11 = 1024;
        long j12 = (j6 + j10) / j11;
        if (j12 < 1000) {
            return j12 + "KB";
        }
        return ((j12 + j10) / j11) + "MB";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void cleanCache(final String str) {
        final DiskLruCacheWrapper diskLruCacheWrapper = (DiskLruCacheWrapper) getService("imageDiskCache");
        final GifLoader gifLoader = (GifLoader) getService("gifLoader");
        final MediaLoader mediaLoader = (MediaLoader) getService("mediaLoader");
        final StickerCacheService stickerCacheService = (StickerCacheService) getService("stickerCache");
        final BubbleService bubbleService = (BubbleService) getService("bubble");
        final MediaPreloadService mediaPreloadService = (MediaPreloadService) getService("mediapreload");
        Context context = getContext();
        t.g(context);
        final INVPlayer nVPlayer = NVPlayerManager.getNVPlayer(context);
        final ThemePackService themePackService = (ThemePackService) getService("themePack");
        ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
        actionSheetDialog.setTitle(getString(R.string.settings_clear_cache_message, str));
        actionSheetDialog.addItem(R.string.settings_clear_cache, 1);
        actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.prefs.r
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i10) {
                StorageFragment.cleanCache$lambda$7(diskLruCacheWrapper, gifLoader, mediaLoader, stickerCacheService, bubbleService, mediaPreloadService, nVPlayer, themePackService, this, str, dialogInterface, i10);
            }
        });
        actionSheetDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void cleanCache$lambda$7(DiskLruCacheWrapper diskLruCacheWrapper, GifLoader gifLoader, MediaLoader mediaLoader, StickerCacheService stickerCacheService, BubbleService bubbleService, MediaPreloadService mediaPreloadService, INVPlayer iNVPlayer, ThemePackService themePackService, StorageFragment this$0, String size, DialogInterface dialogInterface, int i10) {
        t.j(this$0, "this$0");
        t.j(size, "$size");
        try {
            diskLruCacheWrapper.clear();
        } catch (Exception unused) {
        }
        try {
            gifLoader.clear();
        } catch (Exception unused2) {
        }
        try {
            mediaLoader.clear();
        } catch (Exception unused3) {
        }
        try {
            stickerCacheService.clear();
        } catch (Exception unused4) {
        }
        try {
            bubbleService.clear();
        } catch (Exception unused5) {
        }
        try {
            mediaPreloadService.clear();
        } catch (Exception unused6) {
        }
        try {
            iNVPlayer.clear();
        } catch (Exception unused7) {
        }
        try {
            themePackService.clear();
        } catch (Exception unused8) {
        }
        for (File file : this$0.getCacheDirs()) {
            if (file.isFile()) {
                file.delete();
            } else {
                Utils.deleteDir(file);
            }
        }
        Log.w("cache cleared (" + size + "b)");
        StatisticsService statisticsService = (StatisticsService) this$0.getService("statistics");
        t.g(statisticsService);
        statisticsService.event("Clear Cache").userPropInc("Clear Cache Total");
        this$0.new StorageAsyncTask(0).execute(new Void[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void cleanDrafts(String str) {
        ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
        actionSheetDialog.setTitle(getString(R.string.settings_clear_cache_message, str));
        actionSheetDialog.addItem(R.string.delete, 1);
        actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.prefs.q
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i10) {
                StorageFragment.cleanDrafts$lambda$10(this.f2641a, dialogInterface, i10);
            }
        });
        actionSheetDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void cleanDrafts$lambda$10(StorageFragment this$0, DialogInterface dialogInterface, int i10) {
        t.j(this$0, "this$0");
        Utils.deleteDir(DraftManager.getDraftsRootDir(this$0.getContext()));
        File[] fileArrListArchiveFiles = DraftManager.listArchiveFiles(this$0.getContext());
        t.i(fileArrListArchiveFiles, "listArchiveFiles(...)");
        for (File file : fileArrListArchiveFiles) {
            file.delete();
        }
        this$0.new StorageAsyncTask(2).execute(new Void[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getAssetsSize() {
        AssetDownloader assetDownloader = this.captionStyle;
        long cacheSize = assetDownloader != null ? assetDownloader.getCacheSize() : 0L;
        AssetDownloader assetDownloader2 = this.captionFont;
        long cacheSize2 = cacheSize + (assetDownloader2 != null ? assetDownloader2.getCacheSize() : 0L) + Utils.getFolderSize(new AudioDownloader(this).getDir());
        StickerHelper stickerHelper = this.stickerHelper;
        return calculateSize(cacheSize2 + (stickerHelper != null ? stickerHelper.getCacheSize() : 0L));
    }

    private final List<File> getCacheDirs() {
        File[] fileArrListFiles;
        ArrayList arrayList = new ArrayList();
        List listP = v.p("AdMob", "al", "Facebook", "im_cached_content");
        List listP2 = v.p("gif", "img", "bubble", "stickers", "media-preload", "exo-cache", "propBundles");
        File filesDir = getContext().getFilesDir();
        List list = listP;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new File(filesDir, (String) it.next()));
        }
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            File externalFilesDir = getContext().getExternalFilesDir((String) it2.next());
            if (externalFilesDir != null) {
                arrayList.add(externalFilesDir);
            }
        }
        File[] fileArrListFiles2 = getContext().getCacheDir().listFiles();
        if (fileArrListFiles2 != null) {
            for (File file : fileArrListFiles2) {
                if (!listP2.contains(file.getName())) {
                    arrayList.add(file);
                }
            }
        }
        File externalCacheDir = getContext().getExternalCacheDir();
        if (externalCacheDir != null && (fileArrListFiles = externalCacheDir.listFiles()) != null) {
            for (File file2 : fileArrListFiles) {
                if (!listP2.contains(file2.getName())) {
                    arrayList.add(file2);
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getCacheSize() {
        DiskLruCacheWrapper diskLruCacheWrapper = (DiskLruCacheWrapper) getService("imageDiskCache");
        GifLoader gifLoader = (GifLoader) getService("gifLoader");
        MediaLoader mediaLoader = (MediaLoader) getService("mediaLoader");
        StickerCacheService stickerCacheService = (StickerCacheService) getService("stickerCache");
        BubbleService bubbleService = (BubbleService) getService("bubble");
        MediaPreloadService mediaPreloadService = (MediaPreloadService) getService("mediapreload");
        Context context = getContext();
        t.g(context);
        INVPlayer nVPlayer = NVPlayerManager.getNVPlayer(context);
        t.g(diskLruCacheWrapper);
        long size = diskLruCacheWrapper.size();
        t.g(gifLoader);
        long size2 = size + gifLoader.size();
        t.g(mediaLoader);
        long size3 = size2 + mediaLoader.size();
        t.g(stickerCacheService);
        long size4 = size3 + stickerCacheService.size();
        t.g(bubbleService);
        long size5 = size4 + bubbleService.size();
        t.g(mediaPreloadService);
        long size6 = size5 + mediaPreloadService.size() + nVPlayer.size();
        for (File file : getCacheDirs()) {
            size6 += file.isFile() ? file.length() : Utils.getFolderSize(file);
        }
        return calculateSize(size6);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, @Nullable Intent intent) {
        if (i10 == 10001) {
            new StorageAsyncTask(1).execute(new Void[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getDraftsSize() {
        long folderSize = Utils.getFolderSize(DraftManager.getDraftsRootDir(getContext()));
        File[] fileArrListArchiveFiles = DraftManager.listArchiveFiles(getContext());
        t.i(fileArrListArchiveFiles, "listArchiveFiles(...)");
        for (File file : fileArrListArchiveFiles) {
            folderSize += file.length();
        }
        return calculateSize(folderSize);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.settings_storage);
        this.captionFont = (AssetDownloader) getService("captionFont");
        this.captionStyle = (AssetDownloader) getService("captionStyle");
        this.stickerHelper = new StickerHelper(this);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(@Nullable ListView listView, @Nullable Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        if (listView != null) {
            listView.setDivider(null);
        }
        if (listView != null) {
            listView.setDividerHeight(0);
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.theme.NVThemeFragment
    public void onThemeChange(int i10) {
        super.onThemeChange(i10);
        if (i10 != 1) {
            if (i10 == 2) {
                int color = getResources().getColor(R.color.color_default_primary);
                ListView listView = getListView();
                t.h(listView, "null cannot be cast to non-null type com.narvii.widget.NVListView");
                ((NVListView) listView).setOverscrollStretchHeader(color);
                ListView listView2 = getListView();
                t.h(listView2, "null cannot be cast to non-null type com.narvii.widget.NVListView");
                ((NVListView) listView2).setOverscrollStretchFooter(color);
                ListView listView3 = getListView();
                t.h(listView3, "null cannot be cast to non-null type com.narvii.widget.NVListView");
                ((NVListView) listView3).setListContentBackgroundColor(0);
                return;
            }
            return;
        }
        int color2 = getResources().getColor(R.color.prefs_background);
        ListView listView4 = getListView();
        t.h(listView4, "null cannot be cast to non-null type com.narvii.widget.NVListView");
        ((NVListView) listView4).setOverscrollStretchHeader(color2);
        ListView listView5 = getListView();
        t.h(listView5, "null cannot be cast to non-null type com.narvii.widget.NVListView");
        ((NVListView) listView5).setOverscrollStretchFooter(color2);
        ListView listView6 = getListView();
        t.h(listView6, "null cannot be cast to non-null type com.narvii.widget.NVListView");
        ((NVListView) listView6).setListContentBackgroundColor(-1);
    }
}
