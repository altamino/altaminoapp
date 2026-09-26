package com.narvii.media;

import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.SparseBooleanArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.narvii.app.NVFragment;
import com.narvii.lib.R;
import com.narvii.list.NVAdapter;
import com.narvii.model.Media;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.photos.PhotoManager;
import com.narvii.util.FileUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.TimeUtils;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.widget.NVImageView;
import java.io.File;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes2.dex */
public class PhoneAudioPickerFragment extends NVFragment {
    private static final String ORDER_BY = "date_added";
    private static final String SELECTION_ALL_FOR_SINGLE_MEDIA_TYPE = "media_type=? AND _size>0";
    Adapter adapter;
    ListView albumList;
    CommunityConfigHelper communityConfigHelper;
    ArrayList<Entry> entries;
    ArrayList<Entry> fentries;
    private LoadTask loadTask;
    ListView mainList;
    Button pickButton;
    private ArrayList<String> selectionStrList;
    private ArrayList<Entry> selections;
    View titleButton;
    View touchArea;
    int width;
    private static final Uri sArtworkUri = Uri.parse("content://media/external/audio/albumart");
    private static ExecutorService loadExecutor = Utils.createThreadPoolExecutor(1, "galley media loader");

    private class Adapter extends NVAdapter {
        public Adapter() {
            super(PhoneAudioPickerFragment.this);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return PhoneAudioPickerFragment.this.fentries.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            return PhoneAudioPickerFragment.this.fentries.get(i10);
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (obj instanceof Entry) {
                Entry entry = (Entry) obj;
                if (view2 == null || view2.getId() == R.id.select) {
                    int intParam = PhoneAudioPickerFragment.this.getIntParam("maximum");
                    if (intParam == 1 || PhoneAudioPickerFragment.this.selections == null || PhoneAudioPickerFragment.this.getBooleanParam("single")) {
                        PhoneAudioPickerFragment.this.selections = new ArrayList();
                    }
                    if (!PhoneAudioPickerFragment.this.selections.remove(entry)) {
                        if (intParam <= 0 || PhoneAudioPickerFragment.this.selections.size() < intParam) {
                            PhoneAudioPickerFragment.this.selections.add(entry);
                        } else {
                            String stringParam = PhoneAudioPickerFragment.this.getStringParam("maxStr");
                            if (TextUtils.isEmpty(stringParam)) {
                                NVToast.makeText(getContext(), PhoneAudioPickerFragment.this.getString(R.string.media_image_picker_hit_max_count_audio, Integer.valueOf(intParam)), 0).show();
                            } else {
                                NVToast.makeText(getContext(), stringParam, 0).show();
                            }
                        }
                    }
                    if (PhoneAudioPickerFragment.this.getBooleanParam("single")) {
                        PhoneAudioPickerFragment.this.pick();
                    } else {
                        notifyDataSetChanged();
                        PhoneAudioPickerFragment.this.updatePickButton();
                    }
                    return true;
                }
            }
            return super.onItemClick(listAdapter, i10, obj, view, view2);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            Object item = getItem(i10);
            if (!(item instanceof Entry)) {
                return -1L;
            }
            Entry entry = (Entry) item;
            if (entry.getUniqueKey() == null) {
                return -1L;
            }
            return entry.getUniqueKey().hashCode();
        }

        @Override // android.widget.Adapter
        public View getView(final int i10, View view, ViewGroup viewGroup) {
            int i11;
            Object item = getItem(i10);
            if (item instanceof Entry) {
                final Entry entry = (Entry) item;
                final View viewCreateView = createView(R.layout.media_audio_picker_item, viewGroup, view);
                NVImageView nVImageView = (NVImageView) viewCreateView.findViewById(R.id.image);
                Bitmap audioThumbnail = entry.getAudioThumbnail(getContext());
                if (audioThumbnail == null) {
                    nVImageView.setImageResource(R.drawable.ic_audio_default_thubnail);
                } else {
                    nVImageView.setImageBitmap(audioThumbnail);
                }
                final ImageView imageView = (ImageView) viewCreateView.findViewById(R.id.select);
                if (PhoneAudioPickerFragment.this.getBooleanParam("single")) {
                    imageView.setVisibility(8);
                } else {
                    if (PhoneAudioPickerFragment.this.selections != null && PhoneAudioPickerFragment.this.selections.contains(entry)) {
                        i11 = R.drawable.ic_media_selected;
                    } else {
                        i11 = R.drawable.ic_media_not_selected;
                    }
                    imageView.setImageResource(i11);
                    imageView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.media.PhoneAudioPickerFragment.Adapter.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view2) {
                            Adapter adapter = Adapter.this;
                            adapter.onItemClick(adapter, i10, entry, viewCreateView, imageView);
                        }
                    });
                }
                ((TextView) viewCreateView.findViewById(R.id.media_picker_title)).setText(entry.name);
                ((TextView) viewCreateView.findViewById(R.id.media_picker_info)).setText(entry.artistName + " | " + entry.albumName);
                ((TextView) viewCreateView.findViewById(R.id.media_picker_time)).setText(TimeUtils.formatTimeDuration((long) entry.duration));
                return viewCreateView;
            }
            return null;
        }
    }

    private class AlbumAdapter extends NVAdapter {
        ArrayList<Entry> folders;

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return i10;
        }

        public AlbumAdapter(ArrayList<Entry> arrayList) {
            super(PhoneAudioPickerFragment.this);
            this.folders = new ArrayList<>();
            SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
            for (Entry entry : arrayList) {
                if (!sparseBooleanArray.get(entry.folderId)) {
                    sparseBooleanArray.put(entry.folderId, true);
                    if ("Camera".equalsIgnoreCase(entry.folderName)) {
                        this.folders.add(0, entry);
                    } else {
                        this.folders.add(entry);
                    }
                }
            }
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.folders.size() + 1;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            if (i10 == 0) {
                return null;
            }
            return this.folders.get(i10 - 1);
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (obj == null) {
                PhoneAudioPickerFragment phoneAudioPickerFragment = PhoneAudioPickerFragment.this;
                phoneAudioPickerFragment.fentries = phoneAudioPickerFragment.filterAlbum(null);
                PhoneAudioPickerFragment.this.hideAlbum();
                ((TextView) PhoneAudioPickerFragment.this.titleButton.findViewById(R.id.title)).setText(R.string.media_image_picker_all_media);
            } else if (obj instanceof Entry) {
                PhoneAudioPickerFragment phoneAudioPickerFragment2 = PhoneAudioPickerFragment.this;
                Entry entry = (Entry) obj;
                phoneAudioPickerFragment2.fentries = phoneAudioPickerFragment2.filterAlbum(entry);
                PhoneAudioPickerFragment.this.hideAlbum();
                ((TextView) PhoneAudioPickerFragment.this.titleButton.findViewById(R.id.title)).setText(entry.folderName);
            }
            PhoneAudioPickerFragment.this.adapter.notifyDataSetChanged();
            return true;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            Object item = getItem(i10);
            View viewCreateView = createView(R.layout.media_image_picker_album, viewGroup, view);
            NVImageView nVImageView = (NVImageView) viewCreateView.findViewById(R.id.image);
            TextView textView = (TextView) viewCreateView.findViewById(R.id.title);
            if (item instanceof Entry) {
                Entry entry = (Entry) item;
                Bitmap audioThumbnail = entry.getAudioThumbnail(getContext());
                int i11 = 0;
                for (Entry entry2 : PhoneAudioPickerFragment.this.entries) {
                    if (entry.folderId == entry2.folderId) {
                        i11++;
                        if (audioThumbnail == null) {
                            audioThumbnail = entry2.getAudioThumbnail(getContext());
                        }
                    }
                }
                nVImageView.setImageBitmap(audioThumbnail);
                textView.setText(entry.folderName + " (" + i11 + ")");
            } else {
                Iterator<Entry> it = PhoneAudioPickerFragment.this.entries.iterator();
                Bitmap audioThumbnail2 = null;
                while (it.hasNext() && (audioThumbnail2 = it.next().getAudioThumbnail(getContext())) == null) {
                }
                if (audioThumbnail2 == null) {
                    nVImageView.setImageUrl(null);
                } else {
                    nVImageView.setImageBitmap(audioThumbnail2);
                }
                textView.setText(PhoneAudioPickerFragment.this.getString(R.string.media_image_picker_all_audios) + " (" + PhoneAudioPickerFragment.this.entries.size() + ")");
            }
            return viewCreateView;
        }
    }

    public static class Entry {
        public static final int TYPE_AUDIO = 110;
        public int albumId;
        public String albumName;
        public String artistName;
        public int duration;
        public String fileName;
        public int folderId;
        public String folderName;
        public String mediaPath;
        public int mediaType;
        public String name;
        private boolean noThunbnail = false;
        public long soingId;
        private SoftReference<Bitmap> thumbnailCache;

        public static Bitmap getAudioThumbnail(Context context, long j6, long j10) {
            if (j10 < 0 && j6 < 0) {
                throw new IllegalArgumentException("Must specify an album or a song id");
            }
            try {
                ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = context.getContentResolver().openFileDescriptor(getAudioThumbnailUri(j6, j10), "r");
                if (parcelFileDescriptorOpenFileDescriptor != null) {
                    return BitmapFactory.decodeFileDescriptor(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor());
                }
                return null;
            } catch (Exception unused) {
                return null;
            }
        }

        public int getMediaType() {
            return this.mediaType;
        }

        public String getUniqueKey() {
            return this.mediaPath;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static Uri getAudioThumbnailUri(long j6, long j10) {
            if (j10 >= 0) {
                return ContentUris.withAppendedId(PhoneAudioPickerFragment.sArtworkUri, j10);
            }
            return Uri.parse("content://media/external/audio/media/" + j6 + "/albumart");
        }

        public boolean equals(Object obj) {
            return (obj instanceof Entry) && TextUtils.equals(((Entry) obj).mediaPath, this.mediaPath);
        }

        public String getMediaUrl() {
            return Uri.fromFile(new File(this.mediaPath)).toString();
        }

        public Bitmap getAudioThumbnail(Context context) {
            Bitmap bitmap;
            SoftReference<Bitmap> softReference = this.thumbnailCache;
            if (softReference != null && (bitmap = softReference.get()) != null) {
                return bitmap;
            }
            if (this.noThunbnail) {
                return null;
            }
            Bitmap audioThumbnail = getAudioThumbnail(context, this.soingId, this.albumId);
            if (audioThumbnail == null) {
                this.noThunbnail = true;
                return null;
            }
            this.thumbnailCache = new SoftReference<>(audioThumbnail);
            return audioThumbnail;
        }
    }

    class LoadTask extends AsyncTask<Void, Void, ArrayList<Entry>> {
        @Override // android.os.AsyncTask
        protected void onPreExecute() {
        }

        LoadTask() {
        }

        /* JADX WARN: Code duplicated, block: B:34:0x00dd A[EXC_TOP_SPLITTER, SYNTHETIC] */
        private ArrayList<Entry> getAllEntries() throws Throwable {
            Cursor cursor;
            ArrayList<Entry> arrayList = new ArrayList<>();
            try {
                try {
                    Cursor cursorQuery = PhoneAudioPickerFragment.this.getContext().getContentResolver().query(MediaStore.Files.getContentUri("external"), new String[]{"_id", "bucket_id", "bucket_display_name", "_data", "_display_name", TypedValues.TransitionType.S_DURATION, "album_id", "artist", "album"}, PhoneAudioPickerFragment.SELECTION_ALL_FOR_SINGLE_MEDIA_TYPE, new String[]{String.valueOf(2)}, PhoneAudioPickerFragment.ORDER_BY);
                    if (cursorQuery != null) {
                        try {
                            if (cursorQuery.moveToLast()) {
                                while (!isCancelled()) {
                                    Entry entry = new Entry();
                                    entry.soingId = cursorQuery.getLong(0);
                                    entry.folderId = cursorQuery.getInt(1);
                                    entry.folderName = cursorQuery.getString(2);
                                    entry.mediaPath = cursorQuery.getString(3);
                                    String string = cursorQuery.getString(4);
                                    entry.fileName = string;
                                    entry.name = string;
                                    entry.mediaType = 110;
                                    entry.duration = cursorQuery.getInt(5);
                                    entry.albumId = cursorQuery.getInt(6);
                                    entry.artistName = cursorQuery.getString(7);
                                    entry.albumName = cursorQuery.getString(8);
                                    insertDetailInfo(entry);
                                    arrayList.add(entry);
                                    if (!cursorQuery.moveToPrevious()) {
                                        break;
                                    }
                                }
                            }
                        } catch (Exception e) {
                            e = e;
                            cursor = cursorQuery;
                            try {
                                Log.e("fail to read phone audios", e);
                                if (cursor != null) {
                                    cursor.close();
                                }
                                return arrayList;
                            } catch (Throwable th) {
                                th = th;
                                if (cursor != null) {
                                    try {
                                        cursor.close();
                                    } catch (Exception unused) {
                                    }
                                }
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            cursor = cursorQuery;
                            if (cursor != null) {
                                cursor.close();
                            }
                            throw th;
                        }
                    }
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                } catch (Exception unused2) {
                }
            } catch (Exception e2) {
                e = e2;
                cursor = null;
            } catch (Throwable th3) {
                th = th3;
                cursor = null;
            }
            return arrayList;
        }

        private void insertDetailInfo(Entry entry) {
            Cursor cursorQuery = null;
            try {
                cursorQuery = PhoneAudioPickerFragment.this.getContext().getContentResolver().query(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, new String[]{"title", TypedValues.TransitionType.S_DURATION, "album_id", "artist", "album"}, "_id=?", new String[]{String.valueOf(entry.soingId)}, PhoneAudioPickerFragment.ORDER_BY);
                if (cursorQuery != null && cursorQuery.moveToLast()) {
                    entry.name = cursorQuery.getString(0);
                    entry.duration = cursorQuery.getInt(1);
                    entry.albumId = cursorQuery.getInt(2);
                    entry.artistName = cursorQuery.getString(3);
                    entry.albumName = cursorQuery.getString(4);
                }
            } catch (Exception e) {
                Log.e("fail to read phone audios", e);
            } finally {
                if (cursorQuery != null) {
                    try {
                        cursorQuery.close();
                    } catch (Exception unused) {
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public ArrayList<Entry> doInBackground(Void... voidArr) {
            return getAllEntries();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(ArrayList<Entry> arrayList) {
            super.onPostExecute(PhoneAudioPickerFragment.this.entries);
            if (PhoneAudioPickerFragment.this.isDestoryed()) {
                return;
            }
            PhoneAudioPickerFragment phoneAudioPickerFragment = PhoneAudioPickerFragment.this;
            phoneAudioPickerFragment.entries = arrayList;
            phoneAudioPickerFragment.fentries = phoneAudioPickerFragment.filterAlbum(null);
            PhoneAudioPickerFragment phoneAudioPickerFragment2 = PhoneAudioPickerFragment.this;
            phoneAudioPickerFragment2.selections = phoneAudioPickerFragment2.resumeSelectedEntries(phoneAudioPickerFragment2.selectionStrList);
            PhoneAudioPickerFragment.this.updatePickButton();
            PhoneAudioPickerFragment.this.updateViews();
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "music_picker";
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    private ArrayList<String> convertSelectedEntriesToStrings(List<Entry> list) {
        ArrayList<String> arrayList = new ArrayList<>();
        if (list == null) {
            return arrayList;
        }
        Iterator<Entry> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getUniqueKey());
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ArrayList<Entry> filterAlbum(Entry entry) {
        ArrayList<Entry> arrayList = new ArrayList<>();
        for (Entry entry2 : this.entries) {
            if (entry == null || entry2.folderId == entry.folderId) {
                arrayList.add(entry2);
            }
        }
        return arrayList;
    }

    public static Bundle getBundle(boolean z6, int i10, String str, File file) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("single", z6);
        if (i10 != 0) {
            bundle.putInt("maximum", i10);
        }
        bundle.putString("maxStr", str);
        bundle.putSerializable("dir", file);
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideAlbum() {
        if (this.albumList.getVisibility() == 0) {
            this.albumList.setVisibility(8);
            this.albumList.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.slide_out_top));
            this.touchArea.setVisibility(8);
            this.touchArea.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.fade_out));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void pick() {
        String mediaUrl;
        String strImportPhoto;
        PhotoManager photoManager = (PhotoManager) getService("photo");
        ArrayList<Entry> arrayList = this.selections;
        if (arrayList == null || arrayList.size() <= 0) {
            return;
        }
        ArrayList arrayList2 = new ArrayList();
        for (Entry entry : this.selections) {
            try {
                File file = (File) getActivity().getIntent().getExtras().getSerializable("dir");
                if (file != null) {
                    String str = entry.fileName;
                    mediaUrl = photoManager.getUri(FileUtils.copyFile(getContext(), Uri.parse(entry.getMediaUrl()), file, FileUtils.getNewFileName(file, str.substring(str.lastIndexOf(".") + 1))));
                    strImportPhoto = photoManager.importPhoto(file, Entry.getAudioThumbnailUri(entry.soingId, entry.albumId));
                } else {
                    mediaUrl = entry.getMediaUrl();
                    strImportPhoto = null;
                }
                Media media = new Media();
                media.type = entry.getMediaType();
                media.url = mediaUrl;
                media.coverImage = strImportPhoto;
                media.fileName = entry.name;
                media.duration = entry.duration;
                media.author = entry.artistName;
                arrayList2.add(media);
            } catch (Exception e) {
                Log.w("fail to import audio from " + entry, e);
            }
        }
        if (arrayList2.size() > 0) {
            Intent intent = new Intent();
            intent.putExtra("mediaList", JacksonUtils.writeAsString(arrayList2));
            setResult(-1, intent);
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ArrayList<Entry> resumeSelectedEntries(List<String> list) {
        ArrayList<Entry> arrayList = new ArrayList<>();
        if (list != null && this.fentries != null) {
            HashMap map = new HashMap();
            for (Entry entry : this.entries) {
                map.put(entry.getUniqueKey(), entry);
            }
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                Entry entry2 = (Entry) map.get(it.next());
                if (entry2 != null) {
                    arrayList.add(entry2);
                }
            }
        }
        return arrayList;
    }

    private void showAlbum() {
        if (!this.entries.isEmpty() && this.albumList.getVisibility() == 8) {
            this.albumList.setVisibility(0);
            this.albumList.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.slide_in_top));
            this.touchArea.setVisibility(0);
            this.touchArea.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.fade_in));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void switchAlbum() {
        ListView listView = this.albumList;
        if (listView == null) {
            return;
        }
        if (listView.getVisibility() == 0) {
            hideAlbum();
        } else {
            showAlbum();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePickButton() {
        if (this.pickButton == null) {
            return;
        }
        if (getBooleanParam("single")) {
            this.pickButton.setVisibility(8);
            return;
        }
        ArrayList<Entry> arrayList = this.selections;
        int size = arrayList == null ? 0 : arrayList.size();
        this.pickButton.setEnabled(size > 0);
        String string = getString(R.string.pick);
        if (size > 0) {
            string = string + " (" + size + ")";
        }
        this.pickButton.setText(string);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.media_audio_picker, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        LoadTask loadTask = this.loadTask;
        if (loadTask != null) {
            loadTask.cancel(true);
        }
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateViews() {
        View view = getView();
        if (view != null && this.entries != null) {
            ViewUtils.show(view, R.id.loading, false);
            ListView listView = (ListView) view.findViewById(R.id.main_list);
            this.mainList = listView;
            Adapter adapter = new Adapter();
            this.adapter = adapter;
            listView.setAdapter((ListAdapter) adapter);
            this.mainList.setOnItemClickListener(this.adapter);
            ListView listView2 = (ListView) view.findViewById(R.id.media_gallery_list);
            this.albumList = listView2;
            listView2.setDivider(new ColorDrawable(-7829368));
            this.albumList.setDividerHeight(1);
            this.albumList.setVisibility(8);
            AlbumAdapter albumAdapter = new AlbumAdapter(this.entries);
            this.albumList.setAdapter((ListAdapter) albumAdapter);
            this.albumList.setOnItemClickListener(albumAdapter);
            View viewFindViewById = view.findViewById(R.id.media_image_gallery_mask);
            this.touchArea = viewFindViewById;
            viewFindViewById.setVisibility(8);
            this.touchArea.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.media.PhoneAudioPickerFragment.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    PhoneAudioPickerFragment.this.hideAlbum();
                }
            });
            if (this.entries.isEmpty()) {
                view.findViewById(R.id.empty).setVisibility(0);
                this.mainList.setVisibility(8);
            }
        }
    }

    @Override // com.narvii.app.NVFragment
    protected Drawable getActionBarCustomDrawable() {
        return getResources().getDrawable(R.drawable.media_actionbar);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        View viewInflate = getLayoutInflater(null).inflate(R.layout.media_image_picker_title, (ViewGroup) null);
        this.titleButton = viewInflate;
        viewInflate.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.media.PhoneAudioPickerFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PhoneAudioPickerFragment.this.switchAlbum();
            }
        });
        setActionBarTitleView(this.titleButton);
        ((TextView) this.titleButton.findViewById(R.id.title)).setText(R.string.media_image_picker_all_audios);
        View viewInflate2 = getLayoutInflater(null).inflate(R.layout.media_image_picker_button, (ViewGroup) null);
        setActionBarRightView(viewInflate2);
        Button button = (Button) viewInflate2.findViewById(R.id.pick_image);
        this.pickButton = button;
        button.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.media.PhoneAudioPickerFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PhoneAudioPickerFragment.this.pick();
            }
        });
        updatePickButton();
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        LoadTask loadTask = new LoadTask();
        this.loadTask = loadTask;
        loadTask.executeOnExecutor(loadExecutor, new Void[0]);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.width = Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels) / 3;
        if (bundle == null) {
            this.selectionStrList = JacksonUtils.readListAs(getStringParam("selections"), String.class);
        } else {
            this.selectionStrList = JacksonUtils.readListAs(bundle.getString("selections"), String.class);
        }
        this.communityConfigHelper = new CommunityConfigHelper(this);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("selections", JacksonUtils.safeWriteAsString(convertSelectedEntriesToStrings(this.selections)));
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        updateViews();
    }
}
