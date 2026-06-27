package com.narvii.checkin;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.achievements.AchievementsFragment;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.checkin.CheckInService;
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
import java.text.NumberFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import kotlin.Lazy;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: CheckInBottomBarLayout.kt */
/* loaded from: classes2.dex */
public final class CheckInBottomBarLayout extends FrameLayout implements View.OnClickListener {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(CheckInBottomBarLayout.class), "userAvatarLayout", "getUserAvatarLayout()Lcom/narvii/widget/UserAvatarLayout;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(CheckInBottomBarLayout.class), "nickname", "getNickname()Lcom/narvii/widget/NicknameView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(CheckInBottomBarLayout.class), "streakLostIcon", "getStreakLostIcon()Landroid/view/View;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(CheckInBottomBarLayout.class), "checkInDays", "getCheckInDays()Landroid/widget/TextView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(CheckInBottomBarLayout.class), "checkInButton", "getCheckInButton()Lcom/narvii/widget/PushButton;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(CheckInBottomBarLayout.class), "checkInText", "getCheckInText()Landroid/widget/TextView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(CheckInBottomBarLayout.class), "checkInProgress", "getCheckInProgress()Landroid/view/View;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(CheckInBottomBarLayout.class), "hasCheckedInToday", "getHasCheckedInToday()Landroid/view/View;"))};
    private HashMap _$_findViewCache;
    private final AccountService account;
    private final Lazy checkInButton$delegate;
    private final Lazy checkInDays$delegate;
    private final Lazy checkInProgress$delegate;
    private final CheckInService checkInService;
    private final Lazy checkInText$delegate;
    private final NVContext ctx;
    private final Lazy hasCheckedInToday$delegate;
    private boolean isCheckingIn;
    private final CheckInService.CheckInResponseListener listener;
    private final Lazy nickname$delegate;
    private final CheckInBottomBarLayout$profileListener$1 profileListener;
    private final Lazy streakLostIcon$delegate;
    private final Lazy userAvatarLayout$delegate;

    private final PushButton getCheckInButton() {
        Lazy lazy = this.checkInButton$delegate;
        KProperty kProperty = $$delegatedProperties[4];
        return (PushButton) lazy.getValue();
    }

    private final TextView getCheckInDays() {
        Lazy lazy = this.checkInDays$delegate;
        KProperty kProperty = $$delegatedProperties[3];
        return (TextView) lazy.getValue();
    }

    private final View getCheckInProgress() {
        Lazy lazy = this.checkInProgress$delegate;
        KProperty kProperty = $$delegatedProperties[6];
        return (View) lazy.getValue();
    }

    private final TextView getCheckInText() {
        Lazy lazy = this.checkInText$delegate;
        KProperty kProperty = $$delegatedProperties[5];
        return (TextView) lazy.getValue();
    }

    private final View getHasCheckedInToday() {
        Lazy lazy = this.hasCheckedInToday$delegate;
        KProperty kProperty = $$delegatedProperties[7];
        return (View) lazy.getValue();
    }

    private final NicknameView getNickname() {
        Lazy lazy = this.nickname$delegate;
        KProperty kProperty = $$delegatedProperties[1];
        return (NicknameView) lazy.getValue();
    }

    private final View getStreakLostIcon() {
        Lazy lazy = this.streakLostIcon$delegate;
        KProperty kProperty = $$delegatedProperties[2];
        return (View) lazy.getValue();
    }

    private final UserAvatarLayout getUserAvatarLayout() {
        Lazy lazy = this.userAvatarLayout$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (UserAvatarLayout) lazy.getValue();
    }

    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CheckInBottomBarLayout(Context context) {
        this(context, null);
        Intrinsics.checkParameterIsNotNull(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CheckInBottomBarLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkParameterIsNotNull(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r2v17, types: [com.narvii.checkin.CheckInBottomBarLayout$profileListener$1] */
    public CheckInBottomBarLayout(Context context, AttributeSet attributeSet, int i) throws Resources.NotFoundException {
        super(context, attributeSet, i);
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.userAvatarLayout$delegate = NVExtensionKt.bind(this, R.id.user_avatar_layout);
        this.nickname$delegate = NVExtensionKt.bind(this, R.id.nickname);
        this.streakLostIcon$delegate = NVExtensionKt.bind(this, R.id.streak_lost_icon);
        this.checkInDays$delegate = NVExtensionKt.bind(this, R.id.check_in_days);
        this.checkInButton$delegate = NVExtensionKt.bind(this, R.id.checkin_button);
        this.checkInText$delegate = NVExtensionKt.bind(this, R.id.checkin_text);
        this.checkInProgress$delegate = NVExtensionKt.bind(this, R.id.checkin_progress);
        this.hasCheckedInToday$delegate = NVExtensionKt.bind(this, R.id.has_check_in_today);
        this.profileListener = new AccountService.ProfileListener() { // from class: com.narvii.checkin.CheckInBottomBarLayout$profileListener$1
            @Override // com.narvii.account.AccountService.ProfileListener
            public void onProfileChanged(int i2, User profile) throws Resources.NotFoundException {
                Intrinsics.checkParameterIsNotNull(profile, "profile");
                this.this$0.updateViews();
            }

            @Override // com.narvii.account.AccountService.ProfileListener
            public void onCheckInChanged(boolean z, int i2) throws Resources.NotFoundException {
                this.this$0.updateViews();
            }

            @Override // com.narvii.account.AccountService.ProfileListener
            public void onCheckInHistoryChanged(CheckInHistory checkInHistory) throws Resources.NotFoundException {
                this.this$0.updateViews();
            }
        };
        this.listener = new CheckInService.CheckInResponseListener() { // from class: com.narvii.checkin.CheckInBottomBarLayout$listener$1
            @Override // com.narvii.checkin.CheckInService.CheckInResponseListener
            public void onFail(ApiRequest apiRequest, int i2, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) throws Resources.NotFoundException {
                this.this$0.isCheckingIn = false;
                this.this$0.updateViews();
            }

            @Override // com.narvii.checkin.CheckInService.CheckInResponseListener
            public void onFinish(ApiRequest apiRequest, CheckInResult checkInResult) throws Resources.NotFoundException {
                this.this$0.isCheckingIn = false;
                this.this$0.updateViews();
            }
        };
        View.inflate(getContext(), R.layout.check_in_bottom_bar, this);
        NVContext nVContext = Utils.getNVContext(getContext());
        Intrinsics.checkExpressionValueIsNotNull(nVContext, "Utils.getNVContext(context)");
        this.ctx = nVContext;
        Object service = this.ctx.getService("account");
        Intrinsics.checkExpressionValueIsNotNull(service, "ctx.getService(\"account\")");
        this.account = (AccountService) service;
        Object service2 = this.ctx.getService(CheckInPrefsHelper.SHARED_PREFS_NAME);
        Intrinsics.checkExpressionValueIsNotNull(service2, "ctx.getService(\"checkIn\")");
        this.checkInService = (CheckInService) service2;
        updateViews();
        setOnClickListener(this);
        getCheckInButton().setOnClickListener(this);
        this.account.addProfileListener(this.profileListener);
    }

    public final CheckInService.CheckInResponseListener getListener() {
        return this.listener;
    }

    public final void updateViews() throws Resources.NotFoundException {
        User userProfile = this.account.getUserProfile();
        getUserAvatarLayout().setUser(userProfile);
        getNickname().setUser(userProfile);
        getStreakLostIcon().setVisibility(new CheckInHelper(this.ctx).shouldShowStrikeLost(this.account.getCheckInHistory()) ? 0 : 8);
        int consecutiveCheckInDays = this.account.getConsecutiveCheckInDays();
        NumberFormat numberFormat = NumberFormat.getInstance(Locale.US);
        Context context = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "context");
        String string = context.getResources().getString(R.string.n_streaks, numberFormat.format(Integer.valueOf(consecutiveCheckInDays)));
        Intrinsics.checkExpressionValueIsNotNull(string, "context.resources.getStr…, numberFormat.format(I))");
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

    @Override // android.view.View.OnClickListener
    public void onClick(View view) throws Resources.NotFoundException {
        Integer numValueOf = view != null ? Integer.valueOf(view.getId()) : null;
        if (numValueOf != null && numValueOf.intValue() == R.id.checkin_button) {
            this.isCheckingIn = true;
            this.checkInService.cacheRewardVideo();
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
            intent.putExtra("Source", "Left Side Panel");
        }
        LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("CheckInArea").send();
        this.ctx.startActivity(intent);
    }
}
