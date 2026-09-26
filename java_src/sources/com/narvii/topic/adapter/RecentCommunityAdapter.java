package com.narvii.topic.adapter;

import android.app.Activity;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.OnLifecycleEvent;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.amino.master.R;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.community.CommunityLaunchHelper;
import com.narvii.community.MyCommunityListService;
import com.narvii.community.RecentCommunityHelper;
import com.narvii.logging.LogUtils;
import com.narvii.model.Community;
import com.narvii.model.User;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.source.PageRequestCallback;
import com.narvii.services.EnterCommunityHelper;
import com.narvii.util.Callback;
import com.narvii.util.SplashUtils;
import com.narvii.util.Utils;
import com.narvii.widget.NVImageView;
import com.narvii.widget.SmoothProgressBar;
import java.util.ArrayList;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public class RecentCommunityAdapter extends NVRecyclerViewBaseAdapter implements LifecycleObserver, RecentCommunityHelper.RecentCommunityChangeListener {

    @NotNull
    private final List<Community> commuties;

    @Nullable
    private MyLaunchHelper launchHelper;

    @NotNull
    private final w7.m recentCommunityHelper$delegate;

    @Nullable
    private OnRefreshListener refreshListener;

    @Nullable
    private Runnable removeLaunchSplash;

    public final class MyLaunchHelper extends CommunityLaunchHelper {

        @Nullable
        private Community community;

        @Nullable
        private NVImageView imageView;

        @Nullable
        private Activity launchActivity;

        @NotNull
        private final w7.m myCommunityListService$delegate;

        @Nullable
        private SmoothProgressBar progressBar;
        private boolean recent;
        final /* synthetic */ RecentCommunityAdapter this$0;

        @Nullable
        public final Community getCommunity() {
            return this.community;
        }

        @Nullable
        public final NVImageView getImageView() {
            return this.imageView;
        }

        @Nullable
        public final Activity getLaunchActivity() {
            return this.launchActivity;
        }

        @Nullable
        public final SmoothProgressBar getProgressBar() {
            return this.progressBar;
        }

        public final boolean getRecent() {
            return this.recent;
        }

        public final void setCommunity(@Nullable Community community) {
            this.community = community;
        }

        public final void setImageView(@Nullable NVImageView nVImageView) {
            this.imageView = nVImageView;
        }

        public final void setLaunchActivity(@Nullable Activity activity) {
            this.launchActivity = activity;
        }

        public final void setProgressBar(@Nullable SmoothProgressBar smoothProgressBar) {
            this.progressBar = smoothProgressBar;
        }

        public final void setRecent(boolean z6) {
            this.recent = z6;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MyLaunchHelper(@NotNull RecentCommunityAdapter recentCommunityAdapter, NVContext ctx) {
            super(ctx, "Right Side Panel");
            kotlin.jvm.internal.t.j(ctx, "ctx");
            this.this$0 = recentCommunityAdapter;
            this.myCommunityListService$delegate = w7.o.a(new RecentCommunityAdapter$MyLaunchHelper$myCommunityListService$2(ctx));
        }

        public final MyCommunityListService getMyCommunityListService() {
            return (MyCommunityListService) this.myCommunityListService$delegate.getValue();
        }

        public final void launchCommunity(@NotNull Community community, @NotNull NVImageView imageView, @NotNull SmoothProgressBar progressBar) {
            kotlin.jvm.internal.t.j(community, "community");
            kotlin.jvm.internal.t.j(imageView, "imageView");
            kotlin.jvm.internal.t.j(progressBar, "progressBar");
            this.community = community;
            this.imageView = imageView;
            this.progressBar = progressBar;
            progressBar.setVisibility(0);
            progressBar.setMax(100);
            progressBar.setProgress(0);
            this.recent = false;
            launchCid(community.id, imageView.getDrawable());
        }

        public final void launchRecent(@NotNull Community community, @NotNull NVImageView imageView) {
            kotlin.jvm.internal.t.j(community, "community");
            kotlin.jvm.internal.t.j(imageView, "imageView");
            this.community = community;
            this.imageView = imageView;
            this.progressBar = null;
            this.recent = true;
            launchCid(community.id, null);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.community.CommunityLaunchHelper
        public void onFinish() {
            Drawable drawable;
            Activity activity = this.this$0.getActivity();
            if (this.community == null || activity == null) {
                return;
            }
            NVImageView nVImageView = this.imageView;
            if (nVImageView == null || (drawable = this.launchImageDrawable) == null) {
                super.onFinish();
                this.this$0.removeLaunchSplash();
            } else {
                this.launchActivity = activity;
                final RecentCommunityAdapter recentCommunityAdapter = this.this$0;
                SplashUtils.splash(activity, nVImageView, drawable, new Callback() { // from class: com.narvii.topic.adapter.w
                    @Override // com.narvii.util.Callback
                    public final void call(Object obj) {
                        RecentCommunityAdapter.MyLaunchHelper.onFinish$lambda$0(this.f2773a, recentCommunityAdapter, (Boolean) obj);
                    }
                });
            }
        }

        @Override // com.narvii.community.CommunityLaunchHelper
        protected void onProgress(int i10, float f) {
            SmoothProgressBar smoothProgressBar = this.progressBar;
            if (smoothProgressBar != null) {
                kotlin.jvm.internal.t.g(smoothProgressBar);
                smoothProgressBar.setProgress((int) (100 * f));
            }
        }

        private final void launchCid(int i10, Drawable drawable) {
            User user;
            String str;
            List<Community> list = getMyCommunityListService().list();
            Community community = null;
            if (list != null) {
                for (Community community2 : list) {
                    if (community2.id == i10) {
                        User userProfile = getMyCommunityListService().getUserProfile(i10);
                        String userInfoTimestamp = getMyCommunityListService().getUserInfoTimestamp(i10);
                        if (userInfoTimestamp != null && userProfile != null) {
                            community = community2;
                        } else {
                            userProfile = null;
                        }
                        str = userInfoTimestamp;
                        user = userProfile;
                    }
                }
                user = null;
                str = null;
            } else {
                user = null;
                str = null;
            }
            launch(i10, community, str, user, str, getMyCommunityListService().getReminder(i10), getMyCommunityListService().getReminderTimestamp(i10), false, 2, drawable);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onFinish$lambda$0(MyLaunchHelper this$0, RecentCommunityAdapter this$1, Boolean bool) {
            kotlin.jvm.internal.t.j(this$0, "this$0");
            kotlin.jvm.internal.t.j(this$1, "this$1");
            if (kotlin.jvm.internal.t.e(bool, Boolean.TRUE)) {
                EnterCommunityHelper.SOURCE.set(this$0.source);
                super.onFinish();
                this$1.removeLaunchSplash();
            }
        }

        @Override // com.narvii.community.CommunityLaunchHelper
        public void cancel() {
            super.cancel();
            this.community = null;
            this.imageView = null;
            SmoothProgressBar smoothProgressBar = this.progressBar;
            if (smoothProgressBar != null) {
                kotlin.jvm.internal.t.g(smoothProgressBar);
                smoothProgressBar.setProgress(0);
                SmoothProgressBar smoothProgressBar2 = this.progressBar;
                kotlin.jvm.internal.t.g(smoothProgressBar2);
                smoothProgressBar2.setVisibility(4);
            }
            this.progressBar = null;
            Activity activity = this.launchActivity;
            if (activity != null) {
                SplashUtils.cancelSplash(activity);
            }
            this.launchActivity = null;
        }
    }

    public interface OnRefreshListener {
        void onFinish();
    }

    public final class ViewHolder extends RecyclerView.ViewHolder {
        private final NVImageView icon;
        final /* synthetic */ RecentCommunityAdapter this$0;
        private final TextView title;

        public final NVImageView getIcon() {
            return this.icon;
        }

        public final TextView getTitle() {
            return this.title;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(@NotNull RecentCommunityAdapter recentCommunityAdapter, View itemView) {
            super(itemView);
            kotlin.jvm.internal.t.j(itemView, "itemView");
            this.this$0 = recentCommunityAdapter;
            this.icon = (NVImageView) itemView.findViewById(R.id.icon);
            this.title = (TextView) itemView.findViewById(R.id.title);
        }

        public final void updateData(@NotNull Community c7) {
            kotlin.jvm.internal.t.j(c7, "c");
            this.icon.setImageUrl(c7.icon);
            this.title.setText(c7.name);
        }
    }

    @NotNull
    public final List<Community> getCommuties() {
        return this.commuties;
    }

    @Nullable
    public final MyLaunchHelper getLaunchHelper() {
        return this.launchHelper;
    }

    @Nullable
    public final OnRefreshListener getRefreshListener() {
        return this.refreshListener;
    }

    public void onPreOpenCommunity(@NotNull Community community) {
        kotlin.jvm.internal.t.j(community, "community");
    }

    public final void setLaunchHelper(@Nullable MyLaunchHelper myLaunchHelper) {
        this.launchHelper = myLaunchHelper;
    }

    public final void setRefreshListener(@Nullable OnRefreshListener onRefreshListener) {
        this.refreshListener = onRefreshListener;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RecentCommunityAdapter(@NotNull NVContext ctx) {
        super(ctx);
        kotlin.jvm.internal.t.j(ctx, "ctx");
        this.commuties = new ArrayList();
        this.recentCommunityHelper$delegate = w7.o.a(new RecentCommunityAdapter$recentCommunityHelper$2(this));
        Activity activity = getActivity();
        if (activity instanceof FragmentActivity) {
            ((FragmentActivity) activity).getLifecycle().a(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Activity getActivity() {
        NVContext nVContext = this.context;
        if (nVContext instanceof NVActivity) {
            kotlin.jvm.internal.t.h(nVContext, "null cannot be cast to non-null type com.narvii.app.NVActivity");
            return (NVActivity) nVContext;
        }
        if (!(nVContext instanceof NVFragment)) {
            return null;
        }
        kotlin.jvm.internal.t.h(nVContext, "null cannot be cast to non-null type com.narvii.app.NVFragment");
        return ((NVFragment) nVContext).getActivity();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void removeLaunchSplash() {
        Runnable runnable = this.removeLaunchSplash;
        if (runnable != null) {
            Utils.handler.removeCallbacks(runnable);
        }
        this.removeLaunchSplash = null;
        final MyLaunchHelper myLaunchHelper = this.launchHelper;
        if (myLaunchHelper != null) {
            this.removeLaunchSplash = new Runnable() { // from class: com.narvii.topic.adapter.t
                @Override // java.lang.Runnable
                public final void run() {
                    RecentCommunityAdapter.removeLaunchSplash$lambda$4(myLaunchHelper);
                }
            };
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void removeLaunchSplash$lambda$4(MyLaunchHelper myLaunchHelper) {
        if (myLaunchHelper != null) {
            myLaunchHelper.cancel();
        }
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    @NotNull
    public Community getItem(int i10) {
        return this.commuties.get(i10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.commuties.size();
    }

    public final RecentCommunityHelper getRecentCommunityHelper() {
        return (RecentCommunityHelper) this.recentCommunityHelper$delegate.getValue();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NotNull RecyclerView.ViewHolder holder, int i10) {
        kotlin.jvm.internal.t.j(holder, "holder");
        Community item = getItem(i10);
        if (holder instanceof ViewHolder) {
            ((ViewHolder) holder).updateData(item);
            holder.itemView.setOnClickListener(this.subviewClickListener);
            LogUtils.setAttachedObject(holder.itemView, getItem(i10));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NotNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i10) {
        kotlin.jvm.internal.t.j(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_recnet_community_card_horizontal, parent, false);
        kotlin.jvm.internal.t.i(viewInflate, "inflate(...)");
        return new ViewHolder(this, viewInflate);
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean onItemClick(@Nullable NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, int i10, @Nullable Object obj, @Nullable View view, @Nullable View view2) {
        if (obj instanceof Community) {
            Community community = (Community) obj;
            onPreOpenCommunity(community);
            NVContext context = this.context;
            kotlin.jvm.internal.t.i(context, "context");
            MyLaunchHelper myLaunchHelper = new MyLaunchHelper(this, context);
            this.launchHelper = myLaunchHelper;
            kotlin.jvm.internal.t.g(myLaunchHelper);
            myLaunchHelper.visitorModeCompatible = true;
            MyLaunchHelper myLaunchHelper2 = this.launchHelper;
            kotlin.jvm.internal.t.g(myLaunchHelper2);
            myLaunchHelper2.themePackDownloadAsync = true;
            MyLaunchHelper myLaunchHelper3 = this.launchHelper;
            kotlin.jvm.internal.t.g(myLaunchHelper3);
            kotlin.jvm.internal.t.g(view);
            View viewFindViewById = view.findViewById(R.id.icon);
            kotlin.jvm.internal.t.h(viewFindViewById, "null cannot be cast to non-null type com.narvii.widget.NVImageView");
            myLaunchHelper3.launchRecent(community, (NVImageView) viewFindViewById);
        }
        return super.onItemClick(nVRecyclerViewBaseAdapter, i10, obj, view, view2);
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
    private final void onDestroy() {
        RecentCommunityHelper recentCommunityHelper = getRecentCommunityHelper();
        if (recentCommunityHelper != null) {
            recentCommunityHelper.removeChangeListener(this);
        }
    }

    private final void refreshList() {
        List<Community> recentList = getRecentCommunityHelper().getRecentList(0, 20);
        this.commuties.clear();
        List<Community> list = this.commuties;
        kotlin.jvm.internal.t.g(recentList);
        list.addAll(recentList);
        Utils.post(new Runnable() { // from class: com.narvii.topic.adapter.u
            @Override // java.lang.Runnable
            public final void run() {
                RecentCommunityAdapter.refreshList$lambda$2(this.f2772a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void refreshList$lambda$2(RecentCommunityAdapter this$0) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        this$0.notifyDataSetChanged();
        OnRefreshListener onRefreshListener = this$0.refreshListener;
        if (onRefreshListener != null) {
            onRefreshListener.onFinish();
        }
        this$0.dataSetEventDispatcher.dispatch(new Callback() { // from class: com.narvii.topic.adapter.v
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                ((NVRecyclerViewBaseAdapter.DataSetChangeListener) obj).onDataSetChanged();
            }
        });
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void onAttach() {
        super.onAttach();
        refreshList();
    }

    @Override // com.narvii.community.RecentCommunityHelper.RecentCommunityChangeListener
    public void onRecentCommunityChanged() {
        refreshList();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void refresh(int i10, @Nullable PageRequestCallback pageRequestCallback) {
        super.refresh(i10, pageRequestCallback);
        refreshList();
    }
}
