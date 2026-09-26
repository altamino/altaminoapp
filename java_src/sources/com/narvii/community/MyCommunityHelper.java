package com.narvii.community;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ShortcutInfo;
import android.content.pm.ShortcutManager;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.os.SystemClock;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.TextView;
import androidx.annotation.StringRes;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import androidx.exifinterface.media.ExifInterface;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.OnLifecycleEvent;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.ImageLoader;
import com.narvii.amino.master.R;
import com.narvii.app.BaseNavigator;
import com.narvii.app.ForwardActivity;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.chat.core.ChatService;
import com.narvii.chat.global.chat.AggregationChatFragment;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.master.MasterLeaveCommunityHelper;
import com.narvii.master.SortCommunityFragment;
import com.narvii.master.search.SearchPrefsHelper;
import com.narvii.model.Community;
import com.narvii.model.User;
import com.narvii.services.EnterCommunityHelper;
import com.narvii.theme.ThemePackService;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.PackageUtils;
import com.narvii.util.SplashUtils;
import com.narvii.util.Utils;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.image.NVImageLoader;
import com.narvii.util.text.NVText;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.NVImageView;
import com.narvii.widget.SmoothProgressBar;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
public final class MyCommunityHelper implements LifecycleObserver {

    @Nullable
    private FragmentActivity activity;

    @NotNull
    private final w7.m chatService$delegate;

    @NotNull
    private final NVContext context;
    private boolean isMaster;

    @Nullable
    private Community launchCommunity;

    @NotNull
    private final w7.m launchHelper$delegate;

    @Nullable
    private NVImageView launchImageView;

    @Nullable
    private SmoothProgressBar launchProgress;

    @Nullable
    private MyCommunityListService.MyCommunityListObserver myCommunityListObserver;

    @NotNull
    private final MyCommunityListService myCommunityListService;

    @NotNull
    private final w7.m themePackService$delegate;

    public final class MyLaunchHelper extends CommunityLaunchHelper {
        private boolean launching;
        final /* synthetic */ MyCommunityHelper this$0;

        public final boolean getLaunching() {
            return this.launching;
        }

        @Override // com.narvii.community.CommunityLaunchHelper
        public void launch(int i10, @Nullable Community community, @Nullable String str, @Nullable User user, @Nullable String str2, @Nullable ReminderCheck reminderCheck, @Nullable String str3, boolean z6, int i11, @Nullable Drawable drawable) {
            this.launching = true;
            super.launch(i10, community, str, user, str2, reminderCheck, str3, z6, i11, drawable);
        }

        public final void setLaunching(boolean z6) {
            this.launching = z6;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MyLaunchHelper(@NotNull MyCommunityHelper myCommunityHelper, NVContext ctx) {
            super(ctx, "");
            kotlin.jvm.internal.t.j(ctx, "ctx");
            this.this$0 = myCommunityHelper;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onFinish$lambda$0(MyLaunchHelper this$0, MyCommunityHelper this$1, Boolean bool) {
            kotlin.jvm.internal.t.j(this$0, "this$0");
            kotlin.jvm.internal.t.j(this$1, "this$1");
            kotlin.jvm.internal.t.g(bool);
            if (!bool.booleanValue() || !this$0.launching) {
                this$1.cancelLaunch();
            } else {
                EnterCommunityHelper.SOURCE.set(this$0.source);
                super.onFinish();
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.community.CommunityLaunchHelper
        public void onFinish() {
            if (!this.launching || this.this$0.activity == null || this.this$0.getLaunchImageView() == null || this.this$0.getLaunchCommunity() == null) {
                return;
            }
            if (this.launchImageDrawable == null) {
                super.onFinish();
                return;
            }
            FragmentActivity fragmentActivity = this.this$0.activity;
            kotlin.jvm.internal.t.g(fragmentActivity);
            NVImageView launchImageView = this.this$0.getLaunchImageView();
            Drawable drawable = this.launchImageDrawable;
            final MyCommunityHelper myCommunityHelper = this.this$0;
            SplashUtils.splash(fragmentActivity, launchImageView, drawable, new Callback() { // from class: com.narvii.community.y
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    MyCommunityHelper.MyLaunchHelper.onFinish$lambda$0(this.f2239a, myCommunityHelper, (Boolean) obj);
                }
            });
        }

        @Override // com.narvii.community.CommunityLaunchHelper
        protected void onProgress(int i10, float f) {
            SmoothProgressBar launchProgress = this.this$0.getLaunchProgress();
            if (launchProgress == null) {
                return;
            }
            launchProgress.setProgress((int) (100 * f));
        }

        @Override // com.narvii.community.CommunityLaunchHelper
        public void cancel() {
            super.cancel();
            this.launching = false;
        }
    }

    private final void createShortcut(final Community community) {
        if ((community != null ? community.icon : null) == null) {
            return;
        }
        final ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.show();
        NVImageLoader nVImageLoader = (NVImageLoader) getService("imageLoader");
        kotlin.jvm.internal.t.g(nVImageLoader);
        nVImageLoader.get(community.icon, new ImageLoader.ImageListener() { // from class: com.narvii.community.MyCommunityHelper.createShortcut.1
            @Override // com.android.volley.Response.ErrorListener
            public void onErrorResponse(@NotNull VolleyError volleyError) {
                kotlin.jvm.internal.t.j(volleyError, "volleyError");
                progressDialog.dismiss();
                NVToast.makeText(this.getContext(), R.string.community_create_shortcut_fail, 0).show();
                this.createShortcut(community, null);
            }

            @Override // com.android.volley.toolbox.ImageLoader.ImageListener
            public void onResponse(@NotNull ImageLoader.ImageContainer imageContainer, boolean z6) {
                kotlin.jvm.internal.t.j(imageContainer, "imageContainer");
                Bitmap bitmap = imageContainer.getBitmap();
                if (bitmap != null) {
                    progressDialog.dismiss();
                    this.createShortcut(community, bitmap);
                }
            }
        });
    }

    public static void safedk_MyCommunityHelper_startActivity_87a9567c5d04510c71104cfeab7302be(MyCommunityHelper p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/community/MyCommunityHelper;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public static void safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(NVContext p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @NotNull
    /* JADX INFO: renamed from: getContext, reason: collision with other method in class */
    public final NVContext m1319getContext() {
        return this.context;
    }

    @Nullable
    public final Community getLaunchCommunity() {
        return this.launchCommunity;
    }

    @Nullable
    public final NVImageView getLaunchImageView() {
        return this.launchImageView;
    }

    @Nullable
    public final SmoothProgressBar getLaunchProgress() {
        return this.launchProgress;
    }

    @Nullable
    public final MyCommunityListService.MyCommunityListObserver getMyCommunityListObserver() {
        return this.myCommunityListObserver;
    }

    @NotNull
    public final MyCommunityListService getMyCommunityListService() {
        return this.myCommunityListService;
    }

    public final boolean isMaster() {
        return this.isMaster;
    }

    public final boolean launchCommunity(@NotNull final Community item, @NotNull View cell, @NotNull e8.l<Object, l0> aminoEnterCallback) {
        kotlin.jvm.internal.t.j(item, "item");
        kotlin.jvm.internal.t.j(cell, "cell");
        kotlin.jvm.internal.t.j(aminoEnterCallback, "aminoEnterCallback");
        if (this.isMaster) {
            Community community = this.launchCommunity;
            if (community != null) {
                kotlin.jvm.internal.t.g(community);
                if (community.id == item.id) {
                    return true;
                }
                cancelLaunch();
            }
            if (item.status == 9) {
                ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this.activity);
                aCMAlertDialog.setMessage(R.string.delete_disabled_community_hint);
                aCMAlertDialog.addButton(R.string.cancel, null);
                aCMAlertDialog.addButton(R.string.leave, new View.OnClickListener() { // from class: com.narvii.community.w
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        MyCommunityHelper.launchCommunity$lambda$1(this.f2235a, item, view);
                    }
                });
                aCMAlertDialog.show();
                return true;
            }
            View viewFindViewById = cell.findViewById(R.id.progress);
            kotlin.jvm.internal.t.h(viewFindViewById, "null cannot be cast to non-null type com.narvii.widget.SmoothProgressBar");
            SmoothProgressBar smoothProgressBar = (SmoothProgressBar) viewFindViewById;
            this.launchProgress = smoothProgressBar;
            if (smoothProgressBar != null) {
                smoothProgressBar.setVisibility(0);
            }
            SmoothProgressBar smoothProgressBar2 = this.launchProgress;
            if (smoothProgressBar2 != null) {
                smoothProgressBar2.setMax(100);
            }
            SmoothProgressBar smoothProgressBar3 = this.launchProgress;
            if (smoothProgressBar3 != null) {
                smoothProgressBar3.setProgress(0);
            }
            aminoEnterCallback.invoke(item);
            View viewFindViewById2 = cell.findViewById(R.id.image);
            kotlin.jvm.internal.t.h(viewFindViewById2, "null cannot be cast to non-null type com.narvii.widget.NVImageView");
            this.launchImageView = (NVImageView) viewFindViewById2;
            this.launchCommunity = item;
            String communityTimestamp = this.myCommunityListService.getCommunityTimestamp(item.id);
            User userProfile = this.myCommunityListService.getUserProfile(item.id);
            String userInfoTimestamp = this.myCommunityListService.getUserInfoTimestamp(item.id);
            ReminderCheck reminder = this.myCommunityListService.getReminder(item.id);
            String reminderTimestamp = this.myCommunityListService.getReminderTimestamp(item.id);
            Community community2 = ((CommunityService) getService(SearchPrefsHelper.PREFS_KEY_COMMUNITY)).getCommunity(item.id);
            boolean z6 = (community2 != null ? community2.configuration : null) == null || community2.configuration.size() == 0;
            MyLaunchHelper launchHelper = getLaunchHelper();
            int i10 = item.id;
            NVImageView nVImageView = this.launchImageView;
            kotlin.jvm.internal.t.g(nVImageView);
            launchHelper.launch(i10, item, communityTimestamp, userProfile, userInfoTimestamp, reminder, reminderTimestamp, z6, 1, nVImageView.getDrawable());
        } else {
            final PackageUtils packageUtils = new PackageUtils(getContext());
            if (packageUtils.isPackageInstalled(packageUtils.getMasterPackageName())) {
                try {
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(packageUtils.getMasterScheme() + "://x" + item.id + "/description"));
                    intent.putExtra(ForwardActivity.CLEAR_TASK, true);
                    safedk_MyCommunityHelper_startActivity_87a9567c5d04510c71104cfeab7302be(this, intent);
                } catch (Exception unused) {
                }
            } else {
                AlertDialog alertDialog = new AlertDialog(this.activity);
                alertDialog.setTitle(getContext().getString(R.string.download_master_info_title));
                alertDialog.setContentView(R.layout.dialog_download_master);
                View viewAddButton = alertDialog.addButton(R.string.cancel, 64, (View.OnClickListener) null);
                kotlin.jvm.internal.t.h(viewAddButton, "null cannot be cast to non-null type android.widget.Button");
                ((Button) viewAddButton).setTextColor(ContextCompat.getColor(getContext(), R.color.color_default));
                View viewAddButton2 = alertDialog.addButton(R.string.get_it, 64, new View.OnClickListener() { // from class: com.narvii.community.x
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        MyCommunityHelper.launchCommunity$lambda$2(item, packageUtils, view);
                    }
                });
                kotlin.jvm.internal.t.h(viewAddButton2, "null cannot be cast to non-null type android.widget.Button");
                ((Button) viewAddButton2).setTextColor(ContextCompat.getColor(getContext(), R.color.color_default));
                alertDialog.show();
            }
        }
        return true;
    }

    public final void setLaunchCommunity(@Nullable Community community) {
        this.launchCommunity = community;
    }

    public final void setLaunchImageView(@Nullable NVImageView nVImageView) {
        this.launchImageView = nVImageView;
    }

    public final void setLaunchProgress(@Nullable SmoothProgressBar smoothProgressBar) {
        this.launchProgress = smoothProgressBar;
    }

    public final void setMaster(boolean z6) {
        this.isMaster = z6;
    }

    public final void setMyCommunityListObserver(@Nullable MyCommunityListService.MyCommunityListObserver myCommunityListObserver) {
        this.myCommunityListObserver = myCommunityListObserver;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public MyCommunityHelper(@NotNull NVContext context) {
        Lifecycle lifecycle;
        kotlin.jvm.internal.t.j(context, "context");
        this.context = context;
        this.launchHelper$delegate = w7.o.a(new MyCommunityHelper$launchHelper$2(this));
        this.myCommunityListService = (MyCommunityListService) getService("myCommunityList");
        this.chatService$delegate = w7.o.a(new MyCommunityHelper$chatService$2(this));
        this.themePackService$delegate = w7.o.a(new MyCommunityHelper$themePackService$2(this));
        this.isMaster = NVApplication.CLIENT_TYPE == 100;
        FragmentActivity activity = context instanceof NVActivity ? (FragmentActivity) context : context instanceof NVFragment ? ((NVFragment) context).getActivity() : null;
        this.activity = activity;
        if (activity == null || (lifecycle = activity.getLifecycle()) == null) {
            return;
        }
        lifecycle.a(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Context getContext() {
        Context context = this.context.getContext();
        kotlin.jvm.internal.t.i(context, "getContext(...)");
        return context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final <T> T getService(String str) {
        return (T) this.context.getService(str);
    }

    private final CharSequence getText(@StringRes int i10) {
        CharSequence text = this.context.getContext().getText(i10);
        kotlin.jvm.internal.t.i(text, "getText(...)");
        return text;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void launchCommunity$lambda$1(MyCommunityHelper this$0, Community item, View view) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        kotlin.jvm.internal.t.j(item, "$item");
        this$0.leaveCommunity(item);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void launchCommunity$lambda$2(Community item, PackageUtils packageUtils, View view) {
        kotlin.jvm.internal.t.j(item, "$item");
        kotlin.jvm.internal.t.j(packageUtils, "$packageUtils");
        packageUtils.openGooglePlayWithNativeLink(packageUtils.getMasterPackageName(), "ndc://x" + item.id + "/description", "Standalone App");
    }

    private final void leaveCommunity(Community community) {
        new MasterLeaveCommunityHelper(this.context).leaveCommunity(community, null);
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
    private final void onDestroy() {
        MyCommunityListService.MyCommunityListObserver myCommunityListObserver = this.myCommunityListObserver;
        if (myCommunityListObserver != null) {
            this.myCommunityListService.removeObserver(myCommunityListObserver);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void refresh$lambda$0(e8.l callback, Integer num) {
        kotlin.jvm.internal.t.j(callback, "$callback");
        kotlin.jvm.internal.t.g(num);
        callback.invoke(num);
    }

    private final void reorder() {
        Intent intent = FragmentWrapperActivity.intent(SortCommunityFragment.class);
        kotlin.jvm.internal.t.g(intent);
        safedk_MyCommunityHelper_startActivity_87a9567c5d04510c71104cfeab7302be(this, intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showMenuDialog$lambda$3(int[] ops, Community item, MyCommunityHelper this$0, DialogInterface dialogInterface, int i10) {
        kotlin.jvm.internal.t.j(ops, "$ops");
        kotlin.jvm.internal.t.j(item, "$item");
        kotlin.jvm.internal.t.j(this$0, "this$0");
        switch (ops[i10]) {
            case R.string.community_create_shortcut /* 2131886863 */:
                this$0.createShortcut(item);
                break;
            case R.string.community_detail /* 2131886865 */:
                Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
                intent.putExtra("id", item.id);
                intent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(item));
                intent.putExtra(CommunityDetailFragment.KEY_CURRENT_USER_JOINED, true);
                kotlin.jvm.internal.t.g(intent);
                safedk_MyCommunityHelper_startActivity_87a9567c5d04510c71104cfeab7302be(this$0, intent);
                break;
            case R.string.prefs_leave /* 2131889987 */:
                this$0.leaveCommunity(item);
                break;
            case R.string.reorder /* 2131890158 */:
                this$0.reorder();
                break;
        }
    }

    public final void addGlobalChatMessageReceptor(@NotNull ChatService.ChatMessageReceptor listener) {
        kotlin.jvm.internal.t.j(listener, "listener");
        getChatService().addGlobalChatMessageReceptor(listener);
    }

    public final void addObserver(@NotNull MyCommunityListService.MyCommunityListObserver observer) {
        kotlin.jvm.internal.t.j(observer, "observer");
        this.myCommunityListObserver = observer;
        this.myCommunityListService.addObserver(observer);
    }

    public final String errorMessage() {
        return this.myCommunityListService.errorMessage();
    }

    @NotNull
    public final ChatService getChatService() {
        return (ChatService) this.chatService$delegate.getValue();
    }

    @NotNull
    public final MyLaunchHelper getLaunchHelper() {
        return (MyLaunchHelper) this.launchHelper$delegate.getValue();
    }

    @NotNull
    public final ThemePackService getThemePackService() {
        return (ThemePackService) this.themePackService$delegate.getValue();
    }

    @Nullable
    public final User getUserProfile(int i10) {
        return this.myCommunityListService.getUserProfile(i10);
    }

    @NotNull
    public final List<Community> rawList() {
        List<Community> listRawList = this.myCommunityListService.rawList();
        return listRawList == null ? kotlin.collections.v.m() : listRawList;
    }

    public final void refresh(int i10, @NotNull final e8.l<? super Integer, l0> callback) {
        kotlin.jvm.internal.t.j(callback, "callback");
        this.myCommunityListService.refresh(i10, new Callback() { // from class: com.narvii.community.v
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                MyCommunityHelper.refresh$lambda$0(callback, (Integer) obj);
            }
        });
    }

    public final void showMenuDialog(@NotNull final Community item) {
        kotlin.jvm.internal.t.j(item, "item");
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(getContext());
        final int[] iArr = new int[5];
        ArrayList arrayList = new ArrayList();
        arrayList.add(getText(R.string.community_detail));
        iArr[0] = R.string.community_detail;
        int i10 = 1;
        if (this.myCommunityListService.rawList().size() > 1) {
            arrayList.add(getText(R.string.reorder));
            iArr[1] = R.string.reorder;
            i10 = 2;
        }
        if (NVApplication.CLIENT_TYPE == 100 && item.icon != null) {
            arrayList.add(getText(R.string.community_create_shortcut));
            iArr[i10] = R.string.community_create_shortcut;
            i10++;
        }
        NVText nVText = new NVText(getText(R.string.prefs_leave));
        nVText.setSpan(new ForegroundColorSpan(-4259826), 0, nVText.length(), 34);
        arrayList.add(nVText);
        iArr[i10] = R.string.prefs_leave;
        builder.setItems((CharSequence[]) arrayList.toArray(new CharSequence[0]), new DialogInterface.OnClickListener() { // from class: com.narvii.community.u
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i11) {
                MyCommunityHelper.showMenuDialog$lambda$3(iArr, item, this, dialogInterface, i11);
            }
        });
        builder.show();
    }

    public final void startActivity(@NotNull Intent intent) {
        kotlin.jvm.internal.t.j(intent, "intent");
        safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(this.context, intent);
    }

    public final void updateRemindersInCell(@NotNull View cell, @Nullable Community community, boolean z6) {
        kotlin.jvm.internal.t.j(cell, "cell");
        ReminderCheck reminder = community == null ? null : this.myCommunityListService.getReminder(community.id);
        int unreadChatCountInCurCommunity = community == null ? 0 : getChatService().getUnreadChatCountInCurCommunity(community.id);
        boolean z10 = reminder != null && reminder.hasCheckInToday == Boolean.FALSE;
        int i10 = reminder == null ? 0 : reminder.notificationsCount + reminder.noticesCount + unreadChatCountInCurCommunity;
        boolean zIsEquals = Utils.isEquals(cell.getTag(), community);
        View viewFindViewById = cell.findViewById(R.id.checkin);
        if (!zIsEquals) {
            viewFindViewById.clearAnimation();
        }
        if (z10) {
            if (zIsEquals && viewFindViewById.getVisibility() != 0) {
                viewFindViewById.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.fade_in));
            }
            viewFindViewById.setVisibility(0);
        } else {
            if (zIsEquals && viewFindViewById.getVisibility() == 0) {
                viewFindViewById.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.fade_out_fast));
            }
            viewFindViewById.setVisibility(8);
        }
        View viewFindViewById2 = cell.findViewById(R.id.notification_count);
        kotlin.jvm.internal.t.h(viewFindViewById2, "null cannot be cast to non-null type android.widget.TextView");
        ((TextView) viewFindViewById2).setText(i10 > 9 ? "9+" : String.valueOf(i10));
        if (!zIsEquals) {
            viewFindViewById2.clearAnimation();
        }
        if (i10 > 0) {
            if (zIsEquals && viewFindViewById2.getVisibility() != 0) {
                viewFindViewById2.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.fade_in));
            }
            viewFindViewById2.setVisibility(0);
        } else {
            if (zIsEquals && viewFindViewById2.getVisibility() == 0) {
                viewFindViewById2.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.fade_out_fast));
            }
            viewFindViewById2.setVisibility(8);
        }
        if (z6 && community != null && (reminder == null || this.myCommunityListService.getReminderRequestTime(community.id) < SystemClock.elapsedRealtime() - AggregationChatFragment.Companion.getREMINDER_CHECK_DURATION())) {
            this.myCommunityListService.addReminderRequestQueue(community.id);
        }
        if (community != null) {
            getChatService().addThreadCheckQueue(community.id);
        }
    }

    public final void updateThemeProgressInCell(@NotNull View cell, @NotNull Community c7) {
        String str;
        kotlin.jvm.internal.t.j(cell, "cell");
        kotlin.jvm.internal.t.j(c7, "c");
        if (NVApplication.DEBUG) {
            View viewFindViewById = cell.findViewById(R.id.debuginfo);
            kotlin.jvm.internal.t.h(viewFindViewById, "null cannot be cast to non-null type android.widget.TextView");
            TextView textView = (TextView) viewFindViewById;
            textView.setVisibility(0);
            int status = getThemePackService().getStatus(c7.id);
            if (status == -1) {
                str = ExifInterface.LONGITUDE_EAST;
            } else if (status == 0) {
                str = "?";
            } else if (status != 1) {
                str = status != 5 ? "!" : "R";
            } else {
                str = ((int) (getThemePackService().getProgress(c7.id) * 100)) + "%";
            }
            textView.setText(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int createShortcut$lambda$4(ShortcutInfo shortcutInfo, ShortcutInfo shortcutInfo2) {
        return shortcutInfo.getRank() - shortcutInfo2.getRank();
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_PAUSE)
    private final void onPause() {
        cancelLaunch();
    }

    public final void cancelLaunch() {
        getLaunchHelper().cancel();
        SmoothProgressBar smoothProgressBar = this.launchProgress;
        if (smoothProgressBar != null) {
            smoothProgressBar.setProgress(0);
            smoothProgressBar.setVisibility(4);
        }
        this.launchProgress = null;
        this.launchCommunity = null;
        this.launchImageView = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void createShortcut(Community community, Bitmap bitmap) {
        BaseNavigator baseNavigator = (BaseNavigator) getService("navigator");
        kotlin.jvm.internal.t.g(baseNavigator);
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(baseNavigator.getMyScheme() + "://x" + community.id + "/default?source=Shortcut"));
        intent.addFlags(268435456);
        intent.addFlags(67108864);
        if (bitmap != null) {
            try {
                int iMin = Math.min(144, Math.min(bitmap.getWidth(), bitmap.getHeight()));
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iMin, iMin, Bitmap.Config.ARGB_8888);
                kotlin.jvm.internal.t.i(bitmapCreateBitmap, "createBitmap(...)");
                Canvas canvas = new Canvas(bitmapCreateBitmap);
                Path path = new Path();
                float f = iMin;
                RectF rectF = new RectF(0.0f, 0.0f, f, f);
                float f6 = f * 0.2f;
                path.addRoundRect(rectF, f6, f6, Path.Direction.CCW);
                canvas.clipPath(path);
                Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
                Paint paint = new Paint();
                paint.setAntiAlias(true);
                paint.setColor(ViewCompat.MEASURED_STATE_MASK);
                canvas.drawBitmap(bitmap, rect, rectF, paint);
                bitmap = bitmapCreateBitmap;
            } catch (Exception unused) {
                bitmap = null;
            }
        }
        if (Build.VERSION.SDK_INT >= 25) {
            String str = "x" + community.id;
            ShortcutManager shortcutManagerA = s.a(getContext().getSystemService(e.a()));
            kotlin.jvm.internal.t.g(shortcutManagerA);
            LinkedList linkedList = new LinkedList(shortcutManagerA.getDynamicShortcuts());
            kotlin.collections.z.C(linkedList, new Comparator() { // from class: com.narvii.community.t
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return MyCommunityHelper.createShortcut$lambda$4((ShortcutInfo) obj, (ShortcutInfo) obj2);
                }
            });
            Iterator it = linkedList.iterator();
            kotlin.jvm.internal.t.i(it, "iterator(...)");
            while (it.hasNext()) {
                if (kotlin.jvm.internal.t.e(str, k.a(it.next()).getId())) {
                    shortcutManagerA.removeDynamicShortcuts(Arrays.asList(str));
                    it.remove();
                    break;
                }
            }
            while (linkedList.size() >= 4) {
                shortcutManagerA.removeDynamicShortcuts(Arrays.asList(k.a(linkedList.removeFirst()).getId()));
            }
            Iterator it2 = linkedList.iterator();
            int iMax = 0;
            while (it2.hasNext()) {
                iMax = Math.max(iMax, k.a(it2.next()).getRank());
            }
            j.a();
            ShortcutInfo.Builder longLabel = i.a(getContext(), str).setShortLabel(community.name).setRank(iMax + 1).setLongLabel(community.name);
            kotlin.jvm.internal.t.i(longLabel, "setLongLabel(...)");
            if (bitmap != null) {
                longLabel.setIcon(Icon.createWithBitmap(bitmap));
            }
            longLabel.setIntent(intent);
            ShortcutInfo shortcutInfoBuild = longLabel.build();
            kotlin.jvm.internal.t.i(shortcutInfoBuild, "build(...)");
            shortcutManagerA.addDynamicShortcuts(kotlin.collections.u.e(shortcutInfoBuild));
        }
        if (Build.VERSION.SDK_INT < 26) {
            Intent intent2 = new Intent();
            intent2.putExtra("android.intent.extra.shortcut.INTENT", intent);
            intent2.putExtra("android.intent.extra.shortcut.NAME", community.name);
            if (bitmap == null) {
                intent2.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", Intent.ShortcutIconResource.fromContext(getContext(), getContext().getApplicationInfo().icon));
            } else {
                intent2.putExtra("android.intent.extra.shortcut.ICON", bitmap);
            }
            intent2.putExtra("duplicate", false);
            intent2.setAction("com.android.launcher.action.INSTALL_SHORTCUT");
            getContext().sendBroadcast(intent2);
            return;
        }
        String str2 = "c" + community.id;
        ShortcutManager shortcutManagerA2 = s.a(getContext().getSystemService(e.a()));
        j.a();
        ShortcutInfo.Builder longLabel2 = i.a(getContext(), str2).setShortLabel(community.name).setLongLabel(community.name);
        kotlin.jvm.internal.t.i(longLabel2, "setLongLabel(...)");
        if (bitmap != null) {
            longLabel2.setIcon(Icon.createWithBitmap(bitmap));
        }
        longLabel2.setIntent(intent);
        ShortcutInfo shortcutInfoBuild2 = longLabel2.build();
        kotlin.jvm.internal.t.i(shortcutInfoBuild2, "build(...)");
        kotlin.jvm.internal.t.g(shortcutManagerA2);
        shortcutManagerA2.requestPinShortcut(shortcutInfoBuild2, null);
    }
}
