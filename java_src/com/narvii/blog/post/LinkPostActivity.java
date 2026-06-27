package com.narvii.blog.post;

import android.content.DialogInterface;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import com.fasterxml.jackson.databind.JsonNode;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVApplication;
import com.narvii.model.LinkSummary;
import com.narvii.model.Media;
import com.narvii.photos.PhotoManager;
import com.narvii.post.DraftPostActivity;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.util.crawler.LinkPreviewCallback;
import com.narvii.util.crawler.SourceContent;
import com.narvii.util.crawler.TextCrawler;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ProxyStack;
import com.narvii.util.text.IMGUtils;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class LinkPostActivity extends BlogPostActivity {
    static DownloadTask runningTask;
    LinkPreviewCallback callback = new LinkPreviewCallback() { // from class: com.narvii.blog.post.LinkPostActivity.6
        @Override // com.narvii.util.crawler.LinkPreviewCallback
        public void onPre() {
            ProgressDialog progressDialog = LinkPostActivity.this.parseLoadingDialog;
            if (progressDialog != null) {
                progressDialog.show();
            }
            LinkPostActivity.this.isHandingUrl = true;
        }

        @Override // com.narvii.util.crawler.LinkPreviewCallback
        public void onPos(SourceContent sourceContent, boolean z) throws Resources.NotFoundException {
            if (LinkPostActivity.this.isFinishing() || LinkPostActivity.this.isDestoryed()) {
                return;
            }
            if (TextUtils.isEmpty(sourceContent.getFinalUrl()) || z) {
                LinkPostActivity.this.postPreviewLayout.showFail(true);
                NVToast.makeText(LinkPostActivity.this.getContext(), LinkPostActivity.this.getString(R.string.link_post_show_error), 1).show();
                LinkPostActivity.this.hideProgressDialog();
                LinkPostActivity.this.showLinkPasteDialog();
            } else {
                LinkPostActivity.this.linkSummary = new LinkSummary(sourceContent);
                LinkPostActivity linkPostActivity = LinkPostActivity.this;
                String str = linkPostActivity.linkUrl;
                if (str != null) {
                    linkPostActivity.linkSummary.setLink(TextCrawler.extendedTrim(str));
                }
                LinkPostActivity linkPostActivity2 = LinkPostActivity.this;
                linkPostActivity2.updateView(linkPostActivity2.savePost());
                if (LinkPostActivity.this.linkSummary.getFirstMedia() != null && !TextUtils.isEmpty(LinkPostActivity.this.linkSummary.getFirstMedia().url) && !LinkPostActivity.this.linkSummary.getFirstMedia().url.startsWith("ytv://")) {
                    LinkPostActivity linkPostActivity3 = LinkPostActivity.this;
                    linkPostActivity3.saveImage(linkPostActivity3.linkSummary.getFirstMediaUrl(), new SaveImageCallBack() { // from class: com.narvii.blog.post.LinkPostActivity.6.1
                        @Override // com.narvii.blog.post.LinkPostActivity.SaveImageCallBack
                        public void onSaveSuccess(File file) throws Resources.NotFoundException {
                            LinkPostActivity linkPostActivity4;
                            LinkSummary linkSummary;
                            try {
                                if (file != null) {
                                    try {
                                        BitmapFactory.Options options = new BitmapFactory.Options();
                                        BitmapFactory.decodeFile(file.getAbsolutePath(), options);
                                        Log.d("download_link_thumb width: " + options.outWidth + " height: " + options.outHeight);
                                        if (options.outHeight <= 100 || options.outWidth <= 100) {
                                            LinkPostActivity.this.linkSummary.mediaList = null;
                                        } else {
                                            LinkPostActivity.this.linkSummary.getFirstMedia().url = LinkPostActivity.this.photo.importPhoto(((DraftPostActivity) LinkPostActivity.this).draftManager.getDir(((DraftPostActivity) LinkPostActivity.this).draftId), Uri.fromFile(file));
                                        }
                                        linkPostActivity4 = LinkPostActivity.this;
                                        linkSummary = linkPostActivity4.linkSummary;
                                    } catch (Exception e) {
                                        e.printStackTrace();
                                        linkPostActivity4 = LinkPostActivity.this;
                                        linkSummary = linkPostActivity4.linkSummary;
                                        if (linkSummary != null) {
                                        }
                                    }
                                    if (linkSummary != null) {
                                        linkPostActivity4.editTitle.setText(linkSummary.getTitle());
                                    }
                                    LinkPostActivity linkPostActivity5 = LinkPostActivity.this;
                                    linkPostActivity5.updateView(linkPostActivity5.savePost());
                                    LinkPostActivity.this.hideProgressDialog();
                                }
                            } catch (Throwable th) {
                                LinkPostActivity linkPostActivity6 = LinkPostActivity.this;
                                LinkSummary linkSummary2 = linkPostActivity6.linkSummary;
                                if (linkSummary2 != null) {
                                    linkPostActivity6.editTitle.setText(linkSummary2.getTitle());
                                }
                                LinkPostActivity linkPostActivity7 = LinkPostActivity.this;
                                linkPostActivity7.updateView(linkPostActivity7.savePost());
                                LinkPostActivity.this.hideProgressDialog();
                                throw th;
                            }
                        }

                        @Override // com.narvii.blog.post.LinkPostActivity.SaveImageCallBack
                        public void onSaveFail(File file) throws Resources.NotFoundException {
                            LinkPostActivity linkPostActivity4 = LinkPostActivity.this;
                            LinkSummary linkSummary = linkPostActivity4.linkSummary;
                            if (linkSummary != null) {
                                linkSummary.mediaList = null;
                                linkPostActivity4.editTitle.setText(linkSummary.getTitle());
                            }
                            LinkPostActivity linkPostActivity5 = LinkPostActivity.this;
                            linkPostActivity5.updateView(linkPostActivity5.savePost());
                            LinkPostActivity.this.hideProgressDialog();
                        }
                    });
                } else {
                    LinkPostActivity linkPostActivity4 = LinkPostActivity.this;
                    linkPostActivity4.editTitle.setText(linkPostActivity4.linkSummary.getTitle());
                    LinkPostActivity.this.hideProgressDialog();
                }
            }
            LinkPostActivity.this.isHandingUrl = false;
        }
    };
    boolean fromShare;
    boolean isHandingUrl;
    AlertDialog linkDialog;
    LinkSummary linkSummary;
    String linkUrl;
    ProgressDialog parseLoadingDialog;
    PhotoManager photo;
    LinkPostPreviewLayout postPreviewLayout;
    TextCrawler textCrawler;

    public interface SaveImageCallBack {
        void onSaveFail(File file);

        void onSaveSuccess(File file);
    }

    @Override // com.narvii.blog.post.BlogPostActivity, com.narvii.post.DraftPostActivity
    public String draftType() {
        return "link";
    }

    @Override // com.narvii.blog.post.BlogPostActivity
    protected int layoutId() {
        return R.layout.post_link_layout;
    }

    @Override // com.narvii.blog.post.BlogPostActivity, com.narvii.post.DraftPostActivity, com.narvii.post.BasePostActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        String str;
        super.onCreate(bundle);
        this.postPreviewLayout = (LinkPostPreviewLayout) findViewById(R.id.link_preview_layout);
        this.textCrawler = new TextCrawler(this);
        this.parseLoadingDialog = new ProgressDialog(getContext());
        this.parseLoadingDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.narvii.blog.post.LinkPostActivity.1
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                LinkPostActivity linkPostActivity = LinkPostActivity.this;
                if (linkPostActivity.isHandingUrl) {
                    linkPostActivity.showLinkPasteDialog();
                    LinkPostActivity.this.isHandingUrl = false;
                }
            }
        });
        this.linkDialog = new AlertDialog(getContext());
        this.linkDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.narvii.blog.post.LinkPostActivity.2
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                LinkPostActivity linkPostActivity = LinkPostActivity.this;
                if (linkPostActivity.isHandingUrl) {
                    return;
                }
                linkPostActivity.finish();
            }
        });
        this.photo = (PhotoManager) getService("photo");
        if (getIntent().getExtras() != null && (str = (String) getIntent().getExtras().get("android.intent.extra.TEXT")) != null) {
            this.fromShare = true;
            this.linkUrl = str;
        }
        if (!this.fromShare && getIntent().getAction() != null && getIntent().getAction().equals("android.intent.action.VIEW")) {
            Uri data = getIntent().getData();
            String scheme = data.getScheme();
            String host = data.getHost();
            List<String> pathSegments = data.getPathSegments();
            this.linkUrl = scheme + "://" + host + "/";
            Iterator<String> it = pathSegments.iterator();
            while (it.hasNext()) {
                this.linkUrl += it.next() + "/";
            }
            if (data.getQuery() != null && !data.getQuery().equals("")) {
                String str2 = this.linkUrl;
                this.linkUrl = str2.substring(0, str2.length() - 1);
                this.linkUrl += "?" + data.getQuery();
            }
            this.fromShare = true;
        }
        if (this.fromShare && bundle == null) {
            BlogPost blogPost = new BlogPost();
            blogPost.type = 5;
            this.post = blogPost;
            this.textCrawler.makePreview(this.callback, this.linkUrl);
        }
    }

    @Override // com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.isHandingUrl) {
            showLinkPasteDialog();
            return;
        }
        AlertDialog alertDialog = this.linkDialog;
        if (alertDialog != null && alertDialog.isShowing()) {
            finish();
        } else {
            super.onBackPressed();
        }
    }

    @Override // com.narvii.blog.post.BlogPostActivity, com.narvii.post.BasePostActivity
    protected void checkEligible() {
        checkEligible("blog", "link");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.blog.post.BlogPostActivity, com.narvii.post.DraftPostActivity
    public void onPostLoaded(BlogPost blogPost) {
        super.onPostLoaded(blogPost);
        if (isEdit()) {
            setTitle(R.string.edit);
        } else {
            setTitle(R.string.post_link_title);
        }
        if (isEdit()) {
            return;
        }
        if (!(blogPost == null || ((blogPost.title() == null || blogPost.title().trim().length() == 0) && ((blogPost.icon() == null || blogPost.icon().trim().length() == 0) && (blogPost.content() == null || blogPost.content().trim().length() == 0))))) {
            if (blogPost.extensions == null || blogPost.getLinkSummary() == null) {
                return;
            }
            this.linkSummary = blogPost.getLinkSummary();
            return;
        }
        if (this.linkUrl == null) {
            showLinkPasteDialog();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.blog.post.BlogPostActivity, com.narvii.post.BackgroundPostActivity, com.narvii.post.DraftPostActivity, com.narvii.post.BasePostActivity
    public void updateView(BlogPost blogPost) throws Resources.NotFoundException {
        super.updateView(blogPost);
        this.linkSummary = blogPost.getLinkSummary();
        this.postPreviewLayout.setLinkSummary(this.linkSummary);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.blog.post.BlogPostActivity, com.narvii.post.BasePostActivity
    public BlogPost savePost() {
        BlogPost blogPostSavePost = super.savePost();
        if (this.linkSummary != null) {
            if (blogPostSavePost.extensions == null) {
                blogPostSavePost.extensions = JacksonUtils.createObjectNode();
            }
            blogPostSavePost.extensions.put("pageSnippet", (JsonNode) JacksonUtils.DEFAULT_MAPPER.convertValue(this.linkSummary, JsonNode.class));
            LinkSummary linkSummary = this.linkSummary;
            if (linkSummary != null && linkSummary.mediaList != null) {
                if (blogPostSavePost.extensionMediaList == null) {
                    blogPostSavePost.extensionMediaList = new ArrayList();
                }
                List<Media> list = this.linkSummary.mediaList;
                if (list != null && list.size() > 0 && !blogPostSavePost.extensionMediaList.contains(this.linkSummary.mediaList.get(0))) {
                    blogPostSavePost.extensionMediaList = new ArrayList();
                    blogPostSavePost.extensionMediaList.add(this.linkSummary.mediaList.get(0));
                }
            } else {
                blogPostSavePost.extensionMediaList = new ArrayList();
            }
            this.post = blogPostSavePost;
        }
        return blogPostSavePost;
    }

    void showLinkPasteDialog() {
        AlertDialog alertDialog = this.linkDialog;
        if ((alertDialog != null && alertDialog.isShowing()) || isFinishing() || isDestoryed()) {
            return;
        }
        this.linkDialog.setTitle(getString(R.string.link_post_title));
        final EditText editText = this.linkDialog.setEditText();
        editText.setHint(getString(R.string.link_post_title_hint));
        this.linkDialog.clearButtons();
        this.linkDialog.addButton(getString(R.string.cancel), 0, new View.OnClickListener() { // from class: com.narvii.blog.post.LinkPostActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (LinkPostActivity.this.isFinishing()) {
                    return;
                }
                LinkPostActivity.this.finish();
            }
        });
        final TextView textView = (TextView) this.linkDialog.addButton(getString(R.string.done), 32, new View.OnClickListener() { // from class: com.narvii.blog.post.LinkPostActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                LinkPostActivity.this.linkUrl = editText.getText().toString();
                if (TextUtils.isEmpty(LinkPostActivity.this.linkUrl)) {
                    NVToast.makeText(LinkPostActivity.this.getContext(), LinkPostActivity.this.getString(R.string.link_invalid), 1).show();
                    return;
                }
                LinkPostActivity linkPostActivity = LinkPostActivity.this;
                linkPostActivity.linkUrl = Utils.getValidUrl(linkPostActivity.linkUrl);
                LinkPostActivity linkPostActivity2 = LinkPostActivity.this;
                linkPostActivity2.textCrawler.makePreview(linkPostActivity2.callback, linkPostActivity2.linkUrl);
                SoftKeyboard.hideSoftKeyboard(editText);
            }
        });
        if (!TextUtils.isEmpty(editText.getText())) {
            enableView(textView);
        } else {
            disableView(textView);
        }
        editText.addTextChangedListener(new TextWatcher() { // from class: com.narvii.blog.post.LinkPostActivity.5
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                if (textView != null) {
                    if (!TextUtils.isEmpty(charSequence.toString())) {
                        LinkPostActivity.this.enableView(textView);
                    } else {
                        LinkPostActivity.this.disableView(textView);
                    }
                }
            }
        });
        this.linkDialog.show();
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

    /* JADX INFO: Access modifiers changed from: private */
    public void hideProgressDialog() {
        ProgressDialog progressDialog = this.parseLoadingDialog;
        if (progressDialog == null || !progressDialog.isShowing() || isFinishing() || isDestoryed()) {
            return;
        }
        this.parseLoadingDialog.dismiss();
    }

    void saveImage(String str, SaveImageCallBack saveImageCallBack) {
        if (isFinishing() || isDestoryed()) {
            return;
        }
        File dir = this.draftManager.getDir(this.draftId);
        downloadUrl(str, new File(dir, "thumb.tmp"), dir, saveImageCallBack);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.blog.post.BlogPostActivity, com.narvii.post.BasePostActivity
    public boolean validateUpload(BlogPost blogPost) {
        if (!validateEditTextNotEmpty(this.editTitle, R.string.post_error_no_title)) {
            return false;
        }
        if (IMGUtils.filterRefIds(this.editContent.getText(), blogPost.mediaList)) {
            savePost();
        }
        return (blogPost.getLinkSummary() == null || !validateMediaListMax(blogPost.mediaList, 25, R.string.post_media_n) || blogPost.extensions == null || blogPost.getLinkSummary() == null) ? false : true;
    }

    static void downloadUrl(String str, File file, File file2, SaveImageCallBack saveImageCallBack) {
        DownloadTask downloadTask = runningTask;
        if (downloadTask == null || !downloadTask.url.equals(str)) {
            if (file.length() <= 0 || !Utils.isEquals(str, Utils.readStringFromFile(file2))) {
                DownloadTask downloadTask2 = new DownloadTask(saveImageCallBack);
                downloadTask2.url = str;
                downloadTask2.file = file;
                downloadTask2.fileD = file2;
                runningTask = downloadTask2;
                downloadTask2.start();
            }
        }
    }

    static class DownloadTask extends Thread {
        File file;
        File fileD;
        SaveImageCallBack saveImageCallBack;
        String url;

        DownloadTask(SaveImageCallBack saveImageCallBack) {
            this.saveImageCallBack = saveImageCallBack;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            final boolean z = true;
            File fileCreateTmpFile = Utils.createTmpFile(true);
            final boolean z2 = false;
            try {
                try {
                    InputStream inputStream = new ProxyStack(NVApplication.instance()).createConnection(new URL(this.url)).getInputStream();
                    FileOutputStream fileOutputStream = new FileOutputStream(fileCreateTmpFile);
                    byte[] bArr = new byte[4096];
                    while (true) {
                        int i = inputStream.read(bArr);
                        if (i == -1) {
                            break;
                        } else {
                            fileOutputStream.write(bArr, 0, i);
                        }
                    }
                    inputStream.close();
                    fileOutputStream.close();
                    if (fileCreateTmpFile.renameTo(this.file)) {
                        Utils.writeToFile(this.fileD, this.url);
                    }
                    fileCreateTmpFile.delete();
                    if (LinkPostActivity.runningTask == this) {
                        LinkPostActivity.runningTask = null;
                    }
                    if (this.saveImageCallBack != null) {
                        Utils.post(new Runnable() { // from class: com.narvii.blog.post.LinkPostActivity.DownloadTask.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (z) {
                                    DownloadTask downloadTask = DownloadTask.this;
                                    downloadTask.saveImageCallBack.onSaveSuccess(downloadTask.file);
                                } else {
                                    DownloadTask.this.saveImageCallBack.onSaveFail(null);
                                }
                            }
                        });
                    }
                } catch (Exception e) {
                    Log.w("fail to download background image " + this.url, e);
                    fileCreateTmpFile.delete();
                    if (LinkPostActivity.runningTask == this) {
                        LinkPostActivity.runningTask = null;
                    }
                    if (this.saveImageCallBack != null) {
                        Utils.post(new Runnable() { // from class: com.narvii.blog.post.LinkPostActivity.DownloadTask.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (z2) {
                                    DownloadTask downloadTask = DownloadTask.this;
                                    downloadTask.saveImageCallBack.onSaveSuccess(downloadTask.file);
                                } else {
                                    DownloadTask.this.saveImageCallBack.onSaveFail(null);
                                }
                            }
                        });
                    }
                }
            } catch (Throwable th) {
                fileCreateTmpFile.delete();
                if (LinkPostActivity.runningTask == this) {
                    LinkPostActivity.runningTask = null;
                }
                if (this.saveImageCallBack != null) {
                    Utils.post(new Runnable() { // from class: com.narvii.blog.post.LinkPostActivity.DownloadTask.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (z2) {
                                DownloadTask downloadTask = DownloadTask.this;
                                downloadTask.saveImageCallBack.onSaveSuccess(downloadTask.file);
                            } else {
                                DownloadTask.this.saveImageCallBack.onSaveFail(null);
                            }
                        }
                    });
                }
                throw th;
            }
        }
    }
}
