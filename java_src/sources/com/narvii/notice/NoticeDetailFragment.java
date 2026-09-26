package com.narvii.notice;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.account.AccountService;
import com.narvii.account.notice.AccountNotice;
import com.narvii.adapter.MarginAdapter;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.community.ReminderCheckResult;
import com.narvii.list.AdriftAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.master.search.SearchPrefsHelper;
import com.narvii.media.MediaGalleryActivity;
import com.narvii.model.Community;
import com.narvii.model.Media;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.services.incubator.IncubatorNoticeService;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.Callback;
import com.narvii.util.DateTimeFormatter;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NotificationUtils;
import com.narvii.util.StringUtils;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.text.DefaultTagClickListener;
import com.narvii.util.text.LinkTouchMovementMethod;
import com.narvii.util.text.NVText;
import com.narvii.widget.EmojioneView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NicknameView;
import com.narvii.widget.UserAvatarLayout;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class NoticeDetailFragment extends NVListFragment implements View.OnClickListener {
    private String appealTicketId;
    private TextView btnAppeal;
    View btnGotit;
    private Community community;
    private AccountNotice notice;
    DefaultTagClickListener tagClickListener = new DefaultTagClickListener() { // from class: com.narvii.notice.NoticeDetailFragment.1
        public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        @Override // com.narvii.util.text.DefaultTagClickListener
        protected void startActivity(View view, Intent intent) {
            safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(NoticeDetailFragment.this.getContext(), intent);
        }
    };
    UserAvatarLayout userAvatarLayout;

    class AttachInfoAdapter extends AdriftAdapter {
        public AttachInfoAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.item_notice_attch_layout, viewGroup, view);
            NoticeDetailFragment.this.configRefObjView(viewCreateView);
            return viewCreateView;
        }
    }

    class AttachMediasAdapter extends AdriftAdapter {
        MediaRecycleAdapter adapter;

        public AttachMediasAdapter(NVContext nVContext) {
            super(nVContext);
            this.adapter = NoticeDetailFragment.this.new MediaRecycleAdapter(NoticeDetailFragment.this.notice.getAttachMedias());
        }

        @Override // com.narvii.list.AdriftAdapter, android.widget.Adapter
        public int getCount() {
            return (NoticeDetailFragment.this.notice == null || NoticeDetailFragment.this.notice.type != 11 || NoticeDetailFragment.this.notice.getAttachMedias() == null || NoticeDetailFragment.this.notice.getAttachMedias().size() <= 0) ? 0 : 1;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.item_notice_attch_medias, viewGroup, view);
            RecyclerView recyclerView = (RecyclerView) viewCreateView.findViewById(R.id.attach_media_recycleView);
            recyclerView.setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
            if (recyclerView.getAdapter() instanceof MediaRecycleAdapter) {
                ((MediaRecycleAdapter) recyclerView.getAdapter()).notifyImageChanged(NoticeDetailFragment.this.notice.getAttachMedias());
            } else {
                recyclerView.setAdapter(this.adapter);
                this.adapter.notifyImageChanged(NoticeDetailFragment.this.notice.getAttachMedias());
            }
            return viewCreateView;
        }
    }

    class MediaHolder extends RecyclerView.ViewHolder {
        NVImageView imageView;

        public MediaHolder(View view) {
            super(view);
            this.imageView = (NVImageView) view.findViewById(R.id.image);
        }
    }

    class MediaRecycleAdapter extends RecyclerView.Adapter<MediaHolder> {
        List<Media> list;

        MediaRecycleAdapter(List<Media> list) {
            new ArrayList();
            this.list = list;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            List<Media> list = this.list;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        public void notifyImageChanged(List<Media> list) {
            this.list = list;
            notifyDataSetChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull MediaHolder mediaHolder, final int i10) {
            Media media = this.list.get(i10);
            mediaHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.notice.NoticeDetailFragment.MediaRecycleAdapter.1
                public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
                    Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
                    if (p1 == null) {
                        return;
                    }
                    p0.startActivity(p1);
                }

                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    Intent intent = new Intent(NoticeDetailFragment.this.getContext(), (Class<?>) MediaGalleryActivity.class);
                    intent.putExtra("list", JacksonUtils.writeAsString(MediaRecycleAdapter.this.list));
                    intent.putExtra("position", i10);
                    safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(NoticeDetailFragment.this, intent);
                }
            });
            NVImageView nVImageView = mediaHolder.imageView;
            if (nVImageView != null) {
                nVImageView.setImageUrl(media == null ? null : media.url);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public MediaHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i10) {
            return NoticeDetailFragment.this.new MediaHolder(LayoutInflater.from(NoticeDetailFragment.this.getContext()).inflate(R.layout.item_notice_attah_media, viewGroup, false));
        }
    }

    class NoticeDetailAdapter extends AdriftAdapter {
        public NoticeDetailAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.item_notice_detail, viewGroup, view);
            NoticeDetailFragment.this.configDetailView(viewCreateView);
            return viewCreateView;
        }
    }

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    private void appealNotice() {
        final NoticeHelper noticeHelper = new NoticeHelper(this);
        noticeHelper.sendAppealNoticeRequest(this.notice, new Callback<Boolean>() { // from class: com.narvii.notice.NoticeDetailFragment.2
            @Override // com.narvii.util.Callback
            public void call(Boolean bool) {
                if (bool == null || !bool.booleanValue()) {
                    return;
                }
                NotificationUtils.sendNotificationIncludeGlobal((NotificationCenter) NoticeDetailFragment.this.getService("notification"), new Notification("delete", NoticeDetailFragment.this.notice));
                NoticeDetailFragment.this.updateNoticeCount();
                noticeHelper.showAppealReceivedDialog();
                if (NoticeDetailFragment.this.btnAppeal != null) {
                    NoticeDetailFragment.this.btnAppeal.setText(R.string.appeal_sent);
                    NoticeDetailFragment.this.btnAppeal.setEnabled(false);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void configDetailView(View view) {
        int noticeLableColor;
        String string;
        int i10;
        AccountNotice accountNotice = this.notice;
        boolean z6 = accountNotice != null && ((i10 = accountNotice.type) == 4 || i10 == 10);
        boolean z10 = accountNotice != null && accountNotice.type == 11;
        if (z10) {
            noticeLableColor = accountNotice.getNoticeLableColor();
        } else {
            noticeLableColor = z6 ? -501929 : -34816;
        }
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(noticeLableColor);
        gradientDrawable.setCornerRadius(Utils.dpToPx(getContext(), 5.0f));
        if (z10) {
            string = this.notice.getNoticeLabel();
        } else {
            string = getString(z6 ? R.string.strike : R.string.warning);
        }
        TextView textView = (TextView) view.findViewById(R.id.label);
        textView.setText(string);
        textView.setVisibility(TextUtils.isEmpty(string) ? 8 : 0);
        textView.setBackgroundDrawable(gradientDrawable);
        ((TextView) view.findViewById(R.id.datetime)).setText(this.notice == null ? null : DateTimeFormatter.getInstance(getContext()).format(this.notice.createdTime));
        TextView textView2 = (TextView) view.findViewById(R.id.mute_time);
        AccountNotice accountNotice2 = this.notice;
        int muteTime = accountNotice2 == null ? 0 : accountNotice2.getMuteTime();
        if (textView2 != null) {
            textView2.setVisibility((!z6 || muteTime <= 0) ? 8 : 0);
            if (muteTime == 1) {
                textView2.setText(getString(R.string.mute_time, Integer.valueOf(muteTime)));
            } else {
                textView2.setText(getString(R.string.mute_time_n, Integer.valueOf(muteTime)));
            }
        }
        TextView textView3 = (TextView) view.findViewById(R.id.content);
        AccountNotice accountNotice3 = this.notice;
        NVText nVText = new NVText(accountNotice3 == null ? "" : accountNotice3.strikeContent());
        nVText.markAllEntries(this.tagClickListener);
        textView3.setMovementMethod(LinkTouchMovementMethod.getInstance());
        textView3.setText(nVText);
        view.findViewById(R.id.community_container).setVisibility(this.community == null ? 8 : 0);
        if (this.community != null) {
            ((NVImageView) view.findViewById(R.id.community_icon)).setImageUrl(this.community.icon);
            ((TextView) view.findViewById(R.id.community_name)).setText(this.community.name);
        }
        AccountNotice accountNotice4 = this.notice;
        User user = accountNotice4 == null ? null : accountNotice4.operator;
        UserAvatarLayout userAvatarLayout = (UserAvatarLayout) view.findViewById(R.id.user_avatar_layout);
        this.userAvatarLayout = userAvatarLayout;
        if (user != null) {
            userAvatarLayout.setUser(user);
            NVImageView nVImageView = (NVImageView) view.findViewById(R.id.avatar);
            nVImageView.setImageUrl(user.icon());
            NicknameView nicknameView = (NicknameView) view.findViewById(R.id.nickname);
            boolean zIsSystem = user.isSystem();
            nicknameView.setTextColor(zIsSystem ? -12894400 : -11890462);
            nicknameView.setUser(user);
            nVImageView.setOnClickListener(zIsSystem ? null : this);
            nicknameView.setOnClickListener(zIsSystem ? null : this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void configRefObjView(View view) {
        String str;
        if (this.notice == null) {
            return;
        }
        View viewFindViewById = view.findViewById(R.id.strike_obj_container);
        View viewFindViewById2 = view.findViewById(R.id.ref_obj_margin);
        viewFindViewById.setOnClickListener(this);
        NVImageView nVImageView = (NVImageView) view.findViewById(R.id.obj_avatar);
        TextView textView = (TextView) view.findViewById(R.id.obj_title);
        TextView textView2 = (TextView) view.findViewById(R.id.obj_content);
        EmojioneView emojioneView = (EmojioneView) view.findViewById(R.id.mood_sticker);
        boolean zIsGlobal = this.notice.isGlobal();
        viewFindViewById.setVisibility(zIsGlobal ? 8 : 0);
        viewFindViewById2.setVisibility(zIsGlobal ? 8 : 0);
        boolean z6 = this.notice.attchObjectType() == 0;
        AccountNotice accountNotice = this.notice;
        String str2 = null;
        User user = accountNotice == null ? null : accountNotice.targetUser;
        nVImageView.setCornerRadius(z6 ? getResources().getDimensionPixelOffset(R.dimen.strike_warning_avatar_size) : 0);
        if (!z6 || user == null) {
            nVImageView.defaultDrawable = new ColorDrawable(getResources().getColor(R.color.placeholder_popular));
            Media mediaAttachObjectFirstMedia = this.notice.attachObjectFirstMedia();
            boolean z10 = (mediaAttachObjectFirstMedia == null || (str = mediaAttachObjectFirstMedia.url) == null || !str.startsWith("ndcsticker://e/")) ? false : true;
            emojioneView.setVisibility(z10 ? 0 : 8);
            nVImageView.setVisibility((mediaAttachObjectFirstMedia == null || z10) ? 8 : 0);
            if (z10) {
                emojioneView.setEmoji(new String(StringUtils.hex2bytes(mediaAttachObjectFirstMedia.url.substring(15))));
            } else if (this.notice.attchObjectType() == 7) {
                str2 = NVImageView.TYPE_CHAT_MESSAGE;
            } else if (this.notice.attchObjectType() == 109) {
                str2 = NVImageView.TYPE_SHARED_FOLDER_IMAGE;
            }
            nVImageView.imageType = str2;
            nVImageView.setImageMedia(mediaAttachObjectFirstMedia);
        } else {
            nVImageView.defaultDrawable = getResources().getDrawable(R.drawable.user_avatar_placeholder);
            nVImageView.setImageUrl(user.icon());
        }
        if (!z6 || user == null) {
            textView.setText(this.notice.attachTitle());
            textView.setVisibility(TextUtils.isEmpty(this.notice.attachTitle()) ? 8 : 0);
        } else {
            textView.setText(user.nickname());
            textView.setVisibility(TextUtils.isEmpty(user.nickname()) ? 8 : 0);
        }
        if (z6 && user != null) {
            textView2.setVisibility(8);
        } else {
            textView2.setText(this.notice.attachContent());
            textView2.setVisibility(TextUtils.isEmpty(this.notice.attachContent()) ? 8 : 0);
        }
    }

    private void openRefObject() {
        String strAttchObjectString;
        AccountNotice accountNotice = this.notice;
        if (accountNotice == null || (strAttchObjectString = accountNotice.attchObjectString("link")) == null) {
            return;
        }
        try {
            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, new Intent("android.intent.action.VIEW", Uri.parse(strAttchObjectString)));
        } catch (Exception unused) {
        }
    }

    private void resolveCurNotice() {
        if (this.notice == null) {
            return;
        }
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.notice.NoticeDetailFragment.4
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                NoticeDetailFragment.this.updateNoticeCount();
                NotificationUtils.sendNotificationIncludeGlobal((NotificationCenter) NoticeDetailFragment.this.getService("notification"), new Notification("delete", NoticeDetailFragment.this.notice));
                NoticeDetailFragment.this.finish();
            }
        };
        int i10 = this.notice.cid;
        ApiRequest.Builder builderPost = ApiRequest.builder().path("/notice/" + this.notice.noticeId + "/accept").post();
        if (i10 == 0) {
            builderPost.global();
        } else {
            builderPost.communityId(i10);
        }
        ((ApiService) getService("api")).exec(builderPost.build(), progressDialog.dismissListener);
        progressDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateNoticeCount() {
        if (this.notice == null) {
            return;
        }
        final AccountService accountService = (AccountService) getService("account");
        if (accountService.hasAccount()) {
            if (this.notice.cid > 0) {
                ((ApiService) getService("api")).exec(ApiRequest.builder().path("reminder/check").communityId(this.notice.cid).tag(ApiService.ASYNC_CALL_TAG).param("ignoreUnreadChatThreadsCount", Boolean.TRUE).param("timezone", Integer.valueOf(Utils.getTimeZoneInMin())).build(), new ApiResponseListener<ReminderCheckResult>(ReminderCheckResult.class) { // from class: com.narvii.notice.NoticeDetailFragment.3
                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    }

                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFinish(ApiRequest apiRequest, ReminderCheckResult reminderCheckResult) throws Exception {
                        accountService.updateNotificationCount(NoticeDetailFragment.this.notice.cid, reminderCheckResult.reminderCheckResult.notificationsCount, reminderCheckResult.timestamp, true);
                        accountService.updateNoticeCount(NoticeDetailFragment.this.notice.cid, reminderCheckResult.reminderCheckResult.noticesCount, reminderCheckResult.timestamp, true);
                    }
                });
            }
            IncubatorNoticeService incubatorNoticeService = (IncubatorNoticeService) getService("_notice");
            if (incubatorNoticeService != null) {
                incubatorNoticeService.sendGlobalNoticeRequest();
            }
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        mergeAdapter.addAdapter(new NoticeDetailAdapter(this), true);
        mergeAdapter.addAdapter(new AttachMediasAdapter(this));
        mergeAdapter.addAdapter(new AttachInfoAdapter(this));
        mergeAdapter.addAdapter(new MarginAdapter(this, (int) Utils.dpToPx(getContext(), 170.0f)));
        return mergeAdapter;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.appeal /* 2131362087 */:
                appealNotice();
                break;
            case R.id.avatar /* 2131362161 */:
            case R.id.nickname /* 2131364345 */:
                Intent intent = UserProfileFragment.intent(this, this.notice.operator);
                if (intent != null) {
                    safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
                }
                break;
            case R.id.got_it /* 2131363367 */:
                resolveCurNotice();
                break;
            case R.id.strike_obj_container /* 2131365342 */:
                openRefObject();
                break;
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        int i10;
        String appealTicketId;
        int i11;
        super.onCreate(bundle);
        this.notice = (AccountNotice) JacksonUtils.readAs(getStringParam("notice"), AccountNotice.class);
        this.community = (Community) JacksonUtils.readAs(getStringParam(SearchPrefsHelper.PREFS_KEY_COMMUNITY), Community.class);
        AccountNotice accountNotice = this.notice;
        if (accountNotice != null && ((i11 = accountNotice.type) == 4 || i11 == 10)) {
            i10 = R.string.strike_detail_title;
        } else {
            i10 = R.string.warnning_info;
        }
        setTitle(i10);
        AccountNotice accountNotice2 = this.notice;
        if (accountNotice2 == null) {
            appealTicketId = null;
        } else {
            appealTicketId = accountNotice2.getAppealTicketId();
        }
        this.appealTicketId = appealTicketId;
    }

    @Override // com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_notice_detail, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        int i10;
        super.onViewCreated(view, bundle);
        TextView textView = (TextView) view.findViewById(R.id.appeal);
        this.btnAppeal = textView;
        textView.setOnClickListener(this);
        TextView textView2 = this.btnAppeal;
        if (TextUtils.isEmpty(this.appealTicketId)) {
            i10 = 8;
        } else {
            i10 = 0;
        }
        textView2.setVisibility(i10);
        View viewFindViewById = view.findViewById(R.id.got_it);
        this.btnGotit = viewFindViewById;
        viewFindViewById.setOnClickListener(this);
    }
}
