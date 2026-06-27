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
import android.support.v4.content.ContextCompat;
import android.support.v4.content.LocalBroadcastManager;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.DrawerActivity;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVDialog;
import com.narvii.app.NVFragment;
import com.narvii.config.ConfigService;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.master.MasterHelper;
import com.narvii.model.BlogCategory;
import com.narvii.model.api.ApiResponse;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.modulization.entry.EntryEligibleCheckResult;
import com.narvii.modulization.entry.EntryManager;
import com.narvii.post.draft.DraftListFragment;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.logging.LoggingSource;
import com.narvii.widget.ThumbImageView;
import com.narvii.widget.TintButton;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
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
    public static final int POST_STORY = 22;
    public static final int POST_TOPIC_QUESTION = 12;
    AccountService accountService;
    View backgroundView;
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
    private static final String[] DEFAULT_MAIN_ENTRY_KEYS = {EntryManager.ENTRY_DRAFT, "blog", EntryManager.ENTRY_WIKI, EntryManager.ENTRY_POLL, EntryManager.ENTRY_POST_PUBLIC_CHATROOMS, "image", EntryManager.ENTRY_LINK_POST, EntryManager.ENTRY_QUIZZES, EntryManager.ENTRY_QUEATION, EntryManager.ENTRY_GO_LIVE, "story"};
    private static final String[] DEFAULT_BLOG_ENTRY_KEYS = {"blog", EntryManager.ENTRY_POLL, "image", EntryManager.ENTRY_LINK_POST, EntryManager.ENTRY_QUIZZES, EntryManager.ENTRY_QUEATION, "story"};
    private static final String[] DEFAULT_MASTER_ENTRY_KEYS = {EntryManager.ENTRY_DRAFT, "story", EntryManager.ENTRY_POST_PUBLIC_CHATROOMS, EntryManager.ENTRY_GO_LIVE};

    @Override // com.narvii.app.NVDialog, com.narvii.logging.Page
    public String getPageName() {
        return "ComposePanel";
    }

    public static class MarginSpec {
        public int marginBottom;
        public int marginRight;

        public MarginSpec() {
        }

        public MarginSpec(int i, int i2) {
            this.marginBottom = i;
            this.marginRight = i2;
        }
    }

    public PostEntryDialog(NVContext nVContext) {
        super(nVContext, R.style.PostEntryDialog);
        this.entry = -1;
        this.current = -1;
        this.prev = -1;
        this.entryItemClickListener = new EntryItemClickListener() { // from class: com.narvii.post.entry.PostEntryDialog.9
            @Override // com.narvii.post.entry.EntryItemClickListener
            public void onEntryItemClicked(String str, EntryEligibleCheckResult entryEligibleCheckResult) {
                if ("story".equals(str)) {
                    PostEntryDialog.this.doPost(22, str);
                    return;
                }
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
                if (EntryManager.ENTRY_QUIZZES.equals(str)) {
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
                if (EntryManager.ENTRY_QUEATION.equals(str)) {
                    PostEntryDialog.this.doPost(12, str);
                    return;
                }
                if (EntryManager.ENTRY_WIKI.equals(str)) {
                    PostEntryDialog.this.doPost(2, str);
                } else if (EntryManager.ENTRY_DRAFT.equals(str)) {
                    LogEvent.clickBuilder(PostEntryDialog.this, ActSemantic.listViewEnter).area("Drafts").send();
                    PostEntryDialog.this.context.startActivity(FragmentWrapperActivity.intent(DraftListFragment.class));
                    PostEntryDialog.this.dismiss();
                }
            }
        };
        this.ctx = nVContext;
        this.context = nVContext.getContext();
        this.layoutTrans = new LayoutTransition();
        this.layoutTrans.setStartDelay(2, 0L);
        this.entryManager = new EntryManager(nVContext);
        this.localBroadcastManager = LocalBroadcastManager.getInstance(this.context);
        this.accountService = (AccountService) nVContext.getService("account");
        this.communityConfigHelper = new CommunityConfigHelper(nVContext);
    }

    public void addTmpExtraData(Bundle bundle) {
        Bundle bundle2 = this.tmpExtraData;
        if (bundle2 == null) {
            this.tmpExtraData = new Bundle(bundle);
        } else {
            bundle2.putAll(bundle);
        }
    }

    @Override // com.narvii.app.NVDialog, android.app.Dialog
    public void show() {
        Bundle bundle = this.tmpExtraData;
        show(bundle != null ? bundle.getInt(KEY_ENTRY, 0) : 0, "FAB", LoggingSource.GlobalComposeMenu);
    }

    public void show(int i, String str, LoggingSource loggingSource, MarginSpec marginSpec) {
        if (this.dismissing) {
            return;
        }
        if (((AccountService) this.ctx.getService("account")).getUserAccount() == null) {
            this.ctx.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("ndc://login")));
            return;
        }
        this.entry = i;
        this.source = str;
        this.loggingSource = loggingSource;
        setCurrent(i, false);
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

    public void show(int i, String str, LoggingSource loggingSource) {
        show(i, str, loggingSource, null);
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

    private void updatePostEntryIcon(MarginSpec marginSpec) {
        PostEntryView postEntryView;
        View viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.post_entry_dismiss);
        if (viewFindViewById2 == null) {
            return;
        }
        View viewFindViewById3 = viewFindViewById2.findViewById(R.id.post_entry_icon);
        if (viewFindViewById3 instanceof TintButton) {
            TintButton tintButton = (TintButton) viewFindViewById3;
            NVContext nVContext = Utils.getNVContext(getContext());
            tintButton.setTintColor(nVContext != null ? ((ConfigService) nVContext.getService("config")).getTheme().colorPrimary() : -7829368);
            Drawable drawable = ContextCompat.getDrawable(this.context, R.drawable.post_entry_close);
            if (this.entry == 11 && drawable != null) {
                drawable.setColorFilter(Color.parseColor("#6D43EB"), PorterDuff.Mode.SRC_IN);
            }
            tintButton.setImageDrawable(drawable);
        } else if (viewFindViewById3 instanceof ImageView) {
            ((ImageView) viewFindViewById3).setImageDrawable(ContextCompat.getDrawable(this.context, R.drawable.post_entry_close));
        }
        if (marginSpec != null) {
            if (viewFindViewById2.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) {
                ((ViewGroup.MarginLayoutParams) viewFindViewById2.getLayoutParams()).bottomMargin = marginSpec.marginBottom;
                if (Utils.isRtl()) {
                    ((ViewGroup.MarginLayoutParams) viewFindViewById2.getLayoutParams()).rightMargin = 0;
                    ((ViewGroup.MarginLayoutParams) viewFindViewById2.getLayoutParams()).leftMargin = marginSpec.marginRight;
                    return;
                } else {
                    ((ViewGroup.MarginLayoutParams) viewFindViewById2.getLayoutParams()).rightMargin = marginSpec.marginRight;
                    ((ViewGroup.MarginLayoutParams) viewFindViewById2.getLayoutParams()).leftMargin = 0;
                    return;
                }
            }
            return;
        }
        NVActivity nVActivity = null;
        NVContext nVContext2 = this.ctx;
        if (nVContext2 instanceof NVFragment) {
            nVActivity = (NVActivity) ((NVFragment) nVContext2).getActivity();
        } else if (nVContext2 instanceof NVActivity) {
            nVActivity = (NVActivity) nVContext2;
        }
        if (!(nVActivity instanceof DrawerActivity) || (postEntryView = ((DrawerActivity) nVActivity).getPostEntryView()) == null || (viewFindViewById = postEntryView.findViewById(R.id.post_entry_frame)) == null || !(viewFindViewById2.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            return;
        }
        ((ViewGroup.MarginLayoutParams) viewFindViewById2.getLayoutParams()).bottomMargin = (int) (viewFindViewById.getTranslationY() * (-1.0f));
        ((ViewGroup.MarginLayoutParams) viewFindViewById2.getLayoutParams()).rightMargin = 0;
        ((ViewGroup.MarginLayoutParams) viewFindViewById2.getLayoutParams()).leftMargin = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCurrent(int i, boolean z) {
        this.prev = this.current;
        this.current = i;
        inflateView(i, z);
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        int i = this.current;
        if (i > this.entry && i == 10) {
            super.onBackPressed();
        }
        super.onBackPressed();
    }

    private void inflateView(int i, boolean z) {
        if (i == 0) {
            setContentView(R.layout.post_entry_main_layout);
            findViewById(R.id.post_entry_dialog).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.post.entry.PostEntryDialog.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    PostEntryDialog.this.dismiss();
                }
            });
            this.postEntryContainerLayout = (PostEntrySnakeLayout) findViewById(R.id.post_snake_layout);
            if (!z) {
                updateEntryItems(DEFAULT_MAIN_ENTRY_KEYS);
            }
            findViewById(R.id.post_entry_dismiss_btn).setOnClickListener(this);
            this.backgroundView = findViewById(R.id.background);
        } else if (i == 2) {
            setContentView(R.layout.post_entry_main_layout);
            this.postEntryContainerLayout = (PostEntrySnakeLayout) findViewById(R.id.post_snake_layout);
            updateEntryItems(DEFAULT_BLOG_ENTRY_KEYS);
            findViewById(R.id.post_entry_dialog).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.post.entry.PostEntryDialog.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    PostEntryDialog.this.dismiss();
                }
            });
            findViewById(R.id.post_entry_dismiss_btn).setOnClickListener(this);
        } else {
            switch (i) {
                case 10:
                    setContentView(R.layout.post_entry_poll_choice_layout);
                    findViewById(R.id.post_new_collection_poll).setOnClickListener(this);
                    findViewById(R.id.post_entry_dialog).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.post.entry.PostEntryDialog.5
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            PostEntryDialog.this.dismiss();
                        }
                    });
                    findViewById(R.id.post_new_plain_poll).setOnClickListener(this);
                    break;
                case 11:
                    setContentView(R.layout.post_entry_master_layout);
                    this.postEntryContainerLayout = (PostEntrySnakeLayout) findViewById(R.id.post_snake_layout);
                    PostEntrySnakeLayout postEntrySnakeLayout = this.postEntryContainerLayout;
                    if (postEntrySnakeLayout != null) {
                        postEntrySnakeLayout.setFraction(4);
                    }
                    findViewById(R.id.post_entry_dialog).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.post.entry.PostEntryDialog.6
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            PostEntryDialog.this.dismiss();
                        }
                    });
                    findViewById(R.id.community_container).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.post.entry.PostEntryDialog.7
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            LogEvent.clickBuilder(PostEntryDialog.this, ActSemantic.createAmino).area("Community").send();
                            new MasterHelper(PostEntryDialog.this.ctx).createAmino(null);
                            PostEntryDialog.this.dismiss();
                        }
                    });
                    updateEntryItems(DEFAULT_MASTER_ENTRY_KEYS);
                    break;
                case 12:
                    setContentView(R.layout.post_entry_main_layout);
                    findViewById(R.id.post_entry_dialog).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.post.entry.PostEntryDialog.8
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            PostEntryDialog.this.dismiss();
                        }
                    });
                    this.postEntryContainerLayout = (PostEntrySnakeLayout) findViewById(R.id.post_snake_layout);
                    PostEntrySnakeLayout postEntrySnakeLayout2 = this.postEntryContainerLayout;
                    if (postEntrySnakeLayout2 != null && (postEntrySnakeLayout2.getParent() instanceof RelativeLayout)) {
                        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.postEntryContainerLayout.getLayoutParams();
                        double screenWidth = Utils.getScreenWidth(this.context);
                        Double.isNaN(screenWidth);
                        layoutParams.width = (int) (screenWidth * 0.82d);
                        layoutParams.addRule(11);
                        this.postEntryContainerLayout.setLayoutParams(layoutParams);
                        this.postEntryContainerLayout.setFraction(4);
                    }
                    if (!z) {
                        updateEntryItems(DEFAULT_MASTER_ENTRY_KEYS);
                    }
                    findViewById(R.id.post_entry_dismiss_btn).setOnClickListener(this);
                    this.backgroundView = findViewById(R.id.background);
                    break;
            }
        }
        View viewFindViewById = findViewById(R.id.post_entry_btn2);
        if (viewFindViewById instanceof ThumbImageView) {
            ((ThumbImageView) viewFindViewById).defaultDrawable = new ColorDrawable(-1);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.post_entry_dismiss_btn /* 2131298438 */:
                dismiss();
                break;
            case R.id.post_new_collection_poll /* 2131298462 */:
                doPost(16, EntryManager.ENTRY_POLL);
                break;
            case R.id.post_new_plain_poll /* 2131298463 */:
                doPost(15, EntryManager.ENTRY_POLL);
                break;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x0111  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void doPost(int r17, java.lang.String r18) {
        /*
            Method dump skipped, instructions count: 725
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.post.entry.PostEntryDialog.doPost(int, java.lang.String):void");
    }

    public void setBlogCategory(List<BlogCategory> list) {
        if (this.entry == 2) {
            this.blogCategoryList = list;
        }
    }

    private void checkEligible() {
        NVContext nVContext = Utils.getNVContext(this.context);
        AccountService accountService = (AccountService) nVContext.getService("account");
        ((ApiService) nVContext.getService("api")).exec(ApiRequest.builder().path("user-profile/" + accountService.getUserId() + "/compose-eligible-check").build(), new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.post.entry.PostEntryDialog.10
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                if (PostEntryDialog.this.isShowing()) {
                    if ((i != 238 || PostEntryDialog.this.checkActivation()) && ApiService.shouldShowErrMessage(PostEntryDialog.this.context)) {
                        AlertDialog.Builder builder = new AlertDialog.Builder(PostEntryDialog.this.context);
                        builder.setMessage(str);
                        builder.setNegativeButton(R.string.close, Utils.DIALOG_BUTTON_EMPTY_LISTENER);
                        builder.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.post.entry.PostEntryDialog.10.1
                            @Override // android.content.DialogInterface.OnCancelListener
                            public void onCancel(DialogInterface dialogInterface) {
                                PostEntryDialog.this.dismiss();
                            }
                        });
                        builder.show();
                    }
                }
            }
        });
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
        builder.setPositiveButton(R.string.post_activate_account, new DialogInterface.OnClickListener() { // from class: com.narvii.post.entry.PostEntryDialog.11
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.cancel();
                PostEntryDialog.this.context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("ndc://activation")));
            }
        });
        builder.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.post.entry.PostEntryDialog.12
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                PostEntryDialog.this.dismiss();
            }
        });
        builder.show();
        return false;
    }

    private void updateEntryItems(String[] strArr) {
        if (this.postEntryContainerLayout == null) {
            return;
        }
        this.postEntryContainerLayout.setEntryKeys(this.ctx, getFilteredEntryKeys(strArr), this.entryItemClickListener);
    }

    public List<String> getFilteredEntryKeys(String[] strArr) {
        if (strArr == null) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < strArr.length; i++) {
            if (this.entryManager.isEntryEnabled(this.accountService.hasAccount() ? this.accountService.getUserProfile() : null, strArr[i])) {
                arrayList.add(strArr[i]);
            }
        }
        return arrayList;
    }
}
