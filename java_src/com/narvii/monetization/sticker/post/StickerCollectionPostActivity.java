package com.narvii.monetization.sticker.post;

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
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.media.MediaPickerFragment;
import com.narvii.model.Media;
import com.narvii.model.Sticker;
import com.narvii.model.api.ApiResponse;
import com.narvii.modulization.Module;
import com.narvii.monetization.sticker.StickerService;
import com.narvii.monetization.sticker.model.StickerCollection;
import com.narvii.monetization.sticker.model.StickerCollectionResponse;
import com.narvii.monetization.sticker.post.StickerPostItemList;
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
import java.io.File;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
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

    @Override // com.narvii.post.BasePostActivity
    protected boolean supportPreview() {
        return false;
    }

    @Override // com.narvii.post.BasePostActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onCreate(bundle);
        this.mediaPickerFragment.setOnCustomOptionSelectedListener(this);
        this.mediaPickerFragment.maxStr = getString(R.string.sticker_pack_max_count, new Object[]{100});
        this.stickerService = (StickerService) getService("sticker");
        if (bundle == null) {
            this.post = (StickerCollectionPost) JacksonUtils.readAs(getStringParam(Module.MODULE_POSTS), StickerCollectionPost.class);
            if (this.post == null) {
                this.post = new StickerCollectionPost();
            }
            setTitle(isEdit() ? R.string.edit : R.string.new_sticker_pack);
            setContentView(R.layout.post_sticker_collection_layout);
            AndroidBug5497Workaround.assistActivity(this);
            this.name = (EditText) findViewById(R.id.edit_name);
            this.nameCountDown = (TextView) findViewById(R.id.name_countdown);
            this.name.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.narvii.monetization.sticker.post.StickerCollectionPostActivity.2
                @Override // android.view.View.OnFocusChangeListener
                public void onFocusChange(View view, boolean z) {
                    StickerCollectionPostActivity.this.updateNameCountDown();
                }
            });
            this.name.addTextChangedListener(new TextWatcher() { // from class: com.narvii.monetization.sticker.post.StickerCollectionPostActivity.3
                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                    StickerCollectionPostActivity.this.updateNameCountDown();
                }
            });
            this.name.setFilters(new InputFilter[]{new InputFilter.LengthFilter(20)});
            this.description = (EditText) findViewById(R.id.edit_description);
            this.description.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.narvii.monetization.sticker.post.StickerCollectionPostActivity.4
                @Override // android.view.View.OnFocusChangeListener
                public void onFocusChange(View view, boolean z) {
                    StickerCollectionPostActivity.this.updateDescCountDown();
                }
            });
            this.description.addTextChangedListener(new TextWatcher() { // from class: com.narvii.monetization.sticker.post.StickerCollectionPostActivity.5
                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                    StickerCollectionPostActivity.this.updateDescCountDown();
                }
            });
            this.description.setFilters(new InputFilter[]{new InputFilter.LengthFilter(100)});
            this.descCountDown = (TextView) findViewById(R.id.desc_countdown);
            this.dragSortLinearLayout = (StickerPostItemList) findViewById(R.id.sticker_list);
            this.dragSortLinearLayout.setChildFocusViewId(R.id.edit_name);
            this.dragSortLinearLayout.setStickerItemDeleteListener(this);
            this.dragSortLinearLayout.setOnIconClickListener(new StickerPostItemList.OnIconClickListener() { // from class: com.narvii.monetization.sticker.post.StickerCollectionPostActivity.6
                @Override // com.narvii.monetization.sticker.post.StickerPostItemList.OnIconClickListener
                public void onIconClicked(final int i, View view) {
                    ActionSheetDialog actionSheetDialog = new ActionSheetDialog(StickerCollectionPostActivity.this.getContext());
                    actionSheetDialog.addItem(R.string.change_sticker, false);
                    actionSheetDialog.addItem(R.string.use_as_thumbnail, false);
                    actionSheetDialog.addItem(R.string.delete_sticker, true);
                    actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.monetization.sticker.post.StickerCollectionPostActivity.6.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i2) {
                            if (i2 == 0) {
                                StickerCollectionPostActivity.this.startPickSticker(i);
                            } else if (i2 == 1) {
                                StickerCollectionPostActivity.this.dragSortLinearLayout.setThumbnailCell(i);
                            } else {
                                if (i2 != 2) {
                                    return;
                                }
                                StickerCollectionPostActivity.this.dragSortLinearLayout.deleteItem(i);
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
        this.post = (StickerCollectionPost) JacksonUtils.readAs(bundle.getString(Module.MODULE_POSTS), StickerCollectionPost.class);
        if (this.post == null) {
            this.post = new StickerCollectionPost();
        }
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateNameCountDown() {
        this.nameCountDown.setText((20 - this.name.getText().toString().length()) + "");
        ViewUtils.show(this.nameCountDown, this.name.isFocused());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateDescCountDown() {
        this.descCountDown.setText((100 - this.description.getText().toString().length()) + "");
        ViewUtils.show(this.descCountDown, this.description.isFocused());
    }

    @Override // android.app.Activity
    protected void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        updateView(this.post);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startPickSticker(int i) {
        File file = new File(getContext().getFilesDir(), "photo");
        file.mkdirs();
        Bundle bundle = new Bundle();
        bundle.putInt("index", i);
        MediaPickerFragment.MediaPickerConfiguration mediaPickerConfiguration = new MediaPickerFragment.MediaPickerConfiguration();
        mediaPickerConfiguration.optionList = 12;
        mediaPickerConfiguration.isGiphySticker = true;
        if (i != -1) {
            mediaPickerConfiguration.isSingle = true;
        }
        mediaPickerConfiguration.setSize(128, 128, 68, 68);
        mediaPickerConfiguration.maximum = i == -1 ? Math.max(0, 100 - this.dragSortLinearLayout.getChildCount()) : 0;
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MediaPickerFragment.Option(1, getString(R.string.choose_favorite_sticker), 0, 0));
        mediaPickerConfiguration.customOptions = arrayList;
        this.mediaPickerFragment.pickMedia(file, bundle, mediaPickerConfiguration);
    }

    @Override // com.narvii.post.BasePostActivity, com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString(Module.MODULE_POSTS, JacksonUtils.safeWriteAsString(this.post));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public void updateView(StickerCollectionPost stickerCollectionPost) {
        super.updateView((StickerCollectionPostActivity) stickerCollectionPost);
        this.name.setText(stickerCollectionPost.name);
        this.description.setText(stickerCollectionPost.description);
        this.dragSortLinearLayout.updateStickerList(stickerCollectionPost.stickerList);
        this.dragSortLinearLayout.setThumbnailCell(stickerCollectionPost.iconSourceStickerIndex);
        updateAddStickerLayout();
    }

    private void updateAddStickerLayout() {
        int childCount = this.dragSortLinearLayout.getChildCount();
        int iMax = Math.max(childCount < 100 ? 1 : 0, Math.min(3, 3 - childCount)) - this.addStickerLayout.getChildCount();
        if (iMax <= 0) {
            for (int i = 0; i < (-iMax); i++) {
                this.addStickerLayout.removeViewAt(0);
            }
            return;
        }
        for (int i2 = 0; i2 < iMax; i2++) {
            View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.post_add_sticker_item, (ViewGroup) this.addStickerLayout, false);
            viewInflate.setOnClickListener(this.pickStickerListener);
            this.addStickerLayout.addView(viewInflate);
        }
    }

    @Override // com.narvii.post.BasePostActivity
    public Class<StickerCollectionPost> postClazz() {
        return StickerCollectionPost.class;
    }

    @Override // com.narvii.post.BasePostActivity
    public boolean isEdit() {
        return getStringParam("collectionId") != null;
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
        for (final int i = 0; i < arrayList.size(); i++) {
            if (!isStickerComplete((StickerPost) arrayList.get(i))) {
                AlertDialog alertDialog2 = new AlertDialog(this);
                alertDialog2.setTitle(R.string.something_is_missing);
                alertDialog2.setMessage(R.string.add_sticker_name_for_each);
                alertDialog2.addButton(android.R.string.ok, 0, new View.OnClickListener() { // from class: com.narvii.monetization.sticker.post.StickerCollectionPostActivity.7
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        final EditText nameEdit;
                        try {
                            if (i < StickerCollectionPostActivity.this.dragSortLinearLayout.getChildCount()) {
                                View childAt = StickerCollectionPostActivity.this.dragSortLinearLayout.getChildAt(i);
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

    private boolean isStickerComplete(StickerPost stickerPost) {
        if (stickerPost == null) {
            return false;
        }
        return !TextUtils.isEmpty(stickerPost.name);
    }

    @Override // com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        savePost();
        super.onPause();
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
            str = "/sticker-collection/" + stringParam;
        }
        ApiRequest apiRequestBuild = builderPost.path(str).build();
        postHelper.setDefaultPhotoUploadTarget("sticker");
        postHelper.startPost(stickerCollectionPost, apiRequestBuild, StickerCollectionResponse.class);
    }

    @Override // com.narvii.post.BasePostActivity, com.narvii.post.PostListener
    public void onPostFinished(PostHelper postHelper, ApiResponse apiResponse) {
        super.onPostFinished(postHelper, apiResponse);
        StickerCollection stickerCollectionObject = ((StickerCollectionResponse) apiResponse).object();
        if (!isEdit() || !getBooleanParam("fromDetail")) {
            Intent intent = FragmentWrapperActivity.intent(UgcStickerCollectionDetailFragment.class);
            intent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(stickerCollectionObject));
            intent.putExtra("id", stickerCollectionObject.id());
            intent.putExtra("Source", "View Created Post");
            startActivity(intent);
        }
        this.stickerService.refreshStickerCollectionInfo(true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public void doPreview(StickerCollectionPost stickerCollectionPost) {
        StickerCollection previewStickerCollection = stickerCollectionPost.getPreviewStickerCollection(this, (StickerCollection) JacksonUtils.readAs(getStringParam("collection"), StickerCollection.class), getStringParam("collectionId"));
        Intent intent = FragmentWrapperActivity.intent(UgcStickerCollectionDetailFragment.class);
        intent.putExtra("preview", true);
        intent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(previewStickerCollection));
        intent.putExtra("id", previewStickerCollection.id());
        startActivity(intent);
    }

    @Override // com.narvii.post.BasePostActivity, com.narvii.media.MediaPickerFragment.OnResultListener
    public void onPickMediaResult(List<Media> list, Bundle bundle) {
        if (bundle != null) {
            int i = bundle.getInt("index", -1);
            this.dragSortLinearLayout.onPickMediaResult(i, list);
            if (i == -1) {
                updateAddStickerLayout();
            }
        }
    }

    @Override // com.narvii.media.MediaPickerFragment.OnCustomOptionSelectedListener
    public void onCustomOptionSelected(MediaPickerFragment.Option option, Bundle bundle) {
        if (bundle != null) {
            int i = bundle.getInt("index", -1);
            Intent intent = FragmentWrapperActivity.intent(CustomizedStickerPickListFragment.class);
            intent.putExtra("index", i);
            intent.putExtra(SharedPhotoSelectFragment.MODE_SINGLE_PICK, i != -1);
            intent.putExtra("max", 100 - this.dragSortLinearLayout.getChildCount());
            intent.putExtra("maxStr", getString(R.string.sticker_pack_max_count, new Object[]{100}));
            startActivityForResult(intent, 200);
        }
    }

    @Override // com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        if (i == 200 && i2 == -1 && intent != null) {
            int intExtra = intent.getIntExtra("index", -1);
            this.dragSortLinearLayout.onPickStickerResult(intExtra, JacksonUtils.readListAs(intent.getStringExtra("stickerList"), Sticker.class));
            if (intExtra == -1) {
                updateAddStickerLayout();
                return;
            }
            return;
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // com.narvii.monetization.sticker.post.StickerPostItemList.OnStickerItemDeleteListener
    public void onStickerItemDeleted() {
        updateAddStickerLayout();
    }
}
