package com.narvii.livelayer;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.util.AttributeSet;
import android.view.View;
import androidx.fragment.app.Fragment;
import com.narvii.amino.MainActivity;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.blog.detail.BlogDetailFragment;
import com.narvii.chat.ChatFragment;
import com.narvii.chat.thread.MyChatsListFragment;
import com.narvii.config.ConfigService;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.item.detail.ItemDetailFragment;
import com.narvii.onlinestatus.OnlineHelper;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.PreferencesHelper;
import com.narvii.util.statistics.constants.EventConstants;
import com.narvii.widget.ProxyView;
import com.narvii.widget.ProxyViewHost;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes.dex */
public class LiveLayerHost extends ProxyViewHost {
    Activity activity;
    public final int cid;
    LiveLayerDataSource dataSource;
    int indicatorX;
    NVContext nvContext;
    public View.OnClickListener onClickListener;
    public LiveLayerOnlineBar onlineBar;
    OnlineHelper onlineHelper;
    PreferencesHelper sharedPreferencesHelper;
    public final String topic;

    public void onPause() {
    }

    public void onResume() {
    }

    public void onStop() {
    }

    public void unbind() {
        this.activity = null;
        LiveLayerOnlineBar liveLayerOnlineBar = this.onlineBar;
        if (liveLayerOnlineBar != null) {
            liveLayerOnlineBar.clearAnimation();
        }
    }

    public static String getSource(Activity activity) {
        if (activity instanceof MainActivity) {
            return "Home Page";
        }
        if (!(activity instanceof FragmentWrapperActivity)) {
            return "[" + activity.getClass().getSimpleName() + "]";
        }
        Fragment rootFragment = ((FragmentWrapperActivity) activity).getRootFragment();
        if (rootFragment instanceof BlogDetailFragment) {
            return "Blog";
        }
        if (rootFragment instanceof ItemDetailFragment) {
            return EventConstants.PostType.WIKI;
        }
        if (rootFragment instanceof UserProfileFragment) {
            return "User Profile";
        }
        if (rootFragment instanceof MyChatsListFragment) {
            return "My Chats";
        }
        if (rootFragment instanceof ChatFragment) {
            return "Chat Thread";
        }
        return "[" + rootFragment.getClass().getSimpleName() + "]";
    }

    private void updateDataSource() {
        LiveLayerDataSource dataSource = ((LiveLayerService) this.nvContext.getService("liveLayer")).getDataSource();
        this.dataSource = dataSource;
        this.onlineBar.dataSource = dataSource;
    }

    public void bind(Activity activity) {
        this.activity = activity;
        this.onlineBar.setOnBarClickListener(this.onClickListener);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public LiveLayerHost(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.onClickListener = new View.OnClickListener() { // from class: com.narvii.livelayer.LiveLayerHost.1
            public static void safedk_Activity_startActivity_9d898b58165fa4ba0e12c3900a2b8533(Activity p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (LiveLayerHost.this.activity != null) {
                    Intent intent = LiveLayerActivity.intent(LiveLayerFragment.class);
                    intent.putExtra("customFinishAnimOut", R.anim.activity_push_bottom_out);
                    intent.putExtra("customFinishAnimIn", 0);
                    intent.putExtra(ExternalPostPreviewFragment.SOURCE, LiveLayerHost.getSource(LiveLayerHost.this.activity));
                    intent.putExtra("__communityId", LiveLayerHost.this.cid);
                    LiveLayerActivity.prepare(LiveLayerHost.this.activity);
                    safedk_Activity_startActivity_9d898b58165fa4ba0e12c3900a2b8533(LiveLayerHost.this.activity, intent);
                    LiveLayerHost.this.activity.overridePendingTransition(R.anim.activity_push_bottom_in, 0);
                }
            }
        };
        this.nvContext = (NVContext) context;
        this.indicatorX = context.getResources().getDimensionPixelSize(R.dimen.live_layer_tooltip_indicator_x);
        this.cid = ((ConfigService) this.nvContext.getService("config")).getCommunityId();
        this.topic = "online-members";
        this.onlineHelper = new OnlineHelper(this.nvContext);
        this.sharedPreferencesHelper = new PreferencesHelper(this.nvContext);
    }

    @Override // com.narvii.widget.ProxyViewHost
    public void attachTo(ProxyView proxyView) {
        super.attachTo(proxyView);
        this.dataSource.setLiveLayerView(this.onlineBar);
        this.onlineBar.setUserList(this.dataSource.getUserList(), this.dataSource.getCurrentMembersCount());
    }

    @Override // com.narvii.widget.ProxyViewHost
    public void detachFrom(ProxyView proxyView) {
        super.detachFrom(proxyView);
        if (this.dataSource.getLiveLayerView() == this) {
            this.dataSource.setLiveLayerView(null);
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        LiveLayerOnlineBar liveLayerOnlineBar = (LiveLayerOnlineBar) findViewById(R.id.floating_online_bar);
        this.onlineBar = liveLayerOnlineBar;
        liveLayerOnlineBar.setShouldFilterUserList(false);
        updateDataSource();
    }

    public void onStart() {
        updateDataSource();
    }
}
