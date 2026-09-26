package com.narvii.blog.category;

import android.content.Intent;
import android.view.MenuItem;
import com.narvii.amino.master.R;
import com.narvii.model.Blog;
import com.narvii.model.api.ApiResponse;
import com.narvii.post.PostHelper;
import com.narvii.post.PostListener;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;

/* JADX INFO: loaded from: classes8.dex */
public class ChangeCategoryFragment extends BlogCategoryPickerFragment implements PostListener {
    ProgressDialog dlg = new ProgressDialog(getContext());

    @Override // com.narvii.post.PostListener
    public void onPostProgress(PostHelper postHelper, int i10, int i11) {
    }

    @Override // com.narvii.post.PostListener
    public void onPostStart(PostHelper postHelper) {
    }

    @Override // androidx.fragment.app.Fragment, com.narvii.app.NVContext
    public void startActivity(Intent intent) {
    }

    @Override // com.narvii.post.PostListener
    public void onPostFail(PostHelper postHelper, int i10, String str, Throwable th) {
        this.dlg.failureListener.call(str);
    }

    @Override // com.narvii.post.PostListener
    public void onPostFinished(PostHelper postHelper, ApiResponse apiResponse) {
        this.dlg.successListener.call(apiResponse);
    }

    @Override // com.narvii.blog.category.BlogCategoryPickerFragment, androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 17039370) {
            Blog blog = (Blog) JacksonUtils.readAs(getStringParam("blog"), Blog.class);
            if (blog == null) {
                return true;
            }
            ChangeCategoryPost changeCategoryPost = new ChangeCategoryPost(((BlogCategoryPickerFragment) this).adapter.selected);
            this.dlg.successListener = new Callback<ApiResponse>() { // from class: com.narvii.blog.category.ChangeCategoryFragment.1
                @Override // com.narvii.util.Callback
                public void call(ApiResponse apiResponse) {
                    NVToast.makeText(ChangeCategoryFragment.this.getContext(), ChangeCategoryFragment.this.getString(R.string.change_category_successfully), 0).show();
                    Intent intent = new Intent();
                    intent.putExtra("blogCategoryList", JacksonUtils.writeAsString(((BlogCategoryPickerFragment) ChangeCategoryFragment.this).adapter.selected));
                    ChangeCategoryFragment.this.setResult(-1, intent);
                    ChangeCategoryFragment.this.finish();
                }
            };
            this.dlg.show();
            ApiRequest apiRequestBuild = new ApiRequest.Builder().path("/blog/" + blog.id() + "/blog-category").post().build();
            PostHelper postHelper = new PostHelper(this);
            postHelper.setPostListener(this);
            postHelper.startPost(changeCategoryPost, apiRequestBuild, ApiResponse.class);
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }
}
