package com.narvii.community;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import androidx.activity.result.ActivityResultCaller;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import com.narvii.amino.HomeFragment;
import com.narvii.amino.master.R;
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
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class VisitorBarHost extends ProxyViewHost {

    @Nullable
    private Activity activity;
    private int cid;

    @NotNull
    private com.narvii.master.CommunityHelper communityHelper;

    @NotNull
    private final ConfigService configService;

    @NotNull
    private final w7.m joinLayout$delegate;

    @NotNull
    private final w7.m joinText$delegate;
    private boolean joining;

    @NotNull
    private final w7.m mainLayout$delegate;

    @NotNull
    private NVContext nvContext;

    @NotNull
    private final BroadcastReceiver receiver;

    private final void sendJoinRequest() {
        this.joining = true;
        updateViews();
        getJoinLayout().setProgress(90);
        this.communityHelper.joinCommunity(this.cid, null, new Callback() { // from class: com.narvii.community.a0
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                VisitorBarHost.sendJoinRequest$lambda$1(this.f2223a, (Boolean) obj);
            }
        }, false);
    }

    public final void bind(@Nullable Activity activity) {
        this.activity = activity;
    }

    @Nullable
    public final Activity getActivity() {
        return this.activity;
    }

    public final int getCid() {
        return this.cid;
    }

    @NotNull
    public final com.narvii.master.CommunityHelper getCommunityHelper() {
        return this.communityHelper;
    }

    @NotNull
    public final ConfigService getConfigService() {
        return this.configService;
    }

    public final boolean getJoining() {
        return this.joining;
    }

    @NotNull
    public final NVContext getNvContext() {
        return this.nvContext;
    }

    public final void setActivity(@Nullable Activity activity) {
        this.activity = activity;
    }

    public final void setCid(int i10) {
        this.cid = i10;
    }

    public final void setCommunityHelper(@NotNull com.narvii.master.CommunityHelper communityHelper) {
        kotlin.jvm.internal.t.j(communityHelper, "<set-?>");
        this.communityHelper = communityHelper;
    }

    public final void setJoining(boolean z6) {
        this.joining = z6;
    }

    public final void setNvContext(@NotNull NVContext nVContext) {
        kotlin.jvm.internal.t.j(nVContext, "<set-?>");
        this.nvContext = nVContext;
    }

    public final void unbind() {
        this.activity = null;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VisitorBarHost(@NotNull Context context, @NotNull AttributeSet attrs) {
        super(context, attrs);
        kotlin.jvm.internal.t.j(context, "context");
        kotlin.jvm.internal.t.j(attrs, "attrs");
        this.joinLayout$delegate = NVExtensionKt.bind(this, R.id.join_community);
        this.joinText$delegate = NVExtensionKt.bind(this, R.id.join);
        this.mainLayout$delegate = NVExtensionKt.bind(this, R.id.visitor_mode_main);
        NVContext nVContext = Utils.getNVContext(context);
        kotlin.jvm.internal.t.i(nVContext, "getNVContext(...)");
        this.nvContext = nVContext;
        Object service = nVContext.getService("config");
        kotlin.jvm.internal.t.i(service, "getService(...)");
        ConfigService configService = (ConfigService) service;
        this.configService = configService;
        this.receiver = new BroadcastReceiver() { // from class: com.narvii.community.VisitorBarHost$receiver$1
            @Override // android.content.BroadcastReceiver
            public void onReceive(@NotNull Context context2, @NotNull Intent intent) {
                kotlin.jvm.internal.t.j(context2, "context");
                kotlin.jvm.internal.t.j(intent, "intent");
                if (this.this$0.getCid() == 0 || this.this$0.getCid() != intent.getIntExtra(CmcdConfiguration.KEY_CONTENT_ID, -1)) {
                    return;
                }
                this.this$0.updateBackground();
            }
        };
        this.communityHelper = new com.narvii.master.CommunityHelper(this.nvContext);
        this.cid = configService.getCommunityId();
    }

    private final JoinCommunityProgressLayout getJoinLayout() {
        return (JoinCommunityProgressLayout) this.joinLayout$delegate.getValue();
    }

    private final TextView getJoinText() {
        return (TextView) this.joinText$delegate.getValue();
    }

    private final View getMainLayout() {
        return (View) this.mainLayout$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onFinishInflate$lambda$0(VisitorBarHost this$0, View view) {
        NVContext nVContext;
        kotlin.jvm.internal.t.j(this$0, "this$0");
        if (this$0.joining) {
            return;
        }
        Activity activity = this$0.activity;
        if (activity instanceof NVActivity) {
            kotlin.jvm.internal.t.h(activity, "null cannot be cast to non-null type com.narvii.app.NVActivity");
            if (((NVActivity) activity).getMainFragment() instanceof NVContext) {
                Activity activity2 = this$0.activity;
                kotlin.jvm.internal.t.h(activity2, "null cannot be cast to non-null type com.narvii.app.NVActivity");
                ActivityResultCaller mainFragment = ((NVActivity) activity2).getMainFragment();
                kotlin.jvm.internal.t.h(mainFragment, "null cannot be cast to non-null type com.narvii.app.NVContext");
                nVContext = (NVContext) mainFragment;
            } else {
                ComponentCallbacks2 componentCallbacks2 = this$0.activity;
                kotlin.jvm.internal.t.h(componentCallbacks2, "null cannot be cast to non-null type com.narvii.app.NVContext");
                nVContext = (NVContext) componentCallbacks2;
            }
        } else {
            nVContext = null;
        }
        LogEvent.Builder builderArea = LogEvent.clickBuilder(nVContext, ActSemantic.aminoJoin).area("VisitorJoinButton");
        if (nVContext instanceof HomeFragment) {
            builderArea.extraParam("deepLink", ((HomeFragment) nVContext).getCurrentDeepLink());
        }
        builderArea.send();
        this$0.sendJoinRequest();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void sendJoinRequest$lambda$1(VisitorBarHost this$0, Boolean bool) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        this$0.joining = false;
        this$0.getJoinLayout().setProgress(0);
        this$0.updateViews();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateBackground() {
        getMainLayout().setBackgroundColor(this.configService.getTheme().colorPrimary());
    }

    private final void updateViews() {
        int i10;
        updateBackground();
        getJoinLayout().setCurPressed(this.joining);
        TextView joinText = getJoinText();
        if (this.joining) {
            i10 = R.string.community_joining;
        } else {
            i10 = R.string.join_the_community;
        }
        joinText.setText(i10);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        getJoinLayout().setOnClickListener(new View.OnClickListener() { // from class: com.narvii.community.z
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VisitorBarHost.onFinishInflate$lambda$0(this.f2241a, view);
            }
        });
        updateViews();
    }

    public void start() {
        LocalBroadcastManager.b(getContext()).c(this.receiver, new IntentFilter(ThemePackService.ACTION_THEME_DOWNLOAD_FINISH));
    }

    public void stop() {
        LocalBroadcastManager.b(getContext()).f(this.receiver);
    }
}
