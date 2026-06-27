package com.narvii.catalog.category;

import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.model.ItemCategory;
import com.narvii.model.Media;
import com.narvii.model.api.ApiResponse;
import com.narvii.modulization.Module;
import com.narvii.notification.Notification;
import com.narvii.post.BasePostActivity;
import com.narvii.post.PostHelper;
import com.narvii.util.AndroidBug5497Workaround;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import com.narvii.widget.NVImageView;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class CategoryPostActivity extends BasePostActivity<CategoryPost> implements View.OnClickListener {
    File photoDir;
    CategoryPost post;

    @Override // com.narvii.post.BasePostActivity
    public Class<CategoryPost> postClazz() {
        return CategoryPost.class;
    }

    @Override // com.narvii.post.BasePostActivity
    public boolean isEdit() {
        return getStringParam("categoryId") != null;
    }

    @Override // com.narvii.post.BasePostActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onCreate(bundle);
        this.photoDir = new File(new File(getFilesDir(), "photo"), "category");
        setContentView(R.layout.catalog_edit_category_layout);
        AndroidBug5497Workaround.assistActivity(this);
        setTitle(isEdit() ? R.string.edit : R.string.catalog_post_title);
        if (bundle == null) {
            this.post = (CategoryPost) JacksonUtils.readAs(getStringParam(Module.MODULE_POSTS), CategoryPost.class);
        } else {
            this.post = (CategoryPost) JacksonUtils.readAs(bundle.getString(Module.MODULE_POSTS), CategoryPost.class);
        }
        if (this.post == null) {
            this.post = new CategoryPost();
        }
        updateView(this.post);
    }

    @Override // com.narvii.post.BasePostActivity, com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString(Module.MODULE_POSTS, JacksonUtils.writeAsString(this.post));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        savePost();
        int id = view.getId();
        if (id == R.id.catalog_delete) {
            delete();
        } else {
            if (id != R.id.image) {
                return;
            }
            this.photoDir.mkdirs();
            this.mediaPickerFragment.pickMedia(this.photoDir, (Bundle) null, 70, 0);
        }
    }

    @Override // com.narvii.post.BasePostActivity, com.narvii.media.MediaPickerFragment.OnResultListener
    public void onPickMediaResult(List<Media> list, Bundle bundle) {
        if (list != null && list.size() > 0) {
            CategoryPost categoryPostSavePost = savePost();
            categoryPostSavePost.mediaList = new ArrayList(list);
            this.post = categoryPostSavePost;
            updateView(categoryPostSavePost);
            return;
        }
        CategoryPost categoryPostSavePost2 = savePost();
        categoryPostSavePost2.mediaList = new ArrayList();
        this.post = categoryPostSavePost2;
        updateView(categoryPostSavePost2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public void updateView(CategoryPost categoryPost) {
        View viewFindViewById = findViewById(R.id.image);
        ((NVImageView) viewFindViewById).setImageMedia(categoryPost.firstMedia());
        viewFindViewById.setOnClickListener(this);
        TextView textView = (TextView) findViewById(R.id.title);
        if (!Utils.isEquals(categoryPost.label, textView.getText().toString())) {
            textView.setText(categoryPost.label);
        }
        boolean z = categoryPost.parentCategoryId == null;
        textView.setVisibility(z ? 8 : 0);
        boolean zIsEdit = isEdit();
        View viewFindViewById2 = findViewById(R.id.catalog_delete);
        viewFindViewById2.setVisibility((z || !zIsEdit) ? 8 : 0);
        viewFindViewById2.setOnClickListener(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public CategoryPost savePost() {
        TextView textView = (TextView) findViewById(R.id.title);
        this.post.label = textView.getText().toString();
        return this.post;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public boolean validateUpload(CategoryPost categoryPost) {
        return validateEditTextNotEmpty((EditText) findViewById(R.id.title), R.string.post_error_no_title);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public void doPost(CategoryPost categoryPost) {
        String str;
        String stringParam = getStringParam("categoryId");
        if (stringParam == null) {
            str = "/item-category";
        } else {
            str = "/item-category/" + stringParam;
        }
        PostHelper postHelper = new PostHelper(this);
        postHelper.setPostListener(this);
        postHelper.startPost(categoryPost, ApiRequest.builder().post().path(str).build(), CategoryResponse.class);
    }

    @Override // com.narvii.app.NVActivity
    public void sendNotification(Notification notification) {
        String str = notification.action;
        if (str == "new" || str == "edit") {
            notification.action = "update";
        }
        super.sendNotification(notification);
    }

    void delete() {
        final ItemCategory itemCategory = (ItemCategory) JacksonUtils.readAs(getStringParam("category"), ItemCategory.class);
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        ApiRequest apiRequestBuild = ApiRequest.builder().delete().path("/item-category/" + itemCategory.categoryId).build();
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.catalog.category.CategoryPostActivity.1
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                CategoryPostActivity.this.finish();
                CategoryPostActivity.this.sendNotification(new Notification("delete", itemCategory));
            }
        };
        progressDialog.show();
        ((ApiService) getService("api")).exec(apiRequestBuild, progressDialog.dismissListener);
    }
}
