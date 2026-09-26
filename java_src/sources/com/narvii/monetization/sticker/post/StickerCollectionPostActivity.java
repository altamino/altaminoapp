package com.narvii.monetization.sticker.post;

import ai.medialab.medialabads2.maliciousadblockers.RedirectBlockingFragmentActivity;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.firebase.sessions.settings.c;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.media.MediaPickerFragment;
import com.narvii.model.Media;
import com.narvii.model.Sticker;
import com.narvii.model.api.ApiResponse;
import com.narvii.modulization.Module;
import com.narvii.monetization.sticker.StickerService;
import com.narvii.monetization.sticker.model.StickerCollection;
import com.narvii.monetization.sticker.model.StickerCollectionResponse;
import com.narvii.post.BasePostActivity;
import com.narvii.post.PostHelper;
import com.narvii.sharedfolder.SharedPhotoSelectFragment;
import com.narvii.util.AndroidBug5497Workaround;
import com.narvii.util.CollectionUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.statistics.StatisticsService;
import com.safedk.android.utils.Logger;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class StickerCollectionPostActivity extends BasePostActivity<StickerCollectionPost> implements StickerPostItemList.OnStickerItemDeleteListener, MediaPickerFragment.OnCustomOptionSelectedListener {
    public static final int DESC_MAX_LENGTH = 100;
    public static final int MAX_STICKER_COUNT = 100;
    private static final int MIN_FOOTER_COUNT = 3;
    public static final int NAME_MAX_LENGTH = 20;
    private static final int REQUEST_CHOOSE_FAV_STICKERS = 200;
    private LinearLayout addStickerLayout;
    private TextView descCountDown;
    EditText description;
    private StickerPostItemList dragSortLinearLayout;
    EditText name;
    private TextView nameCountDown;
    View.OnClickListener pickStickerListener = new View.OnClickListener() { // from class: com.narvii.monetization.sticker.post.StickerCollectionPostActivity.1
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            StickerCollectionPostActivity.this.startPickSticker(-1);
        }
    };
    StickerCollectionPost post;
    private StickerService stickerService;

    public static void safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(NVActivity p0, Intent p1, int p5) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V");
        if (p1 == null) {
            return;
        }
        p0.startActivityForResult(p1, p5);
    }

    public static void safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(RedirectBlockingFragmentActivity p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.post.BasePostActivity
    public Class<StickerCollectionPost> postClazz() {
        return StickerCollectionPost.class;
    }

    @Override // com.narvii.post.BasePostActivity
    protected boolean supportPreview() {
        return false;
    }

    private boolean isStickerComplete(StickerPost stickerPost) {
        if (stickerPost == null) {
            return false;
        }
        return !TextUtils.isEmpty(stickerPost.name);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startPickSticker(int i10) {
        File file = new File(getContext().getFilesDir(), "photo");
        file.mkdirs();
        Bundle bundle = new Bundle();
        bundle.putInt("index", i10);
        MediaPickerFragment.MediaPickerConfiguration mediaPickerConfiguration = new MediaPickerFragment.MediaPickerConfiguration();
        mediaPickerConfiguration.optionList = 12;
        mediaPickerConfiguration.isGiphySticker = true;
        if (i10 != -1) {
            mediaPickerConfiguration.isSingle = true;
        }
        mediaPickerConfiguration.setSize(128, 128, 68, 68);
        mediaPickerConfiguration.maximum = i10 == -1 ? Math.max(0, 100 - this.dragSortLinearLayout.getChildCount()) : 0;
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MediaPickerFragment.Option(1, getString(R.string.choose_favorite_sticker), 0, 0));
        mediaPickerConfiguration.customOptions = arrayList;
        this.mediaPickerFragment.pickMedia(file, bundle, mediaPickerConfiguration);
    }

    private void updateAddStickerLayout() {
        int childCount = this.dragSortLinearLayout.getChildCount();
        int iMax = Math.max(childCount < 100 ? 1 : 0, Math.min(3, 3 - childCount)) - this.addStickerLayout.getChildCount();
        if (iMax <= 0) {
            for (int i10 = 0; i10 < (-iMax); i10++) {
                this.addStickerLayout.removeViewAt(0);
            }
            return;
        }
        for (int i11 = 0; i11 < iMax; i11++) {
            View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.post_add_sticker_item, (ViewGroup) this.addStickerLayout, false);
            viewInflate.setOnClickListener(this.pickStickerListener);
            this.addStickerLayout.addView(viewInflate);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateDescCountDown() {
        this.descCountDown.setText((100 - this.description.getText().toString().length()) + "");
        ViewUtils.show(this.descCountDown, this.description.isFocused());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateNameCountDown() {
        this.nameCountDown.setText((20 - this.name.getText().toString().length()) + "");
        ViewUtils.show(this.nameCountDown, this.name.isFocused());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public void doPost(StickerCollectionPost stickerCollectionPost) {
        String stringParam = getStringParam("collectionId");
        PostHelper postHelper = new PostHelper(this) { // from class: com.narvii.monetization.sticker.post.StickerCollectionPostActivity.8
            @Override // com.narvii.post.PostHelper
            protected boolean keepPng(String str) {
                return true;
            }
        };
        postHelper.setPostListener(this);
        ApiRequest.Builder builderPost = ApiRequest.builder().post();
        String str = "/sticker-collection";
        if (stringParam != null) {
            str = "/sticker-collection" + c.FORWARD_SLASH_STRING + stringParam;
        }
        ApiRequest apiRequestBuild = builderPost.path(str).build();
        postHelper.setDefaultPhotoUploadTarget("sticker");
        postHelper.startPost(stickerCollectionPost, apiRequestBuild, StickerCollectionResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public void doPreview(StickerCollectionPost stickerCollectionPost) {
        StickerCollection previewStickerCollection = stickerCollectionPost.getPreviewStickerCollection(this, (StickerCollection) JacksonUtils.readAs(getStringParam("collection"), StickerCollection.class), getStringParam("collectionId"));
        Intent intent = FragmentWrapperActivity.intent(UgcStickerCollectionDetailFragment.class);
        intent.putExtra("preview", true);
        intent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(previewStickerCollection));
        intent.putExtra("id", previewStickerCollection.id());
        safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(this, intent);
    }

    @Override // com.narvii.post.BasePostActivity
    public boolean isEdit() {
        return getStringParam("collectionId") != null;
    }

    @Override // com.narvii.app.NVActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int i10, int i11, Intent intent) {
        if (i10 != 200 || i11 != -1 || intent == null) {
            super.onActivityResult(i10, i11, intent);
            return;
        }
        int intExtra = intent.getIntExtra("index", -1);
        this.dragSortLinearLayout.onPickStickerResult(intExtra, JacksonUtils.readListAs(intent.getStringExtra("stickerList"), Sticker.class));
        if (intExtra == -1) {
            updateAddStickerLayout();
        }
    }

    @Override // com.narvii.media.MediaPickerFragment.OnCustomOptionSelectedListener
    public void onCustomOptionSelected(MediaPickerFragment.Option option, Bundle bundle) {
        if (bundle != null) {
            int i10 = bundle.getInt("index", -1);
            Intent intent = FragmentWrapperActivity.intent(CustomizedStickerPickListFragment.class);
            intent.putExtra("index", i10);
            intent.putExtra(SharedPhotoSelectFragment.MODE_SINGLE_PICK, i10 != -1);
            intent.putExtra("max", 100 - this.dragSortLinearLayout.getChildCount());
            intent.putExtra("maxStr", getString(R.string.sticker_pack_max_count, 100));
            safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(this, intent, 200);
        }
    }

    @Override // com.narvii.post.BasePostActivity, com.narvii.media.MediaPickerFragment.OnResultListener
    public void onPickMediaResult(List<Media> list, Bundle bundle) {
        if (bundle != null) {
            int i10 = bundle.getInt("index", -1);
            this.dragSortLinearLayout.onPickMediaResult(i10, list);
            if (i10 == -1) {
                updateAddStickerLayout();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public StickerCollectionPost savePost() {
        this.post.stickerList = this.dragSortLinearLayout.getStickerList();
        this.post.name = this.name.getText().toString();
        this.post.description = this.description.getText().toString();
        this.post.iconSourceStickerIndex = this.dragSortLinearLayout.getThumbnailIndex();
        return this.post;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public void updateView(StickerCollectionPost stickerCollectionPost) {
        super.updateView(stickerCollectionPost);
        this.name.setText(stickerCollectionPost.name);
        this.description.setText(stickerCollectionPost.description);
        this.dragSortLinearLayout.updateStickerList(stickerCollectionPost.stickerList);
        this.dragSortLinearLayout.setThumbnailCell(stickerCollectionPost.iconSourceStickerIndex);
        updateAddStickerLayout();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public boolean validateUpload(StickerCollectionPost stickerCollectionPost) {
        if (!validateEditTextNotEmpty(this.name, R.string.post_error_no_title)) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList<StickerPost> arrayList2 = stickerCollectionPost.stickerList;
        if (arrayList2 != null) {
            arrayList.addAll(arrayList2);
        }
        if (CollectionUtils.isEmpty(arrayList)) {
            AlertDialog alertDialog = new AlertDialog(this);
            alertDialog.setTitle(R.string.something_is_missing);
            alertDialog.setMessage(R.string.at_least_one_sticker);
            alertDialog.addButton(android.R.string.ok, 0, (View.OnClickListener) null);
            alertDialog.show();
            return false;
        }
        for (final int i10 = 0; i10 < arrayList.size(); i10++) {
            if (!isStickerComplete((StickerPost) arrayList.get(i10))) {
                AlertDialog alertDialog2 = new AlertDialog(this);
                alertDialog2.setTitle(R.string.something_is_missing);
                alertDialog2.setMessage(R.string.add_sticker_name_for_each);
                alertDialog2.addButton(android.R.string.ok, 0, new View.OnClickListener() { // from class: com.narvii.monetization.sticker.post.StickerCollectionPostActivity.7
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        final EditText nameEdit;
                        try {
                            if (i10 < StickerCollectionPostActivity.this.dragSortLinearLayout.getChildCount()) {
                                View childAt = StickerCollectionPostActivity.this.dragSortLinearLayout.getChildAt(i10);
                                if (!(childAt instanceof StickerPostItem) || (nameEdit = ((StickerPostItem) childAt).getNameEdit()) == null) {
                                    return;
                                }
                                nameEdit.clearFocus();
                                Utils.postDelayed(new Runnable() { // from class: com.narvii.monetization.sticker.post.StickerCollectionPostActivity.7.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        SoftKeyboard.showSoftKeyboard(nameEdit);
                                    }
                                }, 200L);
                            }
                        } catch (Exception unused) {
                        }
                    }
                });
                alertDialog2.show();
                return false;
            }
        }
        return true;
    }

    @Override // com.narvii.post.BasePostActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        int i10;
        super.onCreate(bundle);
        this.mediaPickerFragment.setOnCustomOptionSelectedListener(this);
        this.mediaPickerFragment.maxStr = getString(R.string.sticker_pack_max_count, 100);
        this.stickerService = (StickerService) getService("sticker");
        if (bundle == null) {
            StickerCollectionPost stickerCollectionPost = (StickerCollectionPost) JacksonUtils.readAs(getStringParam(Module.MODULE_POSTS), StickerCollectionPost.class);
            this.post = stickerCollectionPost;
            if (stickerCollectionPost == null) {
                this.post = new StickerCollectionPost();
            }
            if (isEdit()) {
                i10 = R.string.edit;
            } else {
                i10 = R.string.new_sticker_pack;
            }
            setTitle(i10);
            setContentView(R.layout.post_sticker_collection_layout);
            AndroidBug5497Workaround.assistActivity(this);
            this.name = (EditText) findViewById(R.id.edit_name);
            this.nameCountDown = (TextView) findViewById(R.id.name_countdown);
            this.name.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.narvii.monetization.sticker.post.StickerCollectionPostActivity.2
                @Override // android.view.View.OnFocusChangeListener
                public void onFocusChange(View view, boolean z6) {
                    StickerCollectionPostActivity.this.updateNameCountDown();
                }
            });
            this.name.addTextChangedListener(new TextWatcher() { // from class: com.narvii.monetization.sticker.post.StickerCollectionPostActivity.3
                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
                }

                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                    StickerCollectionPostActivity.this.updateNameCountDown();
                }
            });
            this.name.setFilters(new InputFilter[]{new InputFilter.LengthFilter(20)});
            EditText editText = (EditText) findViewById(R.id.edit_description);
            this.description = editText;
            editText.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.narvii.monetization.sticker.post.StickerCollectionPostActivity.4
                @Override // android.view.View.OnFocusChangeListener
                public void onFocusChange(View view, boolean z6) {
                    StickerCollectionPostActivity.this.updateDescCountDown();
                }
            });
            this.description.addTextChangedListener(new TextWatcher() { // from class: com.narvii.monetization.sticker.post.StickerCollectionPostActivity.5
                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
                }

                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                    StickerCollectionPostActivity.this.updateDescCountDown();
                }
            });
            this.description.setFilters(new InputFilter[]{new InputFilter.LengthFilter(100)});
            this.descCountDown = (TextView) findViewById(R.id.desc_countdown);
            StickerPostItemList stickerPostItemList = (StickerPostItemList) findViewById(R.id.sticker_list);
            this.dragSortLinearLayout = stickerPostItemList;
            stickerPostItemList.setChildFocusViewId(R.id.edit_name);
            this.dragSortLinearLayout.setStickerItemDeleteListener(this);
            this.dragSortLinearLayout.setOnIconClickListener(new StickerPostItemList.OnIconClickListener() { // from class: com.narvii.monetization.sticker.post.StickerCollectionPostActivity.6
                @Override // com.narvii.monetization.sticker.post.StickerPostItemList.OnIconClickListener
                public void onIconClicked(final int i11, View view) {
                    ActionSheetDialog actionSheetDialog = new ActionSheetDialog(StickerCollectionPostActivity.this.getContext());
                    actionSheetDialog.addItem(R.string.change_sticker, false);
                    actionSheetDialog.addItem(R.string.use_as_thumbnail, false);
                    actionSheetDialog.addItem(R.string.delete_sticker, true);
                    actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.monetization.sticker.post.StickerCollectionPostActivity.6.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i12) {
                            if (i12 == 0) {
                                StickerCollectionPostActivity.this.startPickSticker(i11);
                            } else if (i12 == 1) {
                                StickerCollectionPostActivity.this.dragSortLinearLayout.setThumbnailCell(i11);
                            } else {
                                if (i12 != 2) {
                                    return;
                                }
                                StickerCollectionPostActivity.this.dragSortLinearLayout.deleteItem(i11);
                            }
                        }
                    });
                    actionSheetDialog.show();
                }
            });
            this.addStickerLayout = (LinearLayout) findViewById(R.id.add_sticker_layout);
            updateView(this.post);
            return;
        }
        StickerCollectionPost stickerCollectionPost2 = (StickerCollectionPost) JacksonUtils.readAs(bundle.getString(Module.MODULE_POSTS), StickerCollectionPost.class);
        this.post = stickerCollectionPost2;
        if (stickerCollectionPost2 == null) {
            this.post = new StickerCollectionPost();
        }
        finish();
    }

    @Override // com.narvii.app.NVActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        savePost();
        super.onPause();
    }

    @Override // com.narvii.post.BasePostActivity, com.narvii.post.PostListener
    public void onPostFinished(PostHelper postHelper, ApiResponse apiResponse) {
        super.onPostFinished(postHelper, apiResponse);
        StickerCollection stickerCollectionObject = ((StickerCollectionResponse) apiResponse).object();
        if (!isEdit() || !getBooleanParam("fromDetail")) {
            Intent intent = FragmentWrapperActivity.intent(UgcStickerCollectionDetailFragment.class);
            intent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(stickerCollectionObject));
            intent.putExtra("id", stickerCollectionObject.id());
            intent.putExtra(ExternalPostPreviewFragment.SOURCE, "View Created Post");
            safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(this, intent);
        }
        this.stickerService.refreshStickerCollectionInfo(true);
        ((StatisticsService) getService("statistics")).event("Creates Custom Sticker Pack").userPropInc("Creates Custom Sticker Pack Total");
    }

    @Override // android.app.Activity
    protected void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        updateView(this.post);
    }

    @Override // com.narvii.post.BasePostActivity, com.narvii.app.NVActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString(Module.MODULE_POSTS, JacksonUtils.safeWriteAsString(this.post));
    }

    @Override // com.narvii.monetization.sticker.post.StickerPostItemList.OnStickerItemDeleteListener
    public void onStickerItemDeleted() {
        updateAddStickerLayout();
    }
}
