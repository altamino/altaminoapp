package com.narvii.blog.post;

import android.content.DialogInterface;
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
import com.narvii.amino.master.R;
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
import com.narvii.volley.util.HurlConnectionHelper;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
public class LinkPostActivity extends BlogPostActivity {
    static DownloadTask runningTask;
    LinkPreviewCallback callback = new LinkPreviewCallback() { // from class: com.narvii.blog.post.LinkPostActivity.4
        @Override // com.narvii.util.crawler.LinkPreviewCallback
        public void onPos(SourceContent sourceContent, boolean z6) {
            if (LinkPostActivity.this.isFinishing() || LinkPostActivity.this.isDestoryed()) {
                return;
            }
            if (TextUtils.isEmpty(sourceContent.getFinalUrl()) || z6) {
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
                if (LinkPostActivity.this.linkSummary.getFirstMedia() == null || TextUtils.isEmpty(LinkPostActivity.this.linkSummary.getFirstMedia().url) || LinkPostActivity.this.linkSummary.getFirstMedia().url.startsWith("ytv://")) {
                    LinkPostActivity linkPostActivity3 = LinkPostActivity.this;
                    linkPostActivity3.editTitle.setText(linkPostActivity3.linkSummary.getTitle());
                    LinkPostActivity.this.hideProgressDialog();
                } else {
                    LinkPostActivity linkPostActivity4 = LinkPostActivity.this;
                    linkPostActivity4.saveImage(linkPostActivity4.linkSummary.getFirstMediaUrl(), new SaveImageCallBack() { // from class: com.narvii.blog.post.LinkPostActivity.4.1
                        @Override // com.narvii.blog.post.LinkPostActivity.SaveImageCallBack
                        public void onSaveFail(File file) {
                            LinkPostActivity linkPostActivity5 = LinkPostActivity.this;
                            LinkSummary linkSummary = linkPostActivity5.linkSummary;
                            if (linkSummary != null) {
                                linkSummary.mediaList = null;
                                linkPostActivity5.editTitle.setText(linkSummary.getTitle());
                            }
                            LinkPostActivity linkPostActivity6 = LinkPostActivity.this;
                            linkPostActivity6.updateView(linkPostActivity6.savePost());
                            LinkPostActivity.this.hideProgressDialog();
                        }

                        @Override // com.narvii.blog.post.LinkPostActivity.SaveImageCallBack
                        public void onSaveSuccess(File file) {
                            LinkPostActivity linkPostActivity5;
                            LinkSummary linkSummary;
                            try {
                                if (file != null) {
                                    BitmapFactory.Options options = new BitmapFactory.Options();
                                    BitmapFactory.decodeFile(file.getAbsolutePath(), options);
                                    Log.d("download_link_thumb width: " + options.outWidth + " height: " + options.outHeight);
                                    if (options.outHeight <= 100 || options.outWidth <= 100) {
                                        LinkPostActivity.this.linkSummary.mediaList = null;
                                    } else {
                                        Media firstMedia = LinkPostActivity.this.linkSummary.getFirstMedia();
                                        LinkPostActivity linkPostActivity6 = LinkPostActivity.this;
                                        firstMedia.url = linkPostActivity6.photo.importPhoto(((DraftPostActivity) linkPostActivity6).draftManager.getDir(((DraftPostActivity) LinkPostActivity.this).draftId), Uri.fromFile(file));
                                    }
                                    linkPostActivity5 = LinkPostActivity.this;
                                    linkSummary = linkPostActivity5.linkSummary;
                                    if (linkSummary != null) {
                                        EditText editText = linkPostActivity5.editTitle;
                                        String title = linkSummary.getTitle();
                                    }
                                }
                            } catch (Exception e) {
                                e.printStackTrace();
                                linkPostActivity5 = LinkPostActivity.this;
                                linkSummary = linkPostActivity5.linkSummary;
                                if (linkSummary != null) {
                                }
                            } finally {
                                LinkPostActivity linkPostActivity7 = LinkPostActivity.this;
                                LinkSummary linkSummary2 = linkPostActivity7.linkSummary;
                                if (linkSummary2 != null) {
                                    linkPostActivity7.editTitle.setText(linkSummary2.getTitle());
                                }
                                LinkPostActivity linkPostActivity8 = LinkPostActivity.this;
                                linkPostActivity8.updateView(linkPostActivity8.savePost());
                                LinkPostActivity.this.hideProgressDialog();
                            }
                        }
                    });
                }
            }
            LinkPostActivity.this.isHandingUrl = false;
        }

        @Override // com.narvii.util.crawler.LinkPreviewCallback
        public void onPre() {
            ProgressDialog progressDialog = LinkPostActivity.this.parseLoadingDialog;
            if (progressDialog != null) {
                progressDialog.show();
            }
            LinkPostActivity.this.isHandingUrl = true;
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

    static class DownloadTask extends Thread {
        File file;
        File fileD;
        SaveImageCallBack saveImageCallBack;
        String url;

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            File fileCreateTmpFile = Utils.createTmpFile(true);
            int i10 = 0;
            Object[] objArr = 0;
            Object[] objArr2 = 0;
            try {
                InputStream inputStream = HurlConnectionHelper.getInputStream(new ProxyStack(NVApplication.instance()).createConnection(new URL(this.url)));
                FileOutputStream fileOutputStream = new FileOutputStream(fileCreateTmpFile);
                byte[] bArr = new byte[4096];
                while (true) {
                    int i11 = inputStream.read(bArr);
                    if (i11 == -1) {
                        break;
                    } else {
                        fileOutputStream.write(bArr, i10, i11);
                    }
                }
                inputStream.close();
                fileOutputStream.close();
                if (fileCreateTmpFile.renameTo(this.file)) {
                    Utils.writeToFile(this.fileD, this.url);
                }
            } catch (Exception e) {
                Log.w("fail to download background image " + this.url, e);
            } finally {
                fileCreateTmpFile.delete();
                if (LinkPostActivity.runningTask == this) {
                    LinkPostActivity.runningTask = null;
                }
                if (this.saveImageCallBack != null) {
                    final Object[] objArr3 = objArr2 == true ? 1 : 0;
                    Utils.post(new Runnable() { // from class: com.narvii.blog.post.LinkPostActivity.DownloadTask.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (!objArr3) {
                                DownloadTask.this.saveImageCallBack.onSaveFail(null);
                            } else {
                                DownloadTask downloadTask = DownloadTask.this;
                                downloadTask.saveImageCallBack.onSaveSuccess(downloadTask.file);
                            }
                        }
                    });
                }
            }
        }

        DownloadTask(SaveImageCallBack saveImageCallBack) {
            this.saveImageCallBack = saveImageCallBack;
        }
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

    /* JADX INFO: Access modifiers changed from: private */
    public void hideProgressDialog() {
        ProgressDialog progressDialog = this.parseLoadingDialog;
        if (progressDialog == null || !progressDialog.isShowing() || isFinishing() || isDestoryed()) {
            return;
        }
        this.parseLoadingDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$0(DialogInterface dialogInterface) {
        if (this.isHandingUrl) {
            showLinkPasteDialog();
            this.isHandingUrl = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$1(DialogInterface dialogInterface) {
        if (this.isHandingUrl) {
            return;
        }
        finish();
    }

    @Override // com.narvii.blog.post.BlogPostActivity, com.narvii.post.BasePostActivity
    protected void checkEligible() {
        checkEligible("blog", "link");
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

    @Override // com.narvii.app.NVActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.isHandingUrl) {
            showLinkPasteDialog();
            return;
        }
        AlertDialog alertDialog = this.linkDialog;
        if (alertDialog == null || !alertDialog.isShowing()) {
            super.onBackPressed();
        } else {
            finish();
        }
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
        if (blogPost == null || ((blogPost.title() == null || blogPost.title().trim().length() == 0) && ((blogPost.icon() == null || blogPost.icon().trim().length() == 0) && (blogPost.content() == null || blogPost.content().trim().length() == 0)))) {
            if (this.linkUrl == null) {
                showLinkPasteDialog();
            }
        } else {
            if (blogPost.extensions == null || blogPost.getLinkSummary() == null) {
                return;
            }
            this.linkSummary = blogPost.getLinkSummary();
        }
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
            if (linkSummary == null || linkSummary.mediaList == null) {
                blogPostSavePost.extensionMediaList = new ArrayList();
            } else {
                if (blogPostSavePost.extensionMediaList == null) {
                    blogPostSavePost.extensionMediaList = new ArrayList();
                }
                List<Media> list = this.linkSummary.mediaList;
                if (list != null && list.size() > 0 && !blogPostSavePost.extensionMediaList.contains(this.linkSummary.mediaList.get(0))) {
                    ArrayList arrayList = new ArrayList();
                    blogPostSavePost.extensionMediaList = arrayList;
                    arrayList.add(this.linkSummary.mediaList.get(0));
                }
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
        this.linkDialog.addButton(getString(R.string.cancel), 0, new View.OnClickListener() { // from class: com.narvii.blog.post.LinkPostActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (LinkPostActivity.this.isFinishing()) {
                    return;
                }
                LinkPostActivity.this.finish();
            }
        });
        final TextView textView = (TextView) this.linkDialog.addButton(getString(R.string.done), 32, new View.OnClickListener() { // from class: com.narvii.blog.post.LinkPostActivity.2
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
        if (TextUtils.isEmpty(editText.getText())) {
            disableView(textView);
        } else {
            enableView(textView);
        }
        editText.addTextChangedListener(new TextWatcher() { // from class: com.narvii.blog.post.LinkPostActivity.3
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
                if (textView != null) {
                    if (TextUtils.isEmpty(charSequence.toString())) {
                        LinkPostActivity.this.disableView(textView);
                    } else {
                        LinkPostActivity.this.enableView(textView);
                    }
                }
            }
        });
        this.linkDialog.show();
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

    @Override // com.narvii.blog.post.BlogPostActivity, com.narvii.post.DraftPostActivity, com.narvii.post.BasePostActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        String str;
        super.onCreate(bundle);
        this.postPreviewLayout = (LinkPostPreviewLayout) findViewById(R.id.link_preview_layout);
        this.textCrawler = new TextCrawler(this);
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        this.parseLoadingDialog = progressDialog;
        progressDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.narvii.blog.post.b
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                this.f1846a.lambda$onCreate$0(dialogInterface);
            }
        });
        AlertDialog alertDialog = new AlertDialog(getContext());
        this.linkDialog = alertDialog;
        alertDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.narvii.blog.post.c
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                this.f1847a.lambda$onCreate$1(dialogInterface);
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
            this.linkUrl = scheme + "://" + host + com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING;
            Iterator<String> it = pathSegments.iterator();
            while (it.hasNext()) {
                this.linkUrl += it.next() + com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING;
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

    void saveImage(String str, SaveImageCallBack saveImageCallBack) {
        if (!isFinishing() && !isDestoryed()) {
            File dir = this.draftManager.getDir(this.draftId);
            downloadUrl(str, new File(dir, "thumb.tmp"), dir, saveImageCallBack);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.blog.post.BlogPostActivity, com.narvii.post.BackgroundPostActivity, com.narvii.post.DraftPostActivity, com.narvii.post.BasePostActivity
    public void updateView(BlogPost blogPost) {
        super.updateView(blogPost);
        LinkSummary linkSummary = blogPost.getLinkSummary();
        this.linkSummary = linkSummary;
        this.postPreviewLayout.setLinkSummary(linkSummary);
    }
}
