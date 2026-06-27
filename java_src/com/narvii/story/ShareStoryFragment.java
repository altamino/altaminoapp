package com.narvii.story;

import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.account.LoginActivity;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.blog.post.BlogPost;
import com.narvii.blog.post.StoryPostActivity;
import com.narvii.community.CommunityService;
import com.narvii.community.FullCommunityResponse;
import com.narvii.list.AdriftAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.master.CommunityListResponse;
import com.narvii.model.Community;
import com.narvii.model.Media;
import com.narvii.model.PollAttach;
import com.narvii.model.PollOption;
import com.narvii.model.QuizOption;
import com.narvii.model.api.ApiResponse;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.modulization.Module;
import com.narvii.photos.PhotoManager;
import com.narvii.post.DraftManager;
import com.narvii.scene.SceneConstant;
import com.narvii.scene.model.SceneDraft;
import com.narvii.scene.model.SceneInfo;
import com.narvii.scene.model.StoryShareInfo;
import com.narvii.util.Callback;
import com.narvii.util.FileUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.PackageUtils;
import com.narvii.util.Utils;
import com.narvii.util.ZipUtils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.statusbar.StatusBarUtils;
import com.narvii.video.model.AVClipInfoPack;
import com.narvii.widget.NVImageView;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class ShareStoryFragment extends NVListFragment {
    private static final int REQUEST_CODE_LOGIN = 64784;
    private static final String TAG = ShareStoryFragment.class.getSimpleName();
    private AccountService accountService;
    private String cancelDraftDir;
    private String draftDir;
    private DraftManager draftManager;
    private SingleItemAdapter globalItemAdapter;
    private String originDraftDir;
    private PackageUtils packageUtils;
    private Adapter pageAdapter;
    private PhotoManager photoManager;
    private ProgressDialog progressDialog;
    private StoryShareInfo shareInfo;
    private Uri uri;

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        StatusBarUtils.setSystemUiFlagLightStatusBar((NVContext) this, true);
        this.accountService = (AccountService) getService("account");
        this.photoManager = (PhotoManager) getService("photo");
        this.packageUtils = new PackageUtils(getContext());
        if (bundle == null) {
            this.uri = getArguments() != null ? (Uri) getArguments().getParcelable("fileUri") : null;
            this.shareInfo = getArguments() != null ? (StoryShareInfo) JacksonUtils.readAs(getArguments().getString("shareInfo"), StoryShareInfo.class) : null;
            this.originDraftDir = getArguments() != null ? getArguments().getString("draftDir") : null;
        } else {
            this.uri = (Uri) bundle.getParcelable("fileUri");
            this.shareInfo = (StoryShareInfo) JacksonUtils.readAs(bundle.getString("storyInfo"), StoryShareInfo.class);
            this.originDraftDir = bundle.getString("draftDir");
        }
        if (this.uri == null) {
            finish();
            return;
        }
        if (this.accountService.hasAccount() || getActivity() == null || getActivity().getIntent() == null) {
            return;
        }
        Intent intent = new Intent(getContext(), (Class<?>) LoginActivity.class);
        intent.putExtra("promptType", LoginActivity.PromptType.Required.name());
        intent.putExtra("skipInterestPicker", true);
        intent.putExtra("finishLoginPage", true);
        startActivityForResult(intent, REQUEST_CODE_LOGIN);
        getActivity().overridePendingTransition(0, 0);
    }

    @Override // com.narvii.app.NVFragment
    protected Drawable getActionBarCustomDrawable() {
        return new ColorDrawable(-1);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable("fileUri", this.uri);
        bundle.putString("storyInfo", JacksonUtils.writeAsString(this.shareInfo));
        bundle.putString("draftDir", this.originDraftDir);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == REQUEST_CODE_LOGIN && i2 == -1 && this.accountService.hasAccount()) {
            this.pageAdapter.resetList();
        } else {
            finish();
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDividerHeight(0);
        listView.setDivider(null);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        this.globalItemAdapter = new SingleItemAdapter(this);
        this.pageAdapter = new Adapter();
        mergeAdapter.addAdapter(new SectionAdapter(R.string.global));
        mergeAdapter.addAdapter(new BlankAdapter());
        mergeAdapter.addAdapter(this.globalItemAdapter);
        mergeAdapter.addAdapter(new BlankAdapter());
        mergeAdapter.addAdapter(new SectionAdapter(R.string.my_communities) { // from class: com.narvii.story.ShareStoryFragment.1
            @Override // com.narvii.list.AdriftAdapter, android.widget.Adapter
            public int getCount() {
                return ShareStoryFragment.this.pageAdapter.getCount() > 0 ? 1 : 0;
            }
        });
        mergeAdapter.addAdapter(new BlankAdapter());
        mergeAdapter.addAdapter(this.pageAdapter, false);
        return mergeAdapter;
    }

    class SectionAdapter extends AdriftAdapter {
        int resId;

        public SectionAdapter(int i) {
            super(ShareStoryFragment.this);
            this.resId = i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.share_story_my_community_section, viewGroup, view);
            ((TextView) viewCreateView.findViewById(R.id.section_title)).setText(this.resId);
            return viewCreateView;
        }
    }

    class BlankAdapter extends AdriftAdapter {
        public BlankAdapter() {
            super(ShareStoryFragment.this);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            return createView(R.layout.share_story_blank_item, viewGroup, view);
        }
    }

    class SingleItemAdapter extends AdriftAdapter {
        @Override // com.narvii.list.AdriftAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            return true;
        }

        public SingleItemAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.share_story_item, viewGroup, view);
            ((NVImageView) viewCreateView.findViewById(R.id.icon)).setImageResource(R.drawable.ic_global_logo);
            ((TextView) viewCreateView.findViewById(R.id.text)).setText(R.string.app_name);
            return viewCreateView;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            ShareStoryFragment.this.toStoryPost(null);
            return true;
        }
    }

    class Adapter extends NVPagedAdapter<Community, CommunityListResponse> {
        private ApiRequest req;

        @Override // com.narvii.list.NVPagedAdapter
        protected List<Community> filterResponseList(List<Community> list, int i) {
            return list;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemType(Object obj) {
            return 0;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemTypeCount() {
            return 1;
        }

        public Adapter() {
            super(ShareStoryFragment.this);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<Community> dataType() {
            return Community.class;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<? extends CommunityListResponse> responseType() {
            return CommunityListResponse.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            ApiRequest.Builder builder = ApiRequest.builder();
            builder.global().path("/community/joined");
            return builder.build();
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            if (!(obj instanceof Community)) {
                return null;
            }
            Community community = (Community) obj;
            View viewCreateView = createView(R.layout.share_story_item, viewGroup, view);
            ((NVImageView) viewCreateView.findViewById(R.id.icon)).setImageUrl(community.icon);
            ((TextView) viewCreateView.findViewById(R.id.text)).setText(community.name);
            return viewCreateView;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (obj instanceof Community) {
                final Community community = (Community) obj;
                ShareStoryFragment.this.progressDialog = new ProgressDialog(getContext());
                ShareStoryFragment.this.progressDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.story.-$$Lambda$ShareStoryFragment$Adapter$S3jg841YOT19EWKksbz2HjwjHX0
                    @Override // android.content.DialogInterface.OnCancelListener
                    public final void onCancel(DialogInterface dialogInterface) {
                        this.f$0.lambda$onItemClick$0$ShareStoryFragment$Adapter(dialogInterface);
                    }
                });
                ShareStoryFragment.this.progressDialog.show();
                this.req = ApiRequest.builder().path("/community/info").scopeCommunityId(community.id).build();
                ((ApiService) this.context.getService("api")).exec(this.req, new ApiResponseListener<FullCommunityResponse>(FullCommunityResponse.class) { // from class: com.narvii.story.ShareStoryFragment.Adapter.1
                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFinish(ApiRequest apiRequest, FullCommunityResponse fullCommunityResponse) throws Exception {
                        super.onFinish(apiRequest, (ApiRequest) fullCommunityResponse);
                        if (fullCommunityResponse.community == null) {
                            ShareStoryFragment.this.showShortToast(R.string.story_disabled_this_community);
                            return;
                        }
                        ((CommunityService) Adapter.this.getService("community")).updateCommunity(fullCommunityResponse.community, true, fullCommunityResponse.timestamp);
                        CommunityConfigHelper communityConfigHelper = new CommunityConfigHelper(Adapter.this.getParentContext(), community.id);
                        if (communityConfigHelper.isPostEnabled() && communityConfigHelper.isPostStoryEnabled()) {
                            if (fullCommunityResponse.isCurrentUserJoined && fullCommunityResponse.currentUserInfo != null) {
                                ((AccountService) Adapter.this.getService("account")).updateProfile(fullCommunityResponse.currentUserInfo.userProfile, fullCommunityResponse.timestamp, community.id, false);
                            }
                            ShareStoryFragment.this.toStoryPost(community);
                            return;
                        }
                        ShareStoryFragment.this.showShortToast(R.string.story_disabled_this_community);
                        ShareStoryFragment.this.progressDialog.dismiss();
                    }

                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFail(ApiRequest apiRequest, int i2, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                        super.onFail(apiRequest, i2, list, str, apiResponse, th);
                        ShareStoryFragment.this.progressDialog.dismiss();
                        ShareStoryFragment.this.showShortToast(str);
                    }
                });
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }

        public /* synthetic */ void lambda$onItemClick$0$ShareStoryFragment$Adapter(DialogInterface dialogInterface) {
            if (this.req != null) {
                ((ApiService) this.context.getService("api")).abort(this.req);
                this.req = null;
            }
        }
    }

    protected void toStoryPost(final Community community) {
        final CreateBlogPostTask createBlogPostTask = new CreateBlogPostTask();
        if (this.progressDialog == null) {
            this.progressDialog = new ProgressDialog(getContext());
        }
        if (!this.progressDialog.isShowing()) {
            this.progressDialog.show();
        }
        this.progressDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.story.-$$Lambda$ShareStoryFragment$clc-VjhqCY-lRW90oURAqaJKXLU
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                this.f$0.lambda$toStoryPost$0$ShareStoryFragment(createBlogPostTask, dialogInterface);
            }
        });
        createBlogPostTask.setCallback(new Callback() { // from class: com.narvii.story.-$$Lambda$ShareStoryFragment$86NRFzvDlxKf83-0bcENWBgWJUU
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                this.f$0.lambda$toStoryPost$1$ShareStoryFragment(community, (BlogPost) obj);
            }
        });
        createBlogPostTask.setCancelCallback(new Callback() { // from class: com.narvii.story.-$$Lambda$ShareStoryFragment$6I0DBMe1sXnPxCDzGw63xM3Du5o
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                this.f$0.lambda$toStoryPost$2$ShareStoryFragment((Boolean) obj);
            }
        });
        Integer[] numArr = new Integer[1];
        numArr[0] = Integer.valueOf(community == null ? 0 : community.id);
        createBlogPostTask.execute(numArr);
    }

    public /* synthetic */ void lambda$toStoryPost$0$ShareStoryFragment(CreateBlogPostTask createBlogPostTask, DialogInterface dialogInterface) {
        this.cancelDraftDir = this.draftDir;
        createBlogPostTask.cancel(true);
    }

    public /* synthetic */ void lambda$toStoryPost$1$ShareStoryFragment(Community community, BlogPost blogPost) {
        Log.d(TAG, "CreateBlogPostTask success >>> ");
        if (blogPost == null) {
            showShortToast(R.string.normal_error_long);
            finish();
        } else {
            launchStoryPost(community, blogPost);
        }
    }

    public /* synthetic */ void lambda$toStoryPost$2$ShareStoryFragment(Boolean bool) {
        if (!bool.booleanValue() || TextUtils.isEmpty(this.cancelDraftDir) || FileUtils.isEmpty(new File(this.cancelDraftDir))) {
            return;
        }
        FileUtils.deleteFile(new File(this.cancelDraftDir));
        Log.d(TAG, "CreateBlogPostTask Cancel >>> delete -> " + this.cancelDraftDir);
    }

    private void launchStoryPost(Community community, BlogPost blogPost) {
        SceneDraft sceneDraft;
        Intent intent = new Intent(getContext(), (Class<?>) StoryPostActivity.class);
        intent.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(blogPost));
        if (blogPost != null && (sceneDraft = blogPost.sceneDraft) != null) {
            intent.putExtra("draftId", sceneDraft.draftId);
        }
        if (community != null) {
            intent.putExtra("__communityId", community.id);
        }
        intent.putExtra("Source", "Share Story");
        startActivity(intent);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public BlogPost createBlogPost(int i) throws Throwable {
        BlogPost blogPost = new BlogPost();
        blogPost.type = 9;
        blogPost.from = BlogPost.FROM_STORY_EDITOR;
        this.draftManager = new DraftManager(this, i);
        String strCreateDraft = this.draftManager.createDraft("story", null, blogPost);
        try {
            InputStream inputStreamOpenInputStream = getActivity().getContentResolver().openInputStream(this.uri);
            if (inputStreamOpenInputStream == null) {
                return blogPost;
            }
            File dir = this.draftManager.getDir(strCreateDraft);
            this.draftDir = dir.getAbsolutePath();
            Log.d(TAG, "CreateBlogPostTask extract zip >>> dir -> " + this.draftDir);
            if (ZipUtils.extract(inputStreamOpenInputStream, dir)) {
                if (this.shareInfo == null) {
                    BlogPost blogPost2 = (BlogPost) this.draftManager.readPost(strCreateDraft, BlogPost.class);
                    blogPost.sceneDraft = filterSceneDraft(blogPost2.sceneDraft, strCreateDraft);
                    blogPost.title = blogPost2.title;
                } else {
                    blogPost.sceneDraft = filterSceneDraft(this.shareInfo.sceneDraft, strCreateDraft);
                    blogPost.title = this.shareInfo.title;
                }
                String firstSceneCoverImagePath = blogPost.sceneDraft.getFirstSceneCoverImagePath();
                blogPost.sceneDraft.bgMusicClip = null;
                if (!TextUtils.isEmpty(firstSceneCoverImagePath)) {
                    File file = new File(this.draftManager.getDir(strCreateDraft), blogPost.sceneDraft.globalFileFolder);
                    if (FileUtils.isEmpty(file)) {
                        file.mkdirs();
                    }
                    File fileCopyFile = FileUtils.copyFile(getContext(), Uri.fromFile(new File(firstSceneCoverImagePath)), file, strCreateDraft + "_" + System.currentTimeMillis() + "_" + SceneConstant.COVER_IMAGE_FILE_NAME + ".jpg");
                    Media media = new Media();
                    media.type = 100;
                    media.url = this.photoManager.getUri(fileCopyFile.getAbsoluteFile());
                    blogPost.sceneDraft.coverImage = media.getMediaUrl();
                    blogPost.setCoverMedia(media);
                }
                this.draftManager.savePost(strCreateDraft, blogPost);
                return blogPost;
            }
            throw new RuntimeException("extract zip failed");
        } catch (Exception e) {
            Log.e(TAG, "createBlogPost exception : " + e.getMessage());
            return null;
        }
    }

    private String correctFilePathParam(String str, String str2, String str3) {
        String strReplace;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        Log.d(TAG, "correctFilePathParam  >>> oldDraftId = " + str2 + "    newDraftId = " + str3 + "   param = " + str);
        if (TextUtils.isEmpty(this.originDraftDir)) {
            strReplace = str;
        } else {
            str = str.replace(this.packageUtils.getMasterPackageName(), this.packageUtils.getStoryboardName()).replace(this.originDraftDir, this.draftManager.getDir(str3).getAbsolutePath());
            strReplace = str.replace(str2, str3);
        }
        if (!TextUtils.equals(str, strReplace)) {
            File file = new File(strReplace);
            if (!file.getParentFile().exists()) {
                file.getParentFile().mkdirs();
            }
            Utils.moveFile(new File(str), file, true);
        }
        Log.d(TAG, ">>>  newPath = " + strReplace);
        return strReplace;
    }

    private SceneDraft filterSceneDraft(SceneDraft sceneDraft, String str) throws IOException {
        List<Media> list;
        List<Media> list2;
        if (sceneDraft != null) {
            sceneDraft.metadata = sceneDraft.generateMetadata();
            for (SceneInfo sceneInfo : sceneDraft.sceneInfos) {
                if (sceneInfo != null && !sceneInfo.isEmpty()) {
                    sceneInfo.metadata = sceneInfo.generateMetadata();
                    sceneInfo.coverImage = correctFilePathParam(sceneInfo.coverImage, sceneDraft.draftId, str);
                    sceneInfo.outputUrl = correctFilePathParam(sceneInfo.outputUrl, sceneDraft.draftId, str);
                    if (sceneInfo.question != null) {
                        ArrayList arrayList = new ArrayList();
                        for (QuizOption quizOption : sceneInfo.question.quizOptions()) {
                            if (quizOption != null && (list2 = quizOption.mediaList) != null) {
                                for (Media media : list2) {
                                    media.url = this.photoManager.getUri(new File(correctFilePathParam(this.photoManager.getPath(media.url).getAbsolutePath(), sceneDraft.draftId, str)));
                                }
                            }
                            arrayList.add(quizOption);
                        }
                        sceneInfo.question.setQuizOptions(arrayList);
                    }
                    PollAttach pollAttach = sceneInfo.pollAttach;
                    if (pollAttach != null) {
                        for (PollOption pollOption : pollAttach.polloptList) {
                            if (pollOption != null && (list = pollOption.mediaList) != null) {
                                for (Media media2 : list) {
                                    media2.url = this.photoManager.getUri(new File(correctFilePathParam(this.photoManager.getPath(media2.url).getAbsolutePath(), sceneDraft.draftId, str)));
                                }
                            }
                        }
                    }
                    if (!TextUtils.isEmpty(sceneInfo.id)) {
                        sceneInfo.id = sceneInfo.id.replace(sceneDraft.draftId, str);
                    }
                    sceneInfo.inputFilePathList = null;
                    sceneInfo.previewFilePath = sceneInfo.outputUrl;
                    sceneInfo.videoClips = new ArrayList<>();
                    AVClipInfoPack aVClipInfoPack = new AVClipInfoPack();
                    aVClipInfoPack.inputPath = sceneInfo.outputUrl;
                    int i = (int) sceneInfo.duration;
                    aVClipInfoPack.orgDurationInMs = i;
                    aVClipInfoPack.visibleDurationInMs = i;
                    sceneInfo.videoClips.add(aVClipInfoPack);
                    sceneInfo.audioClips = new ArrayList<>();
                    sceneInfo.captions = new ArrayList<>();
                    sceneInfo.stickers = new ArrayList<>();
                    sceneInfo.pipClips = new ArrayList<>();
                }
            }
            sceneDraft.draftId = str;
        }
        return sceneDraft;
    }

    class CreateBlogPostTask extends AsyncTask<Integer, Integer, BlogPost> {
        Callback<BlogPost> callback;
        Callback<Boolean> cancelCallback;

        public CreateBlogPostTask() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public BlogPost doInBackground(Integer... numArr) {
            ShareStoryFragment shareStoryFragment = ShareStoryFragment.this;
            int iIntValue = 0;
            if (numArr != null && numArr.length != 0) {
                iIntValue = numArr[0].intValue();
            }
            return shareStoryFragment.createBlogPost(iIntValue);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(BlogPost blogPost) {
            super.onPostExecute((CreateBlogPostTask) blogPost);
            Callback<BlogPost> callback = this.callback;
            if (callback != null) {
                callback.call(blogPost);
            }
        }

        @Override // android.os.AsyncTask
        protected void onCancelled() {
            Callback<Boolean> callback = this.cancelCallback;
            if (callback != null) {
                callback.call(Boolean.valueOf(isCancelled()));
            }
        }

        public void setCallback(Callback<BlogPost> callback) {
            this.callback = callback;
        }

        public void setCancelCallback(Callback<Boolean> callback) {
            this.cancelCallback = callback;
        }
    }
}
