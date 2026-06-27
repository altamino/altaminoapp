package com.narvii.media;

import android.content.DialogInterface;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.view.ViewCompat;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.app.FragmentWillFinishListener;
import com.narvii.app.NVActivity;
import com.narvii.config.ConfigService;
import com.narvii.lib.R;
import com.narvii.list.DivideColumnAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.media.giphy.GiphyItem;
import com.narvii.media.giphy.GiphyListResponse;
import com.narvii.util.JacksonUtils;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressHorizontalDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.NVImageView;
import com.narvii.widget.SearchBar;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import pl.droidsonroids.gif.GifDrawable;
import tv.danmaku.ijk.media.player.IjkMediaPlayer;

/* loaded from: classes3.dex */
public class GiphyPickerFragment extends NVListFragment implements FragmentWillFinishListener {
    Adapter adapter;
    boolean chooseSticker;
    View listFrame;
    int maxLen;
    Button pickButton;
    ArrayList<String> selections;
    View titleView;
    int width;

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getActivity().getWindow().setSoftInputMode(4);
        this.maxLen = ((ConfigService) getService("config")).getInt("maxUploadImagePayloadLength", 6291456);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.width = Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels) / 3;
        this.chooseSticker = getBooleanParam("chooseSticker");
        if (bundle == null) {
            this.selections = JacksonUtils.readListAs(getStringParam("images"), String.class);
        } else {
            this.selections = JacksonUtils.readListAs(bundle.getString("images"), String.class);
        }
    }

    @Override // com.narvii.app.NVFragment
    protected Drawable getActionBarCustomDrawable() {
        return new ColorDrawable(ViewCompat.MEASURED_STATE_MASK);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onActivityCreated(bundle);
        this.titleView = getLayoutInflater(null).inflate(R.layout.media_giphy_picker_title, (ViewGroup) null);
        setActionBarTitleView(this.titleView);
        try {
            ((ImageView) this.titleView.findViewById(R.id.icon)).setImageDrawable(new GifDrawable(getResources().getAssets(), "giphy_logo.gif"));
        } catch (Exception unused) {
        }
        View viewInflate = getLayoutInflater(null).inflate(R.layout.media_image_picker_button, (ViewGroup) null);
        setActionBarRightView(viewInflate);
        this.pickButton = (Button) viewInflate.findViewById(R.id.pick_image);
        this.pickButton.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.media.GiphyPickerFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                GiphyPickerFragment.this.pick();
            }
        });
        ((TextView) this.titleView.findViewById(R.id.title)).setText(this.chooseSticker ? R.string.media_image_sticker : R.string.media_image_giphy);
        update();
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.media_giphy_picker, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        this.listFrame = view.findViewById(R.id.list_frame);
        getListView().setDivider(null);
        getListView().setDividerHeight(0);
        ((SearchBar) view.findViewById(R.id.search)).setOnSearchListener(new SearchBar.OnSearchListener() { // from class: com.narvii.media.GiphyPickerFragment.2
            @Override // com.narvii.widget.SearchBar.OnSearchListener
            public void onTextChanged(SearchBar searchBar, String str) {
                if (TextUtils.isEmpty(str)) {
                    GiphyPickerFragment giphyPickerFragment = GiphyPickerFragment.this;
                    if (giphyPickerFragment.chooseSticker) {
                        Adapter adapter = giphyPickerFragment.adapter;
                        adapter.keyword = str;
                        adapter.resetList();
                        GiphyPickerFragment giphyPickerFragment2 = GiphyPickerFragment.this;
                        giphyPickerFragment2.selections = null;
                        giphyPickerFragment2.update();
                    }
                }
            }

            @Override // com.narvii.widget.SearchBar.OnSearchListener
            public void onSearch(SearchBar searchBar, String str) {
                Adapter adapter = GiphyPickerFragment.this.adapter;
                adapter.keyword = str;
                adapter.resetList();
                GiphyPickerFragment giphyPickerFragment = GiphyPickerFragment.this;
                giphyPickerFragment.selections = null;
                giphyPickerFragment.update();
            }
        });
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("images", JacksonUtils.safeWriteAsString(this.selections));
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.adapter = new Adapter();
        this.adapter.keyword = getStringParam("keyword");
        DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this);
        divideColumnAdapter.setAdapter(this.adapter, 3);
        return divideColumnAdapter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void pick() {
        ArrayList<String> arrayList = this.selections;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        ArrayList arrayList2 = new ArrayList();
        List<? extends GiphyItem> listRawList = this.adapter.rawList();
        Iterator<String> it = this.selections.iterator();
        while (it.hasNext()) {
            int iIndexOfId = Utils.indexOfId(listRawList, it.next());
            if (iIndexOfId != -1) {
                arrayList2.add(listRawList.get(iIndexOfId));
            }
        }
        ProgressHorizontalDialog progressHorizontalDialog = new ProgressHorizontalDialog(getContext());
        progressHorizontalDialog.setText(R.string.downlading_from_giphy);
        progressHorizontalDialog.show();
        final AnonymousClass3 anonymousClass3 = new AnonymousClass3(progressHorizontalDialog, arrayList2);
        anonymousClass3.start();
        progressHorizontalDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.media.GiphyPickerFragment.4
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                anonymousClass3.interrupt();
            }
        });
    }

    /* renamed from: com.narvii.media.GiphyPickerFragment$3, reason: invalid class name */
    class AnonymousClass3 extends Thread {
        float p;
        final /* synthetic */ ProgressHorizontalDialog val$dlg;
        final /* synthetic */ ArrayList val$list;

        AnonymousClass3(ProgressHorizontalDialog progressHorizontalDialog, ArrayList arrayList) {
            this.val$dlg = progressHorizontalDialog;
            this.val$list = arrayList;
        }

        /* JADX WARN: Code restructure failed: missing block: B:32:0x00fa, code lost:
        
            r15 = r6;
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x00fb, code lost:
        
            r13.close();
            r4.close();
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x0105, code lost:
        
            if (r14.renameTo(r11) == false) goto L97;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x0107, code lost:
        
            r0.add(r11.getAbsolutePath());
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x010e, code lost:
        
            r8 = r14;
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x0140, code lost:
        
            throw new java.lang.Exception("fail to move " + r14 + " to " + r11);
         */
        /* JADX WARN: Removed duplicated region for block: B:101:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:69:0x017c A[Catch: all -> 0x018d, TRY_LEAVE, TryCatch #9 {all -> 0x018d, blocks: (B:5:0x0030, B:16:0x0071, B:67:0x0171, B:69:0x017c), top: B:84:0x0030 }] */
        /* JADX WARN: Removed duplicated region for block: B:78:0x0195  */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() throws java.lang.Throwable {
            /*
                Method dump skipped, instructions count: 411
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.narvii.media.GiphyPickerFragment.AnonymousClass3.run():void");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isRunning() {
            return (Thread.interrupted() || GiphyPickerFragment.this.isDestoryed() || !this.val$dlg.isShowing()) ? false : true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void update() {
        ArrayList<String> arrayList = this.selections;
        int i = 0;
        int size = arrayList == null ? 0 : arrayList.size();
        this.pickButton.setEnabled(size > 0);
        String string = getString(R.string.pick);
        if (size > 0) {
            string = string + " (" + size + ")";
        }
        this.pickButton.setText(string);
        boolean z = !TextUtils.isEmpty(this.adapter.keyword);
        this.titleView.findViewById(R.id.icon).setVisibility(z ? 0 : 8);
        this.titleView.findViewById(R.id.title).setVisibility(z ? 8 : 0);
        View view = this.listFrame;
        if (!z && !this.chooseSticker) {
            i = 4;
        }
        view.setVisibility(i);
    }

    @Override // com.narvii.app.FragmentWillFinishListener
    public void willFinish(NVActivity nVActivity) {
        SoftKeyboard.hideSoftKeyboard(getContext());
    }

    private class Adapter extends NVPagedAdapter<GiphyItem, GiphyListResponse> {
        String keyword;
        int start;

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemType(Object obj) {
            return 0;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemTypeCount() {
            return 1;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int pageSize() {
            return 25;
        }

        public Adapter() {
            super(GiphyPickerFragment.this, -1);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            String string = ((ConfigService) getService("config")).getString("giphyApiKey", "12ss5TcLvRjUze");
            if (TextUtils.isEmpty(this.keyword)) {
                if (!GiphyPickerFragment.this.chooseSticker) {
                    return null;
                }
                ApiRequest.Builder builder_url = ApiRequest.builder()._url("https://api.giphy.com/v1/stickers/trending");
                builder_url.param("api_key", string);
                builder_url.param(IjkMediaPlayer.OnNativeInvokeListener.ARG_OFFSET, Integer.valueOf(z ? 0 : this.start));
                builder_url.param("limit", Integer.valueOf(pageSize()));
                builder_url.tag("fromStart", Boolean.valueOf(z));
                return builder_url.build();
            }
            String str = GiphyPickerFragment.this.chooseSticker ? "stickers" : "gifs";
            ApiRequest.Builder builder_url2 = ApiRequest.builder()._url("https://api.giphy.com/v1/" + str + "/search");
            builder_url2.param("q", this.keyword);
            builder_url2.param("api_key", string);
            builder_url2.param(IjkMediaPlayer.OnNativeInvokeListener.ARG_OFFSET, Integer.valueOf(z ? 0 : this.start));
            builder_url2.param("limit", Integer.valueOf(pageSize()));
            builder_url2.tag("fromStart", Boolean.valueOf(z));
            return builder_url2.build();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, GiphyListResponse giphyListResponse, int i) {
            Collections.shuffle(giphyListResponse.data, new Random(System.currentTimeMillis()));
            super.onPageResponse(apiRequest, (ApiRequest) giphyListResponse, i);
            if (apiRequest.tag("fromStart") == Boolean.TRUE) {
                this.start = 0;
            }
            this.start += pageSize();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class responseType() {
            return GiphyListResponse.class;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<GiphyItem> dataType() {
            return GiphyItem.class;
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
        public int getCount() {
            if (!TextUtils.isEmpty(this.keyword) || GiphyPickerFragment.this.chooseSticker) {
                return super.getCount();
            }
            return 0;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public boolean isListShown() {
            if (!TextUtils.isEmpty(this.keyword) || GiphyPickerFragment.this.chooseSticker) {
                return super.isListShown();
            }
            return true;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            if (!(obj instanceof GiphyItem)) {
                return null;
            }
            GiphyItem giphyItem = (GiphyItem) obj;
            View viewCreateView = createView(R.layout.media_image_grid, viewGroup, view);
            viewCreateView.setPadding(0, 0, 1, 1);
            viewCreateView.getLayoutParams().width = GiphyPickerFragment.this.width;
            viewCreateView.getLayoutParams().height = GiphyPickerFragment.this.width;
            NVImageView nVImageView = (NVImageView) viewCreateView.findViewById(R.id.image);
            nVImageView.setScaleType(GiphyPickerFragment.this.chooseSticker ? ImageView.ScaleType.FIT_CENTER : ImageView.ScaleType.CENTER_CROP);
            nVImageView.setImageUrl(giphyItem.thumbUrl());
            ArrayList<String> arrayList = GiphyPickerFragment.this.selections;
            ((ImageView) viewCreateView.findViewById(R.id.select)).setImageResource(arrayList != null ? arrayList.contains(giphyItem.id()) : false ? R.drawable.ic_media_selected : R.drawable.ic_media_not_selected);
            return viewCreateView;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x001f  */
        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean onItemClick(android.widget.ListAdapter r5, int r6, java.lang.Object r7, android.view.View r8, android.view.View r9) {
            /*
                r4 = this;
                boolean r0 = r7 instanceof com.narvii.media.giphy.GiphyItem
                if (r0 == 0) goto Lec
                com.narvii.media.giphy.GiphyItem r7 = (com.narvii.media.giphy.GiphyItem) r7
                com.narvii.media.GiphyPickerFragment r5 = com.narvii.media.GiphyPickerFragment.this
                java.lang.String r6 = "maximum"
                int r5 = r5.getIntParam(r6)
                java.lang.String r6 = "single"
                r8 = 1
                if (r5 == r8) goto L1f
                com.narvii.media.GiphyPickerFragment r9 = com.narvii.media.GiphyPickerFragment.this
                java.util.ArrayList<java.lang.String> r0 = r9.selections
                if (r0 == 0) goto L1f
                boolean r9 = r9.getBooleanParam(r6)
                if (r9 == 0) goto L28
            L1f:
                com.narvii.media.GiphyPickerFragment r9 = com.narvii.media.GiphyPickerFragment.this
                java.util.ArrayList r0 = new java.util.ArrayList
                r0.<init>()
                r9.selections = r0
            L28:
                com.narvii.media.GiphyPickerFragment r9 = com.narvii.media.GiphyPickerFragment.this
                java.util.ArrayList<java.lang.String> r9 = r9.selections
                java.lang.String r0 = r7.id()
                boolean r9 = r9.remove(r0)
                if (r9 != 0) goto Ld5
                com.narvii.media.GiphyPickerFragment r9 = com.narvii.media.GiphyPickerFragment.this
                int r9 = r9.maxLen
                com.narvii.media.giphy.GiphyImage r9 = r7.fullsizeImage(r9)
                if (r9 == 0) goto Lc7
                int r0 = r9.size
                com.narvii.media.GiphyPickerFragment r1 = com.narvii.media.GiphyPickerFragment.this
                int r2 = r1.maxLen
                if (r0 <= r2) goto L4a
                goto Lc7
            L4a:
                java.lang.String r0 = "minWidth"
                int r0 = r1.getIntParam(r0)
                com.narvii.media.GiphyPickerFragment r1 = com.narvii.media.GiphyPickerFragment.this
                java.lang.String r2 = "minHeight"
                int r1 = r1.getIntParam(r2)
                r2 = 0
                if (r9 == 0) goto L79
                if (r0 <= 0) goto L63
                int r3 = r9.width
                if (r3 <= 0) goto L63
                if (r3 < r0) goto L6b
            L63:
                if (r1 <= 0) goto L79
                int r9 = r9.height
                if (r9 <= 0) goto L79
                if (r9 >= r1) goto L79
            L6b:
                android.content.Context r5 = r4.getContext()
                int r6 = com.narvii.lib.R.string.media_image_picker_image_too_small
                com.narvii.util.NVToast r5 = com.narvii.util.NVToast.makeText(r5, r6, r2)
                r5.show()
                return r8
            L79:
                if (r5 <= 0) goto Lbb
                com.narvii.media.GiphyPickerFragment r9 = com.narvii.media.GiphyPickerFragment.this
                java.util.ArrayList<java.lang.String> r9 = r9.selections
                int r9 = r9.size()
                if (r9 < r5) goto Lbb
                com.narvii.media.GiphyPickerFragment r7 = com.narvii.media.GiphyPickerFragment.this
                java.lang.String r9 = "maxStr"
                java.lang.String r7 = r7.getStringParam(r9)
                boolean r9 = android.text.TextUtils.isEmpty(r7)
                if (r9 == 0) goto Laf
                android.content.Context r7 = r4.getContext()
                com.narvii.media.GiphyPickerFragment r9 = com.narvii.media.GiphyPickerFragment.this
                int r0 = com.narvii.lib.R.string.media_image_picker_hit_max_count
                java.lang.Object[] r1 = new java.lang.Object[r8]
                java.lang.Integer r5 = java.lang.Integer.valueOf(r5)
                r1[r2] = r5
                java.lang.String r5 = r9.getString(r0, r1)
                com.narvii.util.NVToast r5 = com.narvii.util.NVToast.makeText(r7, r5, r2)
                r5.show()
                goto Ld5
            Laf:
                android.content.Context r5 = r4.getContext()
                com.narvii.util.NVToast r5 = com.narvii.util.NVToast.makeText(r5, r7, r2)
                r5.show()
                goto Ld5
            Lbb:
                com.narvii.media.GiphyPickerFragment r5 = com.narvii.media.GiphyPickerFragment.this
                java.util.ArrayList<java.lang.String> r5 = r5.selections
                java.lang.String r7 = r7.id()
                r5.add(r7)
                goto Ld5
            Lc7:
                android.content.Context r5 = r4.getContext()
                int r6 = com.narvii.lib.R.string.media_image_picker_file_too_large
                com.narvii.util.NVToast r5 = com.narvii.util.NVToast.makeText(r5, r6, r8)
                r5.show()
                return r8
            Ld5:
                com.narvii.media.GiphyPickerFragment r5 = com.narvii.media.GiphyPickerFragment.this
                boolean r5 = r5.getBooleanParam(r6)
                if (r5 == 0) goto Le3
                com.narvii.media.GiphyPickerFragment r5 = com.narvii.media.GiphyPickerFragment.this
                com.narvii.media.GiphyPickerFragment.access$000(r5)
                goto Leb
            Le3:
                r4.notifyDataSetChanged()
                com.narvii.media.GiphyPickerFragment r5 = com.narvii.media.GiphyPickerFragment.this
                com.narvii.media.GiphyPickerFragment.access$100(r5)
            Leb:
                return r8
            Lec:
                boolean r5 = super.onItemClick(r5, r6, r7, r8, r9)
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: com.narvii.media.GiphyPickerFragment.Adapter.onItemClick(android.widget.ListAdapter, int, java.lang.Object, android.view.View, android.view.View):boolean");
        }
    }
}
