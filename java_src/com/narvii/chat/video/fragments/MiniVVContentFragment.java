package com.narvii.chat.video.fragments;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Paint;
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
import com.narvii.amino.mastes.R;
import com.narvii.app.NVFragment;
import com.narvii.chat.rtc.ChannelUserWrapper;
import com.narvii.chat.rtc.RtcService;
import com.narvii.chat.signalling.ChannelUser;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.chat.signalling.SignallingUtils;
import com.narvii.chat.video.RtcChatManager;
import com.narvii.chat.video.events.LiveChannelChangeListener;
import com.narvii.chat.video.events.MiniContentMuteStatusChangeListener;
import com.narvii.chat.video.view.VVIndicatorView;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.util.EventDispatcher;
import com.narvii.util.ViewUtils;
import com.narvii.util.text.TextUtils;
import com.narvii.video.ui.UserStatusData;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.UserAvatarLayout;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: MiniVVContentFragment.kt */
/* loaded from: classes2.dex */
public final class MiniVVContentFragment extends NVFragment implements LiveChannelChangeListener, MiniContentMuteStatusChangeListener {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(MiniVVContentFragment.class), "rootView", "getRootView()Landroid/view/View;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(MiniVVContentFragment.class), "tvMemberCount", "getTvMemberCount()Landroid/widget/TextView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(MiniVVContentFragment.class), "btnMute", "getBtnMute()Landroid/widget/ImageView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(MiniVVContentFragment.class), "userAvatar1", "getUserAvatar1()Lcom/narvii/widget/UserAvatarLayout;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(MiniVVContentFragment.class), "userAvatar2", "getUserAvatar2()Lcom/narvii/widget/UserAvatarLayout;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(MiniVVContentFragment.class), "userAvatar3", "getUserAvatar3()Lcom/narvii/widget/UserAvatarLayout;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(MiniVVContentFragment.class), "typeIndicator", "getTypeIndicator()Lcom/narvii/chat/video/view/VVIndicatorView;"))};
    private HashMap _$_findViewCache;
    private boolean isAllMuted;
    private RtcService rtcService;
    private final Lazy rootView$delegate = bind(this, R.id.root);
    private final Lazy tvMemberCount$delegate = bind(this, R.id.member_count);
    private final Lazy btnMute$delegate = bind(this, R.id.mute);
    private final Lazy userAvatar1$delegate = bind(this, R.id.avatar_1);
    private final Lazy userAvatar2$delegate = bind(this, R.id.avatar_2);
    private final Lazy userAvatar3$delegate = bind(this, R.id.avatar_3);
    private final Lazy typeIndicator$delegate = bind(this, R.id.vv_type_indicator);

    private final ImageView getBtnMute() {
        Lazy lazy = this.btnMute$delegate;
        KProperty kProperty = $$delegatedProperties[2];
        return (ImageView) lazy.getValue();
    }

    private final View getRootView() {
        Lazy lazy = this.rootView$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (View) lazy.getValue();
    }

    private final TextView getTvMemberCount() {
        Lazy lazy = this.tvMemberCount$delegate;
        KProperty kProperty = $$delegatedProperties[1];
        return (TextView) lazy.getValue();
    }

    private final VVIndicatorView getTypeIndicator() {
        Lazy lazy = this.typeIndicator$delegate;
        KProperty kProperty = $$delegatedProperties[6];
        return (VVIndicatorView) lazy.getValue();
    }

    private final UserAvatarLayout getUserAvatar1() {
        Lazy lazy = this.userAvatar1$delegate;
        KProperty kProperty = $$delegatedProperties[3];
        return (UserAvatarLayout) lazy.getValue();
    }

    private final UserAvatarLayout getUserAvatar2() {
        Lazy lazy = this.userAvatar2$delegate;
        KProperty kProperty = $$delegatedProperties[4];
        return (UserAvatarLayout) lazy.getValue();
    }

    private final UserAvatarLayout getUserAvatar3() {
        Lazy lazy = this.userAvatar3$delegate;
        KProperty kProperty = $$delegatedProperties[5];
        return (UserAvatarLayout) lazy.getValue();
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View view2 = getView();
        if (view2 == null) {
            return null;
        }
        View viewFindViewById = view2.findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public boolean isValidPage() {
        return false;
    }

    @Override // com.narvii.chat.video.events.LiveChannelChangeListener
    public void onChannelForceQuit(SignallingChannel signallingChannel, int i) {
        Intrinsics.checkParameterIsNotNull(signallingChannel, "signallingChannel");
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        EventDispatcher<MiniContentMuteStatusChangeListener> eventDispatcher;
        super.onCreate(bundle);
        this.rtcService = (RtcService) getService("rtc");
        RtcService rtcService = this.rtcService;
        if (rtcService != null) {
            rtcService.addLiveChannelChangeListener(getThreadId(), this);
        }
        RtcService rtcService2 = this.rtcService;
        if (rtcService2 != null && (eventDispatcher = rtcService2.muteStatusDispatcher) != null) {
            eventDispatcher.addListener(this);
        }
        RtcService rtcService3 = this.rtcService;
        this.isAllMuted = rtcService3 != null ? rtcService3.isAllMuted() : false;
    }

    public final String getThreadId() {
        String stringParam = getStringParam("id");
        Intrinsics.checkExpressionValueIsNotNull(stringParam, "getStringParam(\"id\")");
        return stringParam;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        EventDispatcher<MiniContentMuteStatusChangeListener> eventDispatcher;
        super.onDestroy();
        RtcService rtcService = this.rtcService;
        if (rtcService != null) {
            rtcService.removeLiveChannelChangeListener(getThreadId(), this);
        }
        RtcService rtcService2 = this.rtcService;
        if (rtcService2 == null || (eventDispatcher = rtcService2.muteStatusDispatcher) == null) {
            return;
        }
        eventDispatcher.removeListener(this);
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_vv_content_mini, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        SignallingChannel mainSigChannel;
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        getBtnMute().setBackground(getMuteUnCheckedBg());
        getRootView().setBackground(getLayoutBg());
        getBtnMute().setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.video.fragments.MiniVVContentFragment.onViewCreated.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) throws Resources.NotFoundException {
                UserStatusData userStatusData;
                ChannelUser channelUser;
                if (!MiniVVContentFragment.this.isAllMuted) {
                    RtcService rtcService = MiniVVContentFragment.this.rtcService;
                    ChannelUserWrapper mainChannelLocalUserWrapper = rtcService != null ? rtcService.getMainChannelLocalUserWrapper() : null;
                    boolean z = (mainChannelLocalUserWrapper == null || (channelUser = mainChannelLocalUserWrapper.channelUser) == null || channelUser.joinRole != 1) ? false : true;
                    if (((mainChannelLocalUserWrapper == null || (userStatusData = mainChannelLocalUserWrapper.userStatus) == null) ? false : userStatusData.isVoiceMuted()) || !z) {
                        MiniVVContentFragment.this.toggleAllMute();
                        return;
                    }
                    ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(MiniVVContentFragment.this.getContext());
                    aCMAlertDialog.setMessage(R.string.mute_all_user_hint);
                    aCMAlertDialog.addButton(R.string.no, new View.OnClickListener() { // from class: com.narvii.chat.video.fragments.MiniVVContentFragment.onViewCreated.1.1
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view3) throws Resources.NotFoundException {
                            MiniVVContentFragment.this.toggleAllMute();
                        }
                    });
                    aCMAlertDialog.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.chat.video.fragments.MiniVVContentFragment.onViewCreated.1.2
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view3) throws Resources.NotFoundException {
                            MiniVVContentFragment.this.toggleAllMute();
                            RtcService rtcService2 = MiniVVContentFragment.this.rtcService;
                            if (rtcService2 != null) {
                                rtcService2.toggleLocalSteam();
                            }
                        }
                    });
                    aCMAlertDialog.show();
                    return;
                }
                MiniVVContentFragment.this.toggleAllMute();
            }
        });
        RtcService rtcService = this.rtcService;
        if (rtcService == null || (mainSigChannel = rtcService.getMainSigChannel()) == null) {
            return;
        }
        updateViews(mainSigChannel);
    }

    private final <T extends View> Lazy<T> bind(MiniVVContentFragment miniVVContentFragment, final int i) {
        return LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, new Function0<T>() { // from class: com.narvii.chat.video.fragments.MiniVVContentFragment.bind.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Incorrect return type in method signature: ()TT; */
            @Override // kotlin.jvm.functions.Function0
            public final View invoke() {
                View view = MiniVVContentFragment.this.getView();
                View viewFindViewById = view != null ? view.findViewById(i) : null;
                if (viewFindViewById != null) {
                    return viewFindViewById;
                }
                throw new TypeCastException("null cannot be cast to non-null type T");
            }
        });
    }

    @Override // com.narvii.chat.video.events.LiveChannelChangeListener
    public void onChannelStatusChanged(SignallingChannel signallingChannel) throws Resources.NotFoundException {
        Intrinsics.checkParameterIsNotNull(signallingChannel, "signallingChannel");
        updateViews(signallingChannel);
    }

    @Override // com.narvii.chat.video.events.LiveChannelChangeListener
    public void onChannelUserListChanged(SignallingChannel signallingChannel, Collection<? extends ChannelUser> oList, Collection<? extends ChannelUser> nList, SparseArray<ChannelUserWrapper> sparseArray) throws Resources.NotFoundException {
        Intrinsics.checkParameterIsNotNull(signallingChannel, "signallingChannel");
        Intrinsics.checkParameterIsNotNull(oList, "oList");
        Intrinsics.checkParameterIsNotNull(nList, "nList");
        updateViews(signallingChannel);
    }

    public final void updateViews(SignallingChannel signallingChannel) throws Resources.NotFoundException {
        if (signallingChannel == null) {
            return;
        }
        getTypeIndicator().setLiveChannelType(signallingChannel.channelType);
        ArrayList arrayList = new ArrayList();
        List<ChannelUser> filteredList = signallingChannel.getFilteredList();
        Intrinsics.checkExpressionValueIsNotNull(filteredList, "channel.filteredList");
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

    public final void toggleAllMute() throws Resources.NotFoundException {
        RtcChatManager rtcManager;
        LogEvent.clickBuilder(this, this.isAllMuted ? ActSemantic.turnOff : ActSemantic.turnOn).area("MuteIcon").send();
        this.isAllMuted = !this.isAllMuted;
        RtcService rtcService = this.rtcService;
        if (rtcService != null && (rtcManager = rtcService.getRtcManager()) != null) {
            rtcManager.muteAllRemoteStream(this.isAllMuted);
        }
        RtcService rtcService2 = this.rtcService;
        if (rtcService2 != null) {
            rtcService2.setIsAllMuted(this.isAllMuted);
        }
        updateAllMuteButton();
    }

    public final void updateAllMuteButton() throws Resources.NotFoundException {
        Drawable drawable;
        Resources resources;
        getBtnMute().setBackground(this.isAllMuted ? getMuteCheckedBg() : getMuteUnCheckedBg());
        ImageView btnMute = getBtnMute();
        Context context = getContext();
        if (context == null || (resources = context.getResources()) == null) {
            drawable = null;
        } else {
            drawable = resources.getDrawable(this.isAllMuted ? R.drawable.ic_vv_mini_mute_checked : R.drawable.ic_vv_mini_mute_unchecked);
        }
        btnMute.setImageDrawable(drawable);
    }

    public final Drawable getMuteUnCheckedBg() {
        ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
        Paint paint = shapeDrawable.getPaint();
        Intrinsics.checkExpressionValueIsNotNull(paint, "d.paint");
        paint.setColor(805306368);
        return shapeDrawable;
    }

    public final Drawable getMuteCheckedBg() {
        ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
        Paint paint = shapeDrawable.getPaint();
        Intrinsics.checkExpressionValueIsNotNull(paint, "d.paint");
        paint.setColor((int) 4294967295L);
        return shapeDrawable;
    }

    public final Drawable getLayoutBg() {
        Context context = getContext();
        if (context == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        Intrinsics.checkExpressionValueIsNotNull(context, "context!!");
        float dimension = context.getResources().getDimension(R.dimen.rtc_mini_content_height) / 2;
        Drawable radisDrawable = ViewUtils.getRadisDrawable((int) 4286501665L, dimension);
        Drawable radisDrawable2 = ViewUtils.getRadisDrawable((int) 4284720921L, dimension);
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{android.R.attr.state_pressed}, radisDrawable2);
        stateListDrawable.addState(StateSet.WILD_CARD, radisDrawable);
        return stateListDrawable;
    }

    @Override // com.narvii.chat.video.events.MiniContentMuteStatusChangeListener
    public void onMuteStatusChanged(boolean z) throws Resources.NotFoundException {
        this.isAllMuted = z;
        updateAllMuteButton();
    }
}
