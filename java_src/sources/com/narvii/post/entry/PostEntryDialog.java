package com.narvii.post.entry;

import android.animation.LayoutTransition;
import android.animation.ValueAnimator;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.core.content.ContextCompat;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.DrawerActivity;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVDialog;
import com.narvii.app.NVFragment;
import com.narvii.blog.post.BlogPost;
import com.narvii.blog.post.BlogPostActivity;
import com.narvii.blog.post.ImagePostActivity;
import com.narvii.blog.post.LinkPostActivity;
import com.narvii.blog.post.PollPostActivity;
import com.narvii.blog.post.QuizPostActivity;
import com.narvii.blog.post.TopicPostActivity;
import com.narvii.chat.post.ThreadPost;
import com.narvii.chat.post.ThreadPostNewActivity;
import com.narvii.comment.list.CommentListFragment;
import com.narvii.config.ConfigService;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.item.post.ItemPost;
import com.narvii.item.post.ItemPostActivity;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.master.MasterHelper;
import com.narvii.model.Blog;
import com.narvii.model.BlogCategory;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.story.StoryTopic;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.modulization.Module;
import com.narvii.modulization.entry.EntryEligibleCheckResult;
import com.narvii.modulization.entry.EntryManager;
import com.narvii.post.draft.DraftListFragment;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.logging.LoggingSource;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.wallet.MembershipService;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.ThumbImageView;
import com.narvii.widget.TintButton;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class PostEntryDialog extends NVDialog implements View.OnClickListener {
    public static final int ENTRY_BLOG = 2;
    public static final int ENTRY_MAIN = 0;
    public static final int ENTRY_MASTER = 11;
    private static final int ENTRY_POLL = 10;
    public static final int ENTRY_TOPIC = 12;
    public static final String KEY_ENTRY = "key_entry";
    public static final int POST_BLOG = 1;
    public static final int POST_CHAT = 20;
    public static final int POST_GO_LIVE = 23;
    public static final int POST_IMAGE = 5;
    public static final int POST_ITEM = 2;
    public static final int POST_LINK = 4;
    public static final int POST_POLL_COLLECTION = 16;
    public static final int POST_POLL_PLAIN = 15;
    public static final int POST_QUIZ = 3;
    public static final int POST_TOPIC_QUESTION = 12;
    AccountService accountService;
    List<BlogCategory> blogCategoryList;
    CommunityConfigHelper communityConfigHelper;
    private final Context context;
    private final NVContext ctx;
    private int current;
    boolean dismissing;
    private int entry;
    EntryItemClickListener entryItemClickListener;
    EntryManager entryManager;
    private LayoutTransition layoutTrans;
    LocalBroadcastManager localBroadcastManager;
    private LoggingSource loggingSource;
    PostEntrySnakeLayout postEntryContainerLayout;
    private int prev;
    private String source;
    private Bundle tmpExtraData;
    private static final String[] DEFAULT_MAIN_ENTRY_KEYS = {EntryManager.ENTRY_DRAFT, "blog", EntryManager.ENTRY_WIKI, EntryManager.ENTRY_POLL, EntryManager.ENTRY_POST_PUBLIC_CHATROOMS, "image", EntryManager.ENTRY_LINK_POST, "quiz", "question", EntryManager.ENTRY_GO_LIVE};
    private static final String[] DEFAULT_BLOG_ENTRY_KEYS = {"blog", EntryManager.ENTRY_POLL, "image", EntryManager.ENTRY_LINK_POST, "quiz", "question"};
    private static final String[] DEFAULT_MASTER_ENTRY_KEYS = {EntryManager.ENTRY_DRAFT, EntryManager.ENTRY_POST_PUBLIC_CHATROOMS, EntryManager.ENTRY_GO_LIVE};

    /* JADX INFO: renamed from: com.narvii.post.entry.PostEntryDialog$4, reason: invalid class name */
    class AnonymousClass4 extends ApiResponseListener<ApiResponse> {
        @Override // com.narvii.util.http.ApiResponseListener
        public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
        }

        AnonymousClass4(Class cls) {
            super(cls);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onFail$0(DialogInterface dialogInterface) {
            PostEntryDialog.this.dismiss();
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
            if (PostEntryDialog.this.isShowing()) {
                if ((i10 != 238 || PostEntryDialog.this.checkActivation()) && ApiService.shouldShowErrMessage(PostEntryDialog.this.context)) {
                    AlertDialog.Builder builder = new AlertDialog.Builder(PostEntryDialog.this.context);
                    builder.setMessage(str);
                    builder.setNegativeButton(R.string.close, Utils.DIALOG_BUTTON_EMPTY_LISTENER);
                    builder.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.post.entry.j
                        @Override // android.content.DialogInterface.OnCancelListener
                        public final void onCancel(DialogInterface dialogInterface) {
                            this.f2605a.lambda$onFail$0(dialogInterface);
                        }
                    });
                    builder.show();
                }
            }
        }
    }

    public static class MarginSpec {
        public int marginBottom;
        public int marginRight;
    }

    public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public static void safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(NVContext p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.app.NVDialog, com.narvii.logging.Page
    public String getPageName() {
        return "compose_panel";
    }

    public void setBlogCategory(List<BlogCategory> list) {
        if (this.entry == 2) {
            this.blogCategoryList = list;
        }
    }

    @Override // com.narvii.app.NVDialog, android.app.Dialog
    public void show() {
        Bundle bundle = this.tmpExtraData;
        show(bundle != null ? bundle.getInt(KEY_ENTRY, 0) : 0, "FAB", LoggingSource.GlobalComposeMenu);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkActivation() {
        AccountService accountService = (AccountService) Utils.getNVContext(this.context).getService("account");
        if (!accountService.hasAccount() || accountService.hasActivation()) {
            return true;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setTitle(R.string.post_not_eligible);
        builder.setMessage(R.string.post_activate_account_first);
        builder.setNegativeButton(android.R.string.cancel, Utils.DIALOG_BUTTON_EMPTY_LISTENER);
        builder.setPositiveButton(R.string.post_activate_account, new DialogInterface.OnClickListener() { // from class: com.narvii.post.entry.a
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i10) {
                this.f2596a.lambda$checkActivation$7(dialogInterface, i10);
            }
        });
        builder.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.post.entry.b
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                this.f2597a.lambda$checkActivation$8(dialogInterface);
            }
        });
        builder.show();
        return false;
    }

    private void checkEligible() {
        NVContext nVContext = Utils.getNVContext(this.context);
        AccountService accountService = (AccountService) nVContext.getService("account");
        ((ApiService) nVContext.getService("api")).exec(ApiRequest.builder().path("user-profile/" + accountService.getUserId() + "/compose-eligible-check").build(), new AnonymousClass4(ApiResponse.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$inflateView$4(View view) {
        LogEvent.clickBuilder(this, ActSemantic.createAmino).area("Community").send();
        new MasterHelper(this.ctx).createAmino(null);
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCurrent(int i10, boolean z6) {
        this.prev = this.current;
        this.current = i10;
        inflateView(i10, z6);
    }

    private void updateEntryItems(String[] strArr) {
        if (this.postEntryContainerLayout == null) {
            return;
        }
        this.postEntryContainerLayout.setEntryKeys(this.ctx, getFilteredEntryKeys(strArr), this.entryItemClickListener);
    }

    public void addTmpExtraData(Bundle bundle) {
        Bundle bundle2 = this.tmpExtraData;
        if (bundle2 == null) {
            this.tmpExtraData = new Bundle(bundle);
        } else {
            bundle2.putAll(bundle);
        }
    }

    @Override // com.narvii.app.NVDialog, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        if (this.dismissing) {
            return;
        }
        this.dismissing = true;
        this.tmpExtraData = null;
        int iGo = this.postEntryContainerLayout.go(false);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
        valueAnimatorOfFloat.setDuration(iGo);
        valueAnimatorOfFloat.setInterpolator(new DecelerateInterpolator());
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.post.entry.PostEntryDialog.2
            View view;

            {
                this.view = PostEntryDialog.this.findViewById(R.id.post_entry_dialog);
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.view.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                if (valueAnimator.getAnimatedFraction() == 1.0f) {
                    PostEntryDialog.super.dismiss();
                    PostEntryDialog.this.dismissing = false;
                }
            }
        });
        valueAnimatorOfFloat.start();
    }

    public void doPost(int i10, String str) {
        Intent intent;
        Bundle bundle = this.tmpExtraData;
        dismiss();
        if (i10 == 1) {
            intent = new Intent(this.context, (Class<?>) BlogPostActivity.class);
            BlogPost blogPost = new BlogPost();
            if (this.entry == 2) {
                blogPost.blogCategoryList = this.blogCategoryList;
            }
            intent.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(blogPost));
        } else if (i10 == 2) {
            intent = new Intent(this.context, (Class<?>) ItemPostActivity.class);
            intent.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(new ItemPost()));
        } else if (i10 == 3) {
            BlogPost blogPost2 = new BlogPost();
            blogPost2.type = 6;
            blogPost2.blogCategoryList = this.blogCategoryList;
            intent = new Intent(this.context, (Class<?>) QuizPostActivity.class);
            intent.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(blogPost2));
        } else if (i10 == 4) {
            BlogPost blogPost3 = new BlogPost();
            blogPost3.type = 5;
            blogPost3.blogCategoryList = this.blogCategoryList;
            intent = new Intent(this.context, (Class<?>) LinkPostActivity.class);
            intent.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(blogPost3));
        } else if (i10 == 5) {
            intent = new Intent(this.context, (Class<?>) ImagePostActivity.class);
            BlogPost blogPost4 = new BlogPost();
            blogPost4.type = 7;
            if (this.entry == 2) {
                blogPost4.blogCategoryList = this.blogCategoryList;
            }
            intent.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(blogPost4));
        } else if (i10 != 12) {
            if (i10 == 20 || i10 == 23) {
                boolean z6 = i10 == 23;
                LogEvent.clickBuilder(this, ActSemantic.createChat).area(z6 ? "GoLive" : "Chat").send();
                if (((ConfigService) this.ctx.getService("config")).getCommunityId() != 0) {
                    intent = new Intent(getContext(), (Class<?>) ThreadPostNewActivity.class);
                    intent.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(new ThreadPost()));
                    if (z6) {
                        intent.putExtra("doAfter", "GO_LIVE");
                    }
                } else {
                    if (((AccountService) this.ctx.getService("account")).getUserAccount() == null) {
                        safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(this.ctx, new Intent("android.intent.action.VIEW", Uri.parse("ndc://login")));
                        return;
                    }
                    MembershipService membershipService = (MembershipService) this.ctx.getService("membership");
                    EntryEligibleCheckResult entryEligibleCheckResultCanUserChat = new EntryManager(this.ctx).canUserChat(this.accountService.getUserProfile(), z6);
                    if (membershipService.isMembership() || entryEligibleCheckResultCanUserChat.isEligible) {
                        Intent intent2 = new Intent(getContext(), (Class<?>) ThreadPostNewActivity.class);
                        ThreadPost threadPost = new ThreadPost();
                        if (z6) {
                            intent2.putExtra("doAfter", "GO_LIVE");
                            intent2.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(threadPost));
                        } else {
                            StoryTopic storyTopic = bundle != null ? (StoryTopic) JacksonUtils.readAs(bundle.getString(Blog.KEY_DEFAULT_STORY_TOPIC), StoryTopic.class) : null;
                            if (storyTopic != null) {
                                ArrayList arrayList = new ArrayList();
                                threadPost.userAddedTopicList = arrayList;
                                arrayList.add(storyTopic);
                            }
                            intent2.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(threadPost));
                            intent2.putExtra("topic", JacksonUtils.writeAsString(storyTopic));
                        }
                        intent = intent2;
                    } else {
                        final ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this.context);
                        aCMAlertDialog.setMessage(entryEligibleCheckResultCanUserChat.errorString);
                        aCMAlertDialog.addButton(android.R.string.ok, new View.OnClickListener() { // from class: com.narvii.post.entry.c
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                aCMAlertDialog.dismiss();
                            }
                        });
                        aCMAlertDialog.show();
                        intent = null;
                    }
                }
            } else if (i10 == 15 || i10 == 16) {
                intent = new Intent(this.context, (Class<?>) PollPostActivity.class);
                BlogPost blogPost5 = new BlogPost();
                blogPost5.type = 4;
                ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
                ObjectNode objectNodePutObject = objectNodeCreateObjectNode.putObject("pollSettings");
                objectNodePutObject.put("polloptType", i10 == 16 ? 1 : 0);
                objectNodePutObject.put("joinEnabled", true);
                blogPost5.extensions = objectNodeCreateObjectNode;
                blogPost5.durationInDays = 7;
                if (this.entry == 2) {
                    blogPost5.blogCategoryList = this.blogCategoryList;
                }
                intent.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(blogPost5));
            } else {
                intent = null;
            }
        } else {
            intent = new Intent(this.context, (Class<?>) TopicPostActivity.class);
            BlogPost blogPost6 = new BlogPost();
            blogPost6.type = 3;
            if (this.entry == 2) {
                blogPost6.blogCategoryList = this.blogCategoryList;
            }
            intent.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(blogPost6));
        }
        if (intent != null) {
            intent.putExtra(ExternalPostPreviewFragment.SOURCE, this.source);
            LoggingSource loggingSource = this.loggingSource;
            intent.putExtra(CommentListFragment.COMMENT_KEY_LOGGING_SOURCE, loggingSource != null ? loggingSource.name() : null);
            safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(this.context, intent);
        }
    }

    public List<String> getFilteredEntryKeys(String[] strArr) {
        if (strArr == null) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < strArr.length; i10++) {
            if (this.entryManager.isEntryEnabled(this.accountService.hasAccount() ? this.accountService.getUserProfile() : null, strArr[i10])) {
                arrayList.add(strArr[i10]);
            }
        }
        return arrayList;
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        int i10 = this.current;
        if (i10 > this.entry && i10 == 10) {
            super.onBackPressed();
        }
        super.onBackPressed();
    }

    public PostEntryDialog(NVContext nVContext) {
        super(nVContext, R.style.PostEntryDialog);
        this.entry = -1;
        this.current = -1;
        this.prev = -1;
        this.entryItemClickListener = new EntryItemClickListener() { // from class: com.narvii.post.entry.PostEntryDialog.3
            public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // com.narvii.post.entry.EntryItemClickListener
            public void onEntryItemClicked(String str, EntryEligibleCheckResult entryEligibleCheckResult) {
                if (EntryManager.ENTRY_POST_PUBLIC_CHATROOMS.equals(str)) {
                    PostEntryDialog.this.doPost(20, str);
                    return;
                }
                if (EntryManager.ENTRY_GO_LIVE.equals(str)) {
                    PostEntryDialog.this.doPost(23, str);
                    return;
                }
                if ("image".equals(str)) {
                    PostEntryDialog.this.doPost(5, str);
                    return;
                }
                if ("blog".equals(str)) {
                    PostEntryDialog.this.doPost(1, str);
                    return;
                }
                if ("quiz".equals(str)) {
                    PostEntryDialog.this.doPost(3, str);
                    return;
                }
                if (EntryManager.ENTRY_LINK_POST.equals(str)) {
                    PostEntryDialog.this.doPost(4, str);
                    return;
                }
                if (EntryManager.ENTRY_POLL.equals(str)) {
                    if (PostEntryDialog.this.communityConfigHelper.isCatalogEnable()) {
                        PostEntryDialog.this.setCurrent(10, true);
                        return;
                    } else {
                        PostEntryDialog.this.doPost(15, str);
                        return;
                    }
                }
                if ("question".equals(str)) {
                    PostEntryDialog.this.doPost(12, str);
                    return;
                }
                if (EntryManager.ENTRY_WIKI.equals(str)) {
                    PostEntryDialog.this.doPost(2, str);
                    return;
                }
                if (EntryManager.ENTRY_DRAFT.equals(str)) {
                    LogEvent.clickBuilder(PostEntryDialog.this, ActSemantic.listViewEnter).area("Drafts").send();
                    safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(PostEntryDialog.this.context, FragmentWrapperActivity.intent(DraftListFragment.class));
                    PostEntryDialog.this.dismiss();
                    ((StatisticsService) Utils.getNVContext(PostEntryDialog.this.context).getService("statistics")).event("Saved Drafts Opened").userPropInc("Saved Drafts Opened Total");
                }
            }
        };
        this.ctx = nVContext;
        Context context = nVContext.getContext();
        this.context = context;
        LayoutTransition layoutTransition = new LayoutTransition();
        this.layoutTrans = layoutTransition;
        layoutTransition.setStartDelay(2, 0L);
        this.entryManager = new EntryManager(nVContext);
        this.localBroadcastManager = LocalBroadcastManager.b(context);
        this.accountService = (AccountService) nVContext.getService("account");
        this.communityConfigHelper = new CommunityConfigHelper(nVContext);
    }

    private void inflateView(int i10, boolean z6) {
        if (i10 != 0) {
            if (i10 != 2) {
                switch (i10) {
                    case 10:
                        setContentView(R.layout.post_entry_poll_choice_layout);
                        findViewById(R.id.post_new_collection_poll).setOnClickListener(this);
                        findViewById(R.id.post_entry_dialog).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.post.entry.f
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                this.f2601a.lambda$inflateView$2(view);
                            }
                        });
                        findViewById(R.id.post_new_plain_poll).setOnClickListener(this);
                        break;
                    case 11:
                        setContentView(R.layout.post_entry_master_layout);
                        PostEntrySnakeLayout postEntrySnakeLayout = (PostEntrySnakeLayout) findViewById(R.id.post_snake_layout);
                        this.postEntryContainerLayout = postEntrySnakeLayout;
                        if (postEntrySnakeLayout != null) {
                            postEntrySnakeLayout.setFraction(4);
                        }
                        findViewById(R.id.post_entry_dialog).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.post.entry.g
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                this.f2602a.lambda$inflateView$3(view);
                            }
                        });
                        findViewById(R.id.community_container).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.post.entry.h
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                this.f2603a.lambda$inflateView$4(view);
                            }
                        });
                        updateEntryItems(DEFAULT_MASTER_ENTRY_KEYS);
                        break;
                    case 12:
                        setContentView(R.layout.post_entry_main_layout);
                        findViewById(R.id.post_entry_dialog).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.post.entry.i
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                this.f2604a.lambda$inflateView$5(view);
                            }
                        });
                        PostEntrySnakeLayout postEntrySnakeLayout2 = (PostEntrySnakeLayout) findViewById(R.id.post_snake_layout);
                        this.postEntryContainerLayout = postEntrySnakeLayout2;
                        if (postEntrySnakeLayout2 != null && (postEntrySnakeLayout2.getParent() instanceof RelativeLayout)) {
                            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.postEntryContainerLayout.getLayoutParams();
                            layoutParams.width = (int) (((double) Utils.getScreenWidth(this.context)) * 0.82d);
                            layoutParams.addRule(11);
                            this.postEntryContainerLayout.setLayoutParams(layoutParams);
                            this.postEntryContainerLayout.setFraction(4);
                        }
                        if (!z6) {
                            updateEntryItems(DEFAULT_MASTER_ENTRY_KEYS);
                        }
                        findViewById(R.id.post_entry_dismiss_btn).setOnClickListener(this);
                        break;
                }
            } else {
                setContentView(R.layout.post_entry_main_layout);
                this.postEntryContainerLayout = (PostEntrySnakeLayout) findViewById(R.id.post_snake_layout);
                updateEntryItems(DEFAULT_BLOG_ENTRY_KEYS);
                findViewById(R.id.post_entry_dialog).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.post.entry.e
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f2600a.lambda$inflateView$1(view);
                    }
                });
                findViewById(R.id.post_entry_dismiss_btn).setOnClickListener(this);
            }
        } else {
            setContentView(R.layout.post_entry_main_layout);
            findViewById(R.id.post_entry_dialog).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.post.entry.d
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f2599a.lambda$inflateView$0(view);
                }
            });
            this.postEntryContainerLayout = (PostEntrySnakeLayout) findViewById(R.id.post_snake_layout);
            if (!z6) {
                updateEntryItems(DEFAULT_MAIN_ENTRY_KEYS);
            }
            findViewById(R.id.post_entry_dismiss_btn).setOnClickListener(this);
        }
        View viewFindViewById = findViewById(R.id.post_entry_btn2);
        if (viewFindViewById instanceof ThumbImageView) {
            ((ThumbImageView) viewFindViewById).defaultDrawable = new ColorDrawable(-1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkActivation$7(DialogInterface dialogInterface, int i10) {
        dialogInterface.cancel();
        safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(this.context, new Intent("android.intent.action.VIEW", Uri.parse("ndc://activation")));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkActivation$8(DialogInterface dialogInterface) {
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$inflateView$0(View view) {
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$inflateView$1(View view) {
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$inflateView$2(View view) {
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$inflateView$3(View view) {
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$inflateView$5(View view) {
        dismiss();
    }

    private void updatePostEntryIcon(MarginSpec marginSpec) {
        NVActivity nVActivity;
        PostEntryView postEntryView;
        View viewFindViewById;
        int translationY;
        int dimensionPixelSize;
        int iColorPrimary;
        View viewFindViewById2 = findViewById(R.id.post_entry_dismiss);
        if (viewFindViewById2 == null) {
            return;
        }
        View viewFindViewById3 = viewFindViewById2.findViewById(R.id.post_entry_icon);
        if (viewFindViewById3 instanceof TintButton) {
            TintButton tintButton = (TintButton) viewFindViewById3;
            NVContext nVContext = Utils.getNVContext(getContext());
            if (nVContext != null) {
                iColorPrimary = ((ConfigService) nVContext.getService("config")).getTheme().colorPrimary();
            } else {
                iColorPrimary = -7829368;
            }
            tintButton.setTintColor(iColorPrimary);
            Drawable drawable = ContextCompat.getDrawable(this.context, R.drawable.post_entry_close);
            if (this.entry == 11 && drawable != null) {
                drawable.setColorFilter(Color.parseColor("#6D43EB"), PorterDuff.Mode.SRC_IN);
            }
            tintButton.setImageDrawable(drawable);
        } else if (viewFindViewById3 instanceof ImageView) {
            ((ImageView) viewFindViewById3).setImageDrawable(ContextCompat.getDrawable(this.context, R.drawable.post_entry_close));
        }
        NVContext nVContext2 = this.ctx;
        if (nVContext2 instanceof NVFragment) {
            nVActivity = (NVActivity) ((NVFragment) nVContext2).getActivity();
        } else if (nVContext2 instanceof NVActivity) {
            nVActivity = (NVActivity) nVContext2;
        } else {
            nVActivity = null;
        }
        if (marginSpec != null) {
            ViewGroup.LayoutParams layoutParams = viewFindViewById2.getLayoutParams();
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                if (nVActivity.isBottomAdsViewVisible()) {
                    dimensionPixelSize = nVActivity.getResources().getDimensionPixelSize(R.dimen.ad_height_cbb_post_entry) + marginSpec.marginBottom;
                } else {
                    dimensionPixelSize = marginSpec.marginBottom;
                }
                marginLayoutParams.bottomMargin = dimensionPixelSize;
                if (Utils.isRtl()) {
                    marginLayoutParams.rightMargin = 0;
                    marginLayoutParams.leftMargin = marginSpec.marginRight;
                    return;
                } else {
                    marginLayoutParams.rightMargin = marginSpec.marginRight;
                    marginLayoutParams.leftMargin = 0;
                    return;
                }
            }
            return;
        }
        if ((nVActivity instanceof DrawerActivity) && (postEntryView = ((DrawerActivity) nVActivity).getPostEntryView()) != null && (viewFindViewById = postEntryView.findViewById(R.id.post_entry_frame)) != null && (viewFindViewById2.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) viewFindViewById2.getLayoutParams();
            if (nVActivity.isBottomAdsViewVisible()) {
                translationY = (int) postEntryView.getResources().getDimension(R.dimen.ad_height);
            } else {
                translationY = (int) (viewFindViewById.getTranslationY() * (-1.0f));
            }
            marginLayoutParams2.bottomMargin = translationY;
            ((ViewGroup.MarginLayoutParams) viewFindViewById2.getLayoutParams()).rightMargin = 0;
            ((ViewGroup.MarginLayoutParams) viewFindViewById2.getLayoutParams()).leftMargin = 0;
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.post_entry_dismiss_btn /* 2131364674 */:
                dismiss();
                break;
            case R.id.post_new_collection_poll /* 2131364699 */:
                doPost(16, EntryManager.ENTRY_POLL);
                break;
            case R.id.post_new_plain_poll /* 2131364700 */:
                doPost(15, EntryManager.ENTRY_POLL);
                break;
        }
    }

    public void show(int i10, String str, LoggingSource loggingSource, MarginSpec marginSpec) {
        if (this.dismissing) {
            return;
        }
        if (((AccountService) this.ctx.getService("account")).getUserAccount() == null) {
            safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(this.ctx, new Intent("android.intent.action.VIEW", Uri.parse("ndc://login")));
            return;
        }
        this.entry = i10;
        this.source = str;
        this.loggingSource = loggingSource;
        setCurrent(i10, false);
        super.show();
        int iGo = this.postEntryContainerLayout.go(true);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.setDuration(Math.min(iGo / 2, 300));
        valueAnimatorOfFloat.setInterpolator(new AccelerateInterpolator());
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.post.entry.PostEntryDialog.1
            View view;

            {
                this.view = PostEntryDialog.this.findViewById(R.id.post_entry_dialog);
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.view.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        valueAnimatorOfFloat.start();
        updatePostEntryIcon(marginSpec);
    }

    public void show(int i10, String str, LoggingSource loggingSource) {
        show(i10, str, loggingSource, null);
    }
}
