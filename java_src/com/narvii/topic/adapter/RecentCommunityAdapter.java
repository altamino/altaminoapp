package com.narvii.topic.adapter;

import android.app.Activity;
import android.arch.lifecycle.Lifecycle;
import android.arch.lifecycle.LifecycleObserver;
import android.arch.lifecycle.OnLifecycleEvent;
import android.graphics.drawable.Drawable;
import android.support.v4.app.FragmentActivity;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
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
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: RecentCommunityAdapter.kt */
/* loaded from: classes.dex */
public class RecentCommunityAdapter extends NVRecyclerViewBaseAdapter implements LifecycleObserver, RecentCommunityHelper.RecentCommunityChangeListener {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(RecentCommunityAdapter.class), "recentCommunityHelper", "getRecentCommunityHelper()Lcom/narvii/community/RecentCommunityHelper;"))};
    private final List<Community> commuties;
    private MyLaunchHelper launchHelper;
    private final Lazy recentCommunityHelper$delegate;
    private OnRefreshListener refreshListener;
    private Runnable removeLaunchSplash;

    /* compiled from: RecentCommunityAdapter.kt */
    /* loaded from: classes3.dex */
    public interface OnRefreshListener {
        void onFinish();
    }

    public final RecentCommunityHelper getRecentCommunityHelper() {
        Lazy lazy = this.recentCommunityHelper$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (RecentCommunityHelper) lazy.getValue();
    }

    public void onPreOpenCommunity(Community community) {
        Intrinsics.checkParameterIsNotNull(community, "community");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RecentCommunityAdapter(NVContext ctx) {
        super(ctx);
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        this.commuties = new ArrayList();
        this.recentCommunityHelper$delegate = LazyKt__LazyJVMKt.lazy(new Function0<RecentCommunityHelper>() { // from class: com.narvii.topic.adapter.RecentCommunityAdapter$recentCommunityHelper$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final RecentCommunityHelper invoke() {
                RecentCommunityHelper recentCommunityHelper = (RecentCommunityHelper) ((NVRecyclerViewBaseAdapter) this.this$0).context.getService("recentCommunities");
                recentCommunityHelper.addChangeListener(this.this$0);
                return recentCommunityHelper;
            }
        });
        Activity activity = getActivity();
        if (activity instanceof FragmentActivity) {
            ((FragmentActivity) activity).getLifecycle().addObserver(this);
        }
    }

    public final List<Community> getCommuties() {
        return this.commuties;
    }

    public final MyLaunchHelper getLaunchHelper() {
        return this.launchHelper;
    }

    public final void setLaunchHelper(MyLaunchHelper myLaunchHelper) {
        this.launchHelper = myLaunchHelper;
    }

    public final OnRefreshListener getRefreshListener() {
        return this.refreshListener;
    }

    public final void setRefreshListener(OnRefreshListener onRefreshListener) {
        this.refreshListener = onRefreshListener;
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
    private final void onDestroy() {
        RecentCommunityHelper recentCommunityHelper = getRecentCommunityHelper();
        if (recentCommunityHelper != null) {
            recentCommunityHelper.removeChangeListener(this);
        }
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int i) {
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_recnet_community_card_horizontal, parent, false);
        Intrinsics.checkExpressionValueIsNotNull(viewInflate, "LayoutInflater.from(pare…orizontal, parent, false)");
        return new ViewHolder(this, viewInflate);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.commuties.size();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public Community getItem(int i) {
        return this.commuties.get(i);
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void onAttach() throws NumberFormatException {
        super.onAttach();
        refreshList();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void refresh(int i, PageRequestCallback pageRequestCallback) throws NumberFormatException {
        super.refresh(i, pageRequestCallback);
        refreshList();
    }

    private final void refreshList() throws NumberFormatException {
        List<Community> recentList = getRecentCommunityHelper().getRecentList(0, 20);
        this.commuties.clear();
        List<Community> list = this.commuties;
        Intrinsics.checkExpressionValueIsNotNull(recentList, "recentList");
        list.addAll(recentList);
        Utils.post(new Runnable() { // from class: com.narvii.topic.adapter.RecentCommunityAdapter.refreshList.1
            @Override // java.lang.Runnable
            public final void run() {
                RecentCommunityAdapter.this.notifyDataSetChanged();
                OnRefreshListener refreshListener = RecentCommunityAdapter.this.getRefreshListener();
                if (refreshListener != null) {
                    refreshListener.onFinish();
                }
                ((NVRecyclerViewBaseAdapter) RecentCommunityAdapter.this).dataSetEventDispatcher.dispatch(new Callback<NVRecyclerViewBaseAdapter.DataSetChangeListener>() { // from class: com.narvii.topic.adapter.RecentCommunityAdapter.refreshList.1.1
                    @Override // com.narvii.util.Callback
                    public final void call(NVRecyclerViewBaseAdapter.DataSetChangeListener dataSetChangeListener) {
                        dataSetChangeListener.onDataSetChanged();
                    }
                });
            }
        });
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
        Intrinsics.checkParameterIsNotNull(holder, "holder");
        Community item = getItem(i);
        if (holder instanceof ViewHolder) {
            ((ViewHolder) holder).updateData(item);
            holder.itemView.setOnClickListener(this.subviewClickListener);
            LogUtils.setAttachedObject(holder.itemView, getItem(i));
        }
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean onItemClick(NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, int i, Object obj, View view, View view2) {
        if (obj instanceof Community) {
            Community community = (Community) obj;
            onPreOpenCommunity(community);
            NVContext context = this.context;
            Intrinsics.checkExpressionValueIsNotNull(context, "context");
            this.launchHelper = new MyLaunchHelper(this, context);
            MyLaunchHelper myLaunchHelper = this.launchHelper;
            if (myLaunchHelper == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            myLaunchHelper.visitorModeCompatible = true;
            if (myLaunchHelper != null) {
                myLaunchHelper.themePackDownloadAsync = true;
                if (myLaunchHelper == null) {
                    Intrinsics.throwNpe();
                    throw null;
                }
                if (view == null) {
                    Intrinsics.throwNpe();
                    throw null;
                }
                View viewFindViewById = view.findViewById(R.id.icon);
                if (viewFindViewById == null) {
                    throw new TypeCastException("null cannot be cast to non-null type com.narvii.widget.NVImageView");
                }
                myLaunchHelper.launchRecent(community, (NVImageView) viewFindViewById);
            } else {
                Intrinsics.throwNpe();
                throw null;
            }
        }
        return super.onItemClick(nVRecyclerViewBaseAdapter, i, obj, view, view2);
    }

    @Override // com.narvii.community.RecentCommunityHelper.RecentCommunityChangeListener
    public void onRecentCommunityChanged() throws NumberFormatException {
        refreshList();
    }

    /* compiled from: RecentCommunityAdapter.kt */
    /* loaded from: classes3.dex */
    public final class ViewHolder extends RecyclerView.ViewHolder {
        private final NVImageView icon;
        final /* synthetic */ RecentCommunityAdapter this$0;
        private final TextView title;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(RecentCommunityAdapter recentCommunityAdapter, View itemView) {
            super(itemView);
            Intrinsics.checkParameterIsNotNull(itemView, "itemView");
            this.this$0 = recentCommunityAdapter;
            this.icon = (NVImageView) itemView.findViewById(R.id.icon);
            this.title = (TextView) itemView.findViewById(R.id.title);
        }

        public final NVImageView getIcon() {
            return this.icon;
        }

        public final TextView getTitle() {
            return this.title;
        }

        public final void updateData(Community c) {
            Intrinsics.checkParameterIsNotNull(c, "c");
            this.icon.setImageUrl(c.icon);
            TextView title = this.title;
            Intrinsics.checkExpressionValueIsNotNull(title, "title");
            title.setText(c.name);
        }
    }

    /* compiled from: RecentCommunityAdapter.kt */
    /* loaded from: classes3.dex */
    public final class MyLaunchHelper extends CommunityLaunchHelper {
        static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(MyLaunchHelper.class), "myCommunityListService", "getMyCommunityListService()Lcom/narvii/community/MyCommunityListService;"))};
        private Community community;
        private NVImageView imageView;
        private Activity launchActivity;
        private final Lazy myCommunityListService$delegate;
        private SmoothProgressBar progressBar;
        private boolean recent;
        final /* synthetic */ RecentCommunityAdapter this$0;

        public final MyCommunityListService getMyCommunityListService() {
            Lazy lazy = this.myCommunityListService$delegate;
            KProperty kProperty = $$delegatedProperties[0];
            return (MyCommunityListService) lazy.getValue();
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MyLaunchHelper(RecentCommunityAdapter recentCommunityAdapter, final NVContext ctx) {
            super(ctx, "Right Side Panel");
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            this.this$0 = recentCommunityAdapter;
            this.myCommunityListService$delegate = LazyKt__LazyJVMKt.lazy(new Function0<MyCommunityListService>() { // from class: com.narvii.topic.adapter.RecentCommunityAdapter$MyLaunchHelper$myCommunityListService$2
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                public final MyCommunityListService invoke() {
                    return (MyCommunityListService) ctx.getService("myCommunityList");
                }
            });
        }

        public final Community getCommunity() {
            return this.community;
        }

        public final void setCommunity(Community community) {
            this.community = community;
        }

        public final boolean getRecent() {
            return this.recent;
        }

        public final void setRecent(boolean z) {
            this.recent = z;
        }

        public final NVImageView getImageView() {
            return this.imageView;
        }

        public final void setImageView(NVImageView nVImageView) {
            this.imageView = nVImageView;
        }

        public final SmoothProgressBar getProgressBar() {
            return this.progressBar;
        }

        public final void setProgressBar(SmoothProgressBar smoothProgressBar) {
            this.progressBar = smoothProgressBar;
        }

        public final Activity getLaunchActivity() {
            return this.launchActivity;
        }

        public final void setLaunchActivity(Activity activity) {
            this.launchActivity = activity;
        }

        @Override // com.narvii.community.CommunityLaunchHelper
        protected void onProgress(int i, float f) {
            SmoothProgressBar smoothProgressBar = this.progressBar;
            if (smoothProgressBar != null) {
                if (smoothProgressBar != null) {
                    smoothProgressBar.setProgress((int) (100 * f));
                } else {
                    Intrinsics.throwNpe();
                    throw null;
                }
            }
        }

        public final void launchRecent(Community community, NVImageView imageView) {
            Intrinsics.checkParameterIsNotNull(community, "community");
            Intrinsics.checkParameterIsNotNull(imageView, "imageView");
            this.community = community;
            this.imageView = imageView;
            this.progressBar = null;
            this.recent = true;
            launchCid(community.id, null);
        }

        public final void launchCommunity(Community community, NVImageView imageView, SmoothProgressBar progressBar) {
            Intrinsics.checkParameterIsNotNull(community, "community");
            Intrinsics.checkParameterIsNotNull(imageView, "imageView");
            Intrinsics.checkParameterIsNotNull(progressBar, "progressBar");
            this.community = community;
            this.imageView = imageView;
            this.progressBar = progressBar;
            progressBar.setVisibility(0);
            progressBar.setMax(100);
            progressBar.setProgress(0);
            this.recent = false;
            launchCid(community.id, imageView.getDrawable());
        }

        private final void launchCid(int i, Drawable drawable) {
            User user;
            String str;
            List<Community> list = getMyCommunityListService().list();
            Community community = null;
            if (list != null) {
                for (Community community2 : list) {
                    if (community2.id == i) {
                        User userProfile = getMyCommunityListService().getUserProfile(i);
                        String userInfoTimestamp = getMyCommunityListService().getUserInfoTimestamp(i);
                        if (userInfoTimestamp == null || userProfile == null) {
                            userProfile = null;
                        } else {
                            community = community2;
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
            launch(i, community, str, user, str, getMyCommunityListService().getReminder(i), getMyCommunityListService().getReminderTimestamp(i), false, 2, drawable);
        }

        @Override // com.narvii.community.CommunityLaunchHelper
        public void cancel() {
            super.cancel();
            this.community = null;
            this.imageView = null;
            SmoothProgressBar smoothProgressBar = this.progressBar;
            if (smoothProgressBar != null) {
                if (smoothProgressBar != null) {
                    smoothProgressBar.setProgress(0);
                    SmoothProgressBar smoothProgressBar2 = this.progressBar;
                    if (smoothProgressBar2 == null) {
                        Intrinsics.throwNpe();
                        throw null;
                    }
                    smoothProgressBar2.setVisibility(4);
                } else {
                    Intrinsics.throwNpe();
                    throw null;
                }
            }
            this.progressBar = null;
            Activity activity = this.launchActivity;
            if (activity != null) {
                SplashUtils.cancelSplash(activity);
            }
            this.launchActivity = null;
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
            if (nVImageView != null && (drawable = this.launchImageDrawable) != null) {
                this.launchActivity = activity;
                SplashUtils.splash(this.launchActivity, nVImageView, drawable, new Callback<Boolean>() { // from class: com.narvii.topic.adapter.RecentCommunityAdapter$MyLaunchHelper$onFinish$1
                    @Override // com.narvii.util.Callback
                    public final void call(Boolean bool) {
                        if (Intrinsics.areEqual((Object) bool, (Object) true)) {
                            EnterCommunityHelper.SOURCE.set(this.this$0.source);
                            super/*com.narvii.community.CommunityLaunchHelper*/.onFinish();
                            this.this$0.this$0.removeLaunchSplash();
                        }
                    }
                });
            } else {
                super.onFinish();
                this.this$0.removeLaunchSplash();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Activity getActivity() {
        NVContext nVContext = this.context;
        if (nVContext instanceof NVActivity) {
            if (nVContext != null) {
                return (NVActivity) nVContext;
            }
            throw new TypeCastException("null cannot be cast to non-null type com.narvii.app.NVActivity");
        }
        if (!(nVContext instanceof NVFragment)) {
            return null;
        }
        if (nVContext != null) {
            return ((NVFragment) nVContext).getActivity();
        }
        throw new TypeCastException("null cannot be cast to non-null type com.narvii.app.NVFragment");
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
            this.removeLaunchSplash = new Runnable() { // from class: com.narvii.topic.adapter.RecentCommunityAdapter.removeLaunchSplash.1
                @Override // java.lang.Runnable
                public final void run() {
                    MyLaunchHelper myLaunchHelper2 = myLaunchHelper;
                    if (myLaunchHelper2 != null) {
                        myLaunchHelper2.cancel();
                    }
                }
            };
        }
    }
}
