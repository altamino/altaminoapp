package com.narvii.poll.post;

import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.model.Blog;
import com.narvii.model.Media;
import com.narvii.model.NVObject;
import com.narvii.model.PollOption;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.ObjectResponse;
import com.narvii.modulization.Module;
import com.narvii.modulization.entry.EntryManager;
import com.narvii.notification.Notification;
import com.narvii.poll.PollOptionResponse;
import com.narvii.post.BasePostActivity;
import com.narvii.post.PostHelper;
import com.narvii.util.AndroidBug5497Workaround;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NotificationUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.ThumbImageView;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class PlainPollPostActivity extends BasePostActivity<PlainPollPost> implements View.OnClickListener {
    Blog blog;
    File photoDir;
    PlainPollPost post;

    @Override // com.narvii.post.BasePostActivity
    public Class<PlainPollPost> postClazz() {
        return PlainPollPost.class;
    }

    @Override // com.narvii.post.BasePostActivity
    public boolean isEdit() {
        return getStringParam("polloptId") != null;
    }

    @Override // com.narvii.post.BasePostActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onCreate(bundle);
        this.photoDir = new File(new File(getFilesDir(), "photo"), EntryManager.ENTRY_POLL);
        setContentView(R.layout.post_plain_poll_layout);
        AndroidBug5497Workaround.assistActivity(this);
        if (bundle == null) {
            this.post = (PlainPollPost) JacksonUtils.readAs(getStringParam(Module.MODULE_POSTS), PlainPollPost.class);
            this.blog = (Blog) JacksonUtils.readAs(getStringParam("blog"), Blog.class);
        } else {
            this.post = (PlainPollPost) JacksonUtils.readAs(bundle.getString(Module.MODULE_POSTS), PlainPollPost.class);
            this.blog = (Blog) JacksonUtils.readAs(bundle.getString("blog"), Blog.class);
        }
        if (isEdit()) {
            setTitle(getString(R.string.post_poll_option_title_edit));
        }
        if (this.post == null) {
            this.post = new PlainPollPost();
        }
        updateView(this.post);
    }

    @Override // com.narvii.post.BasePostActivity, com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString(Module.MODULE_POSTS, JacksonUtils.writeAsString(this.post));
        Blog blog = this.blog;
        if (blog != null) {
            bundle.putString("blog", JacksonUtils.writeAsString(blog));
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() != R.id.image) {
            return;
        }
        this.photoDir.mkdirs();
        this.mediaPickerFragment.pickMedia(this.photoDir, (Bundle) null, 4, 0);
    }

    @Override // com.narvii.post.BasePostActivity, com.narvii.media.MediaPickerFragment.OnResultListener
    public void onPickMediaResult(List<Media> list, Bundle bundle) {
        PlainPollPost plainPollPostSavePost = savePost();
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(list);
        plainPollPostSavePost.mediaList = arrayList;
        this.post = plainPollPostSavePost;
        updateView(plainPollPostSavePost);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public void updateView(PlainPollPost plainPollPost) {
        List<Media> list = plainPollPost.mediaList;
        Media media = (list == null || list.size() == 0) ? null : plainPollPost.mediaList.get(0);
        View viewFindViewById = findViewById(R.id.image);
        viewFindViewById.setOnClickListener(this);
        ((ThumbImageView) viewFindViewById).setImageMedia(media);
        ((TextView) findViewById(R.id.hint)).setText(media == null ? R.string.add : R.string.edit);
        TextView textView = (TextView) findViewById(R.id.title);
        if (!Utils.isEquals(plainPollPost.title, textView.getText().toString())) {
            textView.setText(plainPollPost.title);
        }
        textView.addTextChangedListener(new MaxCharTextWatcher((TextView) findViewById(R.id.title_counter), 30));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public PlainPollPost savePost() {
        TextView textView = (TextView) findViewById(R.id.title);
        this.post.title = textView.getText().toString();
        return this.post;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public boolean validateUpload(PlainPollPost plainPollPost) {
        if (!(plainPollPost == null || ((plainPollPost.title() == null || plainPollPost.title().trim().length() == 0) && ((plainPollPost.icon() == null || plainPollPost.icon().trim().length() == 0) && (plainPollPost.content() == null || plainPollPost.content().trim().length() == 0))))) {
            return true;
        }
        showAlert(R.string.post_plain_poll_no_content);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public void doPost(PlainPollPost plainPollPost) {
        StringBuilder sb = new StringBuilder();
        sb.append("/blog/");
        Blog blog = this.blog;
        sb.append(blog == null ? null : blog.id());
        sb.append("/poll/option");
        String string = sb.toString();
        String stringParam = getStringParam("polloptId");
        if (!TextUtils.isEmpty(stringParam)) {
            string = string + "/" + stringParam;
        }
        PostHelper postHelper = new PostHelper(this);
        postHelper.setPostListener(this);
        postHelper.startPost(plainPollPost, ApiRequest.builder().post().path(string).build(), PollOptionResponse.class);
    }

    @Override // com.narvii.post.BasePostActivity, com.narvii.post.PostListener
    public void onPostFinished(PostHelper postHelper, ApiResponse apiResponse) {
        Blog blog;
        if (apiResponse instanceof ObjectResponse) {
            NVObject nVObjectObject = ((ObjectResponse) apiResponse).object();
            if ((nVObjectObject instanceof PollOption) && (blog = this.blog) != null) {
                blog.updatePollOptions((PollOption) nVObjectObject, true);
                NotificationUtils.sendNotificationIncludeGlobal(this, new Notification("edit", this.blog));
            }
        }
        super.onPostFinished(postHelper, apiResponse);
    }

    private class MaxCharTextWatcher implements TextWatcher {
        private final int MAX_LEN;
        private TextView counterTextView;

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        private MaxCharTextWatcher(TextView textView, int i) {
            this.counterTextView = textView;
            this.MAX_LEN = i;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            int length = editable.length();
            this.counterTextView.setText("" + (this.MAX_LEN - length));
        }
    }
}
