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
import androidx.fragment.app.Fragment;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.google.android.gms.common.internal.ImagesContract;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.app.NVDialog;
import com.narvii.app.NVFragment;
import com.narvii.app.incubator.IncubatorApplication;
import com.narvii.lib.R;
import com.narvii.logging.LogUtils;
import com.narvii.media.color.BackgroundColorFragment;
import com.narvii.media.online.audio.OnlineAudioPickerCategoryFragment;
import com.narvii.model.Media;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.permisson.GranularMediaPermissions;
import com.narvii.permisson.NVPermission;
import com.narvii.permisson.PermissionUtils;
import com.narvii.permisson.PermissionUtilsV2;
import com.narvii.photos.PhotoManager;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.YoutubeUtils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.widget.ACMAlertDialog;
import com.safedk.android.utils.Logger;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
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

    class LatestImage {
        Bitmap bitmap;
        long dateAdded;
        long imageId;
        String path;

        LatestImage() {
        }
    }

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

        /* JADX INFO: Access modifiers changed from: private */
        public boolean hasGalleryPhoto() {
            return (this.optionList & 8) != 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean hasGalleryVideo() {
            return (this.optionList & 16) != 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isGalleryPhotoNoGif() {
            return (this.galleryPhotoMode & 1) == 0;
        }

        public void setOptionListByFlag(int i10) {
            this.isSingle = (i10 & 4) != 0;
            this.optionList = 0;
            if ((i10 & 128) != 0) {
                this.optionList = 1;
            }
            int i11 = i10 & 512;
            if (i11 == 0) {
                if ((i10 & 8) == 0) {
                    this.optionList |= 2;
                }
                if ((i10 & 16) == 0 && (i10 & 32) == 0) {
                    this.optionList |= 4;
                }
            }
            this.galleryPhotoMode = 2;
            if (i11 == 0) {
                this.optionList |= 8;
                this.galleryPhotoMode = ((i10 & 16) != 0 ? 0 : 1) | 2;
            }
            int i12 = i10 & 2;
            if (i12 == 0) {
                this.optionList |= 16;
                if ((262144 & i10) != 0) {
                    this.galleryVideoMode = 2;
                } else if ((131072 & i10) != 0) {
                    this.galleryVideoMode = 0;
                } else {
                    this.galleryVideoMode = 1;
                }
            }
            if (i12 == 0) {
                this.optionList |= 32;
                this.isYoutubeWithDialog = i11 != 0;
            }
            if ((i10 & 16384) != 0) {
                if ((32768 & i10) == 0) {
                    this.optionList |= 64;
                } else {
                    this.optionList |= 128;
                }
            }
            if ((i10 & 64) != 0) {
                this.optionList |= 256;
            }
        }

        public void setSize(int i10, int i11, int i12, int i13) {
            this.minWidth = i10;
            this.minHeight = i11;
            this.minGifWidth = i12;
            this.minGifHeight = i13;
        }
    }

    public interface OnCustomOptionSelectedListener {
        void onCustomOptionSelected(Option option, Bundle bundle);
    }

    public interface OnPickColorResultListener {
        void onPickColorResult(int i10, Bundle bundle);
    }

    public interface OnResultListener {
        void onPickMediaResult(List<Media> list, Bundle bundle);
    }

    public interface OnStartPickListener {
        void onStartPickMedia(int i10);
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

        public Option(int i10, String str, int i11) {
            this.isCustom = false;
            this.position = -1;
            this.id = i10;
            this.name = str;
            this.flag = i11;
        }

        public Option(int i10, String str, int i11, int i12) {
            this(i10, str, i11);
            this.position = i12;
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
                    latestImage.dateAdded = ((long) cursorQuery.getInt(2)) * 1000;
                    SharedPreferences sharedPreferences = (SharedPreferences) getService(IncubatorApplication.PREFS_SERVICE_KEY);
                    if (System.currentTimeMillis() - latestImage.dateAdded < 300000) {
                        long j6 = sharedPreferences.getLong("omitLatestImageId", 0L);
                        long j10 = latestImage.imageId;
                        if (j6 != j10) {
                            latestImage.bitmap = MediaStore.Images.Thumbnails.getThumbnail(contentResolver, j10, 1, null);
                            cursorQuery.close();
                            return latestImage;
                        }
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
    public void onPhotoResult(List<Media> list) {
        onPhotoResult(list, false);
    }

    public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
        if (p1 == null) {
            return;
        }
        super.startActivityForResult(p1, p5);
    }

    public static void safedk_MediaPickerFragment_startActivityForResult_b7c3b91dc8a174550ffac056e1f2ca9b(MediaPickerFragment p0, Intent p1, int p5) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/media/MediaPickerFragment;->startActivityForResult(Landroid/content/Intent;I)V");
        if (p1 == null) {
            return;
        }
        p0.startActivityForResult(p1, p5);
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    public boolean isRequestingActivityResult() {
        return this.isRequestingActivityResult;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public boolean isValidPage() {
        return false;
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        ArrayList listAs;
        String strImportFromCameraResult;
        this.isRequestingActivityResult = false;
        Callback<Boolean> callback = this.requestActivityResultCallback;
        if (callback != null) {
            callback.call(Boolean.FALSE);
        }
        PhotoManager photoManager = (PhotoManager) getService("photo");
        if (i10 == REQUEST_CAMERA && (strImportFromCameraResult = photoManager.importFromCameraResult(this.dir, i11, intent)) != null) {
            Media media = new Media();
            media.type = 100;
            media.url = strImportFromCameraResult;
            ArrayList arrayList = new ArrayList();
            arrayList.add(media);
            onPhotoResult(arrayList);
        }
        if (i10 == REQUEST_PICKER) {
            List<String> listImportAllFromResult = photoManager.importAllFromResult(this.dir, i11, intent);
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
        if ((i10 == REQUEST_PICKER2 || i10 == REQUEST_GIPHY || i10 == REQUEST_YOUTUBE) && i11 == -1 && intent != null) {
            ArrayList listAs2 = JacksonUtils.readListAs(intent.getStringExtra("mediaList"), Media.class);
            boolean booleanExtra = intent.getBooleanExtra("isUHQ", false);
            if (listAs2.size() > 0) {
                onPhotoResult(listAs2, booleanExtra);
            }
        }
        if (i11 == -1 && ((i10 == REQUEST_AUDIO || i10 == REQUEST_AUDIO_ONLINE) && (listAs = JacksonUtils.readListAs(intent.getStringExtra("mediaList"), Media.class)) != null && listAs.size() > 0)) {
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
        if (i10 == REQUEST_COLOR && i11 == -1 && intent != null) {
            int intExtra = intent.getIntExtra("color", 0);
            OnPickColorResultListener onPickColorResultListener = this.pickColorResultListener;
            if (onPickColorResultListener != null) {
                onPickColorResultListener.onPickColorResult(intExtra, this.info);
            }
        }
        super.onActivityResult(i10, i11, intent);
    }

    @Deprecated
    public void pickMedia(File file, Bundle bundle, int i10) {
        pickMedia(file, bundle, i10, 0);
    }

    public void setOnCustomOptionSelectedListener(OnCustomOptionSelectedListener onCustomOptionSelectedListener) {
        this.onCustomOptionSelectedListener = onCustomOptionSelectedListener;
    }

    public void setRequestActivityResultCallback(Callback<Boolean> callback) {
        this.requestActivityResultCallback = callback;
    }

    private boolean hasAuthorityForVideo() {
        if (this.configHelper == null) {
            int i10 = NVApplication.CLIENT_TYPE;
            if (i10 == 200) {
                this.configHelper = new CommunityConfigHelper(this, getIntParam("__communityId"));
            } else if (i10 == 100) {
                this.configHelper = new CommunityConfigHelper(this);
            }
        }
        CommunityConfigHelper communityConfigHelper = this.configHelper;
        return communityConfigHelper == null || (this.mediaPickerConfiguration.galleryVideoMode & 1) == 0 || communityConfigHelper.isVideoUploadEnabled();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void omitLatestImage(LatestImage latestImage) {
        if (latestImage != null) {
            ((SharedPreferences) getService(IncubatorApplication.PREFS_SERVICE_KEY)).edit().putLong("omitLatestImageId", latestImage.imageId).apply();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPhotoResult(List<Media> list, boolean z6) {
        if (this.pickCallback == null) {
            if (z6) {
                if (this.info == null) {
                    this.info = new Bundle();
                }
                this.info.putBoolean("isUHQ", z6);
            }
            Iterator<OnResultListener> it = this.listenerEventDispatcher.iterator();
            while (it.hasNext()) {
                it.next().onPickMediaResult(list, this.info);
            }
            return;
        }
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
    }

    private void openGiphyPicker() {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("ndc://fragment/" + GiphyPickerFragment.class.getName()));
        intent.putExtra("single", this.mediaPickerConfiguration.isSingle);
        int i10 = this.maximum;
        if (i10 != 0) {
            intent.putExtra("maximum", i10);
        }
        intent.putExtra("minWidth", this.minGifWidth);
        intent.putExtra("minHeight", this.minGifHeight);
        intent.putExtra("pickCallback", this.pickCallback);
        intent.putExtra("pickCallbackParams", this.pickCallbackParams);
        intent.putExtra("dir", this.dir);
        intent.putExtra("maxStr", this.maxStr);
        intent.putExtra("chooseSticker", this.mediaPickerConfiguration.isGiphySticker);
        safedk_MediaPickerFragment_startActivityForResult_b7c3b91dc8a174550ffac056e1f2ca9b(this, intent, REQUEST_GIPHY);
    }

    private void openPhoneImage() {
        new HQBannerClickListener() { // from class: com.narvii.media.MediaPickerFragment.3
            @Override // com.narvii.media.HQBannerClickListener
            public void onBannerClicked() {
            }
        };
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("ndc://fragment/" + PhoneImagePickerFragment.class.getName()));
        intent.putExtra("single", this.mediaPickerConfiguration.isSingle);
        int i10 = this.maximum;
        if (i10 != 0) {
            intent.putExtra("maximum", i10);
        }
        int i11 = 1;
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
        int i12 = (this.mediaPickerConfiguration.hasGalleryVideo() && hasAuthorityForVideo()) ? 2 : 0;
        if (this.mediaPickerConfiguration.hasGalleryPhoto()) {
            i12 |= 1;
        }
        int i13 = this.mediaPickerConfiguration.galleryVideoMode;
        if ((i13 & 2) != 0) {
            i11 = (i13 & 4) != 0 ? 3 : 2;
        } else if ((i13 & 1) != 0) {
            i11 = 0;
        }
        intent.putExtra("videoSelectMode", i11);
        if (this.info == null) {
            this.info = new Bundle();
        }
        int i14 = this.info.getInt(PICK_MIN_VIDEO_DURATION, 0);
        if (i14 <= 0 && i11 == 0) {
            i14 = 3000;
        }
        intent.putExtra(PICK_MIN_VIDEO_DURATION, i14);
        intent.putExtra("type", i12);
        intent.putExtra("dir", this.dir);
        intent.putExtra("checkUnsupportedImageType", this.info.getBoolean("checkUnsupportedImageType"));
        safedk_MediaPickerFragment_startActivityForResult_b7c3b91dc8a174550ffac056e1f2ca9b(this, intent, REQUEST_PICKER2);
    }

    private void showYoutubeDialogue() {
        AlertDialog alertDialog = new AlertDialog(getContext());
        alertDialog.setTitle(R.string.media_image_youtube);
        alertDialog.setVerticalButtons();
        alertDialog.addButton(R.string.media_image_search_youtube, 1024, new View.OnClickListener() { // from class: com.narvii.media.MediaPickerFragment.4
            public static void safedk_MediaPickerFragment_startActivityForResult_b7c3b91dc8a174550ffac056e1f2ca9b(MediaPickerFragment p0, Intent p1, int p5) {
                Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/media/MediaPickerFragment;->startActivityForResult(Landroid/content/Intent;I)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivityForResult(p1, p5);
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("ndc://fragment/" + YoutubeVideoPicker.class.getName()));
                intent.putExtra("pickCallback", MediaPickerFragment.this.pickCallback);
                intent.putExtra("pickCallbackParams", MediaPickerFragment.this.pickCallbackParams);
                Bundle bundle = MediaPickerFragment.this.info;
                if (bundle != null) {
                    intent.putExtra(MediaPickerFragment.PICK_YOUTUBE_NEED_DURATION, bundle.getBoolean(MediaPickerFragment.PICK_YOUTUBE_NEED_DURATION));
                }
                safedk_MediaPickerFragment_startActivityForResult_b7c3b91dc8a174550ffac056e1f2ca9b(MediaPickerFragment.this, intent, MediaPickerFragment.REQUEST_YOUTUBE);
            }
        });
        alertDialog.addButton(R.string.media_image_input_youtube_urls, 1024, new View.OnClickListener() { // from class: com.narvii.media.MediaPickerFragment.5

            /* JADX INFO: renamed from: com.narvii.media.MediaPickerFragment$5$1, reason: invalid class name */
            class AnonymousClass1 implements View.OnClickListener {
                final /* synthetic */ AlertDialog val$pastDlg;

                public static void safedk_MediaPickerFragment_startActivityForResult_b7c3b91dc8a174550ffac056e1f2ca9b(MediaPickerFragment p0, Intent p1, int p5) {
                    Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/media/MediaPickerFragment;->startActivityForResult(Landroid/content/Intent;I)V");
                    if (p1 == null) {
                        return;
                    }
                    p0.startActivityForResult(p1, p5);
                }

                AnonymousClass1(AlertDialog alertDialog) {
                    this.val$pastDlg = alertDialog;
                }

                /* JADX INFO: Access modifiers changed from: private */
                public /* synthetic */ void lambda$onClick$0(NVDialog nVDialog, List list) {
                    if (list != null && !list.isEmpty()) {
                        MediaPickerFragment.this.onPhotoResult(list, false);
                    }
                    nVDialog.dismiss();
                }

                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    String editText = this.val$pastDlg.getEditText();
                    if (editText == null || YoutubeUtils.getYoutubeVideoIdFromUrl(editText) == null) {
                        if (YoutubeUtils.getYoutubePlaylistIdFromUrl(editText) == null) {
                            final ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(MediaPickerFragment.this.getContext());
                            aCMAlertDialog.setMessage(MediaPickerFragment.this.getContext().getString(R.string.invalid_link_error));
                            aCMAlertDialog.addButton(MediaPickerFragment.this.getContext().getString(android.R.string.ok), -4473925, new View.OnClickListener() { // from class: com.narvii.media.MediaPickerFragment.5.1.1
                                @Override // android.view.View.OnClickListener
                                public void onClick(View view2) {
                                    aCMAlertDialog.dismiss();
                                }
                            });
                            aCMAlertDialog.show();
                            return;
                        }
                        final NVDialog nVDialog = new NVDialog(MediaPickerFragment.this, R.style.CustomDialogWithAnimation);
                        YoutubePlaylistLayout youtubePlaylistLayout = new YoutubePlaylistLayout(MediaPickerFragment.this.getContext());
                        youtubePlaylistLayout.setData(editText, MediaPickerFragment.this.maximum);
                        nVDialog.setContentView(youtubePlaylistLayout);
                        youtubePlaylistLayout.setPlaylistPickerListener(new YoutubePlaylistLayout.PlaylistPickerListener() { // from class: com.narvii.media.c
                            @Override // com.narvii.media.YoutubePlaylistLayout.PlaylistPickerListener
                            public final void onFinishPick(List list) {
                                this.f2448a.lambda$onClick$0(nVDialog, list);
                            }
                        });
                        nVDialog.show();
                        return;
                    }
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("ndc://fragment/" + YoutubeVideoPicker.class.getName()));
                    intent.putExtra(ImagesContract.URL, editText);
                    intent.putExtra("confirmUrl", true);
                    intent.putExtra("pickCallback", MediaPickerFragment.this.pickCallback);
                    intent.putExtra("pickCallbackParams", MediaPickerFragment.this.pickCallbackParams);
                    Bundle bundle = MediaPickerFragment.this.info;
                    if (bundle != null) {
                        intent.putExtra(MediaPickerFragment.PICK_YOUTUBE_NEED_DURATION, bundle.getBoolean(MediaPickerFragment.PICK_YOUTUBE_NEED_DURATION));
                    }
                    safedk_MediaPickerFragment_startActivityForResult_b7c3b91dc8a174550ffac056e1f2ca9b(MediaPickerFragment.this, intent, MediaPickerFragment.REQUEST_YOUTUBE);
                }
            }

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
                if (TextUtils.isEmpty(editText.getText())) {
                    MediaPickerFragment.this.disableView(textView);
                } else {
                    MediaPickerFragment.this.enableView(textView);
                }
                editText.addTextChangedListener(new TextWatcher() { // from class: com.narvii.media.MediaPickerFragment.5.2
                    @Override // android.text.TextWatcher
                    public void afterTextChanged(Editable editable) {
                    }

                    @Override // android.text.TextWatcher
                    public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
                    }

                    @Override // android.text.TextWatcher
                    public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
                        if (!TextUtils.isEmpty(charSequence.toString())) {
                            MediaPickerFragment.this.enableView(textView);
                        } else {
                            MediaPickerFragment.this.disableView(textView);
                        }
                    }
                });
                alertDialog2.show();
            }
        });
        alertDialog.show();
    }

    public void addOnResultListener(OnResultListener onResultListener) {
        if (onResultListener == null || this.listenerEventDispatcher.contains(onResultListener)) {
            return;
        }
        this.listenerEventDispatcher.add(onResultListener);
    }

    protected void buildOptions(ArrayList<Option> arrayList, MediaPickerConfiguration mediaPickerConfiguration) {
        int i10 = mediaPickerConfiguration.optionList;
        PhotoManager photoManager = (PhotoManager) getService("photo");
        if ((i10 & 1) != 0) {
            int i11 = this.pickColorStringId;
            if (i11 == 0) {
                i11 = R.string.color_picker;
            }
            arrayList.add(new Option(0, getString(i11), 0));
        }
        if ((i10 & 2) != 0 && photoManager.hasCamera()) {
            arrayList.add(new Option(1, getString(R.string.media_image_camera), 0));
        }
        if ((i10 & 4) != 0) {
            arrayList.add(new Option(4, getString(this.mediaPickerConfiguration.isGiphySticker ? R.string.media_image_sticker : R.string.media_image_giphy), 0));
        }
        if ((i10 & 8) != 0 || (i10 & 16) != 0) {
            arrayList.add(new Option(2, getString(this.mediaPickerConfiguration.hasGalleryPhoto() ? R.string.media_image_picker : R.string.media_video_picker_1), 0));
        }
        if ((i10 & 32) != 0) {
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
        if ((i10 & 64) != 0) {
            arrayList.add(new Option(11, getString(R.string.media_music_picker), 0));
        }
        if ((i10 & 128) != 0) {
            arrayList.add(new Option(10, getString(R.string.media_music_picker), 0));
        }
        if ((i10 & 256) != 0) {
            int i12 = this.deleteStringId;
            if (i12 == 0) {
                i12 = R.string.delete;
            }
            arrayList.add(new Option(19, getString(i12), 1));
        }
        List<Option> list = mediaPickerConfiguration.customOptions;
        if (list != null) {
            for (Option option : list) {
                if (option != null) {
                    option.isCustom = true;
                    int i13 = option.position;
                    if (i13 != -1) {
                        arrayList.add(i13, option);
                    } else {
                        arrayList.add(option);
                    }
                }
            }
        }
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

    protected void onOptionsClicked(Option option) {
        String str;
        int i10;
        int i11 = option.id;
        if (i11 != 0) {
            i10 = 1;
            if (i11 != 1) {
                i10 = 2;
                if (i11 == 2 || i11 == 3) {
                    str = "Photo Library";
                } else {
                    i10 = 4;
                    if (i11 == 4 || i11 == 5) {
                        i10 = 3;
                        str = "Giphy";
                    } else if (i11 != 19) {
                        str = null;
                        switch (i11) {
                            case 7:
                            case 8:
                            case 9:
                                str = "Youtube";
                                break;
                            case 10:
                            case 11:
                                i10 = 7;
                                break;
                            default:
                                i10 = 0;
                                break;
                        }
                    } else {
                        str = "delete";
                        i10 = -1;
                    }
                }
            } else {
                str = "Camera";
            }
        } else {
            str = "Color";
            i10 = 6;
        }
        if (this.info == null) {
            this.info = new Bundle();
        }
        this.info.putInt(PICK_FROM, i10);
        if (str != null) {
            this.info.putString(PICK_SOURCE, str);
        }
        pickMediaOption(option);
        OnStartPickListener onStartPickListener = this.startPickListener;
        if (onStartPickListener != null) {
            onStartPickListener.onStartPickMedia(i10);
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.permisson.PermissionListener
    public void onPermissionGranted(int i10) {
        if (i10 == 104) {
            try {
                safedk_MediaPickerFragment_startActivityForResult_b7c3b91dc8a174550ffac056e1f2ca9b(this, ((PhotoManager) getService("photo")).createCameraIntent(), REQUEST_CAMERA);
                return;
            } catch (Exception unused) {
                return;
            }
        }
        if (i10 == 301) {
            openPhoneImage();
            return;
        }
        if (i10 == 303) {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("ndc://fragment/" + PhoneAudioPickerFragment.class.getName()));
            intent.putExtras(PhoneAudioPickerFragment.getBundle(this.mediaPickerConfiguration.isSingle, this.maximum, this.maxStr, this.dir));
            safedk_MediaPickerFragment_startActivityForResult_b7c3b91dc8a174550ffac056e1f2ca9b(this, intent, REQUEST_AUDIO);
        }
    }

    @Deprecated
    public void pickMedia(File file, Bundle bundle, int i10, List<Option> list) {
        pickMedia(file, bundle, i10, 0, list);
    }

    /* JADX WARN: Code duplicated, block: B:40:0x012e  */
    protected void pickMediaOption(Option option) {
        if (option.isCustom) {
            OnCustomOptionSelectedListener onCustomOptionSelectedListener = this.onCustomOptionSelectedListener;
            if (onCustomOptionSelectedListener != null) {
                onCustomOptionSelectedListener.onCustomOptionSelected(option, this.info);
                return;
            }
            return;
        }
        PhotoManager photoManager = (PhotoManager) getService("photo");
        int i10 = option.id;
        if (i10 == 0) {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("ndc://fragment/" + BackgroundColorFragment.class.getName()));
            int i11 = this.oldColor;
            if (i11 != 0) {
                intent.putExtra("color", i11);
            }
            safedk_MediaPickerFragment_startActivityForResult_b7c3b91dc8a174550ffac056e1f2ca9b(this, intent, REQUEST_COLOR);
        } else if (i10 != 1) {
            if (i10 == 2 || i10 == 3) {
                NVPermission.builder(this).permission(PermissionUtilsV2.INSTANCE.obtainPermissionName(GranularMediaPermissions.READ_MEDIA_IMAGES)).requestCode(301).permissionListener(this).request();
            } else if (i10 == 4 || i10 == 5) {
                openGiphyPicker();
            } else if (i10 != 19) {
                switch (i10) {
                    case 7:
                        Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse("ndc://fragment/" + YoutubeVideoPicker.class.getName()));
                        intent2.putExtra("pickCallback", this.pickCallback);
                        intent2.putExtra("pickCallbackParams", this.pickCallbackParams);
                        intent2.putExtra("googleVideoSearch", this.mediaPickerConfiguration.isGoogleVideoSearch);
                        Bundle bundle = this.info;
                        if (bundle != null) {
                            intent2.putExtra(PICK_YOUTUBE_NEED_DURATION, bundle.getBoolean(PICK_YOUTUBE_NEED_DURATION));
                        }
                        safedk_MediaPickerFragment_startActivityForResult_b7c3b91dc8a174550ffac056e1f2ca9b(this, intent2, REQUEST_YOUTUBE);
                        break;
                    case 8:
                        String pasteYoutubeUrl = getPasteYoutubeUrl();
                        if (pasteYoutubeUrl != null) {
                            Intent intent3 = new Intent("android.intent.action.VIEW", Uri.parse("ndc://fragment/" + YoutubeVideoPicker.class.getName()));
                            intent3.putExtra(ImagesContract.URL, pasteYoutubeUrl);
                            intent3.putExtra("confirmUrl", true);
                            intent3.putExtra("pickCallback", this.pickCallback);
                            intent3.putExtra("pickCallbackParams", this.pickCallbackParams);
                            Bundle bundle2 = this.info;
                            if (bundle2 != null) {
                                intent3.putExtra(PICK_YOUTUBE_NEED_DURATION, bundle2.getBoolean(PICK_YOUTUBE_NEED_DURATION));
                            }
                            safedk_MediaPickerFragment_startActivityForResult_b7c3b91dc8a174550ffac056e1f2ca9b(this, intent3, REQUEST_YOUTUBE);
                        }
                        break;
                    case 9:
                        showYoutubeDialogue();
                        break;
                    case 10:
                        NVPermission.builder(this).permission(PermissionUtilsV2.INSTANCE.obtainPermissionName(GranularMediaPermissions.READ_MEDIA_AUDIO)).requestCode(303).permissionListener(this).request();
                        break;
                    case 11:
                        Intent intent4 = new Intent("android.intent.action.VIEW", Uri.parse("ndc://fragment/" + OnlineAudioPickerCategoryFragment.class.getName()));
                        intent4.putExtras(PhoneAudioPickerFragment.getBundle(this.mediaPickerConfiguration.isSingle, this.maximum, this.maxStr, this.dir));
                        Bundle bundle3 = this.info;
                        if (bundle3 != null) {
                            intent4.putExtra(PICK_ONLINE_AUDIO_TARGET_TAB, bundle3.getString(PICK_ONLINE_AUDIO_TARGET_TAB));
                        }
                        safedk_MediaPickerFragment_startActivityForResult_b7c3b91dc8a174550ffac056e1f2ca9b(this, intent4, REQUEST_AUDIO_ONLINE);
                        break;
                    case 12:
                        onPhotoResult(new ArrayList());
                        break;
                }
            } else {
                onPhotoResult(new ArrayList());
            }
        } else if (NVApplication.CLIENT_TYPE == 200) {
            try {
                safedk_MediaPickerFragment_startActivityForResult_b7c3b91dc8a174550ffac056e1f2ca9b(this, photoManager.createCameraIntent(), REQUEST_CAMERA);
            } catch (Exception unused) {
            }
        } else {
            NVPermission.builder(this).permissions(new String[]{"android.permission.CAMERA"}).requestCode(104).permissionListener(this).request();
        }
        this.isRequestingActivityResult = true;
        Callback<Boolean> callback = this.requestActivityResultCallback;
        if (callback != null) {
            callback.call(Boolean.TRUE);
        }
    }

    public void removeOnResultListener(OnResultListener onResultListener) {
        if (onResultListener == null) {
            return;
        }
        this.listenerEventDispatcher.remove(onResultListener);
    }

    @Override // androidx.fragment.app.Fragment
    public void startActivityForResult(Intent intent, int i10) {
        List<OnResultListener> list = this.listenerEventDispatcher;
        if (list != null) {
            for (OnResultListener onResultListener : list) {
                if (onResultListener instanceof NVContext) {
                    LogUtils.changeNextPageRefererIfNull((NVContext) onResultListener);
                }
            }
        }
        safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(this, intent, i10);
    }

    private String getPasteYoutubeUrl() {
        String strValueOf;
        try {
            strValueOf = String.valueOf(((ClipboardManager) getContext().getSystemService("clipboard")).getText());
        } catch (Exception unused) {
            strValueOf = null;
        }
        if (YoutubeUtils.getYoutubeVideoIdFromUrl(strValueOf) == null) {
            return null;
        }
        return strValueOf;
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        File file;
        super.onCreate(bundle);
        if (bundle != null) {
            String string = bundle.getString("dir");
            if (string == null) {
                file = null;
            } else {
                file = new File(string);
            }
            this.dir = file;
            this.info = bundle.getBundle("pickInfo");
            this.mediaPickerConfiguration = (MediaPickerConfiguration) JacksonUtils.readAs(bundle.getString("configs"), MediaPickerConfiguration.class);
            this.maximum = bundle.getInt("maximum");
            this.minWidth = bundle.getInt("minWidth");
            this.minHeight = bundle.getInt("minHeight");
            this.pickCallback = bundle.getString("pickCallback");
            this.pickCallbackParams = (HashMap) bundle.getSerializable("pickCallbackParams");
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        String absolutePath;
        super.onSaveInstanceState(bundle);
        File file = this.dir;
        if (file == null) {
            absolutePath = null;
        } else {
            absolutePath = file.getAbsolutePath();
        }
        bundle.putString("dir", absolutePath);
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
    public void pickMedia(File file, Bundle bundle, int i10, int i11) {
        pickMedia(file, bundle, i10, i11, 0, 0, 0, 0, null);
    }

    @Deprecated
    public void pickMedia(File file, Bundle bundle, int i10, int i11, List<Option> list) {
        pickMedia(file, bundle, i10, i11, 0, 0, 0, 0, list);
    }

    @Deprecated
    public void pickMedia(File file, Bundle bundle, int i10, int i11, int i12, int i13, int i14, int i15) {
        pickMedia(file, bundle, i10, i11, i12, i13, i14, i15, null);
    }

    @Deprecated
    public void pickMedia(File file, Bundle bundle, int i10, int i11, int i12, int i13, int i14, int i15, List<Option> list) {
        MediaPickerConfiguration mediaPickerConfiguration = new MediaPickerConfiguration();
        this.dir = file;
        this.info = bundle;
        mediaPickerConfiguration.maximum = i11;
        mediaPickerConfiguration.minWidth = i12;
        mediaPickerConfiguration.minHeight = i13;
        mediaPickerConfiguration.minGifWidth = i14;
        mediaPickerConfiguration.minGifHeight = i15;
        mediaPickerConfiguration.customOptions = list;
        mediaPickerConfiguration.setOptionListByFlag(i10);
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
                    ArrayList arrayList2 = new ArrayList();
                    PhotoManager photoManager = (PhotoManager) MediaPickerFragment.this.getService("photo");
                    try {
                        String uri = (MediaPickerFragment.this.dir == null || MediaPickerFragment.this.mediaPickerConfiguration.isGalleryNoCopy) ? photoManager.getUri(new File(latestImage.path)) : photoManager.importPhoto(MediaPickerFragment.this.dir, Uri.fromFile(new File(latestImage.path)));
                        Media media = new Media();
                        media.type = 100;
                        media.url = uri;
                        arrayList2.add(media);
                        MediaPickerFragment mediaPickerFragment = MediaPickerFragment.this;
                        if (mediaPickerFragment.info == null) {
                            mediaPickerFragment.info = new Bundle();
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
        for (Option option : arrayList) {
            actionSheetDialog.addItem(option.name, option.flag);
        }
        actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.media.MediaPickerFragment.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i10) {
                MediaPickerFragment.this.onOptionsClicked((Option) arrayList.get(i10));
                MediaPickerFragment.this.omitLatestImage(latestImage);
            }
        });
        actionSheetDialog.show();
    }
}
