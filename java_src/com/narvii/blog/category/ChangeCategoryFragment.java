package com.narvii.blog.category;

import android.content.Intent;
import android.view.MenuItem;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.amino.mastes.R;
import com.narvii.model.Blog;
import com.narvii.model.BlogCategory;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes2.dex */
public class ChangeCategoryFragment extends BlogCategoryPickerFragment {
    @Override // com.narvii.blog.category.BlogCategoryPickerFragment, android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 17039370) {
            Blog blog = (Blog) JacksonUtils.readAs(getStringParam("blog"), Blog.class);
            if (blog == null) {
                return true;
            }
            ArrayList<BlogCategory> arrayList = ((BlogCategoryPickerFragment) this).adapter.selected;
            ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
            ArrayNode arrayNodePutArray = objectNodeCreateObjectNode.putArray("taggedBlogCategoryIdList");
            Iterator<BlogCategory> it = arrayList.iterator();
            while (it.hasNext()) {
                arrayNodePutArray.add(it.next().id());
            }
            ProgressDialog progressDialog = new ProgressDialog(getContext());
            progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.blog.category.ChangeCategoryFragment.1
                @Override // com.narvii.util.Callback
                public void call(ApiResponse apiResponse) {
                    NVToast.makeText(ChangeCategoryFragment.this.getContext(), ChangeCategoryFragment.this.getString(R.string.change_category_successfully), 0).show();
                    Intent intent = new Intent();
                    intent.putExtra("blogCategoryList", JacksonUtils.writeAsString(((BlogCategoryPickerFragment) ChangeCategoryFragment.this).adapter.selected));
                    ChangeCategoryFragment.this.setResult(-1, intent);
                    ChangeCategoryFragment.this.finish();
                }
            };
            progressDialog.show();
            ((ApiService) getService("api")).exec(new ApiRequest.Builder().path("/blog/" + blog.id() + "/blog-category").body(objectNodeCreateObjectNode.toString()).post().build(), progressDialog.dismissListener);
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }
}
