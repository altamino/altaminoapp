package com.narvii.community;

import android.app.AlertDialog;
import android.arch.lifecycle.Lifecycle;
import android.arch.lifecycle.LifecycleObserver;
import android.arch.lifecycle.OnLifecycleEvent;
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
import android.support.v4.app.FragmentActivity;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.ViewCompat;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.TextView;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.ImageLoader;
import com.google.android.exoplayer2.C;
import com.narvii.amino.mastes.R;
import com.narvii.app.BaseNavigator;
import com.narvii.app.ForwardActivity;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.chat.core.ChatService;
import com.narvii.chat.global.chat.AggregationChatFragment;
import com.narvii.community.MyCommunityHelper;
import com.narvii.community.MyCommunityListService;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.master.MasterLeaveCommunityHelper;
import com.narvii.master.SortCommunityFragment;
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
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* compiled from: MyCommunityHelper.kt */
/* loaded from: classes.dex */
public final class MyCommunityHelper implements LifecycleObserver {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(MyCommunityHelper.class), "launchHelper", "getLaunchHelper()Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(MyCommunityHelper.class), "chatService", "getChatService()Lcom/narvii/chat/core/ChatService;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(MyCommunityHelper.class), "themePackService", "getThemePackService()Lcom/narvii/theme/ThemePackService;"))};
    private FragmentActivity activity;
    private final Lazy chatService$delegate;
    private final NVContext context;
    private boolean isMaster;
    private Community launchCommunity;
    private final Lazy launchHelper$delegate;
    private NVImageView launchImageView;
    private SmoothProgressBar launchProgress;
    private MyCommunityListService.MyCommunityListObserver myCommunityListObserver;
    private final MyCommunityListService myCommunityListService;
    private final Lazy themePackService$delegate;

    public final ChatService getChatService() {
        Lazy lazy = this.chatService$delegate;
        KProperty kProperty = $$delegatedProperties[1];
        return (ChatService) lazy.getValue();
    }

    public final MyLaunchHelper getLaunchHelper() {
        Lazy lazy = this.launchHelper$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (MyLaunchHelper) lazy.getValue();
    }

    public final ThemePackService getThemePackService() {
        Lazy lazy = this.themePackService$delegate;
        KProperty kProperty = $$delegatedProperties[2];
        return (ThemePackService) lazy.getValue();
    }

    public MyCommunityHelper(NVContext context) {
        FragmentActivity activity;
        Lifecycle lifecycle;
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.context = context;
        this.launchHelper$delegate = LazyKt__LazyJVMKt.lazy(new Function0<MyLaunchHelper>() { // from class: com.narvii.community.MyCommunityHelper$launchHelper$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final MyCommunityHelper.MyLaunchHelper invoke() {
                MyCommunityHelper myCommunityHelper = this.this$0;
                return new MyCommunityHelper.MyLaunchHelper(myCommunityHelper, myCommunityHelper.m41getContext());
            }
        });
        this.myCommunityListService = (MyCommunityListService) getService("myCommunityList");
        this.chatService$delegate = LazyKt__LazyJVMKt.lazy(new Function0<ChatService>() { // from class: com.narvii.community.MyCommunityHelper$chatService$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ChatService invoke() {
                return (ChatService) this.this$0.getService("chat");
            }
        });
        this.themePackService$delegate = LazyKt__LazyJVMKt.lazy(new Function0<ThemePackService>() { // from class: com.narvii.community.MyCommunityHelper$themePackService$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ThemePackService invoke() {
                return (ThemePackService) this.this$0.getService("themePack");
            }
        });
        this.isMaster = NVApplication.CLIENT_TYPE == 100;
        Object obj = this.context;
        if (obj instanceof NVActivity) {
            activity = (FragmentActivity) obj;
        } else {
            activity = obj instanceof NVFragment ? ((NVFragment) obj).getActivity() : null;
        }
        this.activity = activity;
        FragmentActivity fragmentActivity = this.activity;
        if (fragmentActivity == null || (lifecycle = fragmentActivity.getLifecycle()) == null) {
            return;
        }
        lifecycle.addObserver(this);
    }

    /* renamed from: getContext, reason: collision with other method in class */
    public final NVContext m41getContext() {
        return this.context;
    }

    public final SmoothProgressBar getLaunchProgress() {
        return this.launchProgress;
    }

    public final void setLaunchProgress(SmoothProgressBar smoothProgressBar) {
        this.launchProgress = smoothProgressBar;
    }

    public final Community getLaunchCommunity() {
        return this.launchCommunity;
    }

    public final void setLaunchCommunity(Community community) {
        this.launchCommunity = community;
    }

    public final NVImageView getLaunchImageView() {
        return this.launchImageView;
    }

    public final void setLaunchImageView(NVImageView nVImageView) {
        this.launchImageView = nVImageView;
    }

    public final MyCommunityListService getMyCommunityListService() {
        return this.myCommunityListService;
    }

    public final MyCommunityListService.MyCommunityListObserver getMyCommunityListObserver() {
        return this.myCommunityListObserver;
    }

    public final void setMyCommunityListObserver(MyCommunityListService.MyCommunityListObserver myCommunityListObserver) {
        this.myCommunityListObserver = myCommunityListObserver;
    }

    public final boolean isMaster() {
        return this.isMaster;
    }

    public final void setMaster(boolean z) {
        this.isMaster = z;
    }

    public final void addGlobalChatMessageReceptor(ChatService.ChatMessageReceptor listener) {
        Intrinsics.checkParameterIsNotNull(listener, "listener");
        getChatService().addGlobalChatMessageReceptor(listener);
    }

    public final void addObserver(MyCommunityListService.MyCommunityListObserver observer) {
        Intrinsics.checkParameterIsNotNull(observer, "observer");
        this.myCommunityListObserver = observer;
        this.myCommunityListService.addObserver(this.myCommunityListObserver);
    }

    public final void refresh(int i, final Function1<? super Integer, Unit> callback) {
        Intrinsics.checkParameterIsNotNull(callback, "callback");
        this.myCommunityListService.refresh(i, new Callback<Integer>() { // from class: com.narvii.community.MyCommunityHelper.refresh.1
            @Override // com.narvii.util.Callback
            public final void call(Integer it) {
                Function1 function1 = callback;
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                function1.invoke(it);
            }
        });
    }

    public final String errorMessage() {
        return this.myCommunityListService.errorMessage();
    }

    public final List<Community> rawList() {
        List<Community> listRawList = this.myCommunityListService.rawList();
        return listRawList != null ? listRawList : CollectionsKt__CollectionsKt.emptyList();
    }

    public final User getUserProfile(int i) {
        return this.myCommunityListService.getUserProfile(i);
    }

    public final boolean launchCommunity(final Community item, View cell, Function1<Object, Unit> aminoEnterCallback) {
        Intrinsics.checkParameterIsNotNull(item, "item");
        Intrinsics.checkParameterIsNotNull(cell, "cell");
        Intrinsics.checkParameterIsNotNull(aminoEnterCallback, "aminoEnterCallback");
        if (this.isMaster) {
            Community community = this.launchCommunity;
            if (community != null) {
                if (community != null) {
                    if (community.id == item.id) {
                        return true;
                    }
                    cancelLaunch();
                } else {
                    Intrinsics.throwNpe();
                    throw null;
                }
            }
            if (item.status == 9) {
                ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this.activity);
                aCMAlertDialog.setMessage(R.string.delete_disabled_community_hint);
                aCMAlertDialog.addButton(R.string.cancel, null);
                aCMAlertDialog.addButton(R.string.leave, new View.OnClickListener() { // from class: com.narvii.community.MyCommunityHelper.launchCommunity.1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        MyCommunityHelper.this.leaveCommunity(item);
                    }
                });
                aCMAlertDialog.show();
                return true;
            }
            View viewFindViewById = cell.findViewById(R.id.progress);
            if (viewFindViewById == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.widget.SmoothProgressBar");
            }
            this.launchProgress = (SmoothProgressBar) viewFindViewById;
            SmoothProgressBar smoothProgressBar = this.launchProgress;
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
            if (viewFindViewById2 == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.widget.NVImageView");
            }
            this.launchImageView = (NVImageView) viewFindViewById2;
            this.launchCommunity = item;
            String communityTimestamp = this.myCommunityListService.getCommunityTimestamp(item.id);
            User userProfile = this.myCommunityListService.getUserProfile(item.id);
            String userInfoTimestamp = this.myCommunityListService.getUserInfoTimestamp(item.id);
            ReminderCheck reminder = this.myCommunityListService.getReminder(item.id);
            String reminderTimestamp = this.myCommunityListService.getReminderTimestamp(item.id);
            Community community2 = ((CommunityService) getService("community")).getCommunity(item.id);
            boolean z = (community2 != null ? community2.configuration : null) == null || community2.configuration.size() == 0;
            MyLaunchHelper launchHelper = getLaunchHelper();
            int i = item.id;
            NVImageView nVImageView = this.launchImageView;
            if (nVImageView == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            launchHelper.launch(i, item, communityTimestamp, userProfile, userInfoTimestamp, reminder, reminderTimestamp, z, 1, nVImageView.getDrawable());
        } else {
            final PackageUtils packageUtils = new PackageUtils(getContext());
            if (packageUtils.isPackageInstalled(packageUtils.getMasterPackageName())) {
                try {
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(packageUtils.getMasterScheme() + "://x" + item.id + "/description"));
                    intent.putExtra(ForwardActivity.CLEAR_TASK, true);
                    startActivity(intent);
                } catch (Exception unused) {
                }
            } else {
                AlertDialog alertDialog = new AlertDialog(this.activity);
                alertDialog.setTitle(getContext().getString(R.string.download_master_info_title));
                alertDialog.setContentView(R.layout.dialog_download_master);
                View viewAddButton = alertDialog.addButton(R.string.cancel, 64, (View.OnClickListener) null);
                if (viewAddButton == null) {
                    throw new TypeCastException("null cannot be cast to non-null type android.widget.Button");
                }
                ((Button) viewAddButton).setTextColor(ContextCompat.getColor(getContext(), R.color.color_default));
                View viewAddButton2 = alertDialog.addButton(R.string.get_it, 64, new View.OnClickListener() { // from class: com.narvii.community.MyCommunityHelper$launchCommunity$btnYes$1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        String str = "ndc://x" + item.id + "/description";
                        PackageUtils packageUtils2 = packageUtils;
                        packageUtils2.openGooglePlayWithNativeLink(packageUtils2.getMasterPackageName(), str, "Standalone App");
                    }
                });
                if (viewAddButton2 == null) {
                    throw new TypeCastException("null cannot be cast to non-null type android.widget.Button");
                }
                ((Button) viewAddButton2).setTextColor(ContextCompat.getColor(getContext(), R.color.color_default));
                alertDialog.show();
            }
        }
        return true;
    }

    public final void showMenuDialog(final Community item) {
        Intrinsics.checkParameterIsNotNull(item, "item");
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
        final int[] iArr = new int[5];
        ArrayList arrayList = new ArrayList();
        arrayList.add(getText(R.string.community_detail));
        iArr[0] = R.string.community_detail;
        int i = 1;
        if (this.myCommunityListService.rawList().size() > 1) {
            arrayList.add(getText(R.string.reorder));
            iArr[1] = R.string.reorder;
            i = 2;
        }
        if (NVApplication.CLIENT_TYPE == 100 && item.icon != null) {
            arrayList.add(getText(R.string.community_create_shortcut));
            iArr[i] = R.string.community_create_shortcut;
            i++;
        }
        NVText nVText = new NVText(getText(R.string.prefs_leave));
        nVText.setSpan(new ForegroundColorSpan(-4259826), 0, nVText.length(), 34);
        arrayList.add(nVText);
        iArr[i] = R.string.prefs_leave;
        Object[] array = arrayList.toArray(new CharSequence[0]);
        if (array != null) {
            builder.setItems((CharSequence[]) array, new DialogInterface.OnClickListener() { // from class: com.narvii.community.MyCommunityHelper.showMenuDialog.1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    int i3 = iArr[i2];
                    if (i3 == R.string.community_detail) {
                        Intent i4 = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
                        i4.putExtra("id", item.id);
                        i4.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(item));
                        i4.putExtra(CommunityDetailFragment.KEY_CURRENT_USER_JOINED, true);
                        MyCommunityHelper myCommunityHelper = MyCommunityHelper.this;
                        Intrinsics.checkExpressionValueIsNotNull(i4, "i");
                        myCommunityHelper.startActivity(i4);
                        return;
                    }
                    if (i3 == R.string.reorder) {
                        MyCommunityHelper.this.reorder();
                    } else if (i3 == R.string.community_create_shortcut) {
                        MyCommunityHelper.this.createShortcut(item);
                    } else if (i3 == R.string.prefs_leave) {
                        MyCommunityHelper.this.leaveCommunity(item);
                    }
                }
            });
            builder.show();
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
    }

    public final void updateRemindersInCell(View cell, Community community, boolean z) {
        Intrinsics.checkParameterIsNotNull(cell, "cell");
        ReminderCheck reminder = community == null ? null : this.myCommunityListService.getReminder(community.id);
        int unreadChatCountInCurCommunity = community == null ? 0 : getChatService().getUnreadChatCountInCurCommunity(community.id);
        boolean z2 = reminder != null && reminder.hasCheckInToday == Boolean.FALSE;
        int i = reminder == null ? 0 : unreadChatCountInCurCommunity + reminder.notificationsCount + reminder.noticesCount;
        boolean zIsEquals = Utils.isEquals(cell.getTag(), community);
        View v = cell.findViewById(R.id.checkin);
        if (!zIsEquals) {
            v.clearAnimation();
        }
        if (z2) {
            if (zIsEquals) {
                Intrinsics.checkExpressionValueIsNotNull(v, "v");
                if (v.getVisibility() != 0) {
                    v.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.fade_in));
                }
            }
            Intrinsics.checkExpressionValueIsNotNull(v, "v");
            v.setVisibility(0);
        } else {
            if (zIsEquals) {
                Intrinsics.checkExpressionValueIsNotNull(v, "v");
                if (v.getVisibility() == 0) {
                    v.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.fade_out_fast));
                }
            }
            Intrinsics.checkExpressionValueIsNotNull(v, "v");
            v.setVisibility(8);
        }
        View viewFindViewById = cell.findViewById(R.id.notification_count);
        if (viewFindViewById != null) {
            ((TextView) viewFindViewById).setText(i > 9 ? "9+" : String.valueOf(i));
            if (!zIsEquals) {
                viewFindViewById.clearAnimation();
            }
            if (i > 0) {
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
            if (z && community != null && (reminder == null || this.myCommunityListService.getReminderRequestTime(community.id) < SystemClock.elapsedRealtime() - AggregationChatFragment.Companion.getREMINDER_CHECK_DURATION())) {
                this.myCommunityListService.addReminderRequestQueue(community.id);
            }
            if (community != null) {
                getChatService().addThreadCheckQueue(community.id);
                return;
            }
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.widget.TextView");
    }

    public final void updateThemeProgressInCell(View cell, Community c) {
        String string;
        Intrinsics.checkParameterIsNotNull(cell, "cell");
        Intrinsics.checkParameterIsNotNull(c, "c");
        if (NVApplication.DEBUG) {
            View viewFindViewById = cell.findViewById(R.id.debuginfo);
            if (viewFindViewById == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.widget.TextView");
            }
            TextView textView = (TextView) viewFindViewById;
            textView.setVisibility(0);
            int status = getThemePackService().getStatus(c.id);
            if (status == -1) {
                string = "E";
            } else if (status == 0) {
                string = "?";
            } else if (status != 1) {
                string = status != 5 ? "!" : "R";
            } else {
                StringBuilder sb = new StringBuilder();
                sb.append((int) (getThemePackService().getProgress(c.id) * 100));
                sb.append('%');
                string = sb.toString();
            }
            textView.setText(string);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Context getContext() {
        Context context = this.context.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "context.context");
        return context;
    }

    private final CharSequence getText(int i) {
        CharSequence text = this.context.getContext().getText(i);
        Intrinsics.checkExpressionValueIsNotNull(text, "context.context.getText(resId)");
        return text;
    }

    public final void startActivity(Intent intent) {
        Intrinsics.checkParameterIsNotNull(intent, "intent");
        this.context.startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void reorder() {
        Intent i = FragmentWrapperActivity.intent(SortCommunityFragment.class);
        Intrinsics.checkExpressionValueIsNotNull(i, "i");
        startActivity(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void createShortcut(final Community community) {
        if ((community != null ? community.icon : null) == null) {
            return;
        }
        final ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.show();
        NVImageLoader nVImageLoader = (NVImageLoader) getService("imageLoader");
        if (nVImageLoader != null) {
            nVImageLoader.get(community.icon, new ImageLoader.ImageListener() { // from class: com.narvii.community.MyCommunityHelper.createShortcut.1
                @Override // com.android.volley.toolbox.ImageLoader.ImageListener
                public void onResponse(ImageLoader.ImageContainer imageContainer, boolean z) {
                    Intrinsics.checkParameterIsNotNull(imageContainer, "imageContainer");
                    Bitmap bitmap = imageContainer.getBitmap();
                    if (bitmap != null) {
                        progressDialog.dismiss();
                        MyCommunityHelper.this.createShortcut(community, bitmap);
                    }
                }

                @Override // com.android.volley.Response.ErrorListener
                public void onErrorResponse(VolleyError volleyError) {
                    Intrinsics.checkParameterIsNotNull(volleyError, "volleyError");
                    progressDialog.dismiss();
                    NVToast.makeText(MyCommunityHelper.this.getContext(), R.string.community_create_shortcut_fail, 0).show();
                    MyCommunityHelper.this.createShortcut(community, null);
                }
            });
        } else {
            Intrinsics.throwNpe();
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void createShortcut(Community community, Bitmap bitmap) {
        BaseNavigator baseNavigator = (BaseNavigator) getService("navigator");
        StringBuilder sb = new StringBuilder();
        if (baseNavigator != null) {
            sb.append(baseNavigator.getMyScheme());
            sb.append("://x");
            sb.append(community.id);
            sb.append("/default?source=Shortcut");
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(sb.toString()));
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
            intent.addFlags(67108864);
            if (bitmap != null) {
                try {
                    int iMin = Math.min(IjkMediaMeta.FF_PROFILE_H264_HIGH_444, Math.min(bitmap.getWidth(), bitmap.getHeight()));
                    Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iMin, iMin, Bitmap.Config.ARGB_8888);
                    Canvas canvas = new Canvas(bitmapCreateBitmap);
                    Path path = new Path();
                    float f = iMin;
                    RectF rectF = new RectF(0.0f, 0.0f, f, f);
                    float f2 = f * 0.2f;
                    path.addRoundRect(rectF, f2, f2, Path.Direction.CCW);
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
                ShortcutManager shortcutManager = (ShortcutManager) getContext().getSystemService(ShortcutManager.class);
                if (shortcutManager != null) {
                    LinkedList linkedList = new LinkedList(shortcutManager.getDynamicShortcuts());
                    CollectionsKt__MutableCollectionsJVMKt.sortWith(linkedList, new Comparator<ShortcutInfo>() { // from class: com.narvii.community.MyCommunityHelper.createShortcut.2
                        @Override // java.util.Comparator
                        public final int compare(ShortcutInfo s1, ShortcutInfo s2) {
                            Intrinsics.checkExpressionValueIsNotNull(s1, "s1");
                            int rank = s1.getRank();
                            Intrinsics.checkExpressionValueIsNotNull(s2, "s2");
                            return rank - s2.getRank();
                        }
                    });
                    Iterator it = linkedList.iterator();
                    Intrinsics.checkExpressionValueIsNotNull(it, "list.iterator()");
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        ShortcutInfo si = (ShortcutInfo) it.next();
                        Intrinsics.checkExpressionValueIsNotNull(si, "si");
                        if (Intrinsics.areEqual(str, si.getId())) {
                            shortcutManager.removeDynamicShortcuts(Arrays.asList(str));
                            it.remove();
                            break;
                        }
                    }
                    while (linkedList.size() >= 4) {
                        ShortcutInfo si2 = (ShortcutInfo) linkedList.removeFirst();
                        Intrinsics.checkExpressionValueIsNotNull(si2, "si");
                        shortcutManager.removeDynamicShortcuts(Arrays.asList(si2.getId()));
                    }
                    Iterator it2 = linkedList.iterator();
                    int iMax = 0;
                    while (it2.hasNext()) {
                        ShortcutInfo si3 = (ShortcutInfo) it2.next();
                        Intrinsics.checkExpressionValueIsNotNull(si3, "si");
                        iMax = Math.max(iMax, si3.getRank());
                    }
                    ShortcutInfo.Builder longLabel = new ShortcutInfo.Builder(getContext(), str).setShortLabel(community.name).setRank(iMax + 1).setLongLabel(community.name);
                    Intrinsics.checkExpressionValueIsNotNull(longLabel, "ShortcutInfo.Builder(get…    .setLongLabel(c.name)");
                    if (bitmap != null) {
                        longLabel.setIcon(Icon.createWithBitmap(bitmap));
                    }
                    longLabel.setIntent(intent);
                    ShortcutInfo shortcutInfoBuild = longLabel.build();
                    Intrinsics.checkExpressionValueIsNotNull(shortcutInfoBuild, "builder.build()");
                    shortcutManager.addDynamicShortcuts(CollectionsKt__CollectionsJVMKt.listOf(shortcutInfoBuild));
                } else {
                    Intrinsics.throwNpe();
                    throw null;
                }
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
            ShortcutManager shortcutManager2 = (ShortcutManager) getContext().getSystemService(ShortcutManager.class);
            ShortcutInfo.Builder longLabel2 = new ShortcutInfo.Builder(getContext(), str2).setShortLabel(community.name).setLongLabel(community.name);
            Intrinsics.checkExpressionValueIsNotNull(longLabel2, "ShortcutInfo.Builder(get…    .setLongLabel(c.name)");
            if (bitmap != null) {
                longLabel2.setIcon(Icon.createWithBitmap(bitmap));
            }
            longLabel2.setIntent(intent);
            ShortcutInfo shortcutInfoBuild2 = longLabel2.build();
            Intrinsics.checkExpressionValueIsNotNull(shortcutInfoBuild2, "builder.build()");
            if (shortcutManager2 != null) {
                shortcutManager2.requestPinShortcut(shortcutInfoBuild2, null);
                return;
            } else {
                Intrinsics.throwNpe();
                throw null;
            }
        }
        Intrinsics.throwNpe();
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void leaveCommunity(Community community) {
        new MasterLeaveCommunityHelper(this.context).leaveCommunity(community, null);
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_PAUSE)
    private final void onPause() {
        cancelLaunch();
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
    private final void onDestroy() {
        MyCommunityListService.MyCommunityListObserver myCommunityListObserver = this.myCommunityListObserver;
        if (myCommunityListObserver != null) {
            this.myCommunityListService.removeObserver(myCommunityListObserver);
        }
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
    public final <T> T getService(String str) {
        return (T) this.context.getService(str);
    }

    /* compiled from: MyCommunityHelper.kt */
    /* loaded from: classes2.dex */
    public final class MyLaunchHelper extends CommunityLaunchHelper {
        private boolean launching;
        final /* synthetic */ MyCommunityHelper this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MyLaunchHelper(MyCommunityHelper myCommunityHelper, NVContext ctx) {
            super(ctx, "");
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            this.this$0 = myCommunityHelper;
        }

        public final boolean getLaunching() {
            return this.launching;
        }

        public final void setLaunching(boolean z) {
            this.launching = z;
        }

        @Override // com.narvii.community.CommunityLaunchHelper
        protected void onProgress(int i, float f) {
            SmoothProgressBar launchProgress = this.this$0.getLaunchProgress();
            if (launchProgress != null) {
                launchProgress.setProgress((int) (100 * f));
            }
        }

        @Override // com.narvii.community.CommunityLaunchHelper
        public void launch(int i, Community community, String str, User user, String str2, ReminderCheck reminderCheck, String str3, boolean z, int i2, Drawable drawable) {
            this.launching = true;
            super.launch(i, community, str, user, str2, reminderCheck, str3, z, i2, drawable);
        }

        @Override // com.narvii.community.CommunityLaunchHelper
        public void cancel() {
            super.cancel();
            this.launching = false;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.community.CommunityLaunchHelper
        public void onFinish() {
            if (!this.launching || this.this$0.activity == null || this.this$0.getLaunchImageView() == null || this.this$0.getLaunchCommunity() == null) {
                return;
            }
            if (this.launchImageDrawable != null) {
                FragmentActivity fragmentActivity = this.this$0.activity;
                if (fragmentActivity != null) {
                    SplashUtils.splash(fragmentActivity, this.this$0.getLaunchImageView(), this.launchImageDrawable, new Callback<Boolean>() { // from class: com.narvii.community.MyCommunityHelper$MyLaunchHelper$onFinish$1
                        @Override // com.narvii.util.Callback
                        public final void call(Boolean obj) {
                            Intrinsics.checkExpressionValueIsNotNull(obj, "obj");
                            if (obj.booleanValue() && this.this$0.getLaunching()) {
                                EnterCommunityHelper.SOURCE.set(this.this$0.source);
                                super/*com.narvii.community.CommunityLaunchHelper*/.onFinish();
                            } else {
                                this.this$0.this$0.cancelLaunch();
                            }
                        }
                    });
                    return;
                } else {
                    Intrinsics.throwNpe();
                    throw null;
                }
            }
            super.onFinish();
        }
    }
}
