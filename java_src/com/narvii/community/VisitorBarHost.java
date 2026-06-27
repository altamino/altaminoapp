package com.narvii.community;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.ComponentCallbacks;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.support.v4.content.LocalBroadcastManager;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import com.narvii.amino.HomeFragment;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.theme.ThemePackService;
import com.narvii.util.Callback;
import com.narvii.util.Utils;
import com.narvii.util.kotlin.NVExtensionKt;
import com.narvii.widget.JoinCommunityProgressLayout;
import com.narvii.widget.ProxyViewHost;
import java.util.HashMap;
import kotlin.Lazy;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: VisitorBarHost.kt */
/* loaded from: classes.dex */
public final class VisitorBarHost extends ProxyViewHost {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(VisitorBarHost.class), "joinLayout", "getJoinLayout()Lcom/narvii/widget/JoinCommunityProgressLayout;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(VisitorBarHost.class), "joinText", "getJoinText()Landroid/widget/TextView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(VisitorBarHost.class), "mainLayout", "getMainLayout()Landroid/view/View;"))};
    private HashMap _$_findViewCache;
    private Activity activity;
    private int cid;
    private com.narvii.master.CommunityHelper communityHelper;
    private final ConfigService configService;
    private final Lazy joinLayout$delegate;
    private final Lazy joinText$delegate;
    private boolean joining;
    private final Lazy mainLayout$delegate;
    private NVContext nvContext;
    private final BroadcastReceiver receiver;

    /* JADX INFO: Access modifiers changed from: private */
    public final JoinCommunityProgressLayout getJoinLayout() {
        Lazy lazy = this.joinLayout$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (JoinCommunityProgressLayout) lazy.getValue();
    }

    private final TextView getJoinText() {
        Lazy lazy = this.joinText$delegate;
        KProperty kProperty = $$delegatedProperties[1];
        return (TextView) lazy.getValue();
    }

    private final View getMainLayout() {
        Lazy lazy = this.mainLayout$delegate;
        KProperty kProperty = $$delegatedProperties[2];
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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VisitorBarHost(Context context, AttributeSet attrs) {
        super(context, attrs);
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attrs, "attrs");
        this.joinLayout$delegate = NVExtensionKt.bind(this, R.id.join_community);
        this.joinText$delegate = NVExtensionKt.bind(this, R.id.join);
        this.mainLayout$delegate = NVExtensionKt.bind(this, R.id.visitor_mode_main);
        NVContext nVContext = Utils.getNVContext(context);
        Intrinsics.checkExpressionValueIsNotNull(nVContext, "Utils.getNVContext(context)");
        this.nvContext = nVContext;
        Object service = this.nvContext.getService("config");
        Intrinsics.checkExpressionValueIsNotNull(service, "nvContext.getService<ConfigService>(\"config\")");
        this.configService = (ConfigService) service;
        this.receiver = new BroadcastReceiver() { // from class: com.narvii.community.VisitorBarHost$receiver$1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                Intrinsics.checkParameterIsNotNull(context2, "context");
                Intrinsics.checkParameterIsNotNull(intent, "intent");
                if (this.this$0.getCid() == 0 || this.this$0.getCid() != intent.getIntExtra("cid", -1)) {
                    return;
                }
                this.this$0.updateBackground();
            }
        };
        this.communityHelper = new com.narvii.master.CommunityHelper(this.nvContext);
        this.cid = this.configService.getCommunityId();
    }

    public final com.narvii.master.CommunityHelper getCommunityHelper() {
        return this.communityHelper;
    }

    public final void setCommunityHelper(com.narvii.master.CommunityHelper communityHelper) {
        Intrinsics.checkParameterIsNotNull(communityHelper, "<set-?>");
        this.communityHelper = communityHelper;
    }

    public final NVContext getNvContext() {
        return this.nvContext;
    }

    public final void setNvContext(NVContext nVContext) {
        Intrinsics.checkParameterIsNotNull(nVContext, "<set-?>");
        this.nvContext = nVContext;
    }

    public final ConfigService getConfigService() {
        return this.configService;
    }

    public final int getCid() {
        return this.cid;
    }

    public final void setCid(int i) {
        this.cid = i;
    }

    public final boolean getJoining() {
        return this.joining;
    }

    public final void setJoining(boolean z) {
        this.joining = z;
    }

    public final Activity getActivity() {
        return this.activity;
    }

    public final void setActivity(Activity activity) {
        this.activity = activity;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        getJoinLayout().setOnClickListener(new View.OnClickListener() { // from class: com.narvii.community.VisitorBarHost.onFinishInflate.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (VisitorBarHost.this.getJoining()) {
                    return;
                }
                NVContext nVContext = null;
                if (VisitorBarHost.this.getActivity() instanceof NVActivity) {
                    Activity activity = VisitorBarHost.this.getActivity();
                    if (activity == null) {
                        throw new TypeCastException("null cannot be cast to non-null type com.narvii.app.NVActivity");
                    }
                    if (((NVActivity) activity).getMainFragment() instanceof NVContext) {
                        Activity activity2 = VisitorBarHost.this.getActivity();
                        if (activity2 == null) {
                            throw new TypeCastException("null cannot be cast to non-null type com.narvii.app.NVActivity");
                        }
                        ComponentCallbacks mainFragment = ((NVActivity) activity2).getMainFragment();
                        if (mainFragment == null) {
                            throw new TypeCastException("null cannot be cast to non-null type com.narvii.app.NVContext");
                        }
                        nVContext = (NVContext) mainFragment;
                    } else {
                        ComponentCallbacks2 activity3 = VisitorBarHost.this.getActivity();
                        if (activity3 == null) {
                            throw new TypeCastException("null cannot be cast to non-null type com.narvii.app.NVContext");
                        }
                        nVContext = (NVContext) activity3;
                    }
                }
                LogEvent.Builder builderArea = LogEvent.clickBuilder(nVContext, ActSemantic.aminoJoin).area("VisitorJoinButton");
                if (nVContext instanceof HomeFragment) {
                    builderArea.extraParam("deepLink", ((HomeFragment) nVContext).getCurrentDeepLink());
                }
                builderArea.send();
                VisitorBarHost.this.sendJoinRequest();
            }
        });
        updateViews();
    }

    public void start() {
        LocalBroadcastManager.getInstance(getContext()).registerReceiver(this.receiver, new IntentFilter(ThemePackService.ACTION_THEME_DOWNLOAD_FINISH));
    }

    public void stop() {
        LocalBroadcastManager.getInstance(getContext()).unregisterReceiver(this.receiver);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void sendJoinRequest() {
        this.joining = true;
        updateViews();
        getJoinLayout().setProgress(90);
        this.communityHelper.joinCommunity(this.cid, null, new Callback<Boolean>() { // from class: com.narvii.community.VisitorBarHost.sendJoinRequest.1
            @Override // com.narvii.util.Callback
            public final void call(Boolean bool) {
                VisitorBarHost.this.setJoining(false);
                VisitorBarHost.this.getJoinLayout().setProgress(0);
                VisitorBarHost.this.updateViews();
            }
        }, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateViews() {
        updateBackground();
        getJoinLayout().setCurPressed(this.joining);
        getJoinText().setText(this.joining ? R.string.community_joining : R.string.join_the_community);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateBackground() {
        getMainLayout().setBackgroundColor(this.configService.getTheme().colorPrimary());
    }

    public final void bind(Activity activity) {
        this.activity = activity;
    }

    public final void unbind() {
        this.activity = null;
    }
}
