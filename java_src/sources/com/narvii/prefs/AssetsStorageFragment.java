package com.narvii.prefs;

import android.content.DialogInterface;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatButton;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.asset.AssetDownloader;
import com.narvii.list.NVListFragment;
import com.narvii.list.prefs.PrefsAdapter;
import com.narvii.media.online.audio.AudioDownloader;
import com.narvii.scene.helper.StickerHelper;
import com.narvii.util.NVToast;
import com.narvii.util.Tag;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.widget.NVImageView;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.v;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
public final class AssetsStorageFragment extends NVListFragment implements View.OnClickListener {
    private AssetsAdapter assetsAdapter;

    @Nullable
    private AssetDownloader captionFont;

    @Nullable
    private AssetDownloader captionStyle;
    private AppCompatButton deleteBtn;
    private List<AssetsModel> list;
    private NVImageView selectAllImg;

    @Nullable
    private StickerHelper stickerHelper;
    private NVImageView unSelectAllImg;

    private final class AssetsAdapter extends PrefsAdapter {

        @NotNull
        private final Tag FONTS_TAG;

        @NotNull
        private final Tag MUSIC_TAG;

        @NotNull
        private final Tag STICKER_TAG;

        @NotNull
        private final Tag TEXT_TAG;

        @NotNull
        private final List<AssetsModel> modelList;
        final /* synthetic */ AssetsStorageFragment this$0;

        @NotNull
        public final List<AssetsModel> getModelList() {
            return this.modelList;
        }

        @Override // com.narvii.list.prefs.PrefsAdapter, com.narvii.list.NVAdapter
        protected boolean supportNVTheme() {
            return true;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AssetsAdapter(@NotNull AssetsStorageFragment assetsStorageFragment, @NotNull NVContext nvContext, List<AssetsModel> modelList) {
            super(nvContext);
            t.j(nvContext, "nvContext");
            t.j(modelList, "modelList");
            this.this$0 = assetsStorageFragment;
            this.modelList = modelList;
            this.MUSIC_TAG = new Tag("music");
            this.FONTS_TAG = new Tag("fonts");
            this.TEXT_TAG = new Tag("text");
            this.STICKER_TAG = new Tag("sticker");
        }

        @Override // com.narvii.list.prefs.PrefsAdapter
        protected void buildCells(@Nullable List<Object> list) {
            if (list != null) {
                list.add(this.MUSIC_TAG);
            }
            if (list != null) {
                Tag DIVIDER = PrefsAdapter.DIVIDER;
                t.i(DIVIDER, "DIVIDER");
                list.add(DIVIDER);
            }
            if (list != null) {
                list.add(this.FONTS_TAG);
            }
            if (list != null) {
                Tag DIVIDER2 = PrefsAdapter.DIVIDER;
                t.i(DIVIDER2, "DIVIDER");
                list.add(DIVIDER2);
            }
            if (list != null) {
                list.add(this.TEXT_TAG);
            }
            if (list != null) {
                Tag DIVIDER3 = PrefsAdapter.DIVIDER;
                t.i(DIVIDER3, "DIVIDER");
                list.add(DIVIDER3);
            }
            if (list != null) {
                list.add(this.STICKER_TAG);
            }
        }

        @Override // com.narvii.list.prefs.PrefsAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(@Nullable ListAdapter listAdapter, int i10, @Nullable Object obj, @Nullable View view, @Nullable View view2) {
            if (view2 != null) {
                if (t.e(obj, this.MUSIC_TAG)) {
                    this.this$0.updateList(0);
                } else if (t.e(obj, this.FONTS_TAG)) {
                    this.this$0.updateList(1);
                } else if (t.e(obj, this.TEXT_TAG)) {
                    this.this$0.updateList(2);
                } else if (t.e(obj, this.STICKER_TAG)) {
                    this.this$0.updateList(3);
                }
            }
            return super.onItemClick(listAdapter, i10, obj, view, view2);
        }

        private final View setView(int i10, View view, ViewGroup viewGroup) {
            int i11;
            RelativeLayout relativeLayout = (RelativeLayout) createView(R.layout.fragment_assets_storage_item, viewGroup, view);
            ((TextView) relativeLayout.findViewById(R.id.title)).setText(this.modelList.get(i10).getTitle());
            ((TextView) relativeLayout.findViewById(R.id.size)).setText(this.this$0.calculateSize(this.modelList.get(i10).getSize()));
            boolean selected = this.modelList.get(i10).getSelected();
            NVImageView nVImageView = (NVImageView) relativeLayout.findViewById(R.id.selected_img);
            int i12 = 4;
            if (selected) {
                i11 = 0;
            } else {
                i11 = 4;
            }
            nVImageView.setVisibility(i11);
            NVImageView nVImageView2 = (NVImageView) relativeLayout.findViewById(R.id.unselected_img);
            if (!selected) {
                i12 = 0;
            }
            nVImageView2.setVisibility(i12);
            relativeLayout.setOnClickListener(this.subviewClickListener);
            t.g(relativeLayout);
            return relativeLayout;
        }

        @Override // com.narvii.list.prefs.PrefsAdapter, android.widget.Adapter
        @NotNull
        public View getView(int i10, @Nullable View view, @Nullable ViewGroup viewGroup) {
            Object item = getItem(i10);
            if (t.e(item, this.MUSIC_TAG)) {
                return setView(0, view, viewGroup);
            }
            if (t.e(item, this.FONTS_TAG)) {
                return setView(1, view, viewGroup);
            }
            if (t.e(item, this.TEXT_TAG)) {
                return setView(2, view, viewGroup);
            }
            if (t.e(item, this.STICKER_TAG)) {
                return setView(3, view, viewGroup);
            }
            View view2 = super.getView(i10, view, viewGroup);
            t.i(view2, "getView(...)");
            return view2;
        }
    }

    public static final class AssetsModel {

        @NotNull
        private final e8.a<l0> clearCache;
        private boolean selected;
        private long size;

        @NotNull
        private final String title;

        public AssetsModel(@NotNull String title, long j6, boolean z6, @NotNull e8.a<l0> clearCache) {
            t.j(title, "title");
            t.j(clearCache, "clearCache");
            this.title = title;
            this.size = j6;
            this.selected = z6;
            this.clearCache = clearCache;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ AssetsModel copy$default(AssetsModel assetsModel, String str, long j6, boolean z6, e8.a aVar, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                str = assetsModel.title;
            }
            if ((i10 & 2) != 0) {
                j6 = assetsModel.size;
            }
            long j10 = j6;
            if ((i10 & 4) != 0) {
                z6 = assetsModel.selected;
            }
            boolean z10 = z6;
            if ((i10 & 8) != 0) {
                aVar = assetsModel.clearCache;
            }
            return assetsModel.copy(str, j10, z10, aVar);
        }

        @NotNull
        public final String component1() {
            return this.title;
        }

        public final long component2() {
            return this.size;
        }

        public final boolean component3() {
            return this.selected;
        }

        @NotNull
        public final e8.a<l0> component4() {
            return this.clearCache;
        }

        @NotNull
        public final AssetsModel copy(@NotNull String title, long j6, boolean z6, @NotNull e8.a<l0> clearCache) {
            t.j(title, "title");
            t.j(clearCache, "clearCache");
            return new AssetsModel(title, j6, z6, clearCache);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AssetsModel)) {
                return false;
            }
            AssetsModel assetsModel = (AssetsModel) obj;
            return t.e(this.title, assetsModel.title) && this.size == assetsModel.size && this.selected == assetsModel.selected && t.e(this.clearCache, assetsModel.clearCache);
        }

        @NotNull
        public final e8.a<l0> getClearCache() {
            return this.clearCache;
        }

        public final boolean getSelected() {
            return this.selected;
        }

        public final long getSize() {
            return this.size;
        }

        @NotNull
        public final String getTitle() {
            return this.title;
        }

        public int hashCode() {
            return (((((this.title.hashCode() * 31) + i.a.a(this.size)) * 31) + androidx.compose.foundation.c.a(this.selected)) * 31) + this.clearCache.hashCode();
        }

        public final void setSelected(boolean z6) {
            this.selected = z6;
        }

        public final void setSize(long j6) {
            this.size = j6;
        }

        @NotNull
        public String toString() {
            return "AssetsModel(title=" + this.title + ", size=" + this.size + ", selected=" + this.selected + ", clearCache=" + this.clearCache + ")";
        }

        public /* synthetic */ AssetsModel(String str, long j6, boolean z6, e8.a aVar, int i10, kotlin.jvm.internal.k kVar) {
            this((i10 & 1) != 0 ? "" : str, (i10 & 2) != 0 ? 0L : j6, (i10 & 4) != 0 ? false : z6, aVar);
        }
    }

    public final class StorageAsyncTask extends AsyncTask<Void, Void, long[]> {
        public StorageAsyncTask() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        @NotNull
        public long[] doInBackground(@NotNull Void... params) {
            t.j(params, "params");
            long[] jArr = new long[4];
            jArr[0] = Utils.getFolderSize(new AudioDownloader(Utils.getNVContext(AssetsStorageFragment.this.getContext())).getDir());
            AssetDownloader assetDownloader = AssetsStorageFragment.this.captionFont;
            jArr[1] = assetDownloader != null ? assetDownloader.getCacheSize() : 0L;
            AssetDownloader assetDownloader2 = AssetsStorageFragment.this.captionStyle;
            jArr[2] = assetDownloader2 != null ? assetDownloader2.getCacheSize() : 0L;
            StickerHelper stickerHelper = AssetsStorageFragment.this.stickerHelper;
            jArr[3] = stickerHelper != null ? stickerHelper.getCacheSize() : 0L;
            return jArr;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(@Nullable long[] jArr) {
            if (jArr != null) {
                List list = AssetsStorageFragment.this.list;
                AssetsAdapter assetsAdapter = null;
                if (list == null) {
                    t.B("list");
                    list = null;
                }
                int i10 = 0;
                for (Object obj : list) {
                    int i11 = i10 + 1;
                    if (i10 < 0) {
                        v.w();
                    }
                    ((AssetsModel) obj).setSize(jArr[i10]);
                    i10 = i11;
                }
                AssetsAdapter assetsAdapter2 = AssetsStorageFragment.this.assetsAdapter;
                if (assetsAdapter2 == null) {
                    t.B("assetsAdapter");
                } else {
                    assetsAdapter = assetsAdapter2;
                }
                assetsAdapter.notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: renamed from: com.narvii.prefs.AssetsStorageFragment$createAdapter$1, reason: invalid class name */
    static final class AnonymousClass1 extends kotlin.jvm.internal.v implements e8.a<l0> {
        AnonymousClass1() {
            super(0);
        }

        @Override // e8.a
        public /* bridge */ /* synthetic */ l0 invoke() {
            invoke2();
            return l0.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2() {
            Utils.deleteDir(new AudioDownloader(AssetsStorageFragment.this).getDir());
        }
    }

    /* JADX INFO: renamed from: com.narvii.prefs.AssetsStorageFragment$createAdapter$2, reason: invalid class name */
    static final class AnonymousClass2 extends kotlin.jvm.internal.v implements e8.a<l0> {
        AnonymousClass2() {
            super(0);
        }

        @Override // e8.a
        public /* bridge */ /* synthetic */ l0 invoke() {
            invoke2();
            return l0.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2() {
            AssetDownloader assetDownloader = AssetsStorageFragment.this.captionFont;
            if (assetDownloader != null) {
                assetDownloader.clearCache();
            }
        }
    }

    /* JADX INFO: renamed from: com.narvii.prefs.AssetsStorageFragment$createAdapter$3, reason: invalid class name */
    static final class AnonymousClass3 extends kotlin.jvm.internal.v implements e8.a<l0> {
        AnonymousClass3() {
            super(0);
        }

        @Override // e8.a
        public /* bridge */ /* synthetic */ l0 invoke() {
            invoke2();
            return l0.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2() {
            AssetDownloader assetDownloader = AssetsStorageFragment.this.captionStyle;
            if (assetDownloader != null) {
                assetDownloader.clearCache();
            }
        }
    }

    /* JADX INFO: renamed from: com.narvii.prefs.AssetsStorageFragment$createAdapter$4, reason: invalid class name */
    static final class AnonymousClass4 extends kotlin.jvm.internal.v implements e8.a<l0> {
        AnonymousClass4() {
            super(0);
        }

        @Override // e8.a
        public /* bridge */ /* synthetic */ l0 invoke() {
            invoke2();
            return l0.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2() {
            StickerHelper stickerHelper = AssetsStorageFragment.this.stickerHelper;
            if (stickerHelper != null) {
                stickerHelper.clearCache();
            }
        }
    }

    private final void updateDeleteBtn(boolean z6) {
        AppCompatButton appCompatButton = null;
        if (z6) {
            AppCompatButton appCompatButton2 = this.deleteBtn;
            if (appCompatButton2 == null) {
                t.B("deleteBtn");
            } else {
                appCompatButton = appCompatButton2;
            }
            appCompatButton.setBackgroundResource(R.drawable.assets_storage_delete_bg);
            return;
        }
        AppCompatButton appCompatButton3 = this.deleteBtn;
        if (appCompatButton3 == null) {
            t.B("deleteBtn");
        } else {
            appCompatButton = appCompatButton3;
        }
        appCompatButton.setBackgroundResource(R.drawable.assets_storage_delete_disabled_bg);
    }

    private final void updateSelectAllView(boolean z6) {
        NVImageView nVImageView = null;
        if (z6) {
            NVImageView nVImageView2 = this.selectAllImg;
            if (nVImageView2 == null) {
                t.B("selectAllImg");
                nVImageView2 = null;
            }
            nVImageView2.setVisibility(0);
            NVImageView nVImageView3 = this.unSelectAllImg;
            if (nVImageView3 == null) {
                t.B("unSelectAllImg");
            } else {
                nVImageView = nVImageView3;
            }
            nVImageView.setVisibility(4);
            return;
        }
        NVImageView nVImageView4 = this.selectAllImg;
        if (nVImageView4 == null) {
            t.B("selectAllImg");
            nVImageView4 = null;
        }
        nVImageView4.setVisibility(4);
        NVImageView nVImageView5 = this.unSelectAllImg;
        if (nVImageView5 == null) {
            t.B("unSelectAllImg");
        } else {
            nVImageView = nVImageView5;
        }
        nVImageView.setVisibility(0);
    }

    @Override // com.narvii.list.NVListFragment
    @NotNull
    protected ListAdapter createAdapter(@Nullable Bundle bundle) {
        String string = getResources().getString(R.string.settings_storage_assets_music);
        t.i(string, "getString(...)");
        String string2 = getResources().getString(R.string.settings_storage_assets_fonts);
        t.i(string2, "getString(...)");
        String string3 = getResources().getString(R.string.settings_storage_assets_text);
        t.i(string3, "getString(...)");
        String string4 = getResources().getString(R.string.settings_storage_assets_stickers);
        t.i(string4, "getString(...)");
        this.list = v.g(new AssetsModel(string, 0L, false, new AnonymousClass1()), new AssetsModel(string2, 0L, false, new AnonymousClass2()), new AssetsModel(string3, 0L, false, new AnonymousClass3()), new AssetsModel(string4, 0L, false, new AnonymousClass4()));
        List<AssetsModel> list = this.list;
        if (list == null) {
            t.B("list");
            list = null;
        }
        AssetsAdapter assetsAdapter = new AssetsAdapter(this, this, list);
        this.assetsAdapter = assetsAdapter;
        return assetsAdapter;
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public int initNVTheme() {
        return 2;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@Nullable View view) {
        List<AssetsModel> list = null;
        AssetsAdapter assetsAdapter = null;
        AssetsAdapter assetsAdapter2 = null;
        Integer numValueOf = view != null ? Integer.valueOf(view.getId()) : null;
        if (numValueOf != null && numValueOf.intValue() == R.id.select_all_img) {
            List<AssetsModel> list2 = this.list;
            if (list2 == null) {
                t.B("list");
                list2 = null;
            }
            Iterator<T> it = list2.iterator();
            while (it.hasNext()) {
                ((AssetsModel) it.next()).setSelected(false);
            }
            updateSelectAllView(false);
            AssetsAdapter assetsAdapter3 = this.assetsAdapter;
            if (assetsAdapter3 == null) {
                t.B("assetsAdapter");
            } else {
                assetsAdapter = assetsAdapter3;
            }
            assetsAdapter.notifyDataSetChanged();
            updateDeleteBtn(false);
            return;
        }
        if (numValueOf != null && numValueOf.intValue() == R.id.unselect_all_img) {
            List<AssetsModel> list3 = this.list;
            if (list3 == null) {
                t.B("list");
                list3 = null;
            }
            Iterator<T> it2 = list3.iterator();
            while (it2.hasNext()) {
                ((AssetsModel) it2.next()).setSelected(true);
            }
            updateSelectAllView(true);
            AssetsAdapter assetsAdapter4 = this.assetsAdapter;
            if (assetsAdapter4 == null) {
                t.B("assetsAdapter");
            } else {
                assetsAdapter2 = assetsAdapter4;
            }
            assetsAdapter2.notifyDataSetChanged();
            updateDeleteBtn(true);
            return;
        }
        if (numValueOf != null && numValueOf.intValue() == R.id.delete_btn) {
            List<AssetsModel> list4 = this.list;
            if (list4 == null) {
                t.B("list");
            } else {
                list = list4;
            }
            long size = 0;
            for (AssetsModel assetsModel : list) {
                if (assetsModel.getSelected()) {
                    size += assetsModel.getSize();
                }
            }
            cleanAssets(size);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String calculateSize(long j6) {
        long j10 = 1024;
        long j11 = j6 / j10;
        if (j11 < 1000) {
            return j11 + "KB";
        }
        return (j11 / j10) + "MB";
    }

    private final void cleanAssets(long j6) {
        ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
        actionSheetDialog.setTitle(getString(R.string.settings_clear_cache_message, calculateSize(j6)));
        actionSheetDialog.addItem(R.string.delete, 1);
        actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.prefs.c
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i10) {
                AssetsStorageFragment.cleanAssets$lambda$5(this.f2620a, dialogInterface, i10);
            }
        });
        actionSheetDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void cleanAssets$lambda$5(AssetsStorageFragment this$0, DialogInterface dialogInterface, int i10) {
        t.j(this$0, "this$0");
        List<AssetsModel> list = this$0.list;
        AssetsAdapter assetsAdapter = null;
        if (list == null) {
            t.B("list");
            list = null;
        }
        for (AssetsModel assetsModel : list) {
            if (assetsModel.getSelected()) {
                assetsModel.getClearCache().invoke();
                assetsModel.setSelected(false);
                assetsModel.setSize(0L);
            }
        }
        NVToast.makeText(this$0.getContext(), R.string.success, 0).show();
        AssetsAdapter assetsAdapter2 = this$0.assetsAdapter;
        if (assetsAdapter2 == null) {
            t.B("assetsAdapter");
        } else {
            assetsAdapter = assetsAdapter2;
        }
        assetsAdapter.notifyDataSetChanged();
        this$0.updateSelectAllView(false);
        this$0.updateDeleteBtn(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateList(int i10) {
        if (i10 >= 0) {
            List<AssetsModel> list = this.list;
            List<AssetsModel> list2 = null;
            if (list == null) {
                t.B("list");
                list = null;
            }
            if (i10 < list.size()) {
                List<AssetsModel> list3 = this.list;
                if (list3 == null) {
                    t.B("list");
                    list3 = null;
                }
                AssetsModel assetsModel = list3.get(i10);
                List<AssetsModel> list4 = this.list;
                if (list4 == null) {
                    t.B("list");
                    list4 = null;
                }
                assetsModel.setSelected(!list4.get(i10).getSelected());
                AssetsAdapter assetsAdapter = this.assetsAdapter;
                if (assetsAdapter == null) {
                    t.B("assetsAdapter");
                    assetsAdapter = null;
                }
                assetsAdapter.notifyDataSetChanged();
                List<AssetsModel> list5 = this.list;
                if (list5 == null) {
                    t.B("list");
                } else {
                    list2 = list5;
                }
                boolean z6 = false;
                boolean z10 = true;
                for (AssetsModel assetsModel2 : list2) {
                    z10 = z10 && assetsModel2.getSelected();
                    z6 = z6 || assetsModel2.getSelected();
                }
                updateSelectAllView(z10);
                updateDeleteBtn(z6);
            }
        }
    }

    @Override // com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        t.j(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_assets_storage, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        t.j(view, "view");
        super.onViewCreated(view, bundle);
        View viewFindViewById = view.findViewById(R.id.select_all_img);
        t.i(viewFindViewById, "findViewById(...)");
        this.selectAllImg = (NVImageView) viewFindViewById;
        View viewFindViewById2 = view.findViewById(R.id.unselect_all_img);
        t.i(viewFindViewById2, "findViewById(...)");
        this.unSelectAllImg = (NVImageView) viewFindViewById2;
        NVImageView nVImageView = this.selectAllImg;
        AppCompatButton appCompatButton = null;
        if (nVImageView == null) {
            t.B("selectAllImg");
            nVImageView = null;
        }
        nVImageView.setOnClickListener(this);
        NVImageView nVImageView2 = this.unSelectAllImg;
        if (nVImageView2 == null) {
            t.B("unSelectAllImg");
            nVImageView2 = null;
        }
        nVImageView2.setOnClickListener(this);
        View viewFindViewById3 = view.findViewById(R.id.delete_btn);
        t.i(viewFindViewById3, "findViewById(...)");
        AppCompatButton appCompatButton2 = (AppCompatButton) viewFindViewById3;
        this.deleteBtn = appCompatButton2;
        if (appCompatButton2 == null) {
            t.B("deleteBtn");
        } else {
            appCompatButton = appCompatButton2;
        }
        appCompatButton.setOnClickListener(this);
        new StorageAsyncTask().execute(new Void[0]);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        this.captionFont = (AssetDownloader) getService("captionFont");
        this.captionStyle = (AssetDownloader) getService("captionStyle");
        this.stickerHelper = new StickerHelper(this);
        setTitle(R.string.settings_storage_assets);
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
}
