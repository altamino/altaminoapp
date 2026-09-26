package com.narvii.chat.video.fragments;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.StateListDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Bundle;
import android.util.SparseArray;
import android.util.StateSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.IdRes;
import com.narvii.amino.master.R;
import com.narvii.app.NVFragment;
import com.narvii.chat.ChatActivity;
import com.narvii.chat.rtc.ChannelUserWrapper;
import com.narvii.chat.rtc.RtcService;
import com.narvii.chat.signalling.ChannelUser;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.chat.signalling.SignallingUtils;
import com.narvii.chat.video.events.LiveChannelChangeListener;
import com.narvii.chat.video.events.MiniContentMuteStatusChangeListener;
import com.narvii.chat.video.view.VVIndicatorView;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.model.ChatThread;
import com.narvii.util.EventDispatcher;
import com.narvii.util.JacksonUtils;
import com.narvii.util.StatisticHelper;
import com.narvii.util.ViewUtils;
import com.narvii.util.statistics.StatisticsEventBuilder;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.util.statistics.constants.EventConstants;
import com.narvii.util.text.TextUtils;
import com.narvii.video.ui.UserStatusData;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.UserAvatarLayout;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.m;
import w7.o;
import w7.q;

/* JADX INFO: loaded from: classes7.dex */
public final class MiniVVContentFragment extends NVFragment implements LiveChannelChangeListener, MiniContentMuteStatusChangeListener {
    private boolean isAllMuted;

    @Nullable
    private RtcService rtcService;

    @NotNull
    private final m rootView$delegate = bind(this, R.id.root);

    @NotNull
    private final m tvMemberCount$delegate = bind(this, R.id.member_count);

    @NotNull
    private final m btnMute$delegate = bind(this, R.id.mute);

    @NotNull
    private final m userAvatar1$delegate = bind(this, R.id.avatar_1);

    @NotNull
    private final m userAvatar2$delegate = bind(this, R.id.avatar_2);

    @NotNull
    private final m userAvatar3$delegate = bind(this, R.id.avatar_3);

    @NotNull
    private final m typeIndicator$delegate = bind(this, R.id.vv_type_indicator);

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: com.narvii.chat.video.fragments.MiniVVContentFragment$bind$1, reason: invalid class name */
    static final class AnonymousClass1<T> extends v implements e8.a<T> {
        final /* synthetic */ int $res;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(int i10) {
            super(0);
            this.$res = i10;
        }

        /* JADX WARN: Incorrect return type in method signature: ()TT; */
        @Override // e8.a
        @NotNull
        public final View invoke() {
            View view = MiniVVContentFragment.this.getView();
            View viewFindViewById = view != null ? view.findViewById(this.$res) : null;
            t.h(viewFindViewById, "null cannot be cast to non-null type T of com.narvii.chat.video.fragments.MiniVVContentFragment.bind");
            return viewFindViewById;
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public boolean isValidPage() {
        return false;
    }

    @Override // com.narvii.chat.video.events.LiveChannelChangeListener
    public void onChannelForceQuit(@NotNull SignallingChannel signallingChannel, int i10) {
        t.j(signallingChannel, "signallingChannel");
    }

    private final <T extends View> m<T> bind(MiniVVContentFragment miniVVContentFragment, @IdRes int i10) {
        return o.b(q.NONE, miniVVContentFragment.new AnonymousClass1(i10));
    }

    private final ImageView getBtnMute() {
        return (ImageView) this.btnMute$delegate.getValue();
    }

    private final View getRootView() {
        return (View) this.rootView$delegate.getValue();
    }

    private final TextView getTvMemberCount() {
        return (TextView) this.tvMemberCount$delegate.getValue();
    }

    private final VVIndicatorView getTypeIndicator() {
        return (VVIndicatorView) this.typeIndicator$delegate.getValue();
    }

    private final UserAvatarLayout getUserAvatar1() {
        return (UserAvatarLayout) this.userAvatar1$delegate.getValue();
    }

    private final UserAvatarLayout getUserAvatar2() {
        return (UserAvatarLayout) this.userAvatar2$delegate.getValue();
    }

    private final UserAvatarLayout getUserAvatar3() {
        return (UserAvatarLayout) this.userAvatar3$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:16:0x0025  */
    public static final void onViewCreated$lambda$2(final MiniVVContentFragment this$0, View view) {
        boolean z6;
        UserStatusData userStatusData;
        ChannelUser channelUser;
        t.j(this$0, "this$0");
        if (this$0.isAllMuted) {
            this$0.toggleAllMute();
            return;
        }
        RtcService rtcService = this$0.rtcService;
        ChannelUserWrapper mainChannelLocalUserWrapper = rtcService != null ? rtcService.getMainChannelLocalUserWrapper() : null;
        if (mainChannelLocalUserWrapper != null && (channelUser = mainChannelLocalUserWrapper.channelUser) != null) {
            z6 = channelUser.joinRole == 1;
        }
        if ((mainChannelLocalUserWrapper == null || (userStatusData = mainChannelLocalUserWrapper.userStatus) == null || !userStatusData.isVoiceMuted()) && z6) {
            ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this$0.getContext());
            aCMAlertDialog.setMessage(R.string.mute_all_user_hint);
            aCMAlertDialog.addButton(R.string.no, new View.OnClickListener() { // from class: com.narvii.chat.video.fragments.d
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    MiniVVContentFragment.onViewCreated$lambda$2$lambda$0(this.f2126a, view2);
                }
            });
            aCMAlertDialog.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.chat.video.fragments.e
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    MiniVVContentFragment.onViewCreated$lambda$2$lambda$1(this.f2127a, view2);
                }
            });
            aCMAlertDialog.show();
        } else {
            this$0.toggleAllMute();
        }
        StatisticsEventBuilder statisticsEventBuilderEvent = ((StatisticsService) this$0.getService("statistics")).event("Local Mute VV Chat");
        RtcService rtcService2 = this$0.rtcService;
        statisticsEventBuilderEvent.param(EventConstants.CommentPost.TYPE, ChatActivity.statChannelType(rtcService2 != null ? rtcService2.getMainChannelType() : 0)).param("Chat Type", StatisticHelper.getChatThreadType((ChatThread) JacksonUtils.readAs(this$0.getStringParam("thread"), ChatThread.class), "Public Chat")).source("Live Bar").userPropInc("Local Mute VV Chat Total");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$2$lambda$0(MiniVVContentFragment this$0, View view) {
        t.j(this$0, "this$0");
        this$0.toggleAllMute();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$2$lambda$1(MiniVVContentFragment this$0, View view) {
        t.j(this$0, "this$0");
        this$0.toggleAllMute();
        RtcService rtcService = this$0.rtcService;
        if (rtcService != null) {
            rtcService.toggleLocalSteam();
        }
    }

    @NotNull
    public final Drawable getMuteCheckedBg() {
        ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
        shapeDrawable.getPaint().setColor(-1);
        return shapeDrawable;
    }

    @NotNull
    public final Drawable getMuteUnCheckedBg() {
        ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
        shapeDrawable.getPaint().setColor(805306368);
        return shapeDrawable;
    }

    @NotNull
    public final String getThreadId() {
        String stringParam = getStringParam("id");
        t.i(stringParam, "getStringParam(...)");
        return stringParam;
    }

    @Override // com.narvii.chat.video.events.LiveChannelChangeListener
    public void onChannelStatusChanged(@NotNull SignallingChannel signallingChannel) {
        t.j(signallingChannel, "signallingChannel");
        updateViews(signallingChannel);
    }

    @Override // com.narvii.chat.video.events.LiveChannelChangeListener
    public void onChannelUserListChanged(@NotNull SignallingChannel signallingChannel, @NotNull Collection<? extends ChannelUser> oList, @NotNull Collection<? extends ChannelUser> nList, @Nullable SparseArray<ChannelUserWrapper> sparseArray) {
        t.j(signallingChannel, "signallingChannel");
        t.j(oList, "oList");
        t.j(nList, "nList");
        updateViews(signallingChannel);
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        t.j(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_vv_content_mini, viewGroup, false);
    }

    @Override // com.narvii.chat.video.events.MiniContentMuteStatusChangeListener
    public void onMuteStatusChanged(boolean z6) {
        this.isAllMuted = z6;
        updateAllMuteButton();
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        SignallingChannel mainSigChannel;
        t.j(view, "view");
        super.onViewCreated(view, bundle);
        getBtnMute().setBackground(getMuteUnCheckedBg());
        getRootView().setBackground(getLayoutBg());
        getBtnMute().setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.video.fragments.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MiniVVContentFragment.onViewCreated$lambda$2(this.f2128a, view2);
            }
        });
        RtcService rtcService = this.rtcService;
        if (rtcService == null || (mainSigChannel = rtcService.getMainSigChannel()) == null) {
            return;
        }
        updateViews(mainSigChannel);
    }

    public final void toggleAllMute() {
        LogEvent.clickBuilder(this, this.isAllMuted ? ActSemantic.turnOff : ActSemantic.turnOn).area("MuteIcon").send();
        boolean z6 = !this.isAllMuted;
        this.isAllMuted = z6;
        RtcService rtcService = this.rtcService;
        if (rtcService != null) {
            rtcService.muteAllRemoteUsers(z6);
        }
        RtcService rtcService2 = this.rtcService;
        if (rtcService2 != null) {
            rtcService2.setIsAllMuted(this.isAllMuted);
        }
        updateAllMuteButton();
    }

    public final void updateViews(@Nullable SignallingChannel signallingChannel) {
        if (signallingChannel == null) {
            return;
        }
        getTypeIndicator().setLiveChannelType(signallingChannel.channelType);
        ArrayList arrayList = new ArrayList();
        List<ChannelUser> filteredList = signallingChannel.getFilteredList();
        t.i(filteredList, "getFilteredList(...)");
        arrayList.addAll(filteredList);
        SignallingUtils.sortChannelUserWithLatestAtFirst(arrayList);
        getTvMemberCount().setText(TextUtils.getCountText(getContext(), arrayList.size(), R.string.rtc_member, R.string.rtc_members));
        getUserAvatar1().setVisibility(arrayList.size() > 0 ? 0 : 8);
        getUserAvatar1().setUser(arrayList.size() > 0 ? ((ChannelUser) arrayList.get(0)).userProfile : null);
        getUserAvatar2().setVisibility(arrayList.size() > 1 ? 0 : 8);
        getUserAvatar2().setUser(arrayList.size() > 1 ? ((ChannelUser) arrayList.get(1)).userProfile : null);
        getUserAvatar3().setVisibility(arrayList.size() > 2 ? 0 : 8);
        getUserAvatar3().setUser(arrayList.size() > 2 ? ((ChannelUser) arrayList.get(2)).userProfile : null);
        updateAllMuteButton();
    }

    @NotNull
    public final Drawable getLayoutBg() {
        Context context = getContext();
        t.g(context);
        float dimension = context.getResources().getDimension(R.dimen.rtc_mini_content_height) / 2;
        Drawable radisDrawable = ViewUtils.getRadisDrawable(-8465631, dimension);
        Drawable radisDrawable2 = ViewUtils.getRadisDrawable(-10246375, dimension);
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{android.R.attr.state_pressed}, radisDrawable2);
        stateListDrawable.addState(StateSet.WILD_CARD, radisDrawable);
        return stateListDrawable;
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        boolean zIsAllMuted;
        EventDispatcher<MiniContentMuteStatusChangeListener> eventDispatcher;
        super.onCreate(bundle);
        RtcService rtcService = (RtcService) getService("rtc");
        this.rtcService = rtcService;
        if (rtcService != null) {
            rtcService.addLiveChannelChangeListener(getThreadId(), this);
        }
        RtcService rtcService2 = this.rtcService;
        if (rtcService2 != null && (eventDispatcher = rtcService2.muteStatusDispatcher) != null) {
            eventDispatcher.addListener(this);
        }
        RtcService rtcService3 = this.rtcService;
        if (rtcService3 != null) {
            zIsAllMuted = rtcService3.isAllMuted();
        } else {
            zIsAllMuted = false;
        }
        this.isAllMuted = zIsAllMuted;
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        EventDispatcher<MiniContentMuteStatusChangeListener> eventDispatcher;
        super.onDestroy();
        RtcService rtcService = this.rtcService;
        if (rtcService != null) {
            rtcService.removeLiveChannelChangeListener(getThreadId(), this);
        }
        RtcService rtcService2 = this.rtcService;
        if (rtcService2 != null && (eventDispatcher = rtcService2.muteStatusDispatcher) != null) {
            eventDispatcher.removeListener(this);
        }
    }

    public final void updateAllMuteButton() {
        Drawable muteUnCheckedBg;
        Drawable drawable;
        Resources resources;
        int i10;
        ImageView btnMute = getBtnMute();
        if (this.isAllMuted) {
            muteUnCheckedBg = getMuteCheckedBg();
        } else {
            muteUnCheckedBg = getMuteUnCheckedBg();
        }
        btnMute.setBackground(muteUnCheckedBg);
        ImageView btnMute2 = getBtnMute();
        Context context = getContext();
        if (context != null && (resources = context.getResources()) != null) {
            if (this.isAllMuted) {
                i10 = R.drawable.ic_vv_mini_mute_checked;
            } else {
                i10 = R.drawable.ic_vv_mini_mute_unchecked;
            }
            drawable = resources.getDrawable(i10);
        } else {
            drawable = null;
        }
        btnMute2.setImageDrawable(drawable);
    }
}
