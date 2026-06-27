package com.narvii.prefs;

import android.content.DialogInterface;
import android.content.res.Resources;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v7.widget.AppCompatButton;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.android.exoplayer2.util.MimeTypes;
import com.narvii.amino.mastes.R;
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
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AssetsStorageFragment.kt */
/* loaded from: classes3.dex */
public final class AssetsStorageFragment extends NVListFragment implements View.OnClickListener {
    private HashMap _$_findViewCache;
    private AssetsAdapter assetsAdapter;
    private AssetDownloader captionFont;
    private AssetDownloader captionStyle;
    private AppCompatButton deleteBtn;
    private List<AssetsModel> list;
    private NVImageView selectAllImg;
    private StickerHelper stickerHelper;
    private NVImageView unSelectAllImg;

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

    @Override // com.narvii.app.theme.NVThemeFragment
    public int initNVTheme() {
        return 2;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    public static final /* synthetic */ AssetsAdapter access$getAssetsAdapter$p(AssetsStorageFragment assetsStorageFragment) {
        AssetsAdapter assetsAdapter = assetsStorageFragment.assetsAdapter;
        if (assetsAdapter != null) {
            return assetsAdapter;
        }
        Intrinsics.throwUninitializedPropertyAccessException("assetsAdapter");
        throw null;
    }

    public static final /* synthetic */ List access$getList$p(AssetsStorageFragment assetsStorageFragment) {
        List<AssetsModel> list = assetsStorageFragment.list;
        if (list != null) {
            return list;
        }
        Intrinsics.throwUninitializedPropertyAccessException("list");
        throw null;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.captionFont = (AssetDownloader) getService("captionFont");
        this.captionStyle = (AssetDownloader) getService("captionStyle");
        this.stickerHelper = new StickerHelper(this);
        setTitle(R.string.settings_storage_assets);
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_assets_storage, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        View viewFindViewById = view.findViewById(R.id.select_all_img);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "view.findViewById(R.id.select_all_img)");
        this.selectAllImg = (NVImageView) viewFindViewById;
        View viewFindViewById2 = view.findViewById(R.id.unselect_all_img);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById2, "view.findViewById(R.id.unselect_all_img)");
        this.unSelectAllImg = (NVImageView) viewFindViewById2;
        NVImageView nVImageView = this.selectAllImg;
        if (nVImageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("selectAllImg");
            throw null;
        }
        nVImageView.setOnClickListener(this);
        NVImageView nVImageView2 = this.unSelectAllImg;
        if (nVImageView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("unSelectAllImg");
            throw null;
        }
        nVImageView2.setOnClickListener(this);
        View viewFindViewById3 = view.findViewById(R.id.delete_btn);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById3, "view.findViewById(R.id.delete_btn)");
        this.deleteBtn = (AppCompatButton) viewFindViewById3;
        AppCompatButton appCompatButton = this.deleteBtn;
        if (appCompatButton == null) {
            Intrinsics.throwUninitializedPropertyAccessException("deleteBtn");
            throw null;
        }
        appCompatButton.setOnClickListener(this);
        new StorageAsyncTask().execute(new Void[0]);
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
        String string = getResources().getString(R.string.settings_storage_assets_music);
        Intrinsics.checkExpressionValueIsNotNull(string, "resources.getString(R.st…ngs_storage_assets_music)");
        String string2 = getResources().getString(R.string.settings_storage_assets_fonts);
        Intrinsics.checkExpressionValueIsNotNull(string2, "resources.getString(R.st…ngs_storage_assets_fonts)");
        String string3 = getResources().getString(R.string.settings_storage_assets_text);
        Intrinsics.checkExpressionValueIsNotNull(string3, "resources.getString(R.st…ings_storage_assets_text)");
        String string4 = getResources().getString(R.string.settings_storage_assets_stickers);
        Intrinsics.checkExpressionValueIsNotNull(string4, "resources.getString(R.st…_storage_assets_stickers)");
        this.list = CollectionsKt__CollectionsKt.arrayListOf(new AssetsModel(string, 0L, false, new Function0<Unit>() { // from class: com.narvii.prefs.AssetsStorageFragment.createAdapter.1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                Utils.deleteDir(new AudioDownloader(AssetsStorageFragment.this).getDir());
            }
        }), new AssetsModel(string2, 0L, false, new Function0<Unit>() { // from class: com.narvii.prefs.AssetsStorageFragment.createAdapter.2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                AssetDownloader assetDownloader = AssetsStorageFragment.this.captionFont;
                if (assetDownloader != null) {
                    assetDownloader.clearCache();
                }
            }
        }), new AssetsModel(string3, 0L, false, new Function0<Unit>() { // from class: com.narvii.prefs.AssetsStorageFragment.createAdapter.3
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                AssetDownloader assetDownloader = AssetsStorageFragment.this.captionStyle;
                if (assetDownloader != null) {
                    assetDownloader.clearCache();
                }
            }
        }), new AssetsModel(string4, 0L, false, new Function0<Unit>() { // from class: com.narvii.prefs.AssetsStorageFragment.createAdapter.4
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                StickerHelper stickerHelper = AssetsStorageFragment.this.stickerHelper;
                if (stickerHelper != null) {
                    stickerHelper.clearCache();
                }
            }
        }));
        List<AssetsModel> list = this.list;
        if (list != null) {
            this.assetsAdapter = new AssetsAdapter(this, this, list);
            AssetsAdapter assetsAdapter = this.assetsAdapter;
            if (assetsAdapter != null) {
                return assetsAdapter;
            }
            Intrinsics.throwUninitializedPropertyAccessException("assetsAdapter");
            throw null;
        }
        Intrinsics.throwUninitializedPropertyAccessException("list");
        throw null;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Integer numValueOf = view != null ? Integer.valueOf(view.getId()) : null;
        if (numValueOf != null && numValueOf.intValue() == R.id.select_all_img) {
            List<AssetsModel> list = this.list;
            if (list == null) {
                Intrinsics.throwUninitializedPropertyAccessException("list");
                throw null;
            }
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                ((AssetsModel) it.next()).setSelected(false);
            }
            updateSelectAllView(false);
            AssetsAdapter assetsAdapter = this.assetsAdapter;
            if (assetsAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("assetsAdapter");
                throw null;
            }
            assetsAdapter.notifyDataSetChanged();
            updateDeleteBtn(false);
            return;
        }
        if (numValueOf != null && numValueOf.intValue() == R.id.unselect_all_img) {
            List<AssetsModel> list2 = this.list;
            if (list2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("list");
                throw null;
            }
            Iterator<T> it2 = list2.iterator();
            while (it2.hasNext()) {
                ((AssetsModel) it2.next()).setSelected(true);
            }
            updateSelectAllView(true);
            AssetsAdapter assetsAdapter2 = this.assetsAdapter;
            if (assetsAdapter2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("assetsAdapter");
                throw null;
            }
            assetsAdapter2.notifyDataSetChanged();
            updateDeleteBtn(true);
            return;
        }
        if (numValueOf != null && numValueOf.intValue() == R.id.delete_btn) {
            long size = 0;
            List<AssetsModel> list3 = this.list;
            if (list3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("list");
                throw null;
            }
            for (AssetsModel assetsModel : list3) {
                if (assetsModel.getSelected()) {
                    size += assetsModel.getSize();
                }
            }
            cleanAssets(size);
        }
    }

    /* compiled from: AssetsStorageFragment.kt */
    private final class AssetsAdapter extends PrefsAdapter {
        private final Tag FONTS_TAG;
        private final Tag MUSIC_TAG;
        private final Tag STICKER_TAG;
        private final Tag TEXT_TAG;
        private final List<AssetsModel> modelList;
        final /* synthetic */ AssetsStorageFragment this$0;

        @Override // com.narvii.list.prefs.PrefsAdapter, com.narvii.list.NVAdapter
        protected boolean supportNVTheme() {
            return true;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AssetsAdapter(AssetsStorageFragment assetsStorageFragment, NVContext nvContext, List<AssetsModel> modelList) {
            super(nvContext);
            Intrinsics.checkParameterIsNotNull(nvContext, "nvContext");
            Intrinsics.checkParameterIsNotNull(modelList, "modelList");
            this.this$0 = assetsStorageFragment;
            this.modelList = modelList;
            this.MUSIC_TAG = new Tag("music");
            this.FONTS_TAG = new Tag("fonts");
            this.TEXT_TAG = new Tag(MimeTypes.BASE_TYPE_TEXT);
            this.STICKER_TAG = new Tag("sticker");
        }

        public final List<AssetsModel> getModelList() {
            return this.modelList;
        }

        @Override // com.narvii.list.prefs.PrefsAdapter
        protected void buildCells(List<Object> list) {
            if (list != null) {
                list.add(this.MUSIC_TAG);
            }
            if (list != null) {
                Tag DIVIDER = PrefsAdapter.DIVIDER;
                Intrinsics.checkExpressionValueIsNotNull(DIVIDER, "DIVIDER");
                list.add(DIVIDER);
            }
            if (list != null) {
                list.add(this.FONTS_TAG);
            }
            if (list != null) {
                Tag DIVIDER2 = PrefsAdapter.DIVIDER;
                Intrinsics.checkExpressionValueIsNotNull(DIVIDER2, "DIVIDER");
                list.add(DIVIDER2);
            }
            if (list != null) {
                list.add(this.TEXT_TAG);
            }
            if (list != null) {
                Tag DIVIDER3 = PrefsAdapter.DIVIDER;
                Intrinsics.checkExpressionValueIsNotNull(DIVIDER3, "DIVIDER");
                list.add(DIVIDER3);
            }
            if (list != null) {
                list.add(this.STICKER_TAG);
            }
        }

        @Override // com.narvii.list.prefs.PrefsAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) throws Resources.NotFoundException {
            Object item = getItem(i);
            if (Intrinsics.areEqual(item, this.MUSIC_TAG)) {
                return setView(0, view, viewGroup);
            }
            if (Intrinsics.areEqual(item, this.FONTS_TAG)) {
                return setView(1, view, viewGroup);
            }
            if (Intrinsics.areEqual(item, this.TEXT_TAG)) {
                return setView(2, view, viewGroup);
            }
            if (Intrinsics.areEqual(item, this.STICKER_TAG)) {
                return setView(3, view, viewGroup);
            }
            View view2 = super.getView(i, view, viewGroup);
            Intrinsics.checkExpressionValueIsNotNull(view2, "super.getView(position, convertView, parent)");
            return view2;
        }

        private final View setView(int i, View view, ViewGroup viewGroup) {
            RelativeLayout view2 = (RelativeLayout) createView(R.layout.fragment_assets_storage_item, viewGroup, view);
            View viewFindViewById = view2.findViewById(R.id.title);
            Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "view.findViewById<TextView>(R.id.title)");
            ((TextView) viewFindViewById).setText(this.modelList.get(i).getTitle());
            View viewFindViewById2 = view2.findViewById(R.id.size);
            Intrinsics.checkExpressionValueIsNotNull(viewFindViewById2, "view.findViewById<TextView>(R.id.size)");
            ((TextView) viewFindViewById2).setText(this.this$0.calculateSize(this.modelList.get(i).getSize()));
            boolean selected = this.modelList.get(i).getSelected();
            View viewFindViewById3 = view2.findViewById(R.id.selected_img);
            Intrinsics.checkExpressionValueIsNotNull(viewFindViewById3, "view.findViewById<NVImageView>(R.id.selected_img)");
            ((NVImageView) viewFindViewById3).setVisibility(selected ? 0 : 4);
            View viewFindViewById4 = view2.findViewById(R.id.unselected_img);
            Intrinsics.checkExpressionValueIsNotNull(viewFindViewById4, "view.findViewById<NVImag…iew>(R.id.unselected_img)");
            ((NVImageView) viewFindViewById4).setVisibility(selected ? 4 : 0);
            view2.setOnClickListener(this.subviewClickListener);
            Intrinsics.checkExpressionValueIsNotNull(view2, "view");
            return view2;
        }

        @Override // com.narvii.list.prefs.PrefsAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (view2 != null) {
                if (Intrinsics.areEqual(obj, this.MUSIC_TAG)) {
                    this.this$0.updateList(0);
                } else if (Intrinsics.areEqual(obj, this.FONTS_TAG)) {
                    this.this$0.updateList(1);
                } else if (Intrinsics.areEqual(obj, this.TEXT_TAG)) {
                    this.this$0.updateList(2);
                } else if (Intrinsics.areEqual(obj, this.STICKER_TAG)) {
                    this.this$0.updateList(3);
                }
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateList(int i) {
        boolean z;
        List<AssetsModel> list = this.list;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("list");
            throw null;
        }
        int size = list.size();
        if (i >= 0 && size > i) {
            List<AssetsModel> list2 = this.list;
            if (list2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("list");
                throw null;
            }
            AssetsModel assetsModel = list2.get(i);
            if (this.list == null) {
                Intrinsics.throwUninitializedPropertyAccessException("list");
                throw null;
            }
            assetsModel.setSelected(!r3.get(i).getSelected());
            AssetsAdapter assetsAdapter = this.assetsAdapter;
            if (assetsAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("assetsAdapter");
                throw null;
            }
            assetsAdapter.notifyDataSetChanged();
            List<AssetsModel> list3 = this.list;
            if (list3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("list");
                throw null;
            }
            boolean z2 = true;
            while (true) {
                for (AssetsModel assetsModel2 : list3) {
                    z2 = z2 && assetsModel2.getSelected();
                    z = z || assetsModel2.getSelected();
                }
                updateSelectAllView(z2);
                updateDeleteBtn(z);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateDeleteBtn(boolean z) {
        if (z) {
            AppCompatButton appCompatButton = this.deleteBtn;
            if (appCompatButton != null) {
                appCompatButton.setBackgroundResource(R.drawable.assets_storage_delete_bg);
                return;
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("deleteBtn");
                throw null;
            }
        }
        AppCompatButton appCompatButton2 = this.deleteBtn;
        if (appCompatButton2 != null) {
            appCompatButton2.setBackgroundResource(R.drawable.assets_storage_delete_disabled_bg);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("deleteBtn");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateSelectAllView(boolean z) {
        if (z) {
            NVImageView nVImageView = this.selectAllImg;
            if (nVImageView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("selectAllImg");
                throw null;
            }
            nVImageView.setVisibility(0);
            NVImageView nVImageView2 = this.unSelectAllImg;
            if (nVImageView2 != null) {
                nVImageView2.setVisibility(4);
                return;
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("unSelectAllImg");
                throw null;
            }
        }
        NVImageView nVImageView3 = this.selectAllImg;
        if (nVImageView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("selectAllImg");
            throw null;
        }
        nVImageView3.setVisibility(4);
        NVImageView nVImageView4 = this.unSelectAllImg;
        if (nVImageView4 != null) {
            nVImageView4.setVisibility(0);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("unSelectAllImg");
            throw null;
        }
    }

    private final void cleanAssets(long j) {
        ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
        actionSheetDialog.setTitle(getString(R.string.settings_clear_cache_message, calculateSize(j)));
        actionSheetDialog.addItem(R.string.delete, 1);
        actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.prefs.AssetsStorageFragment.cleanAssets.1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                for (AssetsModel assetsModel : AssetsStorageFragment.access$getList$p(AssetsStorageFragment.this)) {
                    if (assetsModel.getSelected()) {
                        assetsModel.getClearCache().invoke();
                        assetsModel.setSelected(false);
                        assetsModel.setSize(0L);
                    }
                }
                NVToast.makeText(AssetsStorageFragment.this.getContext(), R.string.success, 0).show();
                AssetsStorageFragment.access$getAssetsAdapter$p(AssetsStorageFragment.this).notifyDataSetChanged();
                AssetsStorageFragment.this.updateSelectAllView(false);
                AssetsStorageFragment.this.updateDeleteBtn(false);
            }
        });
        actionSheetDialog.show();
    }

    /* compiled from: AssetsStorageFragment.kt */
    public static final class AssetsModel {
        private final Function0<Unit> clearCache;
        private boolean selected;
        private long size;
        private final String title;

        public static /* synthetic */ AssetsModel copy$default(AssetsModel assetsModel, String str, long j, boolean z, Function0 function0, int i, Object obj) {
            if ((i & 1) != 0) {
                str = assetsModel.title;
            }
            if ((i & 2) != 0) {
                j = assetsModel.size;
            }
            long j2 = j;
            if ((i & 4) != 0) {
                z = assetsModel.selected;
            }
            boolean z2 = z;
            if ((i & 8) != 0) {
                function0 = assetsModel.clearCache;
            }
            return assetsModel.copy(str, j2, z2, function0);
        }

        public final String component1() {
            return this.title;
        }

        public final long component2() {
            return this.size;
        }

        public final boolean component3() {
            return this.selected;
        }

        public final Function0<Unit> component4() {
            return this.clearCache;
        }

        public final AssetsModel copy(String title, long j, boolean z, Function0<Unit> clearCache) {
            Intrinsics.checkParameterIsNotNull(title, "title");
            Intrinsics.checkParameterIsNotNull(clearCache, "clearCache");
            return new AssetsModel(title, j, z, clearCache);
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof AssetsModel) {
                    AssetsModel assetsModel = (AssetsModel) obj;
                    if (Intrinsics.areEqual(this.title, assetsModel.title)) {
                        if (this.size == assetsModel.size) {
                            if (!(this.selected == assetsModel.selected) || !Intrinsics.areEqual(this.clearCache, assetsModel.clearCache)) {
                            }
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
            int iHashCode = str != null ? str.hashCode() : 0;
            long j = this.size;
            int i = ((iHashCode * 31) + ((int) (j ^ (j >>> 32)))) * 31;
            boolean z = this.selected;
            int i2 = z;
            if (z != 0) {
                i2 = 1;
            }
            int i3 = (i + i2) * 31;
            Function0<Unit> function0 = this.clearCache;
            return i3 + (function0 != null ? function0.hashCode() : 0);
        }

        public String toString() {
            return "AssetsModel(title=" + this.title + ", size=" + this.size + ", selected=" + this.selected + ", clearCache=" + this.clearCache + ")";
        }

        public AssetsModel(String title, long j, boolean z, Function0<Unit> clearCache) {
            Intrinsics.checkParameterIsNotNull(title, "title");
            Intrinsics.checkParameterIsNotNull(clearCache, "clearCache");
            this.title = title;
            this.size = j;
            this.selected = z;
            this.clearCache = clearCache;
        }

        public final String getTitle() {
            return this.title;
        }

        public final long getSize() {
            return this.size;
        }

        public final void setSize(long j) {
            this.size = j;
        }

        public /* synthetic */ AssetsModel(String str, long j, boolean z, Function0 function0, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? 0L : j, (i & 4) != 0 ? false : z, function0);
        }

        public final boolean getSelected() {
            return this.selected;
        }

        public final void setSelected(boolean z) {
            this.selected = z;
        }

        public final Function0<Unit> getClearCache() {
            return this.clearCache;
        }
    }

    /* compiled from: AssetsStorageFragment.kt */
    public final class StorageAsyncTask extends AsyncTask<Void, Void, long[]> {
        public StorageAsyncTask() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public long[] doInBackground(Void... params) {
            Intrinsics.checkParameterIsNotNull(params, "params");
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
        public void onPostExecute(long[] jArr) {
            if (jArr != null) {
                int i = 0;
                for (Object obj : AssetsStorageFragment.access$getList$p(AssetsStorageFragment.this)) {
                    int i2 = i + 1;
                    if (i >= 0) {
                        ((AssetsModel) obj).setSize(jArr[i]);
                        i = i2;
                    } else {
                        CollectionsKt.throwIndexOverflow();
                        throw null;
                    }
                }
                AssetsStorageFragment.access$getAssetsAdapter$p(AssetsStorageFragment.this).notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String calculateSize(long j) {
        long j2 = 1024;
        long j3 = j / j2;
        if (j3 < 1000) {
            return j3 + "KB";
        }
        return (j3 / j2) + "MB";
    }
}
