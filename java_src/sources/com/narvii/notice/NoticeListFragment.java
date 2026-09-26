package com.narvii.notice;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import com.narvii.account.AccountService;
import com.narvii.account.CommunityPushSettingFragment;
import com.narvii.account.PushSettingListFragment;
import com.narvii.account.notice.AccountNoticeListResponse;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.theme.view.NVThemeLinearLayout;
import com.narvii.chat.video.VVChatEntryHelper;
import com.narvii.comment.list.CommentListAdapter;
import com.narvii.community.CommunityLaunchHelper;
import com.narvii.community.CommunityService;
import com.narvii.community.MyCommunityListService;
import com.narvii.config.ConfigService;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.influencer.FansListFragment;
import com.narvii.influencer.MySubscriptionListFragment;
import com.narvii.list.DividerAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.list.refresh.SwipeRefreshLayout;
import com.narvii.livelayer.LiveLayerService;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.master.search.SearchPrefsHelper;
import com.narvii.model.Community;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.monetization.coupons.CouponListFragment;
import com.narvii.navigator.Navigator;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.pushservice.PushService;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.Callback;
import com.narvii.util.DateTimeFormatter;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.NotificationManagerHelper;
import com.narvii.util.NotificationUtils;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.util.statistics.constants.EventConstants;
import com.narvii.wallet.WalletRecyclerFragment;
import com.narvii.wallet.optinads.OptinAdsUtil;
import com.narvii.widget.CommunityIconView;
import com.narvii.widget.ThumbImageView;
import com.narvii.widget.TintButton;
import com.narvii.widget.UserAvatarLayout;
import com.safedk.android.utils.Logger;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public class NoticeListFragment extends NVListFragment implements View.OnClickListener {
    public static final String CLEAR_ALL_ALERTS = "com.narvii.action.CLEAR_ALL_ALERTS";
    private AccountService accountService;
    protected Adapter adapter;
    private boolean alertAllRead;
    int cid;
    private ConfigService config;
    boolean fromAggregation;
    protected ImportNoticeAdapter importNoticeAdapter;
    private View notLoginView;
    public NotificationManagerHelper notificationManagerHelper;
    private PopupWindow popupWindow;
    Set<String> readList;
    long readTime;
    BroadcastReceiver clearReceiver = new BroadcastReceiver() { // from class: com.narvii.notice.NoticeListFragment.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Adapter adapter;
            String action = intent.getAction();
            if (NoticeListFragment.this.fromAggregation && NoticeListFragment.CLEAR_ALL_ALERTS.equals(action)) {
                int intExtra = intent.getIntExtra(CmcdConfiguration.KEY_CONTENT_ID, -1);
                NoticeListFragment noticeListFragment = NoticeListFragment.this;
                if (intExtra == noticeListFragment.cid && (adapter = noticeListFragment.adapter) != null) {
                    adapter.resetEmptyList();
                }
            }
        }
    };
    protected final View.OnClickListener clearListener = new View.OnClickListener() { // from class: com.narvii.notice.d
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f2548a.lambda$new$3(view);
        }
    };
    BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.notice.NoticeListFragment.4
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            ImportNoticeAdapter importNoticeAdapter;
            if (AccountService.ACTION_ACCOUNT_CHANGED.equals(intent.getAction()) && (importNoticeAdapter = NoticeListFragment.this.importNoticeAdapter) != null) {
                importNoticeAdapter.refresh(0, null);
            }
        }
    };

    protected class Adapter extends NVPagedAdapter<Notice, NoticeListResponse> implements NotificationListener {
        DateTimeFormatter fmt;

        public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<Notice> dataType() {
            return Notice.class;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "AlertList";
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemType(Object obj) {
            return 0;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemTypeCount() {
            return 1;
        }

        /* JADX WARN: Code duplicated, block: B:61:0x019d  */
        /* JADX WARN: Code duplicated, block: B:62:0x01ac  */
        /* JADX WARN: Code duplicated, block: B:70:0x0207  */
        /* JADX WARN: Code duplicated, block: B:72:0x020b  */
        /* JADX WARN: Code duplicated, block: B:73:0x020e  */
        /* JADX WARN: Code duplicated, block: B:77:0x022f  */
        /* JADX WARN: Code duplicated, block: B:79:0x023b  */
        /* JADX WARN: Code duplicated, block: B:82:0x0262  */
        /* JADX WARN: Code duplicated, block: B:83:0x0270  */
        /* JADX WARN: Instruction removed from duplicated block: B:83:0x0270, please report this as an issue */
        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            Intent intent;
            int i11;
            String strObjectTypeName;
            String string;
            int i12;
            if (!(obj instanceof Notice)) {
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }
            Notice notice = (Notice) obj;
            if (view2 != null && view2.getId() == R.id.avatar) {
                view2.setClickable(false);
                User user = notice.operator;
                if (user != null) {
                    Intent intent2 = UserProfileFragment.intent(this, user);
                    if (intent2 == null) {
                        return true;
                    }
                    intent2.putExtra(ExternalPostPreviewFragment.SOURCE, "Alerts");
                    safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent2);
                }
                view2.setClickable(true);
                return true;
            }
            ((StatisticsService) getService("statistics")).event("Notification Opened").userPropInc("Notifications Opxened Total").param(EventConstants.CommentPost.TYPE, NoticeListFragment.this.getNoticeType(notice));
            getClickEventBuilder(obj, ActSemantic.checkDetail).extraParam("alertType", Integer.valueOf(notice.type)).send();
            VVChatEntryHelper vVChatEntryHelper = new VVChatEntryHelper(this);
            String str = notice.contextNdcId == 0 ? "ndc://g/" : "ndc://x" + notice.contextNdcId + com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING;
            int i13 = notice.type;
            if (i13 == 1) {
                intent = new Intent("android.intent.action.VIEW", Uri.parse(str + "user-profile/" + notice.uid()));
            } else if (i13 == 2) {
                intent = new Intent("android.intent.action.VIEW", Uri.parse(getDefaultNdcLink(str, notice)));
            } else if (i13 == 3 || i13 == 4) {
                i11 = notice.parentType;
                if (i11 == 0) {
                    strObjectTypeName = "user-profile";
                } else {
                    strObjectTypeName = NVObject.objectTypeName(i11);
                }
                string = str + strObjectTypeName + com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING + notice.parentId;
                i12 = notice.type;
                if (i12 != 3 || i12 == 4) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(str);
                    sb.append(notice.ndcId == 0 ? "g-comment/" : "comment/");
                    sb.append(notice.objectId);
                    sb.append(com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING);
                    sb.append(notice.parentType);
                    sb.append(com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING);
                    sb.append(notice.parentId);
                    string = sb.toString();
                }
                intent = new Intent("android.intent.action.VIEW", Uri.parse(string));
            } else if (i13 != 24 && i13 != 55 && i13 != 57) {
                switch (i13) {
                    case 9:
                    case 10:
                        if (notice.objectType != 3) {
                            intent = new Intent("android.intent.action.VIEW", Uri.parse(getDefaultNdcLink(str, notice)));
                        } else {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append(str);
                            sb2.append(notice.ndcId == 0 ? "g-comment/" : "comment/");
                            sb2.append(notice.objectId);
                            sb2.append(com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING);
                            sb2.append(notice.parentType);
                            sb2.append(com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING);
                            sb2.append(notice.parentId);
                            intent = new Intent("android.intent.action.VIEW", Uri.parse(sb2.toString()));
                            intent.putExtra("show_reply", false);
                        }
                        break;
                    case 11:
                    case 15:
                    case 16:
                    case 17:
                        intent = new Intent("android.intent.action.VIEW", Uri.parse(getDefaultNdcLink(str, notice)));
                        break;
                    case 12:
                    case 13:
                    case 14:
                        i11 = notice.parentType;
                        if (i11 == 0) {
                            strObjectTypeName = "user-profile";
                        } else {
                            strObjectTypeName = NVObject.objectTypeName(i11);
                        }
                        string = str + strObjectTypeName + com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING + notice.parentId;
                        i12 = notice.type;
                        if (i12 != 3) {
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append(str);
                            sb3.append(notice.ndcId == 0 ? "g-comment/" : "comment/");
                            sb3.append(notice.objectId);
                            sb3.append(com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING);
                            sb3.append(notice.parentType);
                            sb3.append(com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING);
                            sb3.append(notice.parentId);
                            string = sb3.toString();
                        } else {
                            StringBuilder sb4 = new StringBuilder();
                            sb4.append(str);
                            sb4.append(notice.ndcId == 0 ? "g-comment/" : "comment/");
                            sb4.append(notice.objectId);
                            sb4.append(com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING);
                            sb4.append(notice.parentType);
                            sb4.append(com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING);
                            sb4.append(notice.parentId);
                            string = sb4.toString();
                        }
                        intent = new Intent("android.intent.action.VIEW", Uri.parse(string));
                        break;
                    default:
                        intent = null;
                        switch (i13) {
                            case 26:
                            case 27:
                                intent = new Intent("android.intent.action.VIEW", Uri.parse(getDefaultNdcLink(str, notice)));
                                break;
                            case 28:
                                intent = new Intent("android.intent.action.VIEW", Uri.parse(getDefaultNdcLink(str, notice)));
                                break;
                            case 29:
                            case 31:
                                intent = vVChatEntryHelper.getLaunchIntent(vVChatEntryHelper.getBaseBundle(1, null, notice.objectId, "Alerts"), true);
                                break;
                            case 30:
                            case 32:
                                intent = vVChatEntryHelper.getLaunchIntent(vVChatEntryHelper.getBaseBundle(4, null, notice.objectId, "Alerts"), true);
                                break;
                            case 33:
                                intent = new Intent("android.intent.action.VIEW", Uri.parse(str + NVObject.objectTypeName(106) + "/?notification-id=" + notice.id()));
                                break;
                            case 34:
                            case 35:
                                intent = vVChatEntryHelper.getLaunchIntent(vVChatEntryHelper.getBaseBundle(3, null, notice.objectId, "Alerts"), true);
                                break;
                            case 36:
                                intent = new Intent("android.intent.action.VIEW", Uri.parse(getDefaultNdcLink(str, notice)));
                                break;
                            case 37:
                            case 38:
                                intent = vVChatEntryHelper.getLaunchIntent(vVChatEntryHelper.getBaseBundle(5, null, notice.objectId, "Alerts"), true);
                                break;
                            default:
                                switch (i13) {
                                    case 60:
                                        intent = FragmentWrapperActivity.intent(FansListFragment.class);
                                        String userId = notice.objectId;
                                        if (TextUtils.isEmpty(userId)) {
                                            userId = ((AccountService) getService("account")).getUserId();
                                        }
                                        intent.putExtra("id", userId);
                                        intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Alerts");
                                        break;
                                    case 61:
                                        intent = new Intent("android.intent.action.VIEW", Uri.parse(str + "user-profile/" + notice.uid()));
                                        break;
                                    case 62:
                                    case 64:
                                        intent = new Intent("android.intent.action.VIEW", Uri.parse(getDefaultNdcLink(str, notice)));
                                        break;
                                    case 63:
                                        intent = new Intent("android.intent.action.VIEW", Uri.parse(getDefaultNdcLink(str, notice)));
                                        break;
                                    case 65:
                                        intent = new Intent("android.intent.action.VIEW", Uri.parse(getDefaultNdcLink(str, notice)));
                                        break;
                                    default:
                                        switch (i13) {
                                            case 69:
                                                Community community = (Community) JacksonUtils.readAs(NoticeListFragment.this.getStringParam(SearchPrefsHelper.PREFS_KEY_COMMUNITY), Community.class);
                                                if (community == null || community.id != notice.contextNdcId) {
                                                    community = ((CommunityService) getService(SearchPrefsHelper.PREFS_KEY_COMMUNITY)).getCommunity(notice.contextNdcId);
                                                }
                                                NoticeListFragment.this.launchCommunity(community);
                                                break;
                                            case 70:
                                                intent = FragmentWrapperActivity.intent(WalletRecyclerFragment.class);
                                                break;
                                            case 71:
                                            case 72:
                                                intent = FragmentWrapperActivity.intent(MySubscriptionListFragment.class);
                                                break;
                                            case 73:
                                                intent = FragmentWrapperActivity.intent(CouponListFragment.class);
                                                break;
                                        }
                                        break;
                                }
                                break;
                        }
                        break;
                }
            } else {
                intent = new Intent("android.intent.action.VIEW", Uri.parse(getDefaultNdcLink(str, notice)));
            }
            try {
                Intent intentIntentMapping = ((Navigator) getService("navigator")).intentMapping(intent);
                if (intentIntentMapping.getComponent() == null) {
                    Log.e("unable to open " + intentIntentMapping.getDataString() + ", type=" + notice.type + ", objectType=" + notice.objectType);
                }
                if (!intentIntentMapping.hasExtra(ExternalPostPreviewFragment.SOURCE)) {
                    intentIntentMapping.putExtra(ExternalPostPreviewFragment.SOURCE, "Alerts");
                }
                intentIntentMapping.putExtra("__communityId", notice.contextNdcId);
                if (notice.ndcId == 0) {
                    intentIntentMapping.putExtra("fromHeadline", true);
                }
                intentIntentMapping.putExtra(NVActivity.INTERACTION_SCOPE, notice.ndcId == 0);
                safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intentIntentMapping);
            } catch (Exception unused) {
            }
            NoticeListFragment.this.readList.add(notice.notificationId);
            return true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<NoticeListResponse> responseType() {
            return NoticeListResponse.class;
        }

        @Override // com.narvii.list.NVAdapter
        protected boolean supportNVTheme() {
            return true;
        }

        public Adapter() {
            super(NoticeListFragment.this, 1);
            this.fmt = DateTimeFormatter.getInstance(getContext());
        }

        private String getContentText(Notice notice) {
            return notice.objectText;
        }

        private String getContentType(int i10, int i11) {
            if (i10 == 0) {
                return NoticeListFragment.this.getString(R.string.attach_user_profile);
            }
            if (i10 != 1) {
                if (i10 == 2) {
                    return NoticeListFragment.this.getString(R.string.post_type_wiki_entry);
                }
                if (i10 == 3) {
                    return NoticeListFragment.this.getString(R.string.comment);
                }
                if (i10 == 12) {
                    return NoticeListFragment.this.getString(R.string.chatroom);
                }
                if (i10 == 109) {
                    return NoticeListFragment.this.getString(R.string.photo);
                }
                if (i10 != 131) {
                    return NoticeListFragment.this.getString(R.string.post);
                }
            }
            return i11 == 4 ? NoticeListFragment.this.getString(R.string.post_type_poll) : NoticeListFragment.this.getString(R.string.post_type_blog);
        }

        private String getDefaultNdcLink(String str, Notice notice) {
            return str + NVObject.objectTypeName(notice.objectType) + com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING + notice.objectId;
        }

        private String getParentContentText(Notice notice) {
            return notice.parentText;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            ImportNoticeAdapter importNoticeAdapter = NoticeListFragment.this.importNoticeAdapter;
            if (importNoticeAdapter != null && !importNoticeAdapter.isImportantNoticeLoaded) {
                return null;
            }
            ApiRequest.Builder builderCommunityId = ApiRequest.builder().path("/notification").communityId(NoticeListFragment.this.cid);
            if (z6) {
                builderCommunityId.tag("start0");
            }
            return builderCommunityId.build();
        }

        /* JADX WARN: Code duplicated, block: B:112:0x0309  */
        /* JADX WARN: Code duplicated, block: B:115:0x0351  */
        /* JADX WARN: Code duplicated, block: B:116:0x0363  */
        /* JADX WARN: Code duplicated, block: B:118:0x0367  */
        /* JADX WARN: Code duplicated, block: B:124:0x0387  */
        /* JADX WARN: Code duplicated, block: B:127:0x03dd  */
        /* JADX WARN: Code duplicated, block: B:128:0x03e1  */
        /* JADX WARN: Code duplicated, block: B:131:0x03f5  */
        /* JADX WARN: Code duplicated, block: B:141:0x0413  */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            String string;
            int i10;
            Community community;
            UserAvatarLayout userAvatarLayout;
            ImageView imageView;
            ImageView imageView2;
            CommunityIconView communityIconView;
            User user;
            TextView textView;
            View viewFindViewById;
            long time;
            NoticeListFragment noticeListFragment;
            Set<String> set;
            Community community2;
            Notice notice = (Notice) obj;
            View viewCreateView = createView(R.layout.notice_item_new, viewGroup, view);
            User user2 = notice.operator;
            String strNickname = (user2 == null || TextUtils.isEmpty(user2.nickname())) ? "?" : notice.operator.nickname();
            int i11 = notice.type;
            String string2 = null;
            if (i11 != 1) {
                if (i11 != 9) {
                    i10 = R.drawable.ic_alert_wiki;
                    if (i11 != 24) {
                        if (i11 != 55) {
                            if (i11 != 57) {
                                int i12 = R.drawable.ic_alert_comment;
                                if (i11 != 3) {
                                    if (i11 != 4) {
                                        i12 = R.drawable.ic_alert_poll_large;
                                        switch (i11) {
                                            case 12:
                                                string = NoticeListFragment.this.getString(R.string.alert_text_join_poll, getContentText(notice));
                                                string2 = getParentContentText(notice);
                                                i10 = R.drawable.ic_alert_poll;
                                                break;
                                            case 13:
                                                string = NoticeListFragment.this.getString(R.string.alert_text_approve_poll);
                                                string2 = getParentContentText(notice);
                                                i10 = R.drawable.ic_alert_poll;
                                                break;
                                            case 14:
                                                string = NoticeListFragment.this.getString(R.string.alert_text_vote_poll);
                                                string2 = getParentContentText(notice);
                                                i10 = R.drawable.ic_alert_poll;
                                                break;
                                            case 15:
                                            case 17:
                                                string = NoticeListFragment.this.getString(R.string.alert_text_ended_poll_others);
                                                string2 = getContentText(notice);
                                                break;
                                            case 16:
                                                string = NoticeListFragment.this.getString(R.string.alert_text_ended_poll_your);
                                                string2 = getContentText(notice);
                                                break;
                                            default:
                                                switch (i11) {
                                                    case 26:
                                                        int i13 = notice.objectSubtype;
                                                        i10 = i13 == 4 ? R.drawable.ic_alert_poll : R.drawable.ic_alert_post;
                                                        string = NoticeListFragment.this.getString(R.string.alert_text_create_post, getContentType(notice.objectType, i13));
                                                        string2 = getContentText(notice);
                                                        break;
                                                    case 27:
                                                        string = NoticeListFragment.this.getString(R.string.alert_text_create_post, getContentType(notice.objectType, notice.objectSubtype));
                                                        string2 = getContentText(notice);
                                                        break;
                                                    case 28:
                                                        string = NoticeListFragment.this.getString(R.string.alert_text_start_chat);
                                                        string2 = getContentText(notice);
                                                        i10 = R.drawable.ic_alert_chat;
                                                        break;
                                                    case 29:
                                                    case 30:
                                                    case 34:
                                                    case 37:
                                                        string = NoticeListFragment.this.getString(R.string.alert_text_live_invite);
                                                        string2 = getContentText(notice);
                                                        i10 = R.drawable.ic_alert_chat;
                                                        break;
                                                    case 31:
                                                    case 32:
                                                    case 35:
                                                    case 38:
                                                        string = NoticeListFragment.this.getString(R.string.alert_text_start_live_mode);
                                                        string2 = getContentText(notice);
                                                        i10 = R.drawable.ic_alert_chat;
                                                        break;
                                                    case 33:
                                                        string = com.narvii.util.text.TextUtils.getCountText(getContext(), notice.contextValue, R.string.alert_text_upload_photo_one, R.string.alert_text_upload_photos_n);
                                                        i10 = R.drawable.ic_alert_shared_photo_upload;
                                                        break;
                                                    case 36:
                                                        string = com.narvii.util.text.TextUtils.getCountText(getContext(), notice.contextValue, R.string.alert_text_awarded_one_title, R.string.alert_text_awarded_n_titles);
                                                        i10 = R.drawable.ic_alert_title;
                                                        break;
                                                    default:
                                                        i10 = R.drawable.ic_alert_fan;
                                                        switch (i11) {
                                                            case 60:
                                                                string = NoticeListFragment.this.getString(R.string.alert_text_become_fans);
                                                                break;
                                                            case 61:
                                                                string = NoticeListFragment.this.getString(R.string.alert_text_become_fans_thanks);
                                                                break;
                                                            case 62:
                                                                int i14 = notice.objectSubtype;
                                                                i10 = i14 == 4 ? R.drawable.ic_alert_poll_influence : R.drawable.ic_alert_post_influence;
                                                                string = NoticeListFragment.this.getString(R.string.alert_text_create_post, getContentType(notice.objectType, i14));
                                                                string2 = getContentText(notice);
                                                                break;
                                                            case 63:
                                                                string = NoticeListFragment.this.getString(R.string.alert_text_start_chat);
                                                                string2 = getContentText(notice);
                                                                i10 = R.drawable.ic_alert_chat_influence;
                                                                break;
                                                            case 64:
                                                                string = NoticeListFragment.this.getString(R.string.alert_text_create_post, getContentType(notice.objectType, notice.objectSubtype));
                                                                string2 = getContentText(notice);
                                                                i10 = R.drawable.ic_alert_wiki_influence;
                                                                break;
                                                            case 65:
                                                                int i15 = notice.objectType;
                                                                if (i15 == 114) {
                                                                    string = NoticeListFragment.this.getString(R.string.alert_text_purchased_sticker_pack);
                                                                } else if (i15 != 116) {
                                                                    string = i15 != 122 ? NoticeListFragment.this.getString(R.string.alert_text_purchased_default) : NoticeListFragment.this.getString(R.string.alert_text_purchased_profile_frame);
                                                                } else {
                                                                    string = NoticeListFragment.this.getString(R.string.alert_text_purchased_chat_Bubble);
                                                                }
                                                                string2 = getContentText(notice);
                                                                i10 = R.drawable.ic_alert_tip;
                                                                break;
                                                            default:
                                                                i10 = R.drawable.ic_alert_default;
                                                                switch (i11) {
                                                                    case 69:
                                                                        Community community3 = (Community) JacksonUtils.readAs(NoticeListFragment.this.getStringParam(SearchPrefsHelper.PREFS_KEY_COMMUNITY), Community.class);
                                                                        if (community3 == null || community3.id != notice.contextNdcId) {
                                                                            community2 = community3;
                                                                            community2 = ((CommunityService) getService(SearchPrefsHelper.PREFS_KEY_COMMUNITY)).getCommunity(notice.contextNdcId);
                                                                        }
                                                                        community2 = community3;
                                                                        string2 = null;
                                                                        string2 = community2 != null ? NoticeListFragment.this.getString(R.string.alert_text_type_community_join_request_approved, community2.name) : NoticeListFragment.this.getString(R.string.alert_text_type_community_join_request_approved, getContentText(notice));
                                                                        community = community2;
                                                                        break;
                                                                    case 70:
                                                                        string = NoticeListFragment.this.getString(R.string.alert_coin_not_enough_renew_membership);
                                                                        i10 = 0;
                                                                        string2 = string;
                                                                        community = string2;
                                                                        break;
                                                                    case 71:
                                                                        string = NoticeListFragment.this.getString(R.string.alert_coin_not_enough_renew_fan_club);
                                                                        i10 = 0;
                                                                        string2 = string;
                                                                        community = string2;
                                                                        break;
                                                                    case 72:
                                                                        string = NoticeListFragment.this.getString(R.string.alert_coin_not_enough_renew_avatar_frame);
                                                                        i10 = 0;
                                                                        string2 = string;
                                                                        community = string2;
                                                                        break;
                                                                    case 73:
                                                                        string = NoticeListFragment.this.getString(R.string.alert_new_deduction_coupon_not_used);
                                                                        i10 = 0;
                                                                        string2 = string;
                                                                        community = string2;
                                                                        break;
                                                                    default:
                                                                        community = 0;
                                                                        string2 = null;
                                                                        break;
                                                                }
                                                                break;
                                                        }
                                                        break;
                                                }
                                                break;
                                        }
                                    } else {
                                        string = NoticeListFragment.this.getString(R.string.alert_text_reply_n, getContentText(notice));
                                        if (notice.parentType != 0) {
                                            string2 = getParentContentText(notice);
                                        }
                                        i10 = R.drawable.ic_alert_comment;
                                        string2 = string;
                                        community = string2;
                                    }
                                    i10 = i12;
                                } else {
                                    int i16 = notice.parentType;
                                    if (i16 == 0) {
                                        string = NoticeListFragment.this.getString(R.string.alert_text_comment_you_n, getContentText(notice));
                                        i10 = R.drawable.ic_alert_comment;
                                        string2 = string;
                                        community = string2;
                                    } else if (i16 == 1 || i16 == 2 || i16 == 109) {
                                        string = NoticeListFragment.this.getString(R.string.alert_text_comment_blog_n, getContentText(notice));
                                        string2 = getParentContentText(notice);
                                        i10 = i12;
                                    } else {
                                        community = 0;
                                        string2 = null;
                                        i10 = R.drawable.ic_alert_comment;
                                    }
                                }
                            } else {
                                string = NoticeListFragment.this.getString(R.string.alert_text_tip_thanks);
                            }
                            if (string2 == null) {
                                string2 = NoticeListFragment.this.getString(R.string.notice_text_error);
                            }
                            ((ImageView) viewCreateView.findViewById(R.id.icon)).setImageResource(i10);
                            ((ThumbImageView) viewCreateView.findViewById(R.id.avatar)).setOnClickListener(this.subviewClickListener);
                            userAvatarLayout = (UserAvatarLayout) viewCreateView.findViewById(R.id.user_avatar_layout);
                            imageView = (ImageView) viewCreateView.findViewById(R.id.icon);
                            imageView2 = (ImageView) viewCreateView.findViewById(R.id.icon2);
                            communityIconView = (CommunityIconView) viewCreateView.findViewById(R.id.community_icon);
                            if (community != 0) {
                                communityIconView.setVisibility(0);
                                imageView.setVisibility(8);
                                imageView2.setVisibility(8);
                                userAvatarLayout.setVisibility(8);
                                communityIconView.setCommunity(community);
                                strNickname = community.name;
                            } else {
                                user = notice.operator;
                                if (user != null || (!(user.isSystem() || notice.operator.isModerator()) || i10 == 0)) {
                                    communityIconView.setVisibility(8);
                                    imageView.setVisibility(0);
                                    imageView2.setVisibility(8);
                                    userAvatarLayout.setVisibility(0);
                                    imageView.setImageResource(i10);
                                    userAvatarLayout.setUser(notice.operator);
                                } else {
                                    communityIconView.setVisibility(8);
                                    imageView.setVisibility(8);
                                    imageView2.setVisibility(0);
                                    userAvatarLayout.setVisibility(8);
                                    imageView2.setImageResource(i10);
                                }
                            }
                            ((TextView) viewCreateView.findViewById(R.id.name)).setText(strNickname);
                            ((TextView) viewCreateView.findViewById(R.id.datetime)).setText(this.fmt.format(notice.createdTime));
                            ((TextView) viewCreateView.findViewById(R.id.text)).setText(string2);
                            textView = (TextView) viewCreateView.findViewById(R.id.text2);
                            viewFindViewById = viewCreateView.findViewById(R.id.text2_container);
                            if (TextUtils.isEmpty(string2)) {
                                viewFindViewById.setVisibility(8);
                            } else {
                                textView.setText(string2);
                                viewFindViewById.setVisibility(0);
                            }
                            time = notice.createdTime.getTime();
                            noticeListFragment = NoticeListFragment.this;
                            if (time > noticeListFragment.readTime || ((set = noticeListFragment.readList) != null && set.contains(notice.notificationId))) {
                                viewCreateView.setBackgroundColor(0);
                            } else {
                                viewCreateView.setBackgroundColor(isDarkNVTheme() ? 436207615 : -198427);
                            }
                            return viewCreateView;
                        }
                        string = NoticeListFragment.this.getString(R.string.alert_text_tip);
                        i10 = R.drawable.ic_alert_tip;
                        string2 = string;
                        community = string2;
                        if (string2 == null) {
                            string2 = NoticeListFragment.this.getString(R.string.notice_text_error);
                        }
                        ((ImageView) viewCreateView.findViewById(R.id.icon)).setImageResource(i10);
                        ((ThumbImageView) viewCreateView.findViewById(R.id.avatar)).setOnClickListener(this.subviewClickListener);
                        userAvatarLayout = (UserAvatarLayout) viewCreateView.findViewById(R.id.user_avatar_layout);
                        imageView = (ImageView) viewCreateView.findViewById(R.id.icon);
                        imageView2 = (ImageView) viewCreateView.findViewById(R.id.icon2);
                        communityIconView = (CommunityIconView) viewCreateView.findViewById(R.id.community_icon);
                        if (community != 0) {
                            communityIconView.setVisibility(0);
                            imageView.setVisibility(8);
                            imageView2.setVisibility(8);
                            userAvatarLayout.setVisibility(8);
                            communityIconView.setCommunity(community);
                            strNickname = community.name;
                        } else {
                            user = notice.operator;
                            if (user != null) {
                                communityIconView.setVisibility(8);
                                imageView.setVisibility(0);
                                imageView2.setVisibility(8);
                                userAvatarLayout.setVisibility(0);
                                imageView.setImageResource(i10);
                                userAvatarLayout.setUser(notice.operator);
                            } else {
                                communityIconView.setVisibility(8);
                                imageView.setVisibility(0);
                                imageView2.setVisibility(8);
                                userAvatarLayout.setVisibility(0);
                                imageView.setImageResource(i10);
                                userAvatarLayout.setUser(notice.operator);
                            }
                        }
                        ((TextView) viewCreateView.findViewById(R.id.name)).setText(strNickname);
                        ((TextView) viewCreateView.findViewById(R.id.datetime)).setText(this.fmt.format(notice.createdTime));
                        ((TextView) viewCreateView.findViewById(R.id.text)).setText(string2);
                        textView = (TextView) viewCreateView.findViewById(R.id.text2);
                        viewFindViewById = viewCreateView.findViewById(R.id.text2_container);
                        if (TextUtils.isEmpty(string2)) {
                            viewFindViewById.setVisibility(8);
                        } else {
                            textView.setText(string2);
                            viewFindViewById.setVisibility(0);
                        }
                        time = notice.createdTime.getTime();
                        noticeListFragment = NoticeListFragment.this;
                        if (time > noticeListFragment.readTime) {
                            viewCreateView.setBackgroundColor(0);
                        } else {
                            viewCreateView.setBackgroundColor(0);
                        }
                        return viewCreateView;
                    }
                    string = NoticeListFragment.this.getString(R.string.alert_text_submission_approved);
                    string2 = getContentText(notice);
                } else {
                    string = NoticeListFragment.this.getString(R.string.alert_text_like, getContentType(notice.objectType, notice.objectSubtype));
                    string2 = getContentText(notice);
                    i10 = R.drawable.ic_alert_like;
                }
                string2 = string;
                community = 0;
                if (string2 == null) {
                    string2 = NoticeListFragment.this.getString(R.string.notice_text_error);
                }
                ((ImageView) viewCreateView.findViewById(R.id.icon)).setImageResource(i10);
                ((ThumbImageView) viewCreateView.findViewById(R.id.avatar)).setOnClickListener(this.subviewClickListener);
                userAvatarLayout = (UserAvatarLayout) viewCreateView.findViewById(R.id.user_avatar_layout);
                imageView = (ImageView) viewCreateView.findViewById(R.id.icon);
                imageView2 = (ImageView) viewCreateView.findViewById(R.id.icon2);
                communityIconView = (CommunityIconView) viewCreateView.findViewById(R.id.community_icon);
                if (community != 0) {
                    communityIconView.setVisibility(0);
                    imageView.setVisibility(8);
                    imageView2.setVisibility(8);
                    userAvatarLayout.setVisibility(8);
                    communityIconView.setCommunity(community);
                    strNickname = community.name;
                } else {
                    user = notice.operator;
                    if (user != null) {
                        communityIconView.setVisibility(8);
                        imageView.setVisibility(0);
                        imageView2.setVisibility(8);
                        userAvatarLayout.setVisibility(0);
                        imageView.setImageResource(i10);
                        userAvatarLayout.setUser(notice.operator);
                    } else {
                        communityIconView.setVisibility(8);
                        imageView.setVisibility(0);
                        imageView2.setVisibility(8);
                        userAvatarLayout.setVisibility(0);
                        imageView.setImageResource(i10);
                        userAvatarLayout.setUser(notice.operator);
                    }
                }
                ((TextView) viewCreateView.findViewById(R.id.name)).setText(strNickname);
                ((TextView) viewCreateView.findViewById(R.id.datetime)).setText(this.fmt.format(notice.createdTime));
                ((TextView) viewCreateView.findViewById(R.id.text)).setText(string2);
                textView = (TextView) viewCreateView.findViewById(R.id.text2);
                viewFindViewById = viewCreateView.findViewById(R.id.text2_container);
                if (TextUtils.isEmpty(string2)) {
                    viewFindViewById.setVisibility(8);
                } else {
                    textView.setText(string2);
                    viewFindViewById.setVisibility(0);
                }
                time = notice.createdTime.getTime();
                noticeListFragment = NoticeListFragment.this;
                if (time > noticeListFragment.readTime) {
                    viewCreateView.setBackgroundColor(0);
                } else {
                    viewCreateView.setBackgroundColor(0);
                }
                return viewCreateView;
            }
            string = NoticeListFragment.this.getString(R.string.alert_text_follow);
            i10 = R.drawable.ic_alert_follow;
            string2 = string;
            community = string2;
            if (string2 == null) {
                string2 = NoticeListFragment.this.getString(R.string.notice_text_error);
            }
            ((ImageView) viewCreateView.findViewById(R.id.icon)).setImageResource(i10);
            ((ThumbImageView) viewCreateView.findViewById(R.id.avatar)).setOnClickListener(this.subviewClickListener);
            userAvatarLayout = (UserAvatarLayout) viewCreateView.findViewById(R.id.user_avatar_layout);
            imageView = (ImageView) viewCreateView.findViewById(R.id.icon);
            imageView2 = (ImageView) viewCreateView.findViewById(R.id.icon2);
            communityIconView = (CommunityIconView) viewCreateView.findViewById(R.id.community_icon);
            if (community != 0) {
                communityIconView.setVisibility(0);
                imageView.setVisibility(8);
                imageView2.setVisibility(8);
                userAvatarLayout.setVisibility(8);
                communityIconView.setCommunity(community);
                strNickname = community.name;
            } else {
                user = notice.operator;
                if (user != null) {
                    communityIconView.setVisibility(8);
                    imageView.setVisibility(0);
                    imageView2.setVisibility(8);
                    userAvatarLayout.setVisibility(0);
                    imageView.setImageResource(i10);
                    userAvatarLayout.setUser(notice.operator);
                } else {
                    communityIconView.setVisibility(8);
                    imageView.setVisibility(0);
                    imageView2.setVisibility(8);
                    userAvatarLayout.setVisibility(0);
                    imageView.setImageResource(i10);
                    userAvatarLayout.setUser(notice.operator);
                }
            }
            ((TextView) viewCreateView.findViewById(R.id.name)).setText(strNickname);
            ((TextView) viewCreateView.findViewById(R.id.datetime)).setText(this.fmt.format(notice.createdTime));
            ((TextView) viewCreateView.findViewById(R.id.text)).setText(string2);
            textView = (TextView) viewCreateView.findViewById(R.id.text2);
            viewFindViewById = viewCreateView.findViewById(R.id.text2_container);
            if (TextUtils.isEmpty(string2)) {
                viewFindViewById.setVisibility(8);
            } else {
                textView.setText(string2);
                viewFindViewById.setVisibility(0);
            }
            time = notice.createdTime.getTime();
            noticeListFragment = NoticeListFragment.this;
            if (time > noticeListFragment.readTime) {
                viewCreateView.setBackgroundColor(0);
            } else {
                viewCreateView.setBackgroundColor(0);
            }
            return viewCreateView;
        }

        @Override // com.narvii.list.NVAdapter
        public boolean onLongClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (!(obj instanceof Notice)) {
                return super.onLongClick(listAdapter, i10, obj, view, view2);
            }
            NoticeListFragment.this.delete((Notice) obj, false);
            return true;
        }

        @Override // com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            if (notification.obj instanceof Notice) {
                editList(notification, true);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, NoticeListResponse noticeListResponse, int i10) {
            List<Notice> list;
            super.onPageResponse(apiRequest, noticeListResponse, i10);
            if ("start0".equals(apiRequest.tag())) {
                ((PushService) getService("push")).dismissNotification(NoticeListFragment.this.cid, 1);
                AccountService accountService = (AccountService) getService("account");
                int i11 = (noticeListResponse.notificationCount == 0 && (list = noticeListResponse.notificationList) != null && list.isEmpty()) ? 0 : noticeListResponse.notificationCount;
                if (NoticeListFragment.this.cid == 0) {
                    Log.i("globalNotificationCount", i11 + "-" + DateTimeFormatter.parseISO8601(noticeListResponse.timestamp).getTime() + "-noticeListResponse");
                }
                accountService.updateNotificationCount(NoticeListFragment.this.cid, i11, noticeListResponse.timestamp, true);
                Date date = noticeListResponse.lastCheckTime;
                if (date != null) {
                    NoticeListFragment.this.readTime = Math.max(date.getTime(), NoticeListFragment.this.readTime);
                    accountService.getPrefs().edit().putLong(accountService.getPrefsKey(NoticeListFragment.this.cid, "notificationReadTime"), NoticeListFragment.this.readTime).apply();
                    notifyDataSetChanged();
                }
                NoticeListFragment.this.requestCheckNotification();
            }
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            super.notifyDataSetChanged();
            NoticeListFragment.this.updateClearButtonStatus();
        }
    }

    protected class ImportNoticeAdapter extends ImportNoticeListAdapter {
        @Override // com.narvii.list.NVAdapter
        protected boolean supportNVTheme() {
            return true;
        }

        public ImportNoticeAdapter() {
            super(NoticeListFragment.this, NoticeListFragment.this.cid);
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            return this.isImportantNoticeLoaded && super.isEmpty();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.notice.ImportNoticeListAdapter, com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, AccountNoticeListResponse accountNoticeListResponse, int i10) {
            super.onPageResponse(apiRequest, accountNoticeListResponse, i10);
            if (this.isImportantNoticeLoaded) {
                NoticeListFragment.this.adapter.refresh(0, null);
            }
        }

        @Override // com.narvii.notice.ImportNoticeListAdapter, com.narvii.list.NVPagedAdapter
        protected void onFailResponse(ApiRequest apiRequest, String str, ApiResponse apiResponse, int i10) {
            super.onFailResponse(apiRequest, str, apiResponse, i10);
            if (this.isImportantNoticeLoaded) {
                NoticeListFragment.this.adapter.refresh(0, null);
            }
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void refresh(int i10, Callback<Integer> callback) {
            super.refresh(i10, callback);
        }
    }

    protected class NoticeMergeAdapter extends MergeAdapter {
        public NoticeMergeAdapter() {
            super(NoticeListFragment.this);
        }

        @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
        public String errorMessage() {
            NoticeListFragment noticeListFragment = NoticeListFragment.this;
            Adapter adapter = noticeListFragment.adapter;
            if (adapter != null && noticeListFragment.importNoticeAdapter != null) {
                if (!TextUtils.isEmpty(adapter.errorMessage()) && NoticeListFragment.this.importNoticeAdapter.loadFinishEmptyOrError()) {
                    return NoticeListFragment.this.adapter.errorMessage();
                }
                if (!TextUtils.isEmpty(NoticeListFragment.this.importNoticeAdapter.errorMessage()) && NoticeListFragment.this.adapter.loadFinishEmptyOrError()) {
                    return NoticeListFragment.this.importNoticeAdapter.errorMessage();
                }
            }
            return null;
        }

        @Override // com.narvii.list.MergeAdapter, android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            ImportNoticeAdapter importNoticeAdapter;
            Adapter adapter = NoticeListFragment.this.adapter;
            return adapter != null && adapter.isEmpty() && ((importNoticeAdapter = NoticeListFragment.this.importNoticeAdapter) == null || importNoticeAdapter.isEmpty());
        }

        @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
        public boolean isListShown() {
            ImportNoticeAdapter importNoticeAdapter;
            Adapter adapter = NoticeListFragment.this.adapter;
            return (adapter != null && adapter.isListShown()) || ((importNoticeAdapter = NoticeListFragment.this.importNoticeAdapter) != null && importNoticeAdapter.isListShown() && NoticeListFragment.this.importNoticeAdapter.getCount() > 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(View view) {
        clearAll(false);
    }

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public String getNoticeType(Notice notice) {
        if (notice == null) {
            return null;
        }
        int i10 = notice.type;
        if (i10 == 1) {
            return "following";
        }
        if (i10 == 2) {
            return "invitation_to_follow";
        }
        if (i10 == 3) {
            return CommentListAdapter.COMMENT;
        }
        if (i10 == 4) {
            return "reply";
        }
        if (i10 == 24) {
            return "submission_approved";
        }
        switch (i10) {
            case 9:
                return "like";
            case 10:
                return "unlike";
            case 11:
                return EventConstants.PostType.REPOST;
            case 12:
                return "poll_option_added";
            case 13:
                return "poll_approved";
            case 14:
                return "poll_vote_up";
            case 15:
                return "poll_ended";
            case 16:
                return "your_poll_ended";
            case 17:
                return "poll_ended";
            default:
                switch (i10) {
                    case 26:
                        return "activities_blog";
                    case 27:
                        return "activities_wiki";
                    case 28:
                        return "activities_chat_thread";
                    case 29:
                        return "invite_voice_chat";
                    case 30:
                        return "invite_video_chat";
                    case 31:
                        return "create_voice_chat";
                    case 32:
                        return "create_video_chat";
                    case 33:
                        return "shared_file_uploaded";
                    case 34:
                        return "invite_avatar_chat";
                    case 35:
                        return "create_avatar_chat";
                    case 36:
                        return "add_custom_title";
                    default:
                        return null;
                }
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        if (!this.fromAggregation) {
            return EventConstants.GlobalNavigation.NOTIFICATIONS;
        }
        int i10 = this.cid;
        if (i10 == 0) {
            return "global";
        }
        return i10 > 0 ? SearchPrefsHelper.PREFS_KEY_COMMUNITY : "";
    }

    @Override // com.narvii.app.NVFragment
    public int getPostEntryLift() {
        return OptinAdsUtil.getBannerLift(this, 2);
    }

    public boolean isAlertAllRead() {
        return this.alertAllRead;
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$0(View view) {
        ensureLogin(new Intent());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void launchCommunity(Community community) {
        if (community != null) {
            MyCommunityListService myCommunityListService = (MyCommunityListService) getService("myCommunityList");
            List<Community> listRawList = myCommunityListService.rawList();
            int iIndexOfId = Utils.indexOfId(listRawList, community.id + "");
            if (iIndexOfId <= -1) {
                CommunityLaunchHelper communityLaunchHelper = new CommunityLaunchHelper(this);
                communityLaunchHelper.needUpdateCommunity = false;
                communityLaunchHelper.launch(community.id, community);
                return;
            }
            new CommunityLaunchHelper(this).launch(community.id, listRawList.get(iIndexOfId), myCommunityListService.getCommunityTimestamp(community.id), myCommunityListService.getUserProfile(community.id), myCommunityListService.getUserInfoTimestamp(community.id), myCommunityListService.getReminder(community.id), myCommunityListService.getReminderTimestamp(community.id), false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openSettings() {
        if (this.cid == 0) {
            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, FragmentWrapperActivity.intent(PushSettingListFragment.class));
            return;
        }
        Intent intent = FragmentWrapperActivity.intent(CommunityPushSettingFragment.class);
        intent.putExtra(CommunityPushSettingFragment.COMMUNITY_PUSH_SETTING_ID, this.cid);
        intent.putExtra(CommunityPushSettingFragment.COMMUNITY_PUSH_SETTING_NAME, ((CommunityService) getService(SearchPrefsHelper.PREFS_KEY_COMMUNITY)).getCommunity(this.cid).name);
        intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Alerts");
        safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateClearButtonStatus() {
        Adapter adapter = this.adapter;
        boolean z6 = (adapter == null || adapter.isEmpty()) ? false : true;
        PopupWindow popupWindow = this.popupWindow;
        if (popupWindow != null && popupWindow.getContentView() != null) {
            this.popupWindow.getContentView().findViewById(R.id.clear_all).setEnabled(z6);
            TintButton tintButton = (TintButton) this.popupWindow.getContentView().findViewById(R.id.clear_all_icon);
            int i10 = z6 ? -1437166 : -8618884;
            if (tintButton != null) {
                tintButton.setTintColor(i10);
            }
            TextView textView = (TextView) this.popupWindow.getContentView().findViewById(R.id.clear_all_text);
            if (textView != null) {
                textView.setTextColor(i10);
            }
        }
        if (isRootFragment() && (getActivity() instanceof NVActivity)) {
            ((NVActivity) getActivity()).setRightButtonEnabled(z6);
        }
    }

    private void updateCommunityLayout(View view) {
        final Community community = (Community) JacksonUtils.readAs(getStringParam(SearchPrefsHelper.PREFS_KEY_COMMUNITY), Community.class);
        updateCommunityLayoutVisibility(view);
        view.findViewById(R.id.community_info_layout).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.notice.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f2544a.lambda$updateCommunityLayout$1(community, view2);
            }
        });
        CommunityIconView communityIconView = (CommunityIconView) view.findViewById(R.id.community_icon);
        TextView textView = (TextView) view.findViewById(R.id.community_title);
        communityIconView.setCommunity(community);
        communityIconView.setShowPressedMask(community != null);
        textView.setText(community == null ? null : community.name);
        final View viewFindViewById = view.findViewById(R.id.more);
        viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.notice.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f2546a.lambda$updateCommunityLayout$2(viewFindViewById, view2);
            }
        });
    }

    private void updateCommunityLayoutVisibility(View view) {
        ViewUtils.show(view, R.id.community_info_layout, ((AccountService) getService("account")).hasAccount());
    }

    public void clearAll(boolean z6) {
        if (!z6) {
            ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
            actionSheetDialog.addItem(R.string.clear_all_alerts, true);
            actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.notice.NoticeListFragment.8
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i10) {
                    if (i10 == 0) {
                        NoticeListFragment.this.clearAll(true);
                    }
                }
            });
            actionSheetDialog.show();
            return;
        }
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.notice.NoticeListFragment.9
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                LogEvent.clickWildcardBuilder(NoticeListFragment.this, "DeleteAllAlerts").send();
                Adapter adapter = NoticeListFragment.this.adapter;
                if (adapter != null) {
                    adapter.resetEmptyList();
                }
                if (!NoticeListFragment.this.fromAggregation) {
                    Intent intent = new Intent(NoticeListFragment.CLEAR_ALL_ALERTS);
                    intent.putExtra(CmcdConfiguration.KEY_CONTENT_ID, NoticeListFragment.this.cid);
                    LocalBroadcastManager.b(NoticeListFragment.this.getContext()).d(intent);
                }
                ((AccountService) NoticeListFragment.this.getService("account")).updateNotificationCount(NoticeListFragment.this.cid, 0, apiResponse.timestamp, true);
            }
        };
        progressDialog.show();
        ((ApiService) getService("api")).exec(ApiRequest.builder().delete().communityId(this.cid).path("/notification").build(), progressDialog.dismissListener);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        DividerAdapter dividerAdapter = new DividerAdapter(this);
        NoticeMergeAdapter noticeMergeAdapter = new NoticeMergeAdapter();
        this.adapter = new Adapter();
        this.importNoticeAdapter = new ImportNoticeAdapter();
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        mergeAdapter.addAdapter(this.importNoticeAdapter);
        mergeAdapter.addAdapter(this.adapter, true);
        dividerAdapter.setAdapter(mergeAdapter, 2);
        noticeMergeAdapter.addAdapter(dividerAdapter);
        return noticeMergeAdapter;
    }

    public void delete(final Notice notice, boolean z6) {
        if (!z6) {
            ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
            actionSheetDialog.addItem(R.string.delete, true);
            actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.notice.NoticeListFragment.6
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i10) {
                    if (i10 == 0) {
                        LogEvent.clickBuilder(NoticeListFragment.this, ActSemantic.delete).area("AlertList").extraParam("alertType", Integer.valueOf(notice.type)).send();
                        NoticeListFragment.this.delete(notice, true);
                    }
                }
            });
            actionSheetDialog.show();
            return;
        }
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.notice.NoticeListFragment.7
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                NotificationUtils.sendNotificationIncludeGlobal(NoticeListFragment.this, new Notification("delete", notice));
            }
        };
        progressDialog.show();
        ((ApiService) getService("api")).exec(ApiRequest.builder().delete().communityId(this.cid).path("/notification/" + notice.notificationId).build(), progressDialog.dismissListener);
    }

    @Override // com.narvii.list.NVListFragment
    @NonNull
    protected Drawable getFrameDarkBackgroundDrawable() {
        if (this.fromAggregation) {
            return new ColorDrawable(0);
        }
        ConfigService configService = this.config;
        return (configService == null || configService.getTheme() == null) ? super.getFrameDarkBackgroundDrawable() : new ColorDrawable(this.config.getTheme().colorPrimary());
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        if (this.fromAggregation) {
            unregisterLocalReceiver(this.clearReceiver);
        }
        unregisterLocalReceiver(this.receiver);
        super.onDestroy();
    }

    @Override // com.narvii.list.NVListFragment
    protected void onEmptyRetry() {
        ImportNoticeAdapter importNoticeAdapter = this.importNoticeAdapter;
        if (importNoticeAdapter != null) {
            importNoticeAdapter.isImportantNoticeLoaded = false;
            importNoticeAdapter.refresh(2, null);
        }
        Adapter adapter = this.adapter;
        if (adapter != null) {
            adapter.refresh(2, null);
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.list.refresh.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        ImportNoticeAdapter importNoticeAdapter = this.importNoticeAdapter;
        if (importNoticeAdapter != null) {
            importNoticeAdapter.refresh(0, this.refreshCallback);
        }
    }

    public void requestCheckNotification() {
        ((ApiService) getService("api")).exec(new ApiRequest.Builder().path("/notification/checked").post().communityId(this.cid).build(), new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.notice.NoticeListFragment.5
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i10, list, str, apiResponse, th);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                super.onFinish(apiRequest, apiResponse);
                AccountService accountService = (AccountService) NoticeListFragment.this.getService("account");
                if (NoticeListFragment.this.cid == 0) {
                    Log.i("globalNotificationCount", "0-" + DateTimeFormatter.parseISO8601(apiResponse.timestamp).getTime() + "-readAll");
                }
                accountService.updateNotificationCount(NoticeListFragment.this.cid, 0, apiResponse.timestamp, true);
                NoticeListFragment.this.alertAllRead = true;
            }
        });
    }

    @Override // com.narvii.list.NVListFragment
    protected void updateViews() {
        if (this.accountService.hasAccount()) {
            View view = this.notLoginView;
            if (view != null) {
                view.setVisibility(4);
            }
            super.updateViews();
            return;
        }
        ListView listView = getListView();
        if (listView != null) {
            setListViewVisibility(listView, false);
        }
        SwipeRefreshLayout swipeRefreshLayout = this.swipeLayout;
        if (swipeRefreshLayout != null) {
            swipeRefreshLayout.setVisibility(4);
        }
        View view2 = this.emptyView;
        if (view2 != null) {
            view2.setVisibility(4);
        }
        View view3 = this.progressView;
        if (view3 != null) {
            view3.setVisibility(4);
        }
        View view4 = this.notLoginView;
        if (view4 != null) {
            view4.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateCommunityLayout$1(Community community, View view) {
        launchCommunity(community);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateCommunityLayout$2(View view, View view2) {
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.aggregation_alert_community_more, (ViewGroup) null);
        this.popupWindow = new PopupWindow(viewInflate, -2, -2, true);
        viewInflate.findViewById(R.id.main).setBackgroundDrawable(ContextCompat.getDrawable(getContext(), R.drawable.bg_rect_white_7_corner));
        viewInflate.findViewById(R.id.settings).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.notice.NoticeListFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view3) {
                LogEvent.clickWildcardBuilder(NoticeListFragment.this, "Settings").send();
                NoticeListFragment.this.openSettings();
                NoticeListFragment.this.popupWindow.dismiss();
                NoticeListFragment.this.popupWindow = null;
            }
        });
        viewInflate.findViewById(R.id.clear_all).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.notice.NoticeListFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view3) {
                NoticeListFragment.this.clearAll(false);
                NoticeListFragment.this.popupWindow.dismiss();
                NoticeListFragment.this.popupWindow = null;
            }
        });
        this.popupWindow.setFocusable(true);
        this.popupWindow.setOutsideTouchable(true);
        if (Utils.isRtl()) {
            this.popupWindow.showAsDropDown(view, -Utils.dpToPxInt(getContext(), 6.0f), 0, 8388661);
        } else {
            this.popupWindow.showAsDropDown(view);
        }
        updateClearButtonStatus();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment
    public void onActiveChanged(boolean z6) {
        LiveLayerService liveLayerService;
        super.onActiveChanged(z6);
        if (this.fromAggregation || (liveLayerService = (LiveLayerService) getService("liveLayer")) == null) {
            return;
        }
        liveLayerService.reportBrowsing(EventConstants.GlobalNavigation.NOTIFICATIONS, z6);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        if (isRootFragment()) {
            setActionBarRightButton(R.string.clear_all, getResources().getDrawable(R.drawable.actionbar_red_right_btn), this.clearListener);
            updateClearButtonStatus();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.push_setting) {
            LogEvent.clickWildcardBuilder(this, "Settings").send();
            openSettings();
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.alerts);
        this.notificationManagerHelper = new NotificationManagerHelper(getContext());
        this.accountService = (AccountService) getService("account");
        boolean booleanParam = getBooleanParam("fromAggregation");
        this.fromAggregation = booleanParam;
        setDarkTheme(booleanParam);
        setDarkNVTheme(this.fromAggregation);
        this.config = (ConfigService) getService("config");
        int intParam = getIntParam(CmcdConfiguration.KEY_CONTENT_ID, -1);
        this.cid = intParam;
        if (intParam == -1) {
            this.cid = this.config.getCommunityId();
        }
        if (this.fromAggregation) {
            registerLocalReceiver(this.clearReceiver, new IntentFilter(CLEAR_ALL_ALERTS));
        }
        if (bundle == null) {
            ((StatisticsService) getService("statistics")).event("Notification Center Page Opened").userPropInc("Notification Center Page Opened Total").source(getStringParam(ExternalPostPreviewFragment.SOURCE));
        }
        registerLocalReceiver(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
    }

    @Override // com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.notification_list_view, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onErrorRetry() {
        super.onErrorRetry();
        ImportNoticeAdapter importNoticeAdapter = this.importNoticeAdapter;
        if (importNoticeAdapter != null) {
            importNoticeAdapter.onErrorRetry();
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
        listView.setDividerHeight(0);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onPause() {
        Notice notice;
        long jMax;
        super.onPause();
        AccountService accountService = (AccountService) getService("account");
        SharedPreferences prefs = accountService.getPrefs();
        if (isFinishing()) {
            List<? extends Notice> listRawList = this.adapter.rawList();
            if (listRawList != null && listRawList.size() != 0) {
                notice = listRawList.get(0);
            } else {
                notice = null;
            }
            SharedPreferences.Editor editorRemove = prefs.edit().remove(accountService.getPrefsKey(this.cid, "notificationReadList"));
            String prefsKey = accountService.getPrefsKey(this.cid, "notificationReadTime");
            if (notice == null) {
                jMax = 0;
            } else {
                jMax = Math.max(notice.createdTime.getTime(), this.readTime);
            }
            editorRemove.putLong(prefsKey, jMax).apply();
            return;
        }
        prefs.edit().putStringSet(accountService.getPrefsKey(this.cid, "notificationReadList"), this.readList).apply();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        AccountService accountService = (AccountService) getService("account");
        SharedPreferences prefs = accountService.getPrefs();
        this.readTime = prefs.getLong(accountService.getPrefsKey(this.cid, "notificationReadTime"), 0L);
        Set<String> stringSet = prefs.getStringSet(accountService.getPrefsKey(this.cid, "notificationReadList"), null);
        this.readList = stringSet;
        if (stringSet == null) {
            this.readList = new HashSet();
        }
        Adapter adapter = this.adapter;
        if (adapter != null) {
            adapter.notifyDataSetChanged();
        }
        updatePushSettingItem();
        if (this.fromAggregation) {
            updateCommunityLayoutVisibility(getView());
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        ConfigService configService;
        super.onViewCreated(view, bundle);
        View viewFindViewById = view.findViewById(R.id.not_login_view);
        this.notLoginView = viewFindViewById;
        if (viewFindViewById != null) {
            viewFindViewById.findViewById(R.id.not_login_button).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.notice.e
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f2549a.lambda$onViewCreated$0(view2);
                }
            });
        }
        getListView().setOnItemLongClickListener(this.adapter);
        setEmptyView(R.layout.notification_empty_view);
        if (bundle == null) {
            getChildFragmentManager().q().b(R.id.notification_turned_off_warning_frame, new NotificationTurnedOffWarningFragment()).k();
        }
        updatePushSettingItem();
        if (this.fromAggregation) {
            updateCommunityLayout(view);
            if (view instanceof NVThemeLinearLayout) {
                ((NVThemeLinearLayout) view).setDarkBackgroundDrawable(new ColorDrawable(0));
                return;
            }
            return;
        }
        if ((view instanceof NVThemeLinearLayout) && (configService = this.config) != null && configService.getTheme() != null) {
            ((NVThemeLinearLayout) view).setDarkBackgroundDrawable(new ColorDrawable(this.config.getTheme().colorPrimary()));
        }
    }

    protected void updatePushSettingItem() {
        int i10;
        View viewFindViewById = getView().findViewById(R.id.push_setting);
        if (this.fromAggregation) {
            i10 = 8;
        } else {
            i10 = 0;
        }
        viewFindViewById.setVisibility(i10);
        getView().findViewById(R.id.push_setting).setOnClickListener(this);
    }
}
