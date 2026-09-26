package com.narvii.media;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.Cursor;
import android.graphics.BitmapFactory;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.SparseBooleanArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.fragment.app.Fragment;
import com.narvii.account.AccountService;
import com.narvii.app.FragmentRegister;
import com.narvii.app.NVActivity;
import com.narvii.app.NVFragment;
import com.narvii.config.ConfigService;
import com.narvii.lib.R;
import com.narvii.list.NVAdapter;
import com.narvii.membership.MembershipExpireDialog;
import com.narvii.membership.MembershipHintDialog;
import com.narvii.model.Media;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.photos.PhotoManager;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.OnPreventRepeatedClickListener;
import com.narvii.util.TimeUtils;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.crashlytics.OomHelper;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.image.MediaStoreUtils;
import com.narvii.wallet.MembershipService;
import com.narvii.widget.NVImageView;
import com.safedk.android.utils.Logger;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes6.dex */
public class PhoneImagePickerFragment extends NVFragment {
    public static final int MEDIA_TYPE_IMAGE = 1;
    public static final int MEDIA_TYPE_VIDEO = 2;
    public static final int MIN_EDIT_VIDEO_DURATION_SECOND = 3000;
    private static final String ORDER_BY = "date_added";
    public static final int REQUEST_MEDIA_EDITOR = 99;
    private static final String SELECTION_ALL = "(media_type=? OR media_type=?) AND _size>0";
    private static final String SELECTION_ALL_FOR_SINGLE_MEDIA_TYPE = "media_type=? AND _size>0";
    public static final int VIDEO_MULTI_SELECT_WITH_IMAGE_AND_NO_EDITOR = 3;
    public static final int VIDEO_MULTI_SELECT_WITH_NO_EDITOR = 2;
    public static final int VIDEO_SELECT_WITH_EDITOR = 0;
    public static final int VIDEO_SELECT_WITH_NO_EDITOR = 1;
    public static boolean ffmpegInstalled = true;
    public static boolean isSupportMeishe = true;
    Adapter adapter;
    ListView albumList;
    private HQBannerClickListener bannerClickListener;
    CheckBox checkBoxHQ;
    CommunityConfigHelper communityConfigHelper;
    ArrayList<Entry> entries;
    ArrayList<Entry> fentries;
    GridView grid;
    private boolean imageSelected;
    private LoadTask loadTask;
    private int mediaType;
    private boolean membershipForVideo;
    private boolean noFileCopy;
    Button pickButton;
    private ArrayList<String> selectionStrList;
    private ArrayList<Entry> selections;
    private boolean showHQImage;
    View titleButton;
    View touchArea;
    private int videoSelectMode;
    private boolean videoSelected;
    int width;
    private static ExecutorService loadExecutor = Utils.createThreadPoolExecutor(1, "galley media loader");
    private static final String[] SELECTION_ALL_ARGS = {String.valueOf(1), String.valueOf(3)};
    private int minVideoDuration = 0;
    private BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.media.PhoneImagePickerFragment.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Adapter adapter;
            if (!MembershipService.ACTION_MEMBERSHIP_CHANGED.equals(intent.getAction()) || (adapter = PhoneImagePickerFragment.this.adapter) == null) {
                return;
            }
            adapter.notifyDataSetChanged();
        }
    };

    private class Adapter extends NVAdapter {
        public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
            Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
            if (p1 == null) {
                return;
            }
            p0.startActivityForResult(p1, p5);
        }

        public Adapter() {
            super(PhoneImagePickerFragment.this);
        }

        private void openDetail(Entry entry) {
            PhoneImagePickerFragment phoneImagePickerFragment = PhoneImagePickerFragment.this;
            ArrayList<Entry> arrayList = phoneImagePickerFragment.fentries;
            if (!phoneImagePickerFragment.isVideoMultiSelect()) {
                ArrayList<Entry> arrayList2 = new ArrayList<>(arrayList);
                Iterator<Entry> it = arrayList2.iterator();
                while (it.hasNext()) {
                    if (it.next().isVideo()) {
                        it.remove();
                    }
                }
                arrayList = arrayList2;
            }
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("ndc://fragment/" + MediaPickerGalleryFragment.class.getName()));
            if (arrayList == null || arrayList.size() <= 1000) {
                intent.putExtra("list", JacksonUtils.writeAsString(arrayList));
            } else {
                MediaPickerGalleryFragment.MEDIA_ITEM_LIST.set(arrayList);
            }
            PhoneImagePickerFragment phoneImagePickerFragment2 = PhoneImagePickerFragment.this;
            intent.putExtra("selected", JacksonUtils.writeAsString(phoneImagePickerFragment2.convertSelectedEntriesToStrings(phoneImagePickerFragment2.selections)));
            intent.putExtra("class", Entry.class);
            intent.putExtra("single", PhoneImagePickerFragment.this.getBooleanParam("single"));
            intent.putExtra("maxCount", PhoneImagePickerFragment.this.getIntParam("maximum"));
            intent.putExtra("maxStr", PhoneImagePickerFragment.this.getStringParam("maxStr"));
            intent.putExtra("position", arrayList.indexOf(entry));
            intent.putExtra("minGifWidth", PhoneImagePickerFragment.this.getIntParam("minGifWidth"));
            intent.putExtra("minGifHeight", PhoneImagePickerFragment.this.getIntParam("minGifHeight"));
            intent.putExtra("minWidth", PhoneImagePickerFragment.this.getIntParam("minWidth"));
            intent.putExtra("minHeight", PhoneImagePickerFragment.this.getIntParam("minHeight"));
            intent.putExtra("showHQBar", PhoneImagePickerFragment.this.getBooleanParam("showHQBar"));
            CheckBox checkBox = PhoneImagePickerFragment.this.checkBoxHQ;
            intent.putExtra("hqChecked", checkBox != null ? checkBox.isChecked() : false);
            safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(PhoneImagePickerFragment.this, intent, 88);
        }

        private void openVideoEditor(Entry entry) {
            Uri fragmentDeepLinkUri;
            MembershipService membershipService;
            String str = Build.CPU_ABI;
            if (str == null || !str.startsWith("arm") || !PhoneImagePickerFragment.isSupportMeishe || !PhoneImagePickerFragment.ffmpegInstalled) {
                AlertDialog alertDialog = new AlertDialog(getContext());
                alertDialog.setMessage(R.string.device_not_support);
                alertDialog.addButton(android.R.string.ok, 0, (View.OnClickListener) null);
                alertDialog.show();
                if (str == null) {
                    str = "no cpu detected";
                }
                Log.e("VideoPicker", str);
                return;
            }
            if (PhoneImagePickerFragment.this.membershipForVideo && (membershipService = (MembershipService) getService("membership")) != null && !membershipService.isMembership()) {
                new MembershipExpireDialog(this, PhoneImagePickerFragment.this.getString(R.string.chat_video_membership_hint)).show();
                return;
            }
            File file = (File) PhoneImagePickerFragment.this.getActivity().getIntent().getExtras().getSerializable("dir");
            FragmentRegister fragmentRegister = (FragmentRegister) getService("fragmentRegister");
            if (fragmentRegister == null || (fragmentDeepLinkUri = fragmentRegister.getFragmentDeepLinkUri("mediaEditor")) == null) {
                return;
            }
            Intent intent = new Intent("android.intent.action.VIEW", fragmentDeepLinkUri);
            intent.putExtra("inputFile", entry.mediaPath);
            intent.putExtra("outputFileDir", file.getPath());
            AccountService accountService = (AccountService) getService("account");
            intent.putExtra("isVideoTrimming", true);
            intent.putExtra("realOutput", true);
            intent.putExtra("maxOutputLength", accountService.getPrivilegeOfMaxVideoDuration());
            intent.putExtra("entryInfo", JacksonUtils.writeAsString(entry));
            safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(PhoneImagePickerFragment.this, intent, 99);
        }

        private void selectEntry(Entry entry) {
            PhoneImagePickerFragment phoneImagePickerFragment;
            String str;
            PhoneImagePickerFragment phoneImagePickerFragment2;
            String str2;
            int intParam = PhoneImagePickerFragment.this.getIntParam("maximum");
            if (intParam == 1 || PhoneImagePickerFragment.this.selections == null || PhoneImagePickerFragment.this.getBooleanParam("single")) {
                PhoneImagePickerFragment.this.selections = new ArrayList();
            }
            boolean booleanParam = PhoneImagePickerFragment.this.getBooleanParam("checkUnsupportedImageType", false);
            if (!PhoneImagePickerFragment.this.selections.remove(entry)) {
                if (entry.isImage()) {
                    if (booleanParam && Utils.getImageType(entry.mediaPath) == null) {
                        NVToast.makeText(getContext(), R.string.invalid_input_image, 0).show();
                        return;
                    }
                    if (entry.isGif() && Utils.uriToFile(entry.getMediaUrl()).length() > ((ConfigService) getService("config")).getInt("maxUploadImagePayloadLength", 6291456)) {
                        NVToast.makeText(getContext(), R.string.media_image_picker_file_too_large, 0).show();
                        return;
                    }
                    if (entry.isGif()) {
                        phoneImagePickerFragment = PhoneImagePickerFragment.this;
                        str = "minGifWidth";
                    } else {
                        phoneImagePickerFragment = PhoneImagePickerFragment.this;
                        str = "minWidth";
                    }
                    int intParam2 = phoneImagePickerFragment.getIntParam(str);
                    if (entry.isGif()) {
                        phoneImagePickerFragment2 = PhoneImagePickerFragment.this;
                        str2 = "minGifHeight";
                    } else {
                        phoneImagePickerFragment2 = PhoneImagePickerFragment.this;
                        str2 = "minHeight";
                    }
                    int intParam3 = phoneImagePickerFragment2.getIntParam(str2);
                    if (intParam2 > 0 || intParam3 > 0) {
                        int i10 = entry.width;
                        int i11 = entry.height;
                        if (i10 == 0 || i11 == 0) {
                            try {
                                BitmapFactory.Options options = new BitmapFactory.Options();
                                options.inJustDecodeBounds = true;
                                BitmapFactory.decodeFile(Utils.uriToFile(entry.getMediaUrl()).getAbsolutePath(), options);
                                i10 = options.outWidth;
                                i11 = options.outHeight;
                            } catch (Throwable th) {
                                OomHelper.test(th);
                            }
                        }
                        if ((i10 > 0 && intParam2 > 0 && i10 < intParam2) || (i11 > 0 && intParam3 > 0 && i11 < intParam3)) {
                            NVToast.makeText(getContext(), R.string.media_image_picker_image_too_small, 0).show();
                            return;
                        }
                    }
                }
                if (intParam <= 0 || PhoneImagePickerFragment.this.selections.size() < intParam) {
                    PhoneImagePickerFragment.this.selections.add(entry);
                } else {
                    String stringParam = PhoneImagePickerFragment.this.getStringParam("maxStr");
                    if (TextUtils.isEmpty(stringParam)) {
                        NVToast.makeText(getContext(), PhoneImagePickerFragment.this.getString(R.string.media_image_picker_hit_max_count, Integer.valueOf(intParam)), 0).show();
                    } else {
                        NVToast.makeText(getContext(), stringParam, 0).show();
                    }
                }
            }
            if (PhoneImagePickerFragment.this.getBooleanParam("single") || (entry.isVideo() && !PhoneImagePickerFragment.this.isVideoMultiSelect())) {
                PhoneImagePickerFragment.this.pick();
                return;
            }
            PhoneImagePickerFragment.this.updateItemSelected();
            notifyDataSetChanged();
            PhoneImagePickerFragment.this.updatePickButton();
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return PhoneImagePickerFragment.this.fentries.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            return PhoneImagePickerFragment.this.fentries.get(i10);
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (!(obj instanceof Entry)) {
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }
            Entry entry = (Entry) obj;
            if (greyItem(entry)) {
                if ((entry.isVideo() && PhoneImagePickerFragment.this.imageSelected) || (entry.isImage() && PhoneImagePickerFragment.this.videoSelected)) {
                    NVToast.makeText(getContext(), R.string.can_not_select_image_and_video_together, 0).show();
                } else {
                    int i11 = PhoneImagePickerFragment.this.minVideoDuration / 1000;
                    NVToast.makeText(getContext(), i11 == 1 ? PhoneImagePickerFragment.this.getString(R.string.video_duration_less_than_one_second) : PhoneImagePickerFragment.this.getString(R.string.video_duration_less_than_seconds, Integer.valueOf(i11)), 0).show();
                }
                return true;
            }
            if (view2 != null && view2.getId() == R.id.select) {
                selectEntry(entry);
            } else if (PhoneImagePickerFragment.this.hasVideoEditor() && entry.isVideo()) {
                openVideoEditor(entry);
            } else if (PhoneImagePickerFragment.this.isVideoMultiSelect() || !entry.isVideo()) {
                openDetail(entry);
            } else {
                selectEntry(entry);
            }
            return true;
        }

        private boolean greyItem(Entry entry) {
            if ((entry.isVideo() && ((entry.duration < PhoneImagePickerFragment.this.minVideoDuration && PhoneImagePickerFragment.this.minVideoDuration > 0) || (PhoneImagePickerFragment.this.imageSelected && PhoneImagePickerFragment.this.videoSelectMode != 3))) || (entry.isImage() && PhoneImagePickerFragment.this.videoSelected && PhoneImagePickerFragment.this.videoSelectMode != 3)) {
                return true;
            }
            return false;
        }

        private boolean hideSelect(Entry entry) {
            if (entry.isVideo() && !PhoneImagePickerFragment.this.isVideoMultiSelect()) {
                return true;
            }
            return false;
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
            boolean z6;
            int i11;
            Object item = getItem(i10);
            if (item instanceof Entry) {
                final Entry entry = (Entry) item;
                final View viewCreateView = createView(R.layout.media_image_grid, viewGroup, view);
                viewCreateView.getLayoutParams().width = PhoneImagePickerFragment.this.width;
                viewCreateView.getLayoutParams().height = PhoneImagePickerFragment.this.width;
                PhoneImagePickerFragment.this.setImageView((NVImageView) viewCreateView.findViewById(R.id.image), entry);
                boolean z10 = true;
                if (PhoneImagePickerFragment.this.selections != null && PhoneImagePickerFragment.this.selections.contains(entry)) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                final ImageView imageView = (ImageView) viewCreateView.findViewById(R.id.select);
                if (z6) {
                    i11 = R.drawable.ic_media_selected;
                } else {
                    i11 = R.drawable.ic_media_not_selected;
                }
                imageView.setImageResource(i11);
                imageView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.media.PhoneImagePickerFragment.Adapter.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        Adapter adapter = Adapter.this;
                        adapter.onItemClick(adapter, i10, entry, viewCreateView, imageView);
                    }
                });
                ViewUtils.show(imageView, !hideSelect(entry));
                View viewFindViewById = viewCreateView.findViewById(R.id.membership_label);
                MembershipService membershipService = (MembershipService) getService("membership");
                if (!hideSelect(entry) || !PhoneImagePickerFragment.this.membershipForVideo || membershipService == null || membershipService.isMembership()) {
                    z10 = false;
                }
                ViewUtils.show(viewFindViewById, z10);
                ImageView imageView2 = (ImageView) viewCreateView.findViewById(R.id.media_picker_label);
                TextView textView = (TextView) viewCreateView.findViewById(R.id.media_picker_video_time);
                if (entry.isVideo()) {
                    imageView2.setVisibility(0);
                    textView.setText(TimeUtils.formatTimeDuration(entry.duration));
                    textView.setVisibility(0);
                } else {
                    textView.setVisibility(8);
                    imageView2.setVisibility(8);
                }
                ViewUtils.show(viewCreateView, R.id.grey_mask, greyItem(entry));
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
            super(PhoneImagePickerFragment.this);
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
                PhoneImagePickerFragment phoneImagePickerFragment = PhoneImagePickerFragment.this;
                phoneImagePickerFragment.fentries = phoneImagePickerFragment.filterAlbum(null);
                PhoneImagePickerFragment.this.hideAlbum();
                ((TextView) PhoneImagePickerFragment.this.titleButton.findViewById(R.id.title)).setText(PhoneImagePickerFragment.this.isVideo() ? R.string.media_image_picker_all_media : R.string.media_image_picker_all_images);
            } else if (obj instanceof Entry) {
                PhoneImagePickerFragment phoneImagePickerFragment2 = PhoneImagePickerFragment.this;
                Entry entry = (Entry) obj;
                phoneImagePickerFragment2.fentries = phoneImagePickerFragment2.filterAlbum(entry);
                PhoneImagePickerFragment.this.hideAlbum();
                ((TextView) PhoneImagePickerFragment.this.titleButton.findViewById(R.id.title)).setText(entry.folderName);
            }
            PhoneImagePickerFragment.this.adapter.notifyDataSetChanged();
            return true;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            Entry entry;
            int i11;
            Object item = getItem(i10);
            View viewCreateView = createView(R.layout.media_image_picker_album, viewGroup, view);
            NVImageView nVImageView = (NVImageView) viewCreateView.findViewById(R.id.image);
            TextView textView = (TextView) viewCreateView.findViewById(R.id.title);
            int i12 = 0;
            if (item instanceof Entry) {
                Entry entry2 = (Entry) item;
                Iterator<Entry> it = PhoneImagePickerFragment.this.entries.iterator();
                while (it.hasNext()) {
                    if (entry2.folderId == it.next().folderId) {
                        i12++;
                    }
                }
                PhoneImagePickerFragment.this.setImageView(nVImageView, entry2);
                textView.setText(entry2.folderName + " (" + i12 + ")");
            } else {
                if (PhoneImagePickerFragment.this.entries.size() > 0) {
                    entry = PhoneImagePickerFragment.this.entries.get(0);
                } else {
                    entry = null;
                }
                if (entry != null) {
                    PhoneImagePickerFragment.this.setImageView(nVImageView, entry);
                } else {
                    nVImageView.setImageUrl(null);
                }
                StringBuilder sb = new StringBuilder();
                PhoneImagePickerFragment phoneImagePickerFragment = PhoneImagePickerFragment.this;
                if (phoneImagePickerFragment.isVideo()) {
                    i11 = R.string.media_image_picker_all_media;
                } else {
                    i11 = R.string.media_image_picker_all_images;
                }
                sb.append(phoneImagePickerFragment.getString(i11));
                sb.append(" (");
                sb.append(PhoneImagePickerFragment.this.entries.size());
                sb.append(")");
                textView.setText(sb.toString());
            }
            return viewCreateView;
        }
    }

    public static class Entry implements MediaSelectItem {
        public static final int TYPE_IMAGE = 100;
        public static final int TYPE_VIDEO = 123;
        public int duration;
        public int folderId;
        public String folderName;
        public int height;
        public long imageId;
        public String mediaPath;
        public int mediaType;
        public String name;
        private Media selectMedia;
        public int width;

        public int getMediaType() {
            return this.mediaType;
        }

        @Override // com.narvii.media.MediaSelectItem
        public String getUniqueKey() {
            return this.mediaPath;
        }

        public boolean isImage() {
            return this.mediaType == 100;
        }

        public boolean isVideo() {
            return this.mediaType == 123;
        }

        public boolean equals(Object obj) {
            return (obj instanceof Entry) && TextUtils.equals(((Entry) obj).mediaPath, this.mediaPath);
        }

        public String getMediaStorageUrl() {
            return MediaStoreUtils.getMediastoreUrl(this.imageId, this.mediaPath, this.mediaType == 123);
        }

        public String getMediaUrl() {
            return Uri.fromFile(new File(this.mediaPath)).toString();
        }

        @Override // com.narvii.media.MediaSelectItem
        public Media getSelectMedia() {
            if (this.selectMedia == null) {
                Media media = new Media();
                this.selectMedia = media;
                media.type = this.mediaType;
                if (isVideo()) {
                    this.selectMedia.coverImage = getMediaStorageUrl();
                }
                this.selectMedia.url = getMediaUrl();
            }
            return this.selectMedia;
        }

        boolean isGif() {
            return Utils.isGif(this.mediaPath);
        }

        boolean isWebP() {
            return Utils.isWebP(this.mediaPath);
        }
    }

    class LoadTask extends AsyncTask<Void, Void, ArrayList<Entry>> {
        @Override // android.os.AsyncTask
        protected void onPreExecute() {
        }

        LoadTask() {
        }

        /* JADX WARN: Code duplicated, block: B:43:0x00df A[EXC_TOP_SPLITTER, SYNTHETIC] */
        private ArrayList<Entry> getAllEntries() throws Throwable {
            Cursor cursor;
            ArrayList<Entry> arrayList = new ArrayList<>();
            try {
                try {
                    Cursor cursorQuery = PhoneImagePickerFragment.this.getContext().getContentResolver().query(MediaStore.Files.getContentUri("external"), new String[]{"_id", "bucket_id", "bucket_display_name", "_data", "_display_name", "width", "height", "media_type", TypedValues.TransitionType.S_DURATION}, PhoneImagePickerFragment.this.getMediaSelection(), PhoneImagePickerFragment.this.getMediaSelectArgs(), PhoneImagePickerFragment.ORDER_BY);
                    if (cursorQuery != null) {
                        try {
                            if (cursorQuery.moveToLast()) {
                                while (!isCancelled()) {
                                    Entry entry = new Entry();
                                    entry.imageId = cursorQuery.getLong(0);
                                    entry.folderId = cursorQuery.getInt(1);
                                    entry.folderName = cursorQuery.getString(2);
                                    entry.mediaPath = cursorQuery.getString(3);
                                    entry.name = cursorQuery.getString(4);
                                    entry.width = cursorQuery.getInt(5);
                                    entry.height = cursorQuery.getInt(6);
                                    if (cursorQuery.getInt(7) == 3) {
                                        entry.mediaType = 123;
                                    } else {
                                        entry.mediaType = 100;
                                    }
                                    entry.duration = cursorQuery.getInt(8);
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
                                Log.e("fail to read phone images", e);
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

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public ArrayList<Entry> doInBackground(Void... voidArr) {
            return getAllEntries();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(ArrayList<Entry> arrayList) {
            super.onPostExecute(PhoneImagePickerFragment.this.entries);
            if (PhoneImagePickerFragment.this.isDestoryed()) {
                return;
            }
            PhoneImagePickerFragment phoneImagePickerFragment = PhoneImagePickerFragment.this;
            phoneImagePickerFragment.entries = arrayList;
            phoneImagePickerFragment.fentries = phoneImagePickerFragment.filterAlbum(null);
            PhoneImagePickerFragment phoneImagePickerFragment2 = PhoneImagePickerFragment.this;
            phoneImagePickerFragment2.selections = phoneImagePickerFragment2.resumeSelectedEntries(phoneImagePickerFragment2.selectionStrList);
            PhoneImagePickerFragment.this.updatePickButton();
            PhoneImagePickerFragment.this.updateItemSelected();
            PhoneImagePickerFragment.this.updateViews();
        }
    }

    private boolean containsImage() {
        return (this.mediaType & 1) != 0;
    }

    private boolean containsVideo() {
        return (this.mediaType & 2) != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hasVideoEditor() {
        return this.videoSelectMode < 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isVideo() {
        return (this.mediaType & 2) != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isVideoMultiSelect() {
        return this.videoSelectMode > 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateItemSelected() {
        this.imageSelected = false;
        this.videoSelected = false;
        ArrayList<Entry> arrayList = this.selections;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        Iterator<Entry> it = this.selections.iterator();
        while (it.hasNext()) {
            int i10 = it.next().mediaType;
            if (i10 == 100) {
                this.imageSelected = true;
            }
            if (i10 == 123) {
                this.videoSelected = true;
            }
            if (this.imageSelected && this.videoSelected) {
                return;
            }
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "media_picker";
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ArrayList<String> convertSelectedEntriesToStrings(List<Entry> list) {
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
        boolean booleanParam = getBooleanParam("noGif");
        ArrayList<Entry> arrayList = new ArrayList<>();
        for (Entry entry2 : this.entries) {
            if (entry == null || entry2.folderId == entry.folderId) {
                if (!booleanParam || !entry2.isGif()) {
                    arrayList.add(entry2);
                }
            }
        }
        return arrayList;
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
        PhotoManager photoManager = (PhotoManager) getService("photo");
        ArrayList<Entry> arrayList = this.selections;
        if (arrayList == null || arrayList.size() <= 0) {
            return;
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator<Entry> it = this.selections.iterator();
        while (true) {
            String uri = null;
            if (!it.hasNext()) {
                break;
            }
            Entry next = it.next();
            try {
                File file = (File) getActivity().getIntent().getExtras().getSerializable("dir");
                if (next.getMediaType() == 100) {
                    mediaUrl = (file == null || this.noFileCopy) ? photoManager.getUri(Utils.uriToFile(next.getMediaUrl())) : photoManager.importPhoto(file, Uri.parse(next.getMediaUrl()));
                } else if (next.getMediaType() == 123) {
                    mediaUrl = (file == null || !hasVideoEditor()) ? next.getMediaUrl() : photoManager.getUri(new File(next.mediaPath));
                } else {
                    mediaUrl = null;
                }
                Media media = new Media();
                media.type = next.getMediaType();
                media.url = mediaUrl;
                media.fileName = next.name;
                if (next.getMediaType() == 123) {
                    if (photoManager.isVideo(mediaUrl) && hasVideoEditor()) {
                        media.coverImage = photoManager.getVideoCoverUrl(media.url);
                    } else {
                        File videoThumbnail = getVideoThumbnail(next.imageId);
                        if (videoThumbnail != null) {
                            uri = photoManager.getUri(videoThumbnail);
                        }
                        media.coverImage = uri;
                    }
                }
                media.duration = next.duration;
                arrayList2.add(media);
            } catch (Exception e) {
                Log.w("fail to import image from " + next, e);
            }
        }
        if (arrayList2.size() > 0) {
            String stringParam = getStringParam("pickCallback");
            if (stringParam == null) {
                Intent intent = new Intent();
                intent.putExtra("mediaList", JacksonUtils.writeAsString(arrayList2));
                CheckBox checkBox = this.checkBoxHQ;
                intent.putExtra("isUHQ", checkBox == null ? false : checkBox.isChecked());
                setResult(-1, intent);
                finish();
                return;
            }
            MediaPickCallbackManager mediaPickCallbackManager = (MediaPickCallbackManager) getService("mediaPickCallback");
            MediaPickCallback callback = mediaPickCallbackManager != null ? mediaPickCallbackManager.getCallback(stringParam) : null;
            if (callback == null) {
                return;
            }
            HashMap<String, Object> map = (HashMap) getActivity().getIntent().getExtras().getSerializable("pickCallbackParams");
            if (map == null) {
                map = new HashMap<>();
            }
            map.put("mediaList", JacksonUtils.writeAsString(arrayList2));
            map.put(MediaPickerFragment.PICK_SOURCE, "Photo Library");
            callback.onPick(map, (NVActivity) getActivity(), true);
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

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        if (i11 == -1 && i10 == 88 && intent != null) {
            if (getBooleanParam("single")) {
                Entry entry = (Entry) JacksonUtils.readAs(intent.getStringExtra("mediaItem"), Entry.class);
                if (entry == null) {
                    return;
                }
                ArrayList<Entry> arrayList = new ArrayList<>();
                this.selections = arrayList;
                arrayList.add(entry);
                Adapter adapter = this.adapter;
                if (adapter != null) {
                    adapter.notifyDataSetChanged();
                }
                pick();
            } else {
                ArrayList<String> listAs = JacksonUtils.readListAs(intent.getStringExtra("selected"), String.class);
                this.selectionStrList = listAs;
                this.selections = resumeSelectedEntries(listAs);
                updateItemSelected();
                Adapter adapter2 = this.adapter;
                if (adapter2 != null) {
                    adapter2.notifyDataSetChanged();
                }
                updatePickButton();
            }
        }
        if (i10 == 88 && intent != null) {
            boolean booleanExtra = intent.getBooleanExtra("isHQChecked", false);
            CheckBox checkBox = this.checkBoxHQ;
            if (checkBox != null) {
                checkBox.setChecked(booleanExtra);
            }
        }
        if (i10 != 99 || i11 != -1) {
            super.onActivityResult(i10, i11, intent);
            return;
        }
        Entry entry2 = (Entry) JacksonUtils.readAs(intent.getStringExtra("entryInfo"), Entry.class);
        entry2.mediaPath = intent.getStringExtra("outputVideoPath");
        entry2.height = intent.getIntExtra("outputVideoHeight", entry2.height);
        entry2.width = intent.getIntExtra("outputVideoWidth", entry2.width);
        int intExtra = intent.getIntExtra("outputVideoDuration", 0);
        if (intExtra == 0) {
            intExtra = entry2.duration;
        }
        entry2.duration = intExtra;
        ArrayList<Entry> arrayList2 = new ArrayList<>();
        this.selections = arrayList2;
        arrayList2.add(entry2);
        pick();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.media_image_picker, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        unregisterLocalReceiver(this.receiver);
        LoadTask loadTask = this.loadTask;
        if (loadTask != null) {
            loadTask.cancel(true);
        }
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String[] getMediaSelectArgs() {
        boolean zContainsVideo = containsVideo();
        if (containsImage() && zContainsVideo) {
            return SELECTION_ALL_ARGS;
        }
        if (zContainsVideo) {
            return new String[]{String.valueOf(3)};
        }
        return new String[]{String.valueOf(1)};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getMediaSelection() {
        if (containsImage() && containsVideo()) {
            return SELECTION_ALL;
        }
        return SELECTION_ALL_FOR_SINGLE_MEDIA_TYPE;
    }

    private File getVideoThumbnail(long j6) {
        Cursor cursorQuery = getContext().getContentResolver().query(MediaStore.Video.Thumbnails.EXTERNAL_CONTENT_URI, new String[]{"_data", "video_id"}, "video_id=?", new String[]{j6 + ""}, null);
        if (cursorQuery != null && cursorQuery.moveToFirst()) {
            File file = new File(cursorQuery.getString(0));
            if (file.exists()) {
                return file;
            }
            return null;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setImageView(NVImageView nVImageView, Entry entry) {
        nVImageView.setImageUrl(entry.getMediaStorageUrl());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateViews() {
        View view = getView();
        if (view != null && this.entries != null) {
            int i10 = 0;
            ViewUtils.show(view, R.id.loading, false);
            GridView gridView = (GridView) view.findViewById(R.id.grid);
            this.grid = gridView;
            Adapter adapter = new Adapter();
            this.adapter = adapter;
            gridView.setAdapter((ListAdapter) adapter);
            this.grid.setOnItemClickListener(this.adapter);
            ListView listView = (ListView) view.findViewById(R.id.media_image_gallery_list);
            this.albumList = listView;
            listView.setDivider(new ColorDrawable(-7829368));
            this.albumList.setDividerHeight(1);
            this.albumList.setVisibility(8);
            AlbumAdapter albumAdapter = new AlbumAdapter(this.entries);
            this.albumList.setAdapter((ListAdapter) albumAdapter);
            this.albumList.setOnItemClickListener(albumAdapter);
            View viewFindViewById = view.findViewById(R.id.media_image_gallery_mask);
            this.touchArea = viewFindViewById;
            viewFindViewById.setVisibility(8);
            this.touchArea.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.media.PhoneImagePickerFragment.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    PhoneImagePickerFragment.this.hideAlbum();
                }
            });
            if (this.entries.isEmpty()) {
                view.findViewById(R.id.empty).setVisibility(0);
                this.grid.setVisibility(8);
            }
            View viewFindViewById2 = view.findViewById(R.id.hq_banner_root);
            final MembershipService membershipService = (MembershipService) getService("membership");
            this.checkBoxHQ = (CheckBox) viewFindViewById2.findViewById(R.id.hq_selected);
            if ((1 & this.mediaType) == 0 || !this.showHQImage || !this.communityConfigHelper.isPremiumFeatureEnabled()) {
                i10 = 8;
            }
            viewFindViewById2.setVisibility(i10);
            viewFindViewById2.setOnClickListener(null);
            this.checkBoxHQ.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.media.PhoneImagePickerFragment.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    MembershipService membershipService2 = membershipService;
                    if (membershipService2 == null || membershipService2.isMembership()) {
                        return;
                    }
                    PhoneImagePickerFragment.this.checkBoxHQ.setChecked(false);
                    if (membershipService.isMembershipBefore()) {
                        MembershipExpireDialog membershipExpireDialog = new MembershipExpireDialog(PhoneImagePickerFragment.this);
                        membershipExpireDialog.source = "HD Image (Dialog)";
                        membershipExpireDialog.show();
                    } else {
                        MembershipHintDialog membershipHintDialog = new MembershipHintDialog(PhoneImagePickerFragment.this);
                        membershipHintDialog.source = "HD Image (Dialog)";
                        membershipHintDialog.show();
                    }
                }
            });
        }
    }

    @Override // com.narvii.app.NVFragment
    protected Drawable getActionBarCustomDrawable() {
        return getResources().getDrawable(R.drawable.media_actionbar);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        int i10;
        super.onActivityCreated(bundle);
        View viewInflate = getLayoutInflater(null).inflate(R.layout.media_image_picker_title, (ViewGroup) null);
        this.titleButton = viewInflate;
        setActionBarTitleView(viewInflate);
        this.titleButton.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.media.PhoneImagePickerFragment.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PhoneImagePickerFragment.this.switchAlbum();
            }
        });
        TextView textView = (TextView) this.titleButton.findViewById(R.id.title);
        if (isVideo()) {
            i10 = R.string.media_image_picker_all_media;
        } else {
            i10 = R.string.media_image_picker_all_images;
        }
        textView.setText(i10);
        View viewInflate2 = getLayoutInflater(null).inflate(R.layout.media_image_picker_button, (ViewGroup) null);
        setActionBarRightView(viewInflate2);
        Button button = (Button) viewInflate2.findViewById(R.id.pick_image);
        this.pickButton = button;
        button.setOnClickListener(new OnPreventRepeatedClickListener(new View.OnClickListener() { // from class: com.narvii.media.PhoneImagePickerFragment.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PhoneImagePickerFragment.this.pick();
            }
        }));
        updatePickButton();
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mediaType = getIntParam("type", 1);
        this.videoSelectMode = getIntParam("videoSelectMode", 0);
        this.minVideoDuration = getIntParam(MediaPickerFragment.PICK_MIN_VIDEO_DURATION, 0);
        this.membershipForVideo = getBooleanParam("membershipForVideo", false);
        LoadTask loadTask = new LoadTask();
        this.loadTask = loadTask;
        loadTask.executeOnExecutor(loadExecutor, new Void[0]);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.width = Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels) / 3;
        this.showHQImage = getBooleanParam("showHQBar");
        this.noFileCopy = getBooleanParam("noFileCopy");
        if (bundle == null) {
            this.selectionStrList = JacksonUtils.readListAs(getStringParam("images"), String.class);
        } else {
            this.selectionStrList = JacksonUtils.readListAs(bundle.getString("images"), String.class);
        }
        this.communityConfigHelper = new CommunityConfigHelper(this);
        registerLocalReceiver(this.receiver, new IntentFilter(MembershipService.ACTION_MEMBERSHIP_CHANGED));
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("images", JacksonUtils.safeWriteAsString(convertSelectedEntriesToStrings(this.selections)));
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        updateViews();
    }
}
