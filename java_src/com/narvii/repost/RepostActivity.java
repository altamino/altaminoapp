package com.narvii.repost;

import android.os.Bundle;
import android.widget.EditText;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.model.Feed;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.BlogResponse;
import com.narvii.modulization.Module;
import com.narvii.post.BasePostActivity;
import com.narvii.post.PostHelper;
import com.narvii.util.AndroidBug5497Workaround;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.ISecretImage;
import com.narvii.widget.ThumbImageView;

/* loaded from: classes3.dex */
public class RepostActivity extends BasePostActivity<RepostPost> {
    EditText editContent;
    RepostPost post;
    TextView previewContent;
    ThumbImageView previewImage;
    TextView previewTitle;

    @Override // com.narvii.post.BasePostActivity
    public Class<RepostPost> postClazz() {
        return RepostPost.class;
    }

    @Override // com.narvii.post.BasePostActivity
    public boolean isEdit() {
        return getStringParam("repostBlogId") != null;
    }

    @Override // com.narvii.post.BasePostActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onCreate(bundle);
        setContentView(R.layout.post_repost_layout);
        AndroidBug5497Workaround.assistActivity(this);
        this.editContent = (EditText) findViewById(R.id.content);
        this.previewImage = (ThumbImageView) findViewById(R.id.icon);
        this.previewTitle = (TextView) findViewById(R.id.title);
        this.previewContent = (TextView) findViewById(R.id.text2);
        if (bundle == null) {
            this.post = (RepostPost) JacksonUtils.readAs(getStringParam(Module.MODULE_POSTS), RepostPost.class);
        } else {
            this.post = (RepostPost) JacksonUtils.readAs(bundle.getString(Module.MODULE_POSTS), RepostPost.class);
        }
        if (this.post == null) {
            this.post = new RepostPost();
        }
        if (getStringParam("imageType") != null) {
            this.previewImage.imageType = getStringParam("imageType");
        }
        updateView(this.post);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.narvii.post.BasePostActivity
    public void updateView(RepostPost repostPost) {
        this.previewImage.setVisibility(repostPost.previewImage == null ? 8 : 0);
        ThumbImageView thumbImageView = this.previewImage;
        if (thumbImageView instanceof ISecretImage) {
            ((ISecretImage) thumbImageView).setImageMedia(repostPost.previewImage, repostPost.needHidden);
        } else {
            thumbImageView.setImageMedia(repostPost.previewImage);
        }
        this.previewTitle.setText(repostPost.previewTitle);
        this.previewContent.setText(Feed.compactContent(repostPost.previewContent));
        if (Utils.isEquals(repostPost.content, this.editContent.getText().toString())) {
            return;
        }
        this.editContent.setText(repostPost.content);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public RepostPost savePost() {
        this.post.content = this.editContent.getText().toString();
        return this.post;
    }

    @Override // com.narvii.post.BasePostActivity
    protected void checkEligible() {
        checkEligible("blog", "repost");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public void doPost(RepostPost repostPost) {
        String stringParam = getStringParam("repostBlogId");
        String str = "/blog";
        if (stringParam != null) {
            str = "/blog/" + stringParam;
        }
        PostHelper postHelper = new PostHelper(this);
        postHelper.setPostListener(this);
        postHelper.startPost(repostPost, ApiRequest.builder().post().path(str).build(), BlogResponse.class);
    }

    @Override // com.narvii.post.BasePostActivity, com.narvii.post.PostListener
    public void onPostFinished(PostHelper postHelper, ApiResponse apiResponse) {
        super.onPostFinished(postHelper, apiResponse);
    }
}
