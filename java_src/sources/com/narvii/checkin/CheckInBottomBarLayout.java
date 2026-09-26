package com.narvii.checkin;

import android.content.Context;
import android.content.Intent;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.achievements.AchievementsFragment;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.master.home.profile.GlobalProfileFragment;
import com.narvii.model.CheckInHistory;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.kotlin.NVExtensionKt;
import com.narvii.widget.NicknameView;
import com.narvii.widget.PushButton;
import com.narvii.widget.UserAvatarLayout;
import com.safedk.android.utils.Logger;
import java.text.NumberFormat;
import java.util.List;
import java.util.Locale;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.m;

/* JADX INFO: loaded from: classes9.dex */
public final class CheckInBottomBarLayout extends FrameLayout implements View.OnClickListener {

    @NotNull
    private final AccountService account;

    @NotNull
    private final m checkInButton$delegate;

    @NotNull
    private final m checkInDays$delegate;

    @NotNull
    private final m checkInProgress$delegate;

    @NotNull
    private final CheckInService checkInService;

    @NotNull
    private final m checkInText$delegate;

    @NotNull
    private final NVContext ctx;

    @NotNull
    private final m hasCheckedInToday$delegate;
    private boolean isCheckingIn;

    @NotNull
    private final CheckInService.CheckInResponseListener listener;

    @NotNull
    private final m nickname$delegate;

    @NotNull
    private final AccountService.ProfileListener profileListener;

    @NotNull
    private final m streakLostIcon$delegate;

    @NotNull
    private final m userAvatarLayout$delegate;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CheckInBottomBarLayout(@NotNull Context context) {
        this(context, null);
        t.j(context, "context");
    }

    public static void safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(NVContext p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @NotNull
    public final CheckInService.CheckInResponseListener getListener() {
        return this.listener;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CheckInBottomBarLayout(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        t.j(context, "context");
    }

    private final PushButton getCheckInButton() {
        return (PushButton) this.checkInButton$delegate.getValue();
    }

    private final TextView getCheckInDays() {
        return (TextView) this.checkInDays$delegate.getValue();
    }

    private final View getCheckInProgress() {
        return (View) this.checkInProgress$delegate.getValue();
    }

    private final TextView getCheckInText() {
        return (TextView) this.checkInText$delegate.getValue();
    }

    private final View getHasCheckedInToday() {
        return (View) this.hasCheckedInToday$delegate.getValue();
    }

    private final NicknameView getNickname() {
        return (NicknameView) this.nickname$delegate.getValue();
    }

    private final View getStreakLostIcon() {
        return (View) this.streakLostIcon$delegate.getValue();
    }

    private final UserAvatarLayout getUserAvatarLayout() {
        return (UserAvatarLayout) this.userAvatarLayout$delegate.getValue();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@Nullable View view) {
        Integer numValueOf = view != null ? Integer.valueOf(view.getId()) : null;
        if (numValueOf != null && numValueOf.intValue() == R.id.checkin_button) {
            this.isCheckingIn = true;
            this.checkInService.startCheckIn(this.listener);
            updateViews();
            LogEvent.clickBuilder(this, ActSemantic.checkIn).area("CheckInArea").send();
            return;
        }
        Intent intent = FragmentWrapperActivity.intent(AchievementsFragment.class);
        intent.putExtra("id", this.account.getUserId());
        User userProfile = this.account.getUserProfile();
        if (userProfile != null) {
            intent.putExtra("needFetchData", true);
            intent.putExtra("mediaList", JacksonUtils.writeAsString(userProfile.mediaList));
            intent.putExtra(GlobalProfileFragment.KEY_USER, JacksonUtils.writeAsString(userProfile));
            intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Left Side Panel");
        }
        LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("CheckInArea").send();
        safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(this.ctx, intent);
    }

    public final void updateViews() {
        User userProfile = this.account.getUserProfile();
        getUserAvatarLayout().setUser(userProfile);
        getNickname().setUser(userProfile);
        getStreakLostIcon().setVisibility(new CheckInHelper(this.ctx).shouldShowStrikeLost(this.account.getCheckInHistory()) ? 0 : 8);
        String string = getContext().getResources().getString(R.string.n_streaks, NumberFormat.getInstance(Locale.US).format(Integer.valueOf(this.account.getConsecutiveCheckInDays())));
        t.i(string, "getString(...)");
        getCheckInDays().setText(string);
        if (this.account.hasCheckInToday()) {
            getCheckInButton().setVisibility(8);
            getHasCheckedInToday().setVisibility(0);
            return;
        }
        if (this.isCheckingIn) {
            getCheckInButton().setVisibility(0);
            getHasCheckedInToday().setVisibility(8);
            getCheckInText().setVisibility(8);
            getCheckInProgress().setVisibility(0);
            getCheckInButton().setEnabled(false);
            return;
        }
        getCheckInButton().setVisibility(0);
        getHasCheckedInToday().setVisibility(8);
        getCheckInText().setVisibility(0);
        getCheckInProgress().setVisibility(8);
        getCheckInButton().setEnabled(true);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CheckInBottomBarLayout(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        t.j(context, "context");
        this.userAvatarLayout$delegate = NVExtensionKt.bind(this, R.id.user_avatar_layout);
        this.nickname$delegate = NVExtensionKt.bind(this, R.id.nickname);
        this.streakLostIcon$delegate = NVExtensionKt.bind(this, R.id.streak_lost_icon);
        this.checkInDays$delegate = NVExtensionKt.bind(this, R.id.check_in_days);
        this.checkInButton$delegate = NVExtensionKt.bind(this, R.id.checkin_button);
        this.checkInText$delegate = NVExtensionKt.bind(this, R.id.checkin_text);
        this.checkInProgress$delegate = NVExtensionKt.bind(this, R.id.checkin_progress);
        this.hasCheckedInToday$delegate = NVExtensionKt.bind(this, R.id.has_check_in_today);
        View.inflate(getContext(), R.layout.check_in_bottom_bar, this);
        NVContext nVContext = Utils.getNVContext(getContext());
        t.i(nVContext, "getNVContext(...)");
        this.ctx = nVContext;
        Object service = nVContext.getService("account");
        t.i(service, "getService(...)");
        AccountService accountService = (AccountService) service;
        this.account = accountService;
        Object service2 = nVContext.getService(CheckInPrefsHelper.SHARED_PREFS_NAME);
        t.i(service2, "getService(...)");
        this.checkInService = (CheckInService) service2;
        updateViews();
        setOnClickListener(this);
        getCheckInButton().setOnClickListener(this);
        AccountService.ProfileListener profileListener = new AccountService.ProfileListener() { // from class: com.narvii.checkin.CheckInBottomBarLayout.1
            @Override // com.narvii.account.AccountService.ProfileListener
            public void onCheckInChanged(boolean z6, int i11) {
                CheckInBottomBarLayout.this.updateViews();
            }

            @Override // com.narvii.account.AccountService.ProfileListener
            public void onCheckInHistoryChanged(@Nullable CheckInHistory checkInHistory) {
                CheckInBottomBarLayout.this.updateViews();
            }

            @Override // com.narvii.account.AccountService.ProfileListener
            public void onProfileChanged(int i11, @NotNull User profile) {
                t.j(profile, "profile");
                CheckInBottomBarLayout.this.updateViews();
            }
        };
        this.profileListener = profileListener;
        accountService.addProfileListener(profileListener);
        this.listener = new CheckInService.CheckInResponseListener() { // from class: com.narvii.checkin.CheckInBottomBarLayout$listener$1
            @Override // com.narvii.checkin.CheckInService.CheckInResponseListener
            public void onFail(@Nullable ApiRequest apiRequest, int i11, @Nullable List<NameValuePair> list, @Nullable String str, @Nullable ApiResponse apiResponse, @Nullable Throwable th) {
                this.this$0.isCheckingIn = false;
                this.this$0.updateViews();
            }

            @Override // com.narvii.checkin.CheckInService.CheckInResponseListener
            public void onFinish(@Nullable ApiRequest apiRequest, @Nullable CheckInResult checkInResult) {
                this.this$0.isCheckingIn = false;
                this.this$0.updateViews();
            }
        };
    }
}
