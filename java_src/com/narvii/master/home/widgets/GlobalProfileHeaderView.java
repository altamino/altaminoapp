package com.narvii.master.home.widgets;

import android.content.Context;
import android.content.Intent;
import android.graphics.Typeface;
import android.support.v4.content.ContextCompat;
import android.text.Layout;
import android.text.StaticLayout;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.account.LoginActivity;
import com.narvii.account.visitor.RecentVisitorHelper;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.chat.input.MentionedEditText;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.logging.LogUtils;
import com.narvii.master.home.follow.GlobalFollowersListFragment;
import com.narvii.master.home.follow.GlobalFollowingListFragment;
import com.narvii.master.home.profile.ProfileListFragment;
import com.narvii.model.User;
import com.narvii.util.Utils;
import com.narvii.util.text.DefaultTagClickListener;
import com.narvii.util.text.LinkTouchMovementMethod;
import com.narvii.util.text.NVText;
import com.narvii.util.text.TextUtils;
import com.narvii.visitor.RecentVisitorListFragment;
import com.narvii.wallet.MembershipMainRecyclerFragment;
import com.narvii.wallet.MembershipService;
import com.narvii.widget.AutoSizingTextView;
import com.narvii.widget.NicknameView;
import com.narvii.widget.UserAvatarLayout;
import kotlin.jvm.functions.Function0;

/* loaded from: classes3.dex */
public class GlobalProfileHeaderView extends LinearLayout implements View.OnClickListener {
    private static final int BIO_MAX_LINES_COLLAPSE = 2;
    AccountService account;
    View.OnClickListener addBioPreClickListener;
    TextView aminoId;
    UserAvatarLayout avatarLayout;
    View chatEntry;
    View editButton;
    GlobalProfileFollowView followView;
    AutoSizingTextView followerCount;
    TextView followerCountUnitTV;
    AutoSizingTextView followingCount;
    private View hintFrame;
    private ImageView imgHint;
    private boolean isCollapsed;
    boolean isMe;
    ProfileLinkedCommuView linkedCommuView;
    View membershipHint;
    View.OnClickListener membershipPreClickListener;
    MembershipService membershipService;
    NicknameView nicknameView;
    NVContext nvContext;
    NVContext page;
    private RecentVisitorHelper recentVisitorHelper;
    View.OnClickListener showBioDetailClickListener;
    TextView tvBio;
    private TextView tvHint;
    User user;
    View visitorContainer;
    AutoSizingTextView visitorCount;
    TextView visitorCountUnitTV;
    View visitorIncreaseLayout;
    TextView visitorIncreaseTV;

    public GlobalProfileHeaderView(Context context) {
        super(context, null);
        this.isCollapsed = true;
    }

    public GlobalProfileHeaderView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.isCollapsed = true;
        this.nvContext = Utils.getNVContext(context);
        setClipChildren(false);
        configServices();
        this.recentVisitorHelper = new RecentVisitorHelper(this.nvContext);
    }

    public void setPage(NVContext nVContext) {
        this.page = nVContext;
        ProfileLinkedCommuView profileLinkedCommuView = this.linkedCommuView;
        if (profileLinkedCommuView != null) {
            profileLinkedCommuView.setPage(nVContext);
        }
    }

    public void setMembershipPreClickListener(View.OnClickListener onClickListener) {
        this.membershipPreClickListener = onClickListener;
    }

    public void setAddBioPreClickListener(View.OnClickListener onClickListener) {
        this.addBioPreClickListener = onClickListener;
    }

    public void setShowBioDetailClickListener(View.OnClickListener onClickListener) {
        this.showBioDetailClickListener = onClickListener;
    }

    public void setFollowClickListener(View.OnClickListener onClickListener) {
        this.followView.setFollowClickListener(onClickListener);
    }

    public void setFollowNotificationListener(View.OnClickListener onClickListener) {
        this.followView.setFollowNotificationListener(onClickListener);
    }

    public void setStartChatListener(View.OnClickListener onClickListener) {
        View view = this.chatEntry;
        if (view != null) {
            view.setOnClickListener(onClickListener);
        }
    }

    public NicknameView getNicknameView() {
        return this.nicknameView;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.avatarLayout = (UserAvatarLayout) findViewById(R.id.user_avatar_layout);
        this.tvBio = (TextView) findViewById(R.id.bio);
        this.tvBio.setOnClickListener(this);
        this.nicknameView = (NicknameView) findViewById(R.id.nickname);
        this.hintFrame = findViewById(R.id.hint_frame);
        this.hintFrame.setOnClickListener(this);
        this.tvHint = (TextView) findViewById(R.id.hint_text);
        this.imgHint = (ImageView) findViewById(R.id.hint_indicator);
        this.membershipHint = findViewById(R.id.membership_layout);
        this.membershipHint.setOnClickListener(this);
        this.editButton = findViewById(R.id.edit_button);
        this.editButton.setOnClickListener(this);
        this.followView = (GlobalProfileFollowView) findViewById(R.id.follow_view);
        this.aminoId = (TextView) findViewById(R.id.amino_id);
        this.followerCount = (AutoSizingTextView) findViewById(R.id.followers_count);
        this.followerCountUnitTV = (TextView) findViewById(R.id.followers_count_unit_tv);
        findViewById(R.id.followers_wrapper).setOnClickListener(this);
        this.followingCount = (AutoSizingTextView) findViewById(R.id.followings_count);
        findViewById(R.id.followings_wrapper).setOnClickListener(this);
        this.visitorCount = (AutoSizingTextView) findViewById(R.id.visitor_count);
        this.visitorCountUnitTV = (TextView) findViewById(R.id.visitor_count_unit_tv);
        this.visitorIncreaseLayout = findViewById(R.id.visitor_increase_ll);
        this.visitorIncreaseTV = (TextView) findViewById(R.id.visitor_increase_tv);
        this.visitorContainer = findViewById(R.id.visitor_wrapper);
        this.visitorContainer.setOnClickListener(this);
        this.linkedCommuView = (ProfileLinkedCommuView) findViewById(R.id.linked_communities);
        this.chatEntry = findViewById(R.id.chat_entry);
        ProfileLinkedCommuView profileLinkedCommuView = this.linkedCommuView;
        if (profileLinkedCommuView != null) {
            profileLinkedCommuView.setPage(this.page);
        }
        this.followView.setCheckCanShowTooltip(new Function0() { // from class: com.narvii.master.home.widgets.-$$Lambda$GlobalProfileHeaderView$wwSrqGAZv7zwcze4zhORJrx8v0o
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f$0.lambda$onFinishInflate$0$GlobalProfileHeaderView();
            }
        });
    }

    public /* synthetic */ Boolean lambda$onFinishInflate$0$GlobalProfileHeaderView() {
        return Boolean.valueOf(!this.recentVisitorHelper.isTooltipShowing());
    }

    private void configServices() {
        if (this.account == null) {
            this.account = (AccountService) this.nvContext.getService("account");
        }
        if (this.membershipService == null) {
            this.membershipService = (MembershipService) this.nvContext.getService("membership");
        }
    }

    public void updateViews(User user) {
        this.user = user;
        String strId = user == null ? null : user.id();
        AccountService accountService = this.account;
        this.isMe = Utils.isEqualsNotNull(strId, accountService != null ? accountService.getUserId() : null);
        updateViews();
    }

    private void updateViews() {
        String str;
        User user = this.user;
        boolean z = user != null && user.isSubscribeMemberShip();
        if (this.isMe) {
            z = this.membershipService.isMembership() && !this.membershipService.isPremiumItemMembership();
        }
        this.avatarLayout.setAvatarStroke(1.5f, false);
        this.avatarLayout.setUser(this.user, z);
        this.nicknameView.setUser(this.user);
        this.nicknameView.setMembership(z);
        User user2 = this.user;
        boolean zIsEmpty = TextUtils.isEmpty(user2 == null ? null : user2.content);
        this.tvBio.setTextColor(zIsEmpty ? 1358954495 : -1);
        this.tvBio.setTypeface(Typeface.DEFAULT, zIsEmpty ? 2 : 0);
        User user3 = this.user;
        String str2 = user3 == null ? "" : user3.content;
        if (TextUtils.isEmpty(str2) || this.user.status == 9) {
            this.tvBio.setText("");
        } else {
            NVText nVText = new NVText(str2, -1);
            nVText.setDarkTheme(true);
            nVText.markHashtagAndLink(DefaultTagClickListener.instance, true);
            this.tvBio.setText(nVText);
        }
        if (str2 != null) {
            int measuredWidth = this.tvBio.getMeasuredWidth();
            if (measuredWidth == 0) {
                measuredWidth = (int) (Utils.getScreenWidth(getContext()) - (getContext().getResources().getDimension(R.dimen.profile_header_padding) * 2.0f));
            }
            if (this.tvBio.getLineCount() > 2) {
                this.hintFrame.setVisibility(0);
                this.tvBio.setMaxLines(2);
            } else if (this.tvBio.getLineCount() > 0) {
                this.hintFrame.setVisibility(8);
                this.tvBio.setMaxLines(2);
            } else {
                int requiredLineCount = getRequiredLineCount(this.tvBio, str2, measuredWidth);
                if (requiredLineCount > 2) {
                    this.tvBio.setMaxLines(2);
                }
                this.hintFrame.setVisibility(requiredLineCount > 2 ? 0 : 8);
            }
            this.isCollapsed = true;
            this.tvHint.setText(R.string.see_all);
            this.imgHint.setImageDrawable(ContextCompat.getDrawable(getContext(), R.drawable.ic_show_more_indicator));
        } else {
            this.hintFrame.setVisibility(8);
        }
        this.tvBio.setMovementMethod(LinkTouchMovementMethod.getInstanceIgnoreScroll());
        this.tvBio.setHint(getContext().getResources().getString((this.isMe || !this.account.hasAccount()) ? R.string.tap_to_add_bio_hint : R.string.no_bio_written));
        TextView textView = this.tvBio;
        textView.setOnClickListener((!android.text.TextUtils.isEmpty(textView.getText().toString()) || (!this.isMe && this.account.hasAccount())) ? null : this);
        this.chatEntry.setVisibility(this.isMe ? 8 : 0);
        TextView textView2 = this.aminoId;
        if (this.user == null) {
            str = null;
        } else {
            str = MentionedEditText.DEFAULT_METION_TAG + this.user.aminoId;
        }
        textView2.setText(str);
        AutoSizingTextView autoSizingTextView = this.followerCount;
        User user4 = this.user;
        autoSizingTextView.setText(user4 == null ? null : TextUtils.getLiteCountWithCeil2(user4.membersCount));
        this.followerCount.resizingFromMaxSize();
        User user5 = this.user;
        if (user5 != null && user5.membersCount == 1) {
            this.followerCountUnitTV.setText(R.string.user_follower);
        } else {
            this.followerCountUnitTV.setText(R.string.user_followers);
        }
        AutoSizingTextView autoSizingTextView2 = this.followingCount;
        User user6 = this.user;
        autoSizingTextView2.setText(user6 == null ? null : TextUtils.getLiteCountWithCeil2(user6.joinedCount));
        this.followingCount.resizingFromMaxSize();
        AutoSizingTextView autoSizingTextView3 = this.visitorCount;
        User user7 = this.user;
        autoSizingTextView3.setText(user7 != null ? TextUtils.getLiteCountWithCeil2(Math.max(user7.visitorsCount, 0)) : null);
        this.visitorCount.resizingFromMaxSize();
        User user8 = this.user;
        if (user8 != null && user8.visitorsCount == 1) {
            this.visitorCountUnitTV.setText(R.string.user_visit);
        } else {
            this.visitorCountUnitTV.setText(R.string.user_visits);
        }
        User user9 = this.user;
        boolean z2 = user9 != null && user9.visitPrivacy == 2;
        int i = 4;
        this.visitorCount.setVisibility((!z2 || this.isMe) ? 0 : 4);
        View viewFindViewById = findViewById(R.id.visit_privacy_private);
        if (z2 && this.isMe) {
            i = 0;
        }
        viewFindViewById.setVisibility(i);
        findViewById(R.id.center_visit_privacy_private).setVisibility((!z2 || this.isMe) ? 8 : 0);
        this.editButton.setVisibility(this.isMe ? 0 : 8);
        this.followView.updateFollowState(this.user, this.isMe, this.account);
        if (this.user != null) {
            this.linkedCommuView.setVisibility(0);
            this.linkedCommuView.updateLinkedCommunities(this.user.linkedCommunityList);
        } else {
            this.linkedCommuView.setVisibility(8);
        }
    }

    public void updateVisitorIncreaseView(int i) {
        if (i <= 0) {
            this.visitorIncreaseLayout.setVisibility(8);
            return;
        }
        this.visitorIncreaseLayout.setVisibility(0);
        if (i > 99) {
            this.visitorIncreaseTV.setText("99+");
        } else {
            this.visitorIncreaseTV.setText(String.valueOf(i));
        }
    }

    public void updateTooltipHints(View view) {
        this.recentVisitorHelper.checkVisitorTooltips(this.user, this.isMe, this.visitorCountUnitTV, this.chatEntry, view);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.bio /* 2131296561 */:
                View.OnClickListener onClickListener = this.addBioPreClickListener;
                if (onClickListener != null) {
                    onClickListener.onClick(view);
                }
                if (!this.account.hasAccount()) {
                    getContext().startActivity(new Intent(getContext(), (Class<?>) LoginActivity.class));
                    break;
                } else {
                    View.OnClickListener onClickListener2 = this.showBioDetailClickListener;
                    if (onClickListener2 != null) {
                        onClickListener2.onClick(view);
                        break;
                    }
                }
                break;
            case R.id.edit_button /* 2131297216 */:
                LogEvent.clickBuilder(this.page, ActSemantic.checkDetail).area("EditProfile").send();
                getContext().startActivity(FragmentWrapperActivity.intent(ProfileListFragment.class));
                break;
            case R.id.followers_wrapper /* 2131297457 */:
                if (this.user != null) {
                    LogEvent.clickBuilder(this.page, ActSemantic.listViewEnter).area("Followers").send();
                    Intent intent = FragmentWrapperActivity.intent(GlobalFollowersListFragment.class);
                    intent.putExtra("id", this.user.uid);
                    getContext().startActivity(intent);
                    break;
                }
                break;
            case R.id.followings_wrapper /* 2131297459 */:
                if (this.user != null) {
                    LogEvent.clickBuilder(this.page, ActSemantic.listViewEnter).area("Following").send();
                    Intent intent2 = FragmentWrapperActivity.intent(GlobalFollowingListFragment.class);
                    intent2.putExtra("id", this.user.uid);
                    getContext().startActivity(intent2);
                    break;
                }
                break;
            case R.id.hint_frame /* 2131297554 */:
                this.isCollapsed = !this.isCollapsed;
                this.tvHint.setText(this.isCollapsed ? R.string.see_all : R.string.hide);
                this.imgHint.setImageDrawable(ContextCompat.getDrawable(getContext(), this.isCollapsed ? R.drawable.ic_show_more_indicator : R.drawable.ic_show_less_indicator));
                this.tvBio.setMaxLines(this.isCollapsed ? 2 : 100);
                break;
            case R.id.login_hint /* 2131297955 */:
                getContext().startActivity(new Intent(getContext(), (Class<?>) LoginActivity.class));
                break;
            case R.id.membership_label /* 2131298037 */:
            case R.id.membership_layout /* 2131298038 */:
                View.OnClickListener onClickListener3 = this.membershipPreClickListener;
                if (onClickListener3 != null) {
                    onClickListener3.onClick(view);
                }
                if (!this.account.hasAccount()) {
                    getContext().startActivity(new Intent(getContext(), (Class<?>) LoginActivity.class));
                    break;
                } else {
                    getContext().startActivity(FragmentWrapperActivity.intent(MembershipMainRecyclerFragment.class));
                    break;
                }
            case R.id.visitor_wrapper /* 2131299507 */:
                if (this.user != null) {
                    LogEvent.Builder builderArea = LogEvent.clickBuilder(LogUtils.getPageContext(this), ActSemantic.listViewEnter).area("VisitorIcon");
                    int i = this.user.visitPrivacy;
                    if (i <= 0) {
                        i = 0;
                    }
                    builderArea.extraParam("privacyMode", Integer.valueOf(i)).send();
                    Intent intent3 = FragmentWrapperActivity.intent(RecentVisitorListFragment.class);
                    intent3.putExtra("uid", this.user.uid);
                    int i2 = this.user.visitPrivacy;
                    if (i2 <= 0) {
                        i2 = 0;
                    }
                    intent3.putExtra("privacyMode", i2);
                    getContext().startActivity(intent3);
                    break;
                }
                break;
        }
    }

    public void setSendingFollow(boolean z) {
        this.followView.setSendingFollow(z);
    }

    public void setSendingFollowNotification(boolean z) {
        this.followView.setSendingFollowNotification(z);
    }

    public void performFollowAnimation() {
        this.followView.performFollowAnimation();
    }

    public void hideToolTip() {
        this.followView.hideToolTip();
        this.recentVisitorHelper.hideToolTips();
    }

    private int getRequiredLineCount(TextView textView, String str, int i) {
        return new StaticLayout(str, textView.getPaint(), i, Layout.Alignment.ALIGN_NORMAL, 1.1f, 0.0f, true).getLineCount();
    }
}
