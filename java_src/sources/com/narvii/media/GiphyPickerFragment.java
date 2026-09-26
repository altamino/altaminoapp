package com.narvii.media;

import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.view.ViewCompat;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import com.narvii.app.FragmentWillFinishListener;
import com.narvii.app.NVActivity;
import com.narvii.config.ConfigService;
import com.narvii.lib.R;
import com.narvii.list.DivideColumnAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.media.giphy.GiphyImage;
import com.narvii.media.giphy.GiphyItem;
import com.narvii.media.giphy.GiphyListResponse;
import com.narvii.model.Media;
import com.narvii.photos.PhotoManager;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressHorizontalDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.NVImageView;
import com.narvii.widget.SearchBar;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: classes4.dex */
public class GiphyPickerFragment extends NVListFragment implements FragmentWillFinishListener {
    Adapter adapter;
    boolean chooseSticker;
    View listFrame;
    int maxLen;
    Button pickButton;
    ArrayList<String> selections;
    View titleView;
    int width;

    /* JADX INFO: renamed from: com.narvii.media.GiphyPickerFragment$3, reason: invalid class name */
    class AnonymousClass3 extends Thread {
        float p;
        final /* synthetic */ ProgressHorizontalDialog val$dlg;
        final /* synthetic */ ArrayList val$list;

        AnonymousClass3(ProgressHorizontalDialog progressHorizontalDialog, ArrayList arrayList) {
            this.val$dlg = progressHorizontalDialog;
            this.val$list = arrayList;
        }

        /* JADX WARN: Code duplicated, block: B:107:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:77:0x0194 A[Catch: all -> 0x007b, TRY_LEAVE, TryCatch #11 {all -> 0x007b, blocks: (B:16:0x006f, B:75:0x0189, B:77:0x0194), top: B:86:0x006f }] */
        /* JADX WARN: Code duplicated, block: B:84:0x01a8  */
        @Override // java.lang.Thread, java.lang.Runnable
        public void run() throws Throwable {
            File file;
            File file2;
            Iterator it;
            File file3 = new File(Utils.getAvailableCacheDir(GiphyPickerFragment.this.getContext()), "giphy");
            file3.mkdirs();
            final ArrayList arrayList = new ArrayList();
            Runnable runnable = new Runnable() { // from class: com.narvii.media.GiphyPickerFragment.3.1
                @Override // java.lang.Runnable
                public void run() {
                    AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                    anonymousClass3.val$dlg.setProgress((int) (anonymousClass3.p * 100.0f));
                }
            };
            FileOutputStream fileOutputStream = null;
            try {
                int size = this.val$list.size();
                Iterator it2 = this.val$list.iterator();
                int i10 = 0;
                file = null;
                int i11 = 0;
                try {
                    while (it2.hasNext()) {
                        try {
                            try {
                                GiphyItem giphyItem = (GiphyItem) it2.next();
                                if (!isRunning()) {
                                    Utils.safeClose(fileOutputStream);
                                    if (file != null) {
                                        file.delete();
                                        return;
                                    }
                                    return;
                                }
                                File file4 = new File(file3, giphyItem.id() + ".gif");
                                if (file4.length() > 0) {
                                    try {
                                        try {
                                            arrayList.add(file4.getAbsolutePath());
                                            file2 = file3;
                                            it = it2;
                                        } catch (Exception e) {
                                            e = e;
                                            Log.w("fail to download from giphy", e);
                                            if (isRunning()) {
                                                Utils.post(new Runnable() { // from class: com.narvii.media.GiphyPickerFragment.3.3
                                                    @Override // java.lang.Runnable
                                                    public void run() {
                                                        AnonymousClass3.this.val$dlg.dismiss();
                                                        NVToast.makeText(GiphyPickerFragment.this.getContext(), R.string.normal_error, 0).show();
                                                    }
                                                });
                                            }
                                            Utils.safeClose(fileOutputStream);
                                            if (file == null) {
                                                return;
                                            }
                                            file.delete();
                                        }
                                    } catch (Throwable th) {
                                        th = th;
                                        Utils.safeClose(fileOutputStream);
                                        if (file != null) {
                                            file.delete();
                                        }
                                        throw th;
                                    }
                                } else {
                                    GiphyImage giphyImageFullsizeImage = giphyItem.fullsizeImage(GiphyPickerFragment.this.maxLen);
                                    InputStream inputStream = ((URLConnection) FirebasePerfUrlConnection.instrument(new URL(giphyImageFullsizeImage.url).openConnection())).getInputStream();
                                    File file5 = new File(file3, "." + giphyItem.id());
                                    try {
                                        fileOutputStream = new FileOutputStream(file5);
                                        try {
                                            byte[] bArr = new byte[4096];
                                            int i12 = giphyImageFullsizeImage.size;
                                            int i13 = i10;
                                            while (true) {
                                                int i14 = inputStream.read(bArr);
                                                file2 = file3;
                                                if (i14 == -1) {
                                                    it = it2;
                                                    inputStream.close();
                                                    fileOutputStream.close();
                                                    if (file5.renameTo(file4)) {
                                                        arrayList.add(file4.getAbsolutePath());
                                                        file = file5;
                                                        break;
                                                    }
                                                    throw new Exception("fail to move " + file5 + " to " + file4);
                                                }
                                                fileOutputStream.write(bArr, i10, i14);
                                                i13 += i14;
                                                float f = size;
                                                float f6 = ((i11 * 1.0f) / f) + (((1.0f / f) * i13) / i12);
                                                Iterator it3 = it2;
                                                if (f6 - this.p > 0.02d) {
                                                    this.p = f6;
                                                    Utils.post(runnable);
                                                }
                                                if (isInterrupted()) {
                                                    Utils.safeClose(fileOutputStream);
                                                    file5.delete();
                                                    return;
                                                } else {
                                                    it2 = it3;
                                                    file3 = file2;
                                                    i10 = 0;
                                                }
                                                Log.w("fail to download from giphy", e);
                                                if (isRunning()) {
                                                    Utils.post(new Runnable() { // from class: com.narvii.media.GiphyPickerFragment.3.3
                                                        @Override // java.lang.Runnable
                                                        public void run() {
                                                            AnonymousClass3.this.val$dlg.dismiss();
                                                            NVToast.makeText(GiphyPickerFragment.this.getContext(), R.string.normal_error, 0).show();
                                                        }
                                                    });
                                                }
                                                Utils.safeClose(fileOutputStream);
                                                if (file == null) {
                                                    return;
                                                }
                                                file.delete();
                                            }
                                        } catch (Exception e2) {
                                            e = e2;
                                            file = file5;
                                        } catch (Throwable th2) {
                                            th = th2;
                                            file = file5;
                                            Utils.safeClose(fileOutputStream);
                                            if (file != null) {
                                                file.delete();
                                            }
                                            throw th;
                                        }
                                    } catch (Exception e6) {
                                        e = e6;
                                        file = file5;
                                        fileOutputStream = null;
                                    } catch (Throwable th3) {
                                        th = th3;
                                        file = file5;
                                        fileOutputStream = null;
                                        Utils.safeClose(fileOutputStream);
                                        if (file != null) {
                                            file.delete();
                                        }
                                        throw th;
                                    }
                                }
                                i11++;
                                this.p = (i11 * 1.0f) / size;
                                Utils.post(runnable);
                                it2 = it;
                                file3 = file2;
                                fileOutputStream = null;
                                i10 = 0;
                            } catch (Exception e7) {
                                e = e7;
                            } catch (Throwable th4) {
                                th = th4;
                            }
                        } catch (Exception e10) {
                            e = e10;
                        } catch (Throwable th5) {
                            th = th5;
                        }
                    }
                    Utils.post(new Runnable() { // from class: com.narvii.media.GiphyPickerFragment.3.2
                        @Override // java.lang.Runnable
                        public void run() {
                            if (AnonymousClass3.this.isRunning()) {
                                AnonymousClass3.this.val$dlg.dismiss();
                                PhotoManager photoManager = (PhotoManager) GiphyPickerFragment.this.getService("photo");
                                ArrayList arrayList2 = arrayList;
                                if (arrayList2 == null || arrayList2.size() <= 0) {
                                    return;
                                }
                                ArrayList arrayList3 = new ArrayList();
                                for (String str : arrayList) {
                                    try {
                                        String strImportPhoto = photoManager.importPhoto((File) GiphyPickerFragment.this.getActivity().getIntent().getExtras().getSerializable("dir"), Uri.fromFile(new File(str)));
                                        Media media = new Media();
                                        media.type = 100;
                                        media.url = strImportPhoto;
                                        arrayList3.add(media);
                                    } catch (Exception e11) {
                                        Log.w("fail to import image from " + str, e11);
                                    }
                                }
                                if (arrayList3.size() > 0) {
                                    String stringParam = GiphyPickerFragment.this.getStringParam("pickCallback");
                                    if (stringParam == null) {
                                        Intent intent = new Intent();
                                        intent.putExtra("mediaList", JacksonUtils.writeAsString(arrayList3));
                                        GiphyPickerFragment.this.setResult(-1, intent);
                                        GiphyPickerFragment.this.finish();
                                        return;
                                    }
                                    MediaPickCallbackManager mediaPickCallbackManager = (MediaPickCallbackManager) GiphyPickerFragment.this.getService("mediaPickCallback");
                                    MediaPickCallback callback = mediaPickCallbackManager == null ? null : mediaPickCallbackManager.getCallback(stringParam);
                                    if (callback == null) {
                                        return;
                                    }
                                    HashMap<String, Object> map = (HashMap) GiphyPickerFragment.this.getActivity().getIntent().getExtras().getSerializable("pickCallbackParams");
                                    if (map == null) {
                                        map = new HashMap<>();
                                    }
                                    map.put("mediaList", JacksonUtils.writeAsString(arrayList3));
                                    map.put(MediaPickerFragment.PICK_SOURCE, "Giphy");
                                    callback.onPick(map, (NVActivity) GiphyPickerFragment.this.getActivity(), true);
                                }
                            }
                        }
                    });
                    Utils.safeClose((OutputStream) null);
                    if (file == null) {
                        return;
                    }
                } catch (Exception e11) {
                    e = e11;
                    fileOutputStream = null;
                    Log.w("fail to download from giphy", e);
                    if (isRunning()) {
                        Utils.post(new Runnable() { // from class: com.narvii.media.GiphyPickerFragment.3.3
                            @Override // java.lang.Runnable
                            public void run() {
                                AnonymousClass3.this.val$dlg.dismiss();
                                NVToast.makeText(GiphyPickerFragment.this.getContext(), R.string.normal_error, 0).show();
                            }
                        });
                    }
                    Utils.safeClose(fileOutputStream);
                    if (file == null) {
                        return;
                    }
                } catch (Throwable th6) {
                    th = th6;
                    fileOutputStream = null;
                    Utils.safeClose(fileOutputStream);
                    if (file != null) {
                        file.delete();
                    }
                    throw th;
                }
            } catch (Exception e12) {
                e = e12;
                file = null;
            } catch (Throwable th7) {
                th = th7;
                file = null;
            }
            file.delete();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isRunning() {
            if (!Thread.interrupted() && !GiphyPickerFragment.this.isDestoryed() && this.val$dlg.isShowing()) {
                return true;
            }
            return false;
        }
    }

    private class Adapter extends NVPagedAdapter<GiphyItem, GiphyListResponse> {
        String keyword;
        int start;

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<GiphyItem> dataType() {
            return GiphyItem.class;
        }

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

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class responseType() {
            return GiphyListResponse.class;
        }

        public Adapter() {
            super(GiphyPickerFragment.this, -1);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            String string = ((ConfigService) getService("config")).getString("giphyApiKey", "12ss5TcLvRjUze");
            if (TextUtils.isEmpty(this.keyword)) {
                if (!GiphyPickerFragment.this.chooseSticker) {
                    return null;
                }
                ApiRequest.Builder builder_url = ApiRequest.builder()._url("https://api.giphy.com/v1/stickers/trending");
                builder_url.param("api_key", string);
                builder_url.param(TypedValues.CycleType.S_WAVE_OFFSET, Integer.valueOf(z6 ? 0 : this.start));
                builder_url.param("limit", Integer.valueOf(pageSize()));
                builder_url.tag("fromStart", Boolean.valueOf(z6));
                return builder_url.build();
            }
            String str = GiphyPickerFragment.this.chooseSticker ? "stickers" : "gifs";
            ApiRequest.Builder builder_url2 = ApiRequest.builder()._url("https://api.giphy.com/v1/" + str + "/search");
            builder_url2.param("q", this.keyword);
            builder_url2.param("api_key", string);
            builder_url2.param(TypedValues.CycleType.S_WAVE_OFFSET, Integer.valueOf(z6 ? 0 : this.start));
            builder_url2.param("limit", Integer.valueOf(pageSize()));
            builder_url2.tag("fromStart", Boolean.valueOf(z6));
            return builder_url2.build();
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
        public int getCount() {
            if (!TextUtils.isEmpty(this.keyword) || GiphyPickerFragment.this.chooseSticker) {
                return super.getCount();
            }
            return 0;
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

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public boolean isListShown() {
            if (!TextUtils.isEmpty(this.keyword) || GiphyPickerFragment.this.chooseSticker) {
                return super.isListShown();
            }
            return true;
        }

        /* JADX WARN: Code duplicated, block: B:10:0x001f  */
        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            int i11;
            int i12;
            if (!(obj instanceof GiphyItem)) {
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }
            GiphyItem giphyItem = (GiphyItem) obj;
            int intParam = GiphyPickerFragment.this.getIntParam("maximum");
            if (intParam != 1) {
                GiphyPickerFragment giphyPickerFragment = GiphyPickerFragment.this;
                if (giphyPickerFragment.selections == null || giphyPickerFragment.getBooleanParam("single")) {
                    GiphyPickerFragment.this.selections = new ArrayList<>();
                }
            } else {
                GiphyPickerFragment.this.selections = new ArrayList<>();
            }
            if (!GiphyPickerFragment.this.selections.remove(giphyItem.id())) {
                GiphyImage giphyImageFullsizeImage = giphyItem.fullsizeImage(GiphyPickerFragment.this.maxLen);
                if (giphyImageFullsizeImage != null) {
                    int i13 = giphyImageFullsizeImage.size;
                    GiphyPickerFragment giphyPickerFragment2 = GiphyPickerFragment.this;
                    if (i13 <= giphyPickerFragment2.maxLen) {
                        int intParam2 = giphyPickerFragment2.getIntParam("minWidth");
                        int intParam3 = GiphyPickerFragment.this.getIntParam("minHeight");
                        if ((intParam2 > 0 && (i12 = giphyImageFullsizeImage.width) > 0 && i12 < intParam2) || (intParam3 > 0 && (i11 = giphyImageFullsizeImage.height) > 0 && i11 < intParam3)) {
                            NVToast.makeText(getContext(), R.string.media_image_picker_image_too_small, 0).show();
                            return true;
                        }
                        if (intParam <= 0 || GiphyPickerFragment.this.selections.size() < intParam) {
                            GiphyPickerFragment.this.selections.add(giphyItem.id());
                        } else {
                            String stringParam = GiphyPickerFragment.this.getStringParam("maxStr");
                            if (TextUtils.isEmpty(stringParam)) {
                                NVToast.makeText(getContext(), GiphyPickerFragment.this.getString(R.string.media_image_picker_hit_max_count, Integer.valueOf(intParam)), 0).show();
                            } else {
                                NVToast.makeText(getContext(), stringParam, 0).show();
                            }
                        }
                    }
                }
                NVToast.makeText(getContext(), R.string.media_image_picker_file_too_large, 1).show();
                return true;
            }
            if (GiphyPickerFragment.this.getBooleanParam("single")) {
                GiphyPickerFragment.this.pick();
            } else {
                notifyDataSetChanged();
                GiphyPickerFragment.this.update();
            }
            return true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, GiphyListResponse giphyListResponse, int i10) {
            Collections.shuffle(giphyListResponse.data, new Random(System.currentTimeMillis()));
            super.onPageResponse(apiRequest, giphyListResponse, i10);
            if (apiRequest.tag("fromStart") == Boolean.TRUE) {
                this.start = 0;
            }
            this.start += pageSize();
        }
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
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

    /* JADX INFO: Access modifiers changed from: private */
    public void update() {
        ArrayList<String> arrayList = this.selections;
        int i10 = 0;
        int size = arrayList == null ? 0 : arrayList.size();
        this.pickButton.setEnabled(size > 0);
        String string = getString(R.string.pick);
        if (size > 0) {
            string = string + " (" + size + ")";
        }
        this.pickButton.setText(string);
        boolean z6 = !TextUtils.isEmpty(this.adapter.keyword);
        this.titleView.findViewById(R.id.icon).setVisibility(z6 ? 0 : 8);
        this.titleView.findViewById(R.id.title).setVisibility(z6 ? 8 : 0);
        View view = this.listFrame;
        if (!z6 && !this.chooseSticker) {
            i10 = 4;
        }
        view.setVisibility(i10);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        Adapter adapter = new Adapter();
        this.adapter = adapter;
        adapter.keyword = getStringParam("keyword");
        DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this);
        divideColumnAdapter.setAdapter(this.adapter, 3);
        return divideColumnAdapter;
    }

    @Override // com.narvii.app.NVFragment
    protected Drawable getActionBarCustomDrawable() {
        return new ColorDrawable(ViewCompat.MEASURED_STATE_MASK);
    }

    @Override // com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.media_giphy_picker, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        int i10;
        super.onActivityCreated(bundle);
        View viewInflate = getLayoutInflater(null).inflate(R.layout.media_giphy_picker_title, (ViewGroup) null);
        this.titleView = viewInflate;
        setActionBarTitleView(viewInflate);
        try {
            ((ImageView) this.titleView.findViewById(R.id.icon)).setImageDrawable(new pl.droidsonroids.gif.b(getResources().getAssets(), "giphy_logo.gif"));
        } catch (Exception unused) {
        }
        View viewInflate2 = getLayoutInflater(null).inflate(R.layout.media_image_picker_button, (ViewGroup) null);
        setActionBarRightView(viewInflate2);
        Button button = (Button) viewInflate2.findViewById(R.id.pick_image);
        this.pickButton = button;
        button.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.media.GiphyPickerFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                GiphyPickerFragment.this.pick();
            }
        });
        TextView textView = (TextView) this.titleView.findViewById(R.id.title);
        if (this.chooseSticker) {
            i10 = R.string.media_image_sticker;
        } else {
            i10 = R.string.media_image_giphy;
        }
        textView.setText(i10);
        update();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
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

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("images", JacksonUtils.safeWriteAsString(this.selections));
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.listFrame = view.findViewById(R.id.list_frame);
        getListView().setDivider(null);
        getListView().setDividerHeight(0);
        ((SearchBar) view.findViewById(R.id.search)).setOnSearchListener(new SearchBar.OnSearchListener() { // from class: com.narvii.media.GiphyPickerFragment.2
            @Override // com.narvii.widget.SearchBar.OnSearchListener
            public void onSearch(SearchBar searchBar, String str) {
                Adapter adapter = GiphyPickerFragment.this.adapter;
                adapter.keyword = str;
                adapter.resetList();
                GiphyPickerFragment giphyPickerFragment = GiphyPickerFragment.this;
                giphyPickerFragment.selections = null;
                giphyPickerFragment.update();
            }

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
        });
    }

    @Override // com.narvii.app.FragmentWillFinishListener
    public void willFinish(NVActivity nVActivity) {
        SoftKeyboard.hideSoftKeyboard(getContext());
    }
}
