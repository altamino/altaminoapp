package com.narvii.master.home.widgets;

import android.content.Context;
import android.content.Intent;
import android.graphics.Typeface;
import android.text.Layout;
import android.text.StaticLayout;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.narvii.account.AccountService;
import com.narvii.account.LoginActivity;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.chat.input.MentionedEditText;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.master.home.follow.GlobalFollowersListFragment;
import com.narvii.master.home.follow.GlobalFollowingListFragment;
import com.narvii.master.home.profile.ProfileListFragment;
import com.narvii.model.User;
import com.narvii.util.Utils;
import com.narvii.util.text.DefaultTagClickListener;
import com.narvii.util.text.LinkTouchMovementMethod;
import com.narvii.util.text.NVText;
import com.narvii.util.text.TextUtils;
import com.narvii.wallet.MembershipService;
import com.narvii.wallet.membership.MembershipActivity;
import com.narvii.widget.AutoSizingTextView;
import com.narvii.widget.NicknameView;
import com.narvii.widget.UserAvatarLayout;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes8.dex */
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
    View.OnClickListener showBioDetailClickListener;
    TextView tvBio;
    private TextView tvHint;
    User user;

    public GlobalProfileHeaderView(Context context) {
        super(context, null);
        this.isCollapsed = true;
    }

    public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public NicknameView getNicknameView() {
        return this.nicknameView;
    }

    public void setAddBioPreClickListener(View.OnClickListener onClickListener) {
        this.addBioPreClickListener = onClickListener;
    }

    public void setMembershipPreClickListener(View.OnClickListener onClickListener) {
        this.membershipPreClickListener = onClickListener;
    }

    public void setShowBioDetailClickListener(View.OnClickListener onClickListener) {
        this.showBioDetailClickListener = onClickListener;
    }

    public void updateTooltipHints(View view) {
    }

    public void updateViews(User user) {
        this.user = user;
        String strId = user == null ? null : user.id();
        AccountService accountService = this.account;
        this.isMe = Utils.isEqualsNotNull(strId, accountService != null ? accountService.getUserId() : null);
        updateViews();
    }

    public GlobalProfileHeaderView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.isCollapsed = true;
        this.nvContext = Utils.getNVContext(context);
        setClipChildren(false);
        configServices();
    }

    private void configServices() {
        if (this.account == null) {
            this.account = (AccountService) this.nvContext.getService("account");
        }
        if (this.membershipService == null) {
            this.membershipService = (MembershipService) this.nvContext.getService("membership");
        }
    }

    public void hideToolTip() {
        this.followView.hideToolTip();
    }

    public void performFollowAnimation() {
        this.followView.performFollowAnimation();
    }

    public void setFollowClickListener(View.OnClickListener onClickListener) {
        this.followView.setFollowClickListener(onClickListener);
    }

    public void setFollowNotificationListener(View.OnClickListener onClickListener) {
        this.followView.setFollowNotificationListener(onClickListener);
    }

    public void setPage(NVContext nVContext) {
        this.page = nVContext;
        ProfileLinkedCommuView profileLinkedCommuView = this.linkedCommuView;
        if (profileLinkedCommuView != null) {
            profileLinkedCommuView.setPage(nVContext);
        }
    }

    public void setSendingFollow(boolean z6) {
        this.followView.setSendingFollow(z6);
    }

    public void setSendingFollowNotification(boolean z6) {
        this.followView.setSendingFollowNotification(z6);
    }

    public void setStartChatListener(View.OnClickListener onClickListener) {
        View view = this.chatEntry;
        if (view != null) {
            view.setOnClickListener(onClickListener);
        }
    }

    private int getRequiredLineCount(TextView textView, String str, int i10) {
        return new StaticLayout(str, textView.getPaint(), i10, Layout.Alignment.ALIGN_NORMAL, 1.1f, 0.0f, true).getLineCount();
    }

    private void updateViews() {
        String str;
        User user = this.user;
        boolean z6 = user != null && user.isSubscribeMemberShip();
        if (this.isMe) {
            z6 = this.membershipService.isMembership() && !this.membershipService.isPremiumItemMembership();
        }
        this.avatarLayout.setAvatarStroke(1.5f, false);
        this.avatarLayout.setUser(this.user, z6);
        this.nicknameView.setUser(this.user);
        this.nicknameView.setMembership(z6);
        User user2 = this.user;
        boolean zIsEmpty = TextUtils.isEmpty(user2 == null ? null : user2.content);
        this.tvBio.setTextColor(zIsEmpty ? 1358954495 : -1);
        this.tvBio.setTypeface(Typeface.DEFAULT, zIsEmpty ? 2 : 0);
        User user3 = this.user;
        String str2 = user3 == null ? "" : user3.content;
        if (!TextUtils.isEmpty(str2) && this.user.status != 9) {
            NVText nVText = new NVText(str2, -1);
            nVText.setDarkTheme(true);
            nVText.markHashtagAndLink(DefaultTagClickListener.instance, true);
            this.tvBio.setText(nVText);
        } else {
            this.tvBio.setText("");
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
        autoSizingTextView2.setText(user6 != null ? TextUtils.getLiteCountWithCeil2(user6.joinedCount) : null);
        this.followingCount.resizingFromMaxSize();
        this.editButton.setVisibility(this.isMe ? 0 : 8);
        this.followView.updateFollowState(this.user, this.isMe, this.account);
        if (this.user != null) {
            this.linkedCommuView.setVisibility(0);
            this.linkedCommuView.updateLinkedCommunities(this.user.linkedCommunityList);
        } else {
            this.linkedCommuView.setVisibility(8);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int i10;
        int i11;
        int i12;
        switch (view.getId()) {
            case R.id.bio /* 2131362253 */:
                View.OnClickListener onClickListener = this.addBioPreClickListener;
                if (onClickListener != null) {
                    onClickListener.onClick(view);
                }
                if (!this.account.hasAccount()) {
                    safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(getContext(), new Intent(getContext(), (Class<?>) LoginActivity.class));
                } else {
                    View.OnClickListener onClickListener2 = this.showBioDetailClickListener;
                    if (onClickListener2 != null) {
                        onClickListener2.onClick(view);
                    }
                }
                break;
            case R.id.edit_button /* 2131362999 */:
                LogEvent.clickBuilder(this.page, ActSemantic.checkDetail).area("EditProfile").send();
                safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(getContext(), FragmentWrapperActivity.intent(ProfileListFragment.class));
                break;
            case R.id.followers_wrapper /* 2131363315 */:
                if (this.user != null) {
                    LogEvent.clickBuilder(this.page, ActSemantic.listViewEnter).area("Followers").send();
                    Intent intent = FragmentWrapperActivity.intent(GlobalFollowersListFragment.class);
                    intent.putExtra("id", this.user.uid);
                    safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(getContext(), intent);
                    break;
                }
                break;
            case R.id.followings_wrapper /* 2131363317 */:
                if (this.user != null) {
                    LogEvent.clickBuilder(this.page, ActSemantic.listViewEnter).area("Following").send();
                    Intent intent2 = FragmentWrapperActivity.intent(GlobalFollowingListFragment.class);
                    intent2.putExtra("id", this.user.uid);
                    safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(getContext(), intent2);
                    break;
                }
                break;
            case R.id.hint_frame /* 2131363436 */:
                boolean z6 = !this.isCollapsed;
                this.isCollapsed = z6;
                TextView textView = this.tvHint;
                if (z6) {
                    i10 = R.string.see_all;
                } else {
                    i10 = R.string.hide;
                }
                textView.setText(i10);
                ImageView imageView = this.imgHint;
                Context context = getContext();
                if (this.isCollapsed) {
                    i11 = R.drawable.ic_show_more_indicator;
                } else {
                    i11 = R.drawable.ic_show_less_indicator;
                }
                imageView.setImageDrawable(ContextCompat.getDrawable(context, i11));
                TextView textView2 = this.tvBio;
                if (this.isCollapsed) {
                    i12 = 2;
                } else {
                    i12 = 100;
                }
                textView2.setMaxLines(i12);
                break;
            case R.id.login_hint /* 2131363886 */:
                safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(getContext(), new Intent(getContext(), (Class<?>) LoginActivity.class));
                break;
            case R.id.membership_label /* 2131364183 */:
            case R.id.membership_layout /* 2131364184 */:
                View.OnClickListener onClickListener3 = this.membershipPreClickListener;
                if (onClickListener3 != null) {
                    onClickListener3.onClick(view);
                }
                if (!this.account.hasAccount()) {
                    safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(getContext(), new Intent(getContext(), (Class<?>) LoginActivity.class));
                } else {
                    safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(getContext(), MembershipActivity.createMembershipIntent());
                }
                break;
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.avatarLayout = (UserAvatarLayout) findViewById(R.id.user_avatar_layout);
        TextView textView = (TextView) findViewById(R.id.bio);
        this.tvBio = textView;
        textView.setOnClickListener(this);
        this.nicknameView = (NicknameView) findViewById(R.id.nickname);
        View viewFindViewById = findViewById(R.id.hint_frame);
        this.hintFrame = viewFindViewById;
        viewFindViewById.setOnClickListener(this);
        this.tvHint = (TextView) findViewById(R.id.hint_text);
        this.imgHint = (ImageView) findViewById(R.id.hint_indicator);
        View viewFindViewById2 = findViewById(R.id.membership_layout);
        this.membershipHint = viewFindViewById2;
        viewFindViewById2.setOnClickListener(this);
        View viewFindViewById3 = findViewById(R.id.edit_button);
        this.editButton = viewFindViewById3;
        viewFindViewById3.setOnClickListener(this);
        this.followView = (GlobalProfileFollowView) findViewById(R.id.follow_view);
        this.aminoId = (TextView) findViewById(R.id.amino_id);
        this.followerCount = (AutoSizingTextView) findViewById(R.id.followers_count);
        this.followerCountUnitTV = (TextView) findViewById(R.id.followers_count_unit_tv);
        findViewById(R.id.followers_wrapper).setOnClickListener(this);
        this.followingCount = (AutoSizingTextView) findViewById(R.id.followings_count);
        findViewById(R.id.followings_wrapper).setOnClickListener(this);
        this.linkedCommuView = (ProfileLinkedCommuView) findViewById(R.id.linked_communities);
        this.chatEntry = findViewById(R.id.chat_entry);
        ProfileLinkedCommuView profileLinkedCommuView = this.linkedCommuView;
        if (profileLinkedCommuView != null) {
            profileLinkedCommuView.setPage(this.page);
        }
    }
}
