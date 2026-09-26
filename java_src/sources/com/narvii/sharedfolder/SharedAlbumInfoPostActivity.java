package com.narvii.sharedfolder;

import ai.medialab.medialabads2.maliciousadblockers.RedirectBlockingFragmentActivity;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.TextView;
import com.google.firebase.sessions.settings.c;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.media.MediaGalleryActivity;
import com.narvii.model.SharedAlbum;
import com.narvii.model.SharedFile;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.modulization.Module;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.post.BasePostActivity;
import com.narvii.post.PostHelper;
import com.narvii.util.AndroidBug5497Workaround;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import com.narvii.widget.NVImageView;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class SharedAlbumInfoPostActivity extends BasePostActivity<AlbumInfoPost> {
    public static final int REQUEST_CHANGE_COVER = 1;
    NVImageView cover;
    TextView deleteButton;
    EditText description;
    TextView descriptionCounter;
    View lockerView;
    AlbumInfoPost post;
    EditText title;
    TextView titleCounter;
    CheckBox toggle;
    private User user;

    private class MaxCharTextWatcher implements TextWatcher {
        private final int MAX_LEN;
        private TextView counterTextView;

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }

        private MaxCharTextWatcher(TextView textView, int i10) {
            this.counterTextView = textView;
            this.MAX_LEN = i10;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            int length = editable.length();
            this.counterTextView.setText("" + (this.MAX_LEN - length));
        }
    }

    @Override // com.narvii.post.BasePostActivity
    public boolean isEdit() {
        return true;
    }

    @Override // com.narvii.app.NVActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int i10, int i11, Intent intent) {
        if (i11 == -1 && i10 == 1 && intent != null) {
            SharedFile sharedFile = (SharedFile) JacksonUtils.readAs(intent.getStringExtra("photo"), SharedFile.class);
            ArrayList arrayList = new ArrayList();
            if (sharedFile == null) {
                return;
            }
            arrayList.add(sharedFile.media);
            AlbumInfoPost albumInfoPost = this.post;
            albumInfoPost.coverMediaList = arrayList;
            updateView(albumInfoPost);
        }
    }

    @Override // com.narvii.post.BasePostActivity
    public Class<AlbumInfoPost> postClazz() {
        return AlbumInfoPost.class;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public void doPost(AlbumInfoPost albumInfoPost) {
        String stringParam = getStringParam("folderId");
        String str = "/shared-folder/folders";
        if (stringParam != null) {
            str = "/shared-folder/folders" + c.FORWARD_SLASH_STRING + stringParam;
        }
        PostHelper postHelper = new PostHelper(this);
        postHelper.setPostListener(this);
        postHelper.startPost(albumInfoPost, ApiRequest.builder().post().path(str).build(), SharedAlbumResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public AlbumInfoPost savePost() {
        this.post.title = this.title.getText().toString();
        this.post.description = this.description.getText().toString();
        return this.post;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public void updateView(AlbumInfoPost albumInfoPost) {
        this.title.setText(albumInfoPost.title);
        if (albumInfoPost.isDefaultFolder) {
            this.title.setEnabled(false);
            this.deleteButton.setVisibility(8);
        }
        this.description.setText(albumInfoPost.description);
        this.cover.setImageMedia(albumInfoPost.getCoverImage());
        this.lockerView.setVisibility(this.user.isCurator() ? 0 : 8);
        this.toggle.setChecked(albumInfoPost.status == 4);
    }

    private boolean anyChanges() {
        savePost();
        AlbumInfoPost albumInfoPost = (AlbumInfoPost) JacksonUtils.readAs(getStringParam(Module.MODULE_POSTS), AlbumInfoPost.class);
        if (albumInfoPost == null) {
            return true;
        }
        return !albumInfoPost.isSame(this.post);
    }

    @Override // com.narvii.post.BasePostActivity
    protected void checkEligible() {
        super.checkEligible();
    }

    @Override // com.narvii.app.NVActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (anyChanges()) {
            ActionSheetDialog actionSheetDialog = new ActionSheetDialog(this);
            actionSheetDialog.addItem(R.string.discard_changes, true);
            actionSheetDialog.addItem(R.string.save_changes, false);
            actionSheetDialog.setCancelText(R.string.continue_editing);
            actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.sharedfolder.SharedAlbumInfoPostActivity.2
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i10) {
                    if (i10 == 0) {
                        SharedAlbumInfoPostActivity.this.finish();
                    } else {
                        if (i10 != 1) {
                            return;
                        }
                        SharedAlbumInfoPostActivity.this.startPost();
                    }
                }
            });
            actionSheetDialog.show();
            return;
        }
        super.onBackPressed();
    }

    @Override // com.narvii.post.BasePostActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.post_shared_album_info_layout);
        AndroidBug5497Workaround.assistActivity(this);
        this.cover = (NVImageView) findViewById(R.id.cover);
        this.title = (EditText) findViewById(R.id.title);
        this.titleCounter = (TextView) findViewById(R.id.title_counter);
        this.description = (EditText) findViewById(R.id.content);
        this.descriptionCounter = (TextView) findViewById(R.id.description_counter);
        this.deleteButton = (TextView) findViewById(R.id.album_delete);
        this.toggle = (CheckBox) findViewById(R.id.toggle);
        this.lockerView = findViewById(R.id.album_locker_item_layout);
        if (bundle == null) {
            this.post = (AlbumInfoPost) JacksonUtils.readAs(getStringParam(Module.MODULE_POSTS), AlbumInfoPost.class);
        } else {
            this.post = (AlbumInfoPost) JacksonUtils.readAs(bundle.getString(Module.MODULE_POSTS), AlbumInfoPost.class);
        }
        if (this.post == null) {
            this.post = new AlbumInfoPost();
        }
        this.title.addTextChangedListener(new MaxCharTextWatcher(this.titleCounter, 30));
        this.description.addTextChangedListener(new MaxCharTextWatcher(this.descriptionCounter, 140));
        this.toggle.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.narvii.sharedfolder.SharedAlbumInfoPostActivity.1
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z6) {
                SharedAlbumInfoPostActivity.this.post.status = z6 ? 4 : 0;
            }
        });
        this.user = ((AccountService) getService("account")).getUserProfile();
        updateView(this.post);
    }

    public void onItemClick(View view) {
        char c7 = 1;
        switch (view.getId()) {
            case R.id.album_cover_image /* 2131362032 */:
                final int[] iArr = new int[2];
                ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
                if (this.post.coverMediaList != null) {
                    actionSheetDialog.addItem(R.string.view_album_cover, false);
                    iArr[0] = R.string.view_album_cover;
                } else {
                    c7 = 0;
                }
                actionSheetDialog.addItem(R.string.change_album_cover, false);
                iArr[c7] = R.string.change_album_cover;
                actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.sharedfolder.SharedAlbumInfoPostActivity.4
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

                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i10) {
                        int i11 = iArr[i10];
                        if (i11 == R.string.change_album_cover) {
                            Intent intent = FragmentWrapperActivity.intent(SharedPhotoSelectFragment.class);
                            intent.putExtra("id", SharedAlbumInfoPostActivity.this.getStringParam("folderId"));
                            intent.putExtra("selectMode", SharedPhotoSelectFragment.MODE_SINGLE_PICK);
                            intent.putExtra("album", SharedAlbumInfoPostActivity.this.getStringParam("album"));
                            safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(SharedAlbumInfoPostActivity.this, intent, 1);
                            return;
                        }
                        if (i11 != R.string.view_album_cover) {
                            return;
                        }
                        Intent intent2 = new Intent(SharedAlbumInfoPostActivity.this.getContext(), (Class<?>) MediaGalleryActivity.class);
                        intent2.putExtra("list", JacksonUtils.writeAsString(SharedAlbumInfoPostActivity.this.post.coverMediaList));
                        intent2.putExtra("position", 0);
                        safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(SharedAlbumInfoPostActivity.this, intent2);
                    }
                });
                actionSheetDialog.show();
                break;
            case R.id.album_delete /* 2131362033 */:
                ActionSheetDialog actionSheetDialog2 = new ActionSheetDialog(getContext());
                actionSheetDialog2.addItem(R.string.delete, true);
                actionSheetDialog2.setTitle(R.string.delete_album_dialog_title);
                actionSheetDialog2.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.sharedfolder.SharedAlbumInfoPostActivity.3
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i10) {
                        ApiRequest.Builder builder = ApiRequest.builder();
                        String stringParam = SharedAlbumInfoPostActivity.this.getStringParam("folderId");
                        builder.post().path("/shared-folder/folders/" + stringParam + "/delete");
                        ProgressDialog progressDialog = new ProgressDialog(SharedAlbumInfoPostActivity.this.getContext());
                        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.sharedfolder.SharedAlbumInfoPostActivity.3.1
                            @Override // com.narvii.util.Callback
                            public void call(ApiResponse apiResponse) {
                                SharedAlbum sharedAlbum = (SharedAlbum) JacksonUtils.readAs(SharedAlbumInfoPostActivity.this.getStringParam("album"), SharedAlbum.class);
                                if (sharedAlbum == null) {
                                    return;
                                }
                                ((NotificationCenter) SharedAlbumInfoPostActivity.this.getService("notification")).sendNotification(new Notification("delete", sharedAlbum));
                                SharedAlbumInfoPostActivity.this.setResult(-1);
                                SharedAlbumInfoPostActivity.this.finish();
                            }
                        };
                        progressDialog.show();
                        ((ApiService) SharedAlbumInfoPostActivity.this.getService("api")).exec(builder.build(), progressDialog.dismissListener);
                    }
                });
                actionSheetDialog2.show();
                break;
        }
    }

    @Override // com.narvii.post.BasePostActivity, com.narvii.app.NVActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString(Module.MODULE_POSTS, JacksonUtils.writeAsString(this.post));
    }
}
