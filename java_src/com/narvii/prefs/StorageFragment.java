package com.narvii.prefs;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
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
import com.narvii.util.text.TextUtils;
import com.narvii.video.MediaPreloadService;
import com.narvii.widget.NVListView;
import com.narvii.widget.SpinningView;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: StorageFragment.kt */
/* loaded from: classes3.dex */
public final class StorageFragment extends NVListFragment {
    public static final Companion Companion = new Companion(null);
    private static final int REQUEST_ASSETS_CODE = 10001;
    private HashMap _$_findViewCache;
    private Adapter adapter;
    private AssetDownloader captionFont;
    private AssetDownloader captionStyle;
    private List<StorageModel> list;
    private StickerHelper stickerHelper;

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

    @Override // com.narvii.list.NVListFragment
    protected int getSelectorDarkColor() {
        return 872415231;
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public int initNVTheme() {
        return 2;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    public static final /* synthetic */ Adapter access$getAdapter$p(StorageFragment storageFragment) {
        Adapter adapter = storageFragment.adapter;
        if (adapter != null) {
            return adapter;
        }
        Intrinsics.throwUninitializedPropertyAccessException("adapter");
        throw null;
    }

    public static final /* synthetic */ List access$getList$p(StorageFragment storageFragment) {
        List<StorageModel> list = storageFragment.list;
        if (list != null) {
            return list;
        }
        Intrinsics.throwUninitializedPropertyAccessException("list");
        throw null;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.settings_storage);
        this.captionFont = (AssetDownloader) getService("captionFont");
        this.captionStyle = (AssetDownloader) getService("captionStyle");
        this.stickerHelper = new StickerHelper(this);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        if (listView != null) {
            listView.setDivider(null);
        }
        if (listView != null) {
            listView.setDividerHeight(0);
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) throws Resources.NotFoundException {
        String string = getResources().getString(R.string.settings_storage_cache);
        Intrinsics.checkExpressionValueIsNotNull(string, "resources.getString(R.st…g.settings_storage_cache)");
        String string2 = getResources().getString(R.string.settings_storage_assets);
        Intrinsics.checkExpressionValueIsNotNull(string2, "resources.getString(R.st….settings_storage_assets)");
        String string3 = getString(R.string.settings_storage_assets_subtitle);
        Intrinsics.checkExpressionValueIsNotNull(string3, "getString(R.string.setti…_storage_assets_subtitle)");
        String string4 = getResources().getString(R.string.settings_storage_post_drafts);
        Intrinsics.checkExpressionValueIsNotNull(string4, "resources.getString(R.st…ings_storage_post_drafts)");
        this.list = CollectionsKt__CollectionsKt.listOf((Object[]) new StorageModel[]{new StorageModel(string, "", true, ""), new StorageModel(string2, string3, true, ""), new StorageModel(string4, "", true, "")});
        List<StorageModel> list = this.list;
        if (list != null) {
            this.adapter = new Adapter(this, this, list);
            new StorageAsyncTask(0).execute(new Void[0]);
            new StorageAsyncTask(1).execute(new Void[0]);
            new StorageAsyncTask(2).execute(new Void[0]);
            Adapter adapter = this.adapter;
            if (adapter != null) {
                return adapter;
            }
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            throw null;
        }
        Intrinsics.throwUninitializedPropertyAccessException("list");
        throw null;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 10001) {
            new StorageAsyncTask(1).execute(new Void[0]);
        }
    }

    /* compiled from: StorageFragment.kt */
    private final class Adapter extends PrefsAdapter {
        private final Tag ASSETS_TAG;
        private final Tag CACHE_TAG;
        private final Tag DRAFT_TAG;
        private final List<StorageModel> modelList;
        final /* synthetic */ StorageFragment this$0;

        @Override // com.narvii.list.prefs.PrefsAdapter, com.narvii.list.NVAdapter
        protected boolean supportNVTheme() {
            return true;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Adapter(StorageFragment storageFragment, NVContext nvContext, List<StorageModel> modelList) {
            super(nvContext);
            Intrinsics.checkParameterIsNotNull(nvContext, "nvContext");
            Intrinsics.checkParameterIsNotNull(modelList, "modelList");
            this.this$0 = storageFragment;
            this.modelList = modelList;
            this.CACHE_TAG = new Tag("cache");
            this.ASSETS_TAG = new Tag("assets");
            this.DRAFT_TAG = new Tag("drafts");
        }

        public final List<StorageModel> getModelList() {
            return this.modelList;
        }

        @Override // com.narvii.list.prefs.PrefsAdapter
        protected void buildCells(List<Object> list) {
            if (list != null) {
                list.add(this.CACHE_TAG);
            }
            if (list != null) {
                Tag DIVIDER = PrefsAdapter.DIVIDER;
                Intrinsics.checkExpressionValueIsNotNull(DIVIDER, "DIVIDER");
                list.add(DIVIDER);
            }
            if (list != null) {
                list.add(this.ASSETS_TAG);
            }
            if (list != null) {
                Tag DIVIDER2 = PrefsAdapter.DIVIDER;
                Intrinsics.checkExpressionValueIsNotNull(DIVIDER2, "DIVIDER");
                list.add(DIVIDER2);
            }
            if (list != null) {
                list.add(this.DRAFT_TAG);
            }
        }

        @Override // com.narvii.list.prefs.PrefsAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) throws Resources.NotFoundException {
            Object item = getItem(i);
            if (Intrinsics.areEqual(item, this.CACHE_TAG)) {
                return setView(0, view, viewGroup);
            }
            if (Intrinsics.areEqual(item, this.ASSETS_TAG)) {
                return setView(1, view, viewGroup);
            }
            if (Intrinsics.areEqual(item, this.DRAFT_TAG)) {
                return setView(2, view, viewGroup);
            }
            View view2 = super.getView(i, view, viewGroup);
            Intrinsics.checkExpressionValueIsNotNull(view2, "super.getView(position, convertView, parent)");
            return view2;
        }

        private final View setView(int i, View view, ViewGroup viewGroup) {
            RelativeLayout view2 = (RelativeLayout) createView(R.layout.fragment_settings_storage_item, viewGroup, view);
            View viewFindViewById = view2.findViewById(R.id.title);
            Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "view.findViewById<TextView>(R.id.title)");
            ((TextView) viewFindViewById).setText(this.modelList.get(i).getTitle());
            TextView it = (TextView) view2.findViewById(R.id.detail);
            Intrinsics.checkExpressionValueIsNotNull(it, "it");
            it.setText(this.modelList.get(i).getDetail());
            it.setVisibility(TextUtils.isEmpty(this.modelList.get(i).getDetail()) ? 8 : 0);
            View viewFindViewById2 = view2.findViewById(R.id.storage);
            Intrinsics.checkExpressionValueIsNotNull(viewFindViewById2, "view.findViewById<TextView>(R.id.storage)");
            ((TextView) viewFindViewById2).setText(this.modelList.get(i).getStorageSize());
            View viewFindViewById3 = view2.findViewById(R.id.loading);
            Intrinsics.checkExpressionValueIsNotNull(viewFindViewById3, "view.findViewById<SpinningView>(R.id.loading)");
            ((SpinningView) viewFindViewById3).setVisibility(TextUtils.isEmpty(this.modelList.get(i).getStorageSize()) ? 0 : 4);
            Intrinsics.checkExpressionValueIsNotNull(view2, "view");
            return view2;
        }

        @Override // com.narvii.list.prefs.PrefsAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (Intrinsics.areEqual(obj, this.CACHE_TAG)) {
                StorageFragment storageFragment = this.this$0;
                storageFragment.cleanCache(((StorageModel) StorageFragment.access$getList$p(storageFragment).get(0)).getStorageSize());
                return true;
            }
            if (Intrinsics.areEqual(obj, this.ASSETS_TAG)) {
                this.this$0.startActivityForResult(FragmentWrapperActivity.intent(AssetsStorageFragment.class), 10001);
                return true;
            }
            if (!Intrinsics.areEqual(obj, this.DRAFT_TAG)) {
                return false;
            }
            StorageFragment storageFragment2 = this.this$0;
            storageFragment2.cleanDrafts(((StorageModel) StorageFragment.access$getList$p(storageFragment2).get(2)).getStorageSize());
            return true;
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.theme.NVThemeFragment
    public void onThemeChange(int i) throws Resources.NotFoundException {
        super.onThemeChange(i);
        if (i == 2) {
            int color = getResources().getColor(R.color.color_default_primary);
            ListView listView = getListView();
            if (listView == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.widget.NVListView");
            }
            ((NVListView) listView).setOverscrollStretchHeader(color);
            ListView listView2 = getListView();
            if (listView2 == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.widget.NVListView");
            }
            ((NVListView) listView2).setOverscrollStretchFooter(color);
            ListView listView3 = getListView();
            if (listView3 == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.widget.NVListView");
            }
            ((NVListView) listView3).setListContentBackgroundColor(0);
            return;
        }
        if (i == 1) {
            int color2 = getResources().getColor(R.color.prefs_background);
            ListView listView4 = getListView();
            if (listView4 == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.widget.NVListView");
            }
            ((NVListView) listView4).setOverscrollStretchHeader(color2);
            ListView listView5 = getListView();
            if (listView5 == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.widget.NVListView");
            }
            ((NVListView) listView5).setOverscrollStretchFooter(color2);
            ListView listView6 = getListView();
            if (listView6 == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.widget.NVListView");
            }
            ((NVListView) listView6).setListContentBackgroundColor(-1);
        }
    }

    /* compiled from: StorageFragment.kt */
    public static final class StorageModel {
        private final String detail;
        private boolean isLoading;
        private String storageSize;
        private final String title;

        public StorageModel() {
            this(null, null, false, null, 15, null);
        }

        public static /* synthetic */ StorageModel copy$default(StorageModel storageModel, String str, String str2, boolean z, String str3, int i, Object obj) {
            if ((i & 1) != 0) {
                str = storageModel.title;
            }
            if ((i & 2) != 0) {
                str2 = storageModel.detail;
            }
            if ((i & 4) != 0) {
                z = storageModel.isLoading;
            }
            if ((i & 8) != 0) {
                str3 = storageModel.storageSize;
            }
            return storageModel.copy(str, str2, z, str3);
        }

        public final String component1() {
            return this.title;
        }

        public final String component2() {
            return this.detail;
        }

        public final boolean component3() {
            return this.isLoading;
        }

        public final String component4() {
            return this.storageSize;
        }

        public final StorageModel copy(String title, String detail, boolean z, String storageSize) {
            Intrinsics.checkParameterIsNotNull(title, "title");
            Intrinsics.checkParameterIsNotNull(detail, "detail");
            Intrinsics.checkParameterIsNotNull(storageSize, "storageSize");
            return new StorageModel(title, detail, z, storageSize);
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof StorageModel) {
                    StorageModel storageModel = (StorageModel) obj;
                    if (Intrinsics.areEqual(this.title, storageModel.title) && Intrinsics.areEqual(this.detail, storageModel.detail)) {
                        if (!(this.isLoading == storageModel.isLoading) || !Intrinsics.areEqual(this.storageSize, storageModel.storageSize)) {
                        }
                    }
                }
                return false;
            }
            return true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public int hashCode() {
            String str = this.title;
            int iHashCode = (str != null ? str.hashCode() : 0) * 31;
            String str2 = this.detail;
            int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            boolean z = this.isLoading;
            int i = z;
            if (z != 0) {
                i = 1;
            }
            int i2 = (iHashCode2 + i) * 31;
            String str3 = this.storageSize;
            return i2 + (str3 != null ? str3.hashCode() : 0);
        }

        public String toString() {
            return "StorageModel(title=" + this.title + ", detail=" + this.detail + ", isLoading=" + this.isLoading + ", storageSize=" + this.storageSize + ")";
        }

        public StorageModel(String title, String detail, boolean z, String storageSize) {
            Intrinsics.checkParameterIsNotNull(title, "title");
            Intrinsics.checkParameterIsNotNull(detail, "detail");
            Intrinsics.checkParameterIsNotNull(storageSize, "storageSize");
            this.title = title;
            this.detail = detail;
            this.isLoading = z;
            this.storageSize = storageSize;
        }

        public final String getTitle() {
            return this.title;
        }

        public final String getDetail() {
            return this.detail;
        }

        public final boolean isLoading() {
            return this.isLoading;
        }

        public final void setLoading(boolean z) {
            this.isLoading = z;
        }

        public /* synthetic */ StorageModel(String str, String str2, boolean z, String str3, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? true : z, (i & 8) != 0 ? "" : str3);
        }

        public final String getStorageSize() {
            return this.storageSize;
        }

        public final void setStorageSize(String str) {
            Intrinsics.checkParameterIsNotNull(str, "<set-?>");
            this.storageSize = str;
        }
    }

    /* compiled from: StorageFragment.kt */
    public final class StorageAsyncTask extends AsyncTask<Void, Void, String> {
        private final int pos;

        public StorageAsyncTask(int i) {
            this.pos = i;
        }

        public final int getPos() {
            return this.pos;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public String doInBackground(Void... params) {
            Intrinsics.checkParameterIsNotNull(params, "params");
            int i = this.pos;
            if (i == 0) {
                return StorageFragment.this.getCacheSize();
            }
            if (i != 1) {
                return i != 2 ? "" : StorageFragment.this.getDraftsSize();
            }
            return StorageFragment.this.getAssetsSize();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(String str) {
            if (str != null) {
                ((StorageModel) StorageFragment.access$getList$p(StorageFragment.this).get(this.pos)).setStorageSize(str);
                StorageFragment.access$getAdapter$p(StorageFragment.this).notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<File> getCacheDirs() {
        File[] fileArrListFiles;
        ArrayList arrayList = new ArrayList();
        List listListOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"AdMob", "AppLovin", "al", "Facebook", "im_cached_content", "Kiip", "Tapjoy", "UnityAds", "Vungle", "vungle"});
        List listListOf2 = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"gif", "img", "bubble", "stickers", "media-preload", "exo-cache", "propBundles"});
        Context context = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "context");
        File filesDir = context.getFilesDir();
        Iterator it = listListOf.iterator();
        while (it.hasNext()) {
            arrayList.add(new File(filesDir, (String) it.next()));
        }
        Iterator it2 = listListOf.iterator();
        while (it2.hasNext()) {
            File externalFilesDir = getContext().getExternalFilesDir((String) it2.next());
            if (externalFilesDir != null) {
                arrayList.add(externalFilesDir);
            }
        }
        Context context2 = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context2, "context");
        File[] fileArrListFiles2 = context2.getCacheDir().listFiles();
        if (fileArrListFiles2 != null) {
            for (File it3 : fileArrListFiles2) {
                Intrinsics.checkExpressionValueIsNotNull(it3, "it");
                if (!listListOf2.contains(it3.getName())) {
                    arrayList.add(it3);
                }
            }
        }
        Context context3 = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context3, "context");
        File externalCacheDir = context3.getExternalCacheDir();
        if (externalCacheDir != null && (fileArrListFiles = externalCacheDir.listFiles()) != null) {
            for (File it4 : fileArrListFiles) {
                Intrinsics.checkExpressionValueIsNotNull(it4, "it");
                if (!listListOf2.contains(it4.getName())) {
                    arrayList.add(it4);
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
        if (context == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        INVPlayer nVPlayer = NVPlayerManager.getNVPlayer(context);
        if (diskLruCacheWrapper == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        long size = diskLruCacheWrapper.size();
        if (gifLoader == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        long size2 = size + gifLoader.size();
        if (mediaLoader == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        long size3 = size2 + mediaLoader.size();
        if (stickerCacheService == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        long size4 = size3 + stickerCacheService.size();
        if (bubbleService == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        long size5 = size4 + bubbleService.size();
        if (mediaPreloadService == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        long size6 = size5 + mediaPreloadService.size() + nVPlayer.size();
        for (File file : getCacheDirs()) {
            size6 += file.isFile() ? file.length() : Utils.getFolderSize(file);
        }
        return calculateSize(size6);
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
        if (context == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        final INVPlayer nVPlayer = NVPlayerManager.getNVPlayer(context);
        final ThemePackService themePackService = (ThemePackService) getService("themePack");
        ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
        actionSheetDialog.setTitle(getString(R.string.settings_clear_cache_message, str));
        actionSheetDialog.addItem(R.string.settings_clear_cache, 1);
        actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.prefs.StorageFragment.cleanCache.1
            /* JADX WARN: Unreachable blocks removed: 2, instructions: 3 */
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
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
                    nVPlayer.clear();
                } catch (Exception unused7) {
                }
                try {
                    themePackService.clear();
                } catch (Exception unused8) {
                }
                for (File file : StorageFragment.this.getCacheDirs()) {
                    if (file.isFile()) {
                        file.delete();
                    } else {
                        Utils.deleteDir(file);
                    }
                }
                Log.w("cache cleared (" + str + "b)");
                StorageFragment.this.new StorageAsyncTask(0).execute(new Void[0]);
            }
        });
        actionSheetDialog.show();
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

    /* JADX INFO: Access modifiers changed from: private */
    public final String getDraftsSize() {
        long folderSize = Utils.getFolderSize(DraftManager.getDraftsRootDir(getContext()));
        File[] fileArrListArchiveFiles = DraftManager.listArchiveFiles(getContext());
        Intrinsics.checkExpressionValueIsNotNull(fileArrListArchiveFiles, "DraftManager.listArchiveFiles(context)");
        for (File file : fileArrListArchiveFiles) {
            folderSize += file.length();
        }
        return calculateSize(folderSize);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void cleanDrafts(String str) {
        ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
        actionSheetDialog.setTitle(getString(R.string.settings_clear_cache_message, str));
        actionSheetDialog.addItem(R.string.delete, 1);
        actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.prefs.StorageFragment.cleanDrafts.1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                Utils.deleteDir(DraftManager.getDraftsRootDir(StorageFragment.this.getContext()));
                File[] fileArrListArchiveFiles = DraftManager.listArchiveFiles(StorageFragment.this.getContext());
                Intrinsics.checkExpressionValueIsNotNull(fileArrListArchiveFiles, "DraftManager.listArchiveFiles(context)");
                for (File file : fileArrListArchiveFiles) {
                    file.delete();
                }
                StorageFragment.this.new StorageAsyncTask(2).execute(new Void[0]);
            }
        });
        actionSheetDialog.show();
    }

    private final String calculateSize(long j) {
        long j2 = 500;
        long j3 = 1024;
        long j4 = (j + j2) / j3;
        if (j4 < 1000) {
            return j4 + "KB";
        }
        return ((j4 + j2) / j3) + "MB";
    }

    /* compiled from: StorageFragment.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }
}
