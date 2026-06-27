package com.narvii.master.widget;

import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Typeface;
import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.model.User;
import com.narvii.services.EventLogProfileService;
import com.narvii.util.ScaleBounceHelper;
import com.narvii.util.Utils;
import com.narvii.util.kotlin.NVExtensionKt;
import com.narvii.widget.UserAvatarLayout;
import java.util.HashMap;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Triple;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: MasterBottomBar.kt */
/* loaded from: classes3.dex */
public final class MasterBottomBar extends LinearLayout {
    private static final Triple<Integer, Integer, Integer> chatConf;
    private static final Triple<Integer, Integer, Integer> chatUnreadConf;
    private HashMap _$_findViewCache;
    private final Lazy chatView$delegate;
    private final Lazy communityView$delegate;
    private View.OnClickListener composePreClickListener;
    private final Lazy discoverView$delegate;
    private final Lazy eventLogProfileService$delegate;
    private int lastPos;
    private final Lazy meBadge$delegate;
    private final Lazy profileImage$delegate;
    private final Lazy profileTitle$delegate;
    private final Lazy tabMe$delegate;
    private TabSelectListener tabSelectListener;
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(MasterBottomBar.class), "discoverView", "getDiscoverView()Lcom/narvii/master/widget/MasterBottomItemView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(MasterBottomBar.class), "communityView", "getCommunityView()Lcom/narvii/master/widget/MasterBottomItemView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(MasterBottomBar.class), "chatView", "getChatView()Lcom/narvii/master/widget/MasterBottomItemView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(MasterBottomBar.class), "profileTitle", "getProfileTitle()Landroid/widget/TextView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(MasterBottomBar.class), "profileImage", "getProfileImage()Lcom/narvii/widget/UserAvatarLayout;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(MasterBottomBar.class), "tabMe", "getTabMe()Landroid/view/View;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(MasterBottomBar.class), "meBadge", "getMeBadge()Landroid/view/View;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(MasterBottomBar.class), "eventLogProfileService", "getEventLogProfileService()Lcom/narvii/services/EventLogProfileService;"))};
    public static final Companion Companion = new Companion(null);
    private static final Triple<Integer, Integer, Integer> discoverConf = new Triple<>(Integer.valueOf(R.drawable.ic_home_discover), Integer.valueOf(R.drawable.ic_home_selected_discover), Integer.valueOf(R.string.discover));
    private static final Triple<Integer, Integer, Integer> communityConf = new Triple<>(Integer.valueOf(R.drawable.ic_home_bg), Integer.valueOf(R.drawable.ic_home_selected_bg), Integer.valueOf(R.string.communities));

    /* compiled from: MasterBottomBar.kt */
    public interface TabSelectListener {
        void onTabSelected(int i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public MasterBottomBar(Context context) {
        this(context, null, 2, 0 == true ? 1 : 0);
    }

    private final View getMeBadge() {
        Lazy lazy = this.meBadge$delegate;
        KProperty kProperty = $$delegatedProperties[6];
        return (View) lazy.getValue();
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

    public final MasterBottomItemView getChatView() {
        Lazy lazy = this.chatView$delegate;
        KProperty kProperty = $$delegatedProperties[2];
        return (MasterBottomItemView) lazy.getValue();
    }

    public final MasterBottomItemView getCommunityView() {
        Lazy lazy = this.communityView$delegate;
        KProperty kProperty = $$delegatedProperties[1];
        return (MasterBottomItemView) lazy.getValue();
    }

    public final MasterBottomItemView getDiscoverView() {
        Lazy lazy = this.discoverView$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (MasterBottomItemView) lazy.getValue();
    }

    public final EventLogProfileService getEventLogProfileService() {
        Lazy lazy = this.eventLogProfileService$delegate;
        KProperty kProperty = $$delegatedProperties[7];
        return (EventLogProfileService) lazy.getValue();
    }

    public final UserAvatarLayout getProfileImage() {
        Lazy lazy = this.profileImage$delegate;
        KProperty kProperty = $$delegatedProperties[4];
        return (UserAvatarLayout) lazy.getValue();
    }

    public final TextView getProfileTitle() {
        Lazy lazy = this.profileTitle$delegate;
        KProperty kProperty = $$delegatedProperties[3];
        return (TextView) lazy.getValue();
    }

    public final View getTabMe() {
        Lazy lazy = this.tabMe$delegate;
        KProperty kProperty = $$delegatedProperties[5];
        return (View) lazy.getValue();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MasterBottomBar(final Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.discoverView$delegate = NVExtensionKt.bind(this, R.id.tab_discover);
        this.communityView$delegate = NVExtensionKt.bind(this, R.id.tab_community);
        this.chatView$delegate = NVExtensionKt.bind(this, R.id.tab_chat);
        this.profileTitle$delegate = NVExtensionKt.bind(this, R.id.me_title);
        this.profileImage$delegate = NVExtensionKt.bind(this, R.id.me_icon);
        this.tabMe$delegate = NVExtensionKt.bind(this, R.id.tab_me);
        this.meBadge$delegate = NVExtensionKt.bind(this, R.id.badge_me);
        this.lastPos = -1;
        this.eventLogProfileService$delegate = LazyKt__LazyJVMKt.lazy(new Function0<EventLogProfileService>() { // from class: com.narvii.master.widget.MasterBottomBar$eventLogProfileService$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final EventLogProfileService invoke() {
                return (EventLogProfileService) Utils.getNVContext(context).getService("eventLogProfile");
            }
        });
        View.inflate(context, R.layout.master_bottom_bar, this);
    }

    public /* synthetic */ MasterBottomBar(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    public final int getLastPos() {
        return this.lastPos;
    }

    public final void setLastPos(int i) {
        this.lastPos = i;
    }

    public final View.OnClickListener getComposePreClickListener() {
        return this.composePreClickListener;
    }

    public final void setComposePreClickListener(View.OnClickListener onClickListener) {
        this.composePreClickListener = onClickListener;
    }

    public final TabSelectListener getTabSelectListener() {
        return this.tabSelectListener;
    }

    public final void setTabSelectListener(TabSelectListener tabSelectListener) {
        this.tabSelectListener = tabSelectListener;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        configTabs();
    }

    public final void configTabs() {
        setOnClickListener(null);
        getProfileImage().setDeaultDrawabele(ContextCompat.getDrawable(getContext(), R.drawable.ic_master_me_default));
        getDiscoverView().configTabItem(discoverConf);
        getDiscoverView().setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.widget.MasterBottomBar.configTabs.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TabSelectListener tabSelectListener = MasterBottomBar.this.getTabSelectListener();
                if (tabSelectListener != null) {
                    tabSelectListener.onTabSelected(0);
                }
            }
        });
        getCommunityView().configTabItem(communityConf);
        getCommunityView().setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.widget.MasterBottomBar.configTabs.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TabSelectListener tabSelectListener = MasterBottomBar.this.getTabSelectListener();
                if (tabSelectListener != null) {
                    tabSelectListener.onTabSelected(1);
                }
            }
        });
        getChatView().configTabItem(chatConf);
        getChatView().setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.widget.MasterBottomBar.configTabs.3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TabSelectListener tabSelectListener = MasterBottomBar.this.getTabSelectListener();
                if (tabSelectListener != null) {
                    tabSelectListener.onTabSelected(2);
                }
            }
        });
        getTabMe().setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.widget.MasterBottomBar.configTabs.4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TabSelectListener tabSelectListener = MasterBottomBar.this.getTabSelectListener();
                if (tabSelectListener != null) {
                    tabSelectListener.onTabSelected(3);
                }
            }
        });
        MasterBottomItemView communityView = getCommunityView();
        EventLogProfileService eventLogProfileService = getEventLogProfileService();
        communityView.setVisibility((eventLogProfileService == null || !eventLogProfileService.isShowMyCommunityTab()) ? 8 : 0);
    }

    public final void updateTabBottomLayout(int i) {
        int i2 = this.lastPos;
        if (i2 == -1) {
            MasterBottomItemView itemViewByPos = getItemViewByPos(i);
            if (itemViewByPos != null) {
                itemViewByPos.setItemSelected();
            }
        } else {
            if (i2 == 3) {
                animateTextColor(getProfileTitle(), -1, MasterBottomItemView.TEXT_COLOR_UNSELECTED);
                getProfileTitle().setTypeface(Typeface.DEFAULT, 0);
            } else {
                MasterBottomItemView itemViewByPos2 = getItemViewByPos(i2);
                if (itemViewByPos2 != null) {
                    itemViewByPos2.animationItemUnSelected();
                }
            }
            if (i == 3) {
                new ScaleBounceHelper(getContext(), getProfileImage(), MasterBottomItemView.Companion.getScaleArray(), MasterBottomItemView.Companion.getTimeArray()).playSeq();
                animateTextColor(getProfileTitle(), MasterBottomItemView.TEXT_COLOR_UNSELECTED, -1);
                getProfileTitle().setTypeface(Typeface.DEFAULT, 1);
            } else {
                MasterBottomItemView itemViewByPos3 = getItemViewByPos(i);
                if (itemViewByPos3 != null) {
                    itemViewByPos3.animationItemSelected();
                }
            }
        }
        this.lastPos = i;
    }

    public final MasterBottomItemView getItemViewByPos(int i) {
        if (i == 0) {
            return getDiscoverView();
        }
        if (i == 1) {
            EventLogProfileService eventLogProfileService = getEventLogProfileService();
            return (eventLogProfileService == null || !eventLogProfileService.isShowMyCommunityTab()) ? getDiscoverView() : getCommunityView();
        }
        if (i != 2) {
            return null;
        }
        return getChatView();
    }

    /* compiled from: MasterBottomBar.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Triple<Integer, Integer, Integer> getDiscoverConf() {
            return MasterBottomBar.discoverConf;
        }

        public final Triple<Integer, Integer, Integer> getCommunityConf() {
            return MasterBottomBar.communityConf;
        }

        public final Triple<Integer, Integer, Integer> getChatConf() {
            return MasterBottomBar.chatConf;
        }

        public final Triple<Integer, Integer, Integer> getChatUnreadConf() {
            return MasterBottomBar.chatUnreadConf;
        }
    }

    static {
        Integer numValueOf = Integer.valueOf(R.drawable.ic_global_chats_bg);
        Integer numValueOf2 = Integer.valueOf(R.drawable.ic_global_chats_selected_bg);
        Integer numValueOf3 = Integer.valueOf(R.string.chats);
        chatConf = new Triple<>(numValueOf, numValueOf2, numValueOf3);
        chatUnreadConf = new Triple<>(Integer.valueOf(R.drawable.ic_global_chat_unread), Integer.valueOf(R.drawable.ic_global_chat_unread_selected), numValueOf3);
    }

    public final void animateTextColor(final TextView tv2, int i, int i2) {
        Intrinsics.checkParameterIsNotNull(tv2, "tv");
        ValueAnimator colorAnimator = ValueAnimator.ofObject(new ArgbEvaluator(), Integer.valueOf(i), Integer.valueOf(i2));
        Intrinsics.checkExpressionValueIsNotNull(colorAnimator, "colorAnimator");
        colorAnimator.setDuration(250L);
        colorAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.master.widget.MasterBottomBar.animateTextColor.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator animation) {
                TextView textView = tv2;
                Intrinsics.checkExpressionValueIsNotNull(animation, "animation");
                Object animatedValue = animation.getAnimatedValue();
                if (animatedValue == null) {
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.Int");
                }
                textView.setTextColor(((Integer) animatedValue).intValue());
            }
        });
        colorAnimator.start();
    }

    public final void setUser(User user) {
        getProfileImage().setUser(user, false);
    }

    public final void setUnreadChatMessage(boolean z) {
        getChatView().configTabItem(z ? chatUnreadConf : chatConf);
    }

    public final void updateMeBadge(boolean z) {
        getMeBadge().setVisibility(z ? 0 : 8);
    }
}
