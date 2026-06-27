package com.narvii.media;

import android.content.ClipboardManager;
import android.content.ContentResolver;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.provider.MediaStore;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.app.NVDialog;
import com.narvii.app.NVFragment;
import com.narvii.lib.R;
import com.narvii.logging.LogUtils;
import com.narvii.media.YoutubePlaylistLayout;
import com.narvii.model.Media;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.permisson.PermissionUtils;
import com.narvii.photos.PhotoManager;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.YoutubeUtils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.widget.ACMAlertDialog;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class MediaPickerFragment extends NVFragment {
    public static final int FLAG_AUDIO = 16384;
    public static final int FLAG_AUDIO_ONLY = 16898;
    public static final int FLAG_AUDIO_ONLY_LOCAL = 32768;
    public static final int FLAG_COLOR = 128;
    public static final int FLAG_DELETE = 64;
    public static final int FLAG_NO_CAMERA = 8;
    public static final int FLAG_NO_GIF = 16;
    public static final int FLAG_NO_GIPHY = 32;
    public static final int FLAG_NO_PHOTO = 512;
    public static final int FLAG_NO_VIDEO = 2;

    @Deprecated
    public static final int FLAG_PHOTO_ONLY = 2;
    public static final int FLAG_SINGLE_PHOTO = 4;
    public static final int FLAG_VIDEO_MULTI_NO_EDITOR = 262144;
    public static final int FLAG_VIDEO_NO_EDITOR = 131072;

    @Deprecated
    public static final int FLAG_VIDEO_ONLY = 512;
    public static final String PICK_FROM = "pickFrom";
    public static final String PICK_MIN_VIDEO_DURATION = "minVideoDuration";
    public static final String PICK_ONLINE_AUDIO_TARGET_TAB = "targetOnlineAudioTabName";
    public static final String PICK_SOURCE = "pickSource";
    public static final String PICK_YOUTUBE_NEED_DURATION = "needDuration";
    static final int REQUEST_AUDIO = 64776;
    static final int REQUEST_AUDIO_ONLINE = 64777;
    static final int REQUEST_CAMERA = 64769;
    static final int REQUEST_COLOR = 64774;
    static final int REQUEST_GIPHY = 64772;
    static final int REQUEST_PICKER = 64770;
    static final int REQUEST_PICKER2 = 64771;
    static final int REQUEST_YOUTUBE = 64773;
    public static final int START_PICK_AUDIO = 7;
    public static final int START_PICK_CAMERA = 1;
    public static final int START_PICK_COLOR = 6;
    public static final int START_PICK_DELETE = -1;
    public static final int START_PICK_GALLERY = 2;
    public static final int START_PICK_GIPHY = 3;
    public static final int START_PICK_YOUTUBE = 4;
    private CommunityConfigHelper configHelper;
    public int deleteStringId;
    private File dir;
    protected Bundle info;
    protected boolean isRequestingActivityResult;
    public List<OnResultListener> listenerEventDispatcher = new ArrayList();
    public String maxStr;
    private int maximum;
    private MediaPickerConfiguration mediaPickerConfiguration;
    private int minGifHeight;
    private int minGifWidth;
    private int minHeight;
    private int minWidth;
    public int oldColor;
    protected OnCustomOptionSelectedListener onCustomOptionSelectedListener;
    public String pickCallback;
    public HashMap<String, Object> pickCallbackParams;
    public OnPickColorResultListener pickColorResultListener;
    public int pickColorStringId;
    protected Callback<Boolean> requestActivityResultCallback;
    public OnStartPickListener startPickListener;

    public interface OnCustomOptionSelectedListener {
        void onCustomOptionSelected(Option option, Bundle bundle);
    }

    public interface OnPickColorResultListener {
        void onPickColorResult(int i, Bundle bundle);
    }

    public interface OnResultListener {
        void onPickMediaResult(List<Media> list, Bundle bundle);
    }

    public interface OnStartPickListener {
        void onStartPickMedia(int i);
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public boolean isValidPage() {
        return false;
    }

    public void setRequestActivityResultCallback(Callback<Boolean> callback) {
        this.requestActivityResultCallback = callback;
    }

    public void setOnCustomOptionSelectedListener(OnCustomOptionSelectedListener onCustomOptionSelectedListener) {
        this.onCustomOptionSelectedListener = onCustomOptionSelectedListener;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            String string = bundle.getString("dir");
            this.dir = string == null ? null : new File(string);
            this.info = bundle.getBundle("pickInfo");
            this.mediaPickerConfiguration = (MediaPickerConfiguration) JacksonUtils.readAs(bundle.getString("configs"), MediaPickerConfiguration.class);
            this.maximum = bundle.getInt("maximum");
            this.minWidth = bundle.getInt("minWidth");
            this.minHeight = bundle.getInt("minHeight");
            this.pickCallback = bundle.getString("pickCallback");
            this.pickCallbackParams = (HashMap) bundle.getSerializable("pickCallbackParams");
        }
    }

    public void addOnResultListener(OnResultListener onResultListener) {
        if (onResultListener == null || this.listenerEventDispatcher.contains(onResultListener)) {
            return;
        }
        this.listenerEventDispatcher.add(onResultListener);
    }

    public void removeOnResultListener(OnResultListener onResultListener) {
        if (onResultListener == null) {
            return;
        }
        this.listenerEventDispatcher.remove(onResultListener);
    }

    public boolean isRequestingActivityResult() {
        return this.isRequestingActivityResult;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        File file = this.dir;
        bundle.putString("dir", file == null ? null : file.getAbsolutePath());
        bundle.putBundle("pickInfo", this.info);
        bundle.putString("configs", JacksonUtils.writeAsString(this.mediaPickerConfiguration));
        bundle.putInt("maximum", this.maximum);
        bundle.putInt("minWidth", this.minWidth);
        bundle.putInt("minHeight", this.minHeight);
        bundle.putInt("minGifWidth", this.minGifWidth);
        bundle.putInt("minGifHeight", this.minGifHeight);
        bundle.putString("pickCallback", this.pickCallback);
        bundle.putSerializable("pickCallbackParams", this.pickCallbackParams);
    }

    @Deprecated
    public void pickMedia(File file, Bundle bundle, int i) {
        pickMedia(file, bundle, i, 0);
    }

    @Deprecated
    public void pickMedia(File file, Bundle bundle, int i, List<Option> list) {
        pickMedia(file, bundle, i, 0, list);
    }

    @Deprecated
    public void pickMedia(File file, Bundle bundle, int i, int i2) {
        pickMedia(file, bundle, i, i2, 0, 0, 0, 0, null);
    }

    @Deprecated
    public void pickMedia(File file, Bundle bundle, int i, int i2, List<Option> list) {
        pickMedia(file, bundle, i, i2, 0, 0, 0, 0, list);
    }

    @Deprecated
    public void pickMedia(File file, Bundle bundle, int i, int i2, int i3, int i4, int i5, int i6) {
        pickMedia(file, bundle, i, i2, i3, i4, i5, i6, null);
    }

    @Deprecated
    public void pickMedia(File file, Bundle bundle, int i, int i2, int i3, int i4, int i5, int i6, List<Option> list) {
        MediaPickerConfiguration mediaPickerConfiguration = new MediaPickerConfiguration();
        this.dir = file;
        this.info = bundle;
        mediaPickerConfiguration.maximum = i2;
        mediaPickerConfiguration.minWidth = i3;
        mediaPickerConfiguration.minHeight = i4;
        mediaPickerConfiguration.minGifWidth = i5;
        mediaPickerConfiguration.minGifHeight = i6;
        mediaPickerConfiguration.customOptions = list;
        mediaPickerConfiguration.setOptionListByFlag(i);
        pickMedia(file, bundle, mediaPickerConfiguration);
    }

    public void pickMedia(File file, Bundle bundle, MediaPickerConfiguration mediaPickerConfiguration) {
        this.dir = file;
        this.info = bundle;
        this.mediaPickerConfiguration = mediaPickerConfiguration;
        this.maximum = mediaPickerConfiguration.maximum;
        this.minWidth = mediaPickerConfiguration.minWidth;
        this.minHeight = mediaPickerConfiguration.minHeight;
        this.minGifWidth = mediaPickerConfiguration.minGifWidth;
        this.minGifHeight = mediaPickerConfiguration.minGifHeight;
        final ArrayList<Option> arrayList = new ArrayList<>();
        buildOptions(arrayList, mediaPickerConfiguration);
        if (arrayList.size() == 1) {
            onOptionsClicked(arrayList.get(0));
            return;
        }
        final ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
        final LatestImage latestImage = getLatestImage();
        if (latestImage != null && this.mediaPickerConfiguration.hasGalleryPhoto() && (this.mediaPickerConfiguration.galleryPhotoMode & 2) != 0) {
            actionSheetDialog.setCustomView(R.layout.media_pick_latest);
            ((ImageView) actionSheetDialog.findCustomViewById(R.id.image)).setImageBitmap(latestImage.bitmap);
            actionSheetDialog.findCustomViewById(R.id.media_pick_latest).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.media.MediaPickerFragment.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    String uri;
                    ArrayList arrayList2 = new ArrayList();
                    PhotoManager photoManager = (PhotoManager) MediaPickerFragment.this.getService("photo");
                    try {
                        if (MediaPickerFragment.this.dir != null && !MediaPickerFragment.this.mediaPickerConfiguration.isGalleryNoCopy) {
                            uri = photoManager.importPhoto(MediaPickerFragment.this.dir, Uri.fromFile(new File(latestImage.path)));
                        } else {
                            uri = photoManager.getUri(new File(latestImage.path));
                        }
                        Media media = new Media();
                        media.type = 100;
                        media.url = uri;
                        arrayList2.add(media);
                        if (MediaPickerFragment.this.info == null) {
                            MediaPickerFragment.this.info = new Bundle();
                        }
                        MediaPickerFragment.this.info.putString(MediaPickerFragment.PICK_SOURCE, "Latest Photo");
                        MediaPickerFragment.this.info.putInt(MediaPickerFragment.PICK_FROM, 2);
                        MediaPickerFragment.this.onPhotoResult(arrayList2);
                    } catch (Exception e) {
                        Log.w("fail to import image from " + latestImage.path, e);
                    }
                    MediaPickerFragment.this.omitLatestImage(latestImage);
                    actionSheetDialog.dismiss();
                }
            });
        }
        Iterator<Option> it = arrayList.iterator();
        while (it.hasNext()) {
            Option next = it.next();
            actionSheetDialog.addItem(next.name, next.flag);
        }
        actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.media.MediaPickerFragment.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                MediaPickerFragment.this.onOptionsClicked((Option) arrayList.get(i));
                MediaPickerFragment.this.omitLatestImage(latestImage);
            }
        });
        actionSheetDialog.show();
    }

    public static class Option {
        public int flag;
        public int id;
        public boolean isCustom;
        public String name;
        public int position;

        public Option() {
            this.isCustom = false;
            this.position = -1;
        }

        public Option(int i, String str, int i2) {
            this.isCustom = false;
            this.position = -1;
            this.id = i;
            this.name = str;
            this.flag = i2;
        }

        public Option(int i, String str, int i2, int i3) {
            this(i, str, i2);
            this.position = i3;
        }
    }

    protected void buildOptions(ArrayList<Option> arrayList, MediaPickerConfiguration mediaPickerConfiguration) {
        int i = mediaPickerConfiguration.optionList;
        PhotoManager photoManager = (PhotoManager) getService("photo");
        if ((i & 1) != 0) {
            int i2 = this.pickColorStringId;
            if (i2 == 0) {
                i2 = R.string.color_picker;
            }
            arrayList.add(new Option(0, getString(i2), 0));
        }
        if ((i & 2) != 0 && photoManager.hasCamera()) {
            arrayList.add(new Option(1, getString(R.string.media_image_camera), 0));
        }
        if ((i & 4) != 0) {
            arrayList.add(new Option(4, getString(this.mediaPickerConfiguration.isGiphySticker ? R.string.media_image_sticker : R.string.media_image_giphy), 0));
        }
        if ((i & 8) != 0 || (i & 16) != 0) {
            arrayList.add(new Option(2, getString(this.mediaPickerConfiguration.hasGalleryPhoto() ? R.string.media_image_picker : R.string.media_video_picker_1), 0));
        }
        if ((i & 32) != 0) {
            String string = getString(this.mediaPickerConfiguration.isGoogleVideoSearch ? R.string.media_image_video_online : R.string.media_image_youtube);
            if (this.mediaPickerConfiguration.isYoutubeWithDialog) {
                arrayList.add(new Option(9, string, 0));
            } else {
                arrayList.add(new Option(7, string, 0));
                String pasteYoutubeUrl = getPasteYoutubeUrl();
                if (pasteYoutubeUrl != null) {
                    arrayList.add(new Option(8, pasteYoutubeUrl, 0));
                }
            }
        }
        if ((i & 64) != 0) {
            arrayList.add(new Option(11, getString(R.string.media_music_picker), 0));
        }
        if ((i & 128) != 0) {
            arrayList.add(new Option(10, getString(R.string.media_music_picker), 0));
        }
        if ((i & 256) != 0) {
            int i3 = this.deleteStringId;
            if (i3 == 0) {
                i3 = R.string.delete;
            }
            arrayList.add(new Option(19, getString(i3), 1));
        }
        List<Option> list = mediaPickerConfiguration.customOptions;
        if (list != null) {
            for (Option option : list) {
                if (option != null) {
                    option.isCustom = true;
                    int i4 = option.position;
                    if (i4 != -1) {
                        arrayList.add(i4, option);
                    } else {
                        arrayList.add(option);
                    }
                }
            }
        }
    }

    protected void onOptionsClicked(Option option) {
        int i = option.id;
        int i2 = 4;
        String str = null;
        if (i == 0) {
            i2 = 6;
            str = "Color";
        } else if (i == 1) {
            str = "Camera";
            i2 = 1;
        } else if (i == 2 || i == 3) {
            str = "Photo Library";
            i2 = 2;
        } else if (i == 4 || i == 5) {
            str = "Giphy";
            i2 = 3;
        } else if (i != 19) {
            switch (i) {
                case 7:
                case 8:
                case 9:
                    str = "Youtube";
                    break;
                case 10:
                case 11:
                    i2 = 7;
                    break;
                default:
                    i2 = 0;
                    break;
            }
        } else {
            i2 = -1;
            str = "delete";
        }
        if (this.info == null) {
            this.info = new Bundle();
        }
        this.info.putInt(PICK_FROM, i2);
        if (str != null) {
            this.info.putString(PICK_SOURCE, str);
        }
        pickMediaOption(option);
        OnStartPickListener onStartPickListener = this.startPickListener;
        if (onStartPickListener != null) {
            onStartPickListener.onStartPickMedia(i2);
        }
    }

    @Override // android.support.v4.app.Fragment
    public void startActivityForResult(Intent intent, int i) {
        List<OnResultListener> list = this.listenerEventDispatcher;
        if (list != null) {
            for (OnResultListener onResultListener : list) {
                if (onResultListener instanceof NVContext) {
                    LogUtils.changeNextPageRefererIfNull((NVContext) onResultListener);
                }
            }
        }
        super.startActivityForResult(intent, i);
    }

    private String getPasteYoutubeUrl() {
        String strValueOf;
        try {
            strValueOf = String.valueOf(((ClipboardManager) getContext().getSystemService("clipboard")).getText());
        } catch (Exception unused) {
            strValueOf = null;
        }
        if (YoutubeUtils.getYoutubeVideoIdFromUrl(strValueOf) != null) {
            return strValueOf;
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x012a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void pickMediaOption(com.narvii.media.MediaPickerFragment.Option r10) {
        /*
            Method dump skipped, instructions count: 458
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.media.MediaPickerFragment.pickMediaOption(com.narvii.media.MediaPickerFragment$Option):void");
    }

    @Override // com.narvii.app.NVFragment, com.narvii.permisson.PermissionListener
    public void onPermissionGranted(int i) {
        if (i == 104) {
            try {
                startActivityForResult(((PhotoManager) getService("photo")).createCameraIntent(), REQUEST_CAMERA);
                return;
            } catch (Exception unused) {
                return;
            }
        }
        if (i == 301) {
            openPhoneImage();
            return;
        }
        if (i == 303) {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("ndc://fragment/" + PhoneAudioPickerFragment.class.getName()));
            intent.putExtras(PhoneAudioPickerFragment.getBundle(this.mediaPickerConfiguration.isSingle, this.maximum, this.maxStr, this.dir));
            startActivityForResult(intent, REQUEST_AUDIO);
        }
    }

    private void openPhoneImage() {
        new HQBannerClickListener() { // from class: com.narvii.media.MediaPickerFragment.3
            @Override // com.narvii.media.HQBannerClickListener
            public void onBannerClicked() {
            }
        };
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("ndc://fragment/" + PhoneImagePickerFragment.class.getName()));
        intent.putExtra("single", this.mediaPickerConfiguration.isSingle);
        int i = this.maximum;
        if (i != 0) {
            intent.putExtra("maximum", i);
        }
        int i2 = 1;
        if (this.mediaPickerConfiguration.isGalleryPhotoNoGif()) {
            intent.putExtra("noGif", true);
        }
        if (this.mediaPickerConfiguration.isGalleryNoCopy) {
            intent.putExtra("noFileCopy", true);
        }
        intent.putExtra("minWidth", this.minWidth);
        intent.putExtra("minHeight", this.minHeight);
        intent.putExtra("minGifWidth", this.minGifWidth);
        intent.putExtra("minGifHeight", this.minGifHeight);
        intent.putExtra("maxStr", this.maxStr);
        intent.putExtra("pickCallback", this.pickCallback);
        intent.putExtra("showHQBar", getBooleanParam("showHQBar"));
        intent.putExtra("membershipForVideo", getBooleanParam("membershipForVideo"));
        intent.putExtra("pickCallbackParams", this.pickCallbackParams);
        int i3 = (this.mediaPickerConfiguration.hasGalleryVideo() && hasAuthorityForVideo()) ? 2 : 0;
        if (this.mediaPickerConfiguration.hasGalleryPhoto()) {
            i3 |= 1;
        }
        int i4 = this.mediaPickerConfiguration.galleryVideoMode;
        if ((i4 & 2) != 0) {
            i2 = (i4 & 4) != 0 ? 3 : 2;
        } else if ((i4 & 1) != 0) {
            i2 = 0;
        }
        intent.putExtra("videoSelectMode", i2);
        if (this.info == null) {
            this.info = new Bundle();
        }
        int i5 = this.info.getInt(PICK_MIN_VIDEO_DURATION, 0);
        if (i5 <= 0 && i2 == 0) {
            i5 = 3000;
        }
        intent.putExtra(PICK_MIN_VIDEO_DURATION, i5);
        intent.putExtra("type", i3);
        intent.putExtra("dir", this.dir);
        intent.putExtra("checkUnsupportedImageType", this.info.getBoolean("checkUnsupportedImageType"));
        startActivityForResult(intent, REQUEST_PICKER2);
    }

    private boolean hasAuthorityForVideo() {
        int i = NVApplication.CLIENT_TYPE;
        if (i == 201) {
            return true;
        }
        if (this.configHelper == null) {
            if (i == 200) {
                this.configHelper = new CommunityConfigHelper(this, getIntParam("__communityId"));
            } else if (i == 100 || i == 101) {
                this.configHelper = new CommunityConfigHelper(this);
            }
        }
        CommunityConfigHelper communityConfigHelper = this.configHelper;
        return communityConfigHelper == null || (this.mediaPickerConfiguration.galleryVideoMode & 1) == 0 || communityConfigHelper.isVideoUploadEnabled();
    }

    private void openGiphyPicker() {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("ndc://fragment/" + GiphyPickerFragment.class.getName()));
        intent.putExtra("single", this.mediaPickerConfiguration.isSingle);
        int i = this.maximum;
        if (i != 0) {
            intent.putExtra("maximum", i);
        }
        intent.putExtra("minWidth", this.minGifWidth);
        intent.putExtra("minHeight", this.minGifHeight);
        intent.putExtra("pickCallback", this.pickCallback);
        intent.putExtra("pickCallbackParams", this.pickCallbackParams);
        intent.putExtra("dir", this.dir);
        intent.putExtra("maxStr", this.maxStr);
        intent.putExtra("chooseSticker", this.mediaPickerConfiguration.isGiphySticker);
        startActivityForResult(intent, REQUEST_GIPHY);
    }

    private void showYoutubeDialogue() {
        AlertDialog alertDialog = new AlertDialog(getContext());
        alertDialog.setTitle(R.string.media_image_youtube);
        alertDialog.setVerticalButtons();
        alertDialog.addButton(R.string.media_image_search_youtube, 1024, new View.OnClickListener() { // from class: com.narvii.media.MediaPickerFragment.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("ndc://fragment/" + YoutubeVideoPicker.class.getName()));
                intent.putExtra("pickCallback", MediaPickerFragment.this.pickCallback);
                intent.putExtra("pickCallbackParams", MediaPickerFragment.this.pickCallbackParams);
                Bundle bundle = MediaPickerFragment.this.info;
                if (bundle != null) {
                    intent.putExtra(MediaPickerFragment.PICK_YOUTUBE_NEED_DURATION, bundle.getBoolean(MediaPickerFragment.PICK_YOUTUBE_NEED_DURATION));
                }
                MediaPickerFragment.this.startActivityForResult(intent, MediaPickerFragment.REQUEST_YOUTUBE);
            }
        });
        alertDialog.addButton(R.string.media_image_input_youtube_urls, 1024, new View.OnClickListener() { // from class: com.narvii.media.MediaPickerFragment.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AlertDialog alertDialog2 = new AlertDialog(MediaPickerFragment.this.getContext());
                alertDialog2.setTitle(R.string.media_image_youtube);
                EditText editText = alertDialog2.setEditText();
                editText.setLines(5);
                editText.setSingleLine(false);
                editText.setHint(R.string.media_image_input_youtube_hint);
                alertDialog2.addButton(android.R.string.cancel, 0, (View.OnClickListener) null);
                final TextView textView = (TextView) alertDialog2.addButton(R.string.next, 4, new AnonymousClass1(alertDialog2));
                if (!TextUtils.isEmpty(editText.getText())) {
                    MediaPickerFragment.this.enableView(textView);
                } else {
                    MediaPickerFragment.this.disableView(textView);
                }
                editText.addTextChangedListener(new TextWatcher() { // from class: com.narvii.media.MediaPickerFragment.5.2
                    @Override // android.text.TextWatcher
                    public void afterTextChanged(Editable editable) {
                    }

                    @Override // android.text.TextWatcher
                    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                    }

                    @Override // android.text.TextWatcher
                    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                        if (!TextUtils.isEmpty(charSequence.toString())) {
                            MediaPickerFragment.this.enableView(textView);
                        } else {
                            MediaPickerFragment.this.disableView(textView);
                        }
                    }
                });
                alertDialog2.show();
            }

            /* renamed from: com.narvii.media.MediaPickerFragment$5$1, reason: invalid class name */
            class AnonymousClass1 implements View.OnClickListener {
                final /* synthetic */ AlertDialog val$pastDlg;

                AnonymousClass1(AlertDialog alertDialog) {
                    this.val$pastDlg = alertDialog;
                }

                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    String editText = this.val$pastDlg.getEditText();
                    if (editText != null && YoutubeUtils.getYoutubeVideoIdFromUrl(editText) != null) {
                        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("ndc://fragment/" + YoutubeVideoPicker.class.getName()));
                        intent.putExtra("url", editText);
                        intent.putExtra("confirmUrl", true);
                        intent.putExtra("pickCallback", MediaPickerFragment.this.pickCallback);
                        intent.putExtra("pickCallbackParams", MediaPickerFragment.this.pickCallbackParams);
                        Bundle bundle = MediaPickerFragment.this.info;
                        if (bundle != null) {
                            intent.putExtra(MediaPickerFragment.PICK_YOUTUBE_NEED_DURATION, bundle.getBoolean(MediaPickerFragment.PICK_YOUTUBE_NEED_DURATION));
                        }
                        MediaPickerFragment.this.startActivityForResult(intent, MediaPickerFragment.REQUEST_YOUTUBE);
                        return;
                    }
                    if (YoutubeUtils.getYoutubePlaylistIdFromUrl(editText) != null) {
                        final NVDialog nVDialog = new NVDialog(MediaPickerFragment.this, R.style.CustomDialogWithAnimation);
                        YoutubePlaylistLayout youtubePlaylistLayout = new YoutubePlaylistLayout(MediaPickerFragment.this.getContext());
                        youtubePlaylistLayout.setData(editText, MediaPickerFragment.this.maximum);
                        nVDialog.setContentView(youtubePlaylistLayout);
                        youtubePlaylistLayout.setPlaylistPickerListener(new YoutubePlaylistLayout.PlaylistPickerListener() { // from class: com.narvii.media.-$$Lambda$MediaPickerFragment$5$1$gNQFGeZYnv725IPW1YD3bplg018
                            @Override // com.narvii.media.YoutubePlaylistLayout.PlaylistPickerListener
                            public final void onFinishPick(List list) {
                                this.f$0.lambda$onClick$0$MediaPickerFragment$5$1(nVDialog, list);
                            }
                        });
                        nVDialog.show();
                        return;
                    }
                    final ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(MediaPickerFragment.this.getContext());
                    aCMAlertDialog.setMessage(MediaPickerFragment.this.getContext().getString(R.string.invalid_link_error));
                    aCMAlertDialog.addButton(MediaPickerFragment.this.getContext().getString(android.R.string.ok), -4473925, new View.OnClickListener() { // from class: com.narvii.media.MediaPickerFragment.5.1.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view2) {
                            aCMAlertDialog.dismiss();
                        }
                    });
                    aCMAlertDialog.show();
                }

                public /* synthetic */ void lambda$onClick$0$MediaPickerFragment$5$1(NVDialog nVDialog, List list) {
                    if (list != null && !list.isEmpty()) {
                        MediaPickerFragment.this.onPhotoResult(list, false);
                    }
                    nVDialog.dismiss();
                }
            }
        });
        alertDialog.show();
    }

    void disableView(TextView textView) {
        if (textView == null) {
            return;
        }
        textView.setBackgroundDrawable(getContext().getResources().getDrawable(R.drawable.button_round_gray));
        textView.setClickable(false);
    }

    void enableView(TextView textView) {
        if (textView == null) {
            return;
        }
        textView.setBackgroundDrawable(getContext().getResources().getDrawable(R.drawable.button_round_green));
        textView.setClickable(true);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        ArrayList listAs;
        String strImportFromCameraResult;
        this.isRequestingActivityResult = false;
        Callback<Boolean> callback = this.requestActivityResultCallback;
        if (callback != null) {
            callback.call(false);
        }
        PhotoManager photoManager = (PhotoManager) getService("photo");
        if (i == REQUEST_CAMERA && (strImportFromCameraResult = photoManager.importFromCameraResult(this.dir, i2, intent)) != null) {
            Media media = new Media();
            media.type = 100;
            media.url = strImportFromCameraResult;
            ArrayList arrayList = new ArrayList();
            arrayList.add(media);
            onPhotoResult(arrayList);
        }
        if (i == REQUEST_PICKER) {
            List<String> listImportAllFromResult = photoManager.importAllFromResult(this.dir, i2, intent);
            ArrayList arrayList2 = new ArrayList();
            for (String str : listImportAllFromResult) {
                Media media2 = new Media();
                media2.type = 100;
                media2.url = str;
                arrayList2.add(media2);
            }
            if (arrayList2.size() > 0) {
                onPhotoResult(arrayList2);
            }
        }
        if ((i == REQUEST_PICKER2 || i == REQUEST_GIPHY || i == REQUEST_YOUTUBE) && i2 == -1 && intent != null) {
            ArrayList listAs2 = JacksonUtils.readListAs(intent.getStringExtra("mediaList"), Media.class);
            boolean booleanExtra = intent.getBooleanExtra("isUHQ", false);
            if (listAs2.size() > 0) {
                onPhotoResult(listAs2, booleanExtra);
            }
        }
        if (i2 == -1 && ((i == REQUEST_AUDIO || i == REQUEST_AUDIO_ONLINE) && (listAs = JacksonUtils.readListAs(intent.getStringExtra("mediaList"), Media.class)) != null && listAs.size() > 0)) {
            if (this.info == null) {
                this.info = new Bundle();
            }
            intent.removeExtra("mediaList");
            if (intent.getExtras() != null) {
                this.info.putAll(intent.getExtras());
            }
            Iterator<OnResultListener> it = this.listenerEventDispatcher.iterator();
            while (it.hasNext()) {
                it.next().onPickMediaResult(listAs, this.info);
            }
        }
        if (i == REQUEST_COLOR && i2 == -1 && intent != null) {
            int intExtra = intent.getIntExtra(TtmlNode.ATTR_TTS_COLOR, 0);
            OnPickColorResultListener onPickColorResultListener = this.pickColorResultListener;
            if (onPickColorResultListener != null) {
                onPickColorResultListener.onPickColorResult(intExtra, this.info);
            }
        }
        super.onActivityResult(i, i2, intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPhotoResult(List<Media> list) {
        onPhotoResult(list, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPhotoResult(List<Media> list, boolean z) {
        if (this.pickCallback != null) {
            MediaPickCallbackManager mediaPickCallbackManager = (MediaPickCallbackManager) getService("mediaPickCallback");
            MediaPickCallback callback = mediaPickCallbackManager == null ? null : mediaPickCallbackManager.getCallback(this.pickCallback);
            if (callback == null) {
                return;
            }
            if (this.pickCallbackParams == null) {
                this.pickCallbackParams = new HashMap<>();
            }
            this.pickCallbackParams.put("mediaList", JacksonUtils.writeAsString(list));
            HashMap<String, Object> map = this.pickCallbackParams;
            Bundle bundle = this.info;
            map.put(PICK_SOURCE, bundle != null ? bundle.getString(PICK_SOURCE) : null);
            callback.onPick(this.pickCallbackParams, (NVActivity) getActivity(), false);
            return;
        }
        if (z) {
            if (this.info == null) {
                this.info = new Bundle();
            }
            this.info.putBoolean("isUHQ", z);
        }
        Iterator<OnResultListener> it = this.listenerEventDispatcher.iterator();
        while (it.hasNext()) {
            it.next().onPickMediaResult(list, this.info);
        }
    }

    class LatestImage {
        Bitmap bitmap;
        long dateAdded;
        long imageId;
        String path;

        LatestImage() {
        }
    }

    private LatestImage getLatestImage() {
        try {
            if (PermissionUtils.hasSelfPermission(getContext(), "android.permission.READ_EXTERNAL_STORAGE")) {
                ContentResolver contentResolver = getActivity().getContentResolver();
                Cursor cursorQuery = contentResolver.query(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, new String[]{"_id", "_data", "date_added"}, null, null, "date_added");
                if (cursorQuery != null && cursorQuery.moveToLast()) {
                    LatestImage latestImage = new LatestImage();
                    latestImage.imageId = cursorQuery.getLong(0);
                    latestImage.path = cursorQuery.getString(1);
                    latestImage.dateAdded = cursorQuery.getInt(2) * 1000;
                    SharedPreferences sharedPreferences = (SharedPreferences) getService("prefs");
                    if (System.currentTimeMillis() - latestImage.dateAdded < 300000 && sharedPreferences.getLong("omitLatestImageId", 0L) != latestImage.imageId) {
                        latestImage.bitmap = MediaStore.Images.Thumbnails.getThumbnail(contentResolver, latestImage.imageId, 1, null);
                        cursorQuery.close();
                        return latestImage;
                    }
                }
                cursorQuery.close();
            }
        } catch (Exception e) {
            Log.w("fail to read phone images", e);
        } catch (OutOfMemoryError e2) {
            Log.w("out of memory, when try to read phone images", e2);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void omitLatestImage(LatestImage latestImage) {
        if (latestImage != null) {
            ((SharedPreferences) getService("prefs")).edit().putLong("omitLatestImageId", latestImage.imageId).apply();
        }
    }

    /* loaded from: classes.dex */
    public static class MediaPickerConfiguration {
        public static final int GALLERY_PHOTO_MODE_HAS_GIF = 1;
        public static final int GALLERY_PHOTO_MODE_HAS_LAST_PHOTO = 2;
        public static final int GALLERY_VIDEO_HAS_EDITOR = 1;
        public static final int GALLERY_VIDEO_IS_MULTI = 2;
        public static final int GALLERY_VIDEO_NO_EDITOR = 0;
        public static final int GALLERY_VIDEO_SELECT_WITH_IMAGE = 4;
        public static final int OPTION_AUDIO = 64;
        public static final int OPTION_AUDIO_LOCAL = 128;
        public static final int OPTION_CAMERA = 2;
        public static final int OPTION_COLORPICKER = 1;
        public static final int OPTION_DELETE = 256;
        public static final int OPTION_GALLERY_PHOTO = 8;
        public static final int OPTION_GALLERY_VIDEO = 16;
        public static final int OPTION_GIPHY = 4;
        public static final int OPTION_YOUTUBE = 32;
        public int maximum = 0;
        public int minWidth = 0;
        public int minHeight = 0;
        public int minGifWidth = 0;
        public int minGifHeight = 0;
        public boolean isSingle = false;
        public int optionList = 62;

        @JsonDeserialize(contentAs = Option.class)
        @JsonSerialize(contentAs = Option.class)
        public List<Option> customOptions = null;
        public boolean isGiphySticker = false;
        public boolean isGalleryNoCopy = false;
        public int galleryPhotoMode = 3;
        public int galleryVideoMode = 1;
        public boolean isYoutubeWithDialog = false;
        public boolean isGoogleVideoSearch = false;

        public void setOptionListByFlag(int i) {
            this.isSingle = (i & 4) != 0;
            this.optionList = 0;
            if ((i & 128) != 0) {
                this.optionList |= 1;
            }
            int i2 = i & 512;
            if (i2 == 0) {
                if ((i & 8) == 0) {
                    this.optionList |= 2;
                }
                if ((i & 16) == 0 && (i & 32) == 0) {
                    this.optionList |= 4;
                }
            }
            this.galleryPhotoMode = 2;
            if (i2 == 0) {
                this.optionList |= 8;
                this.galleryPhotoMode |= (i & 16) != 0 ? 0 : 1;
            }
            int i3 = i & 2;
            if (i3 == 0) {
                this.optionList |= 16;
                if ((262144 & i) != 0) {
                    this.galleryVideoMode = 2;
                } else if ((131072 & i) != 0) {
                    this.galleryVideoMode = 0;
                } else {
                    this.galleryVideoMode = 1;
                }
            }
            if (i3 == 0) {
                this.optionList |= 32;
                this.isYoutubeWithDialog = i2 != 0;
            }
            if ((i & 16384) != 0) {
                if ((32768 & i) == 0) {
                    this.optionList |= 64;
                } else {
                    this.optionList |= 128;
                }
            }
            if ((i & 64) != 0) {
                this.optionList |= 256;
            }
        }

        public void setSize(int i, int i2, int i3, int i4) {
            this.minWidth = i;
            this.minHeight = i2;
            this.minGifWidth = i3;
            this.minGifHeight = i4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean hasGalleryPhoto() {
            return (this.optionList & 8) != 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isGalleryPhotoNoGif() {
            return (this.galleryPhotoMode & 1) == 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean hasGalleryVideo() {
            return (this.optionList & 16) != 0;
        }
    }
}
