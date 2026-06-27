package com.narvii.invite;

import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.support.v4.internal.view.SupportMenu;
import android.support.v4.view.ViewCompat;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.ImageLoader;
import com.google.android.exoplayer2.util.MimeTypes;
import com.narvii.account.AccountService;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.community.CommunityService;
import com.narvii.community.CommunityShareFragment;
import com.narvii.config.ConfigService;
import com.narvii.lib.R;
import com.narvii.list.AdriftAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.model.Community;
import com.narvii.model.api.ApiResponse;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.share.ShareDarkRoomFragment;
import com.narvii.share.ShareDialog;
import com.narvii.share.SharePayload;
import com.narvii.share.ShareViewHelper;
import com.narvii.share.elements.ClipboardElement;
import com.narvii.util.Callback;
import com.narvii.util.DateTimeFormatter;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.ViewUtils;
import com.narvii.util.blur.NativeBlurProcess;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.image.NVImageLoader;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.NVListView;
import com.narvii.widget.PromotionalImageView;
import com.narvii.widget.ThumbImageView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class InviteMembersFragment extends NVListFragment {
    public static final int SECOND_DAY = 86400;
    public static final int SECOND_HOUR = 3600;
    public static final int SECOND_MINUTE = 60;
    AccountService accountService;
    CommunityConfigHelper communityConfigHelper;
    ConfigService configService;
    public CountDownTimer countDownTimer;
    DateTimeFormatter dateTimeFormatter;
    Adapter inviteAdadpter;
    InviteFriendHelper inviteFriendHelper;
    private boolean isLeader;
    private int themeColor;
    LinkedHashMap<Integer, String> linkedHashMap = new LinkedHashMap<>();
    ArrayList<Integer> durtationList = new ArrayList<>();

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        this.inviteAdadpter = new Adapter(this);
        ShareCardAdapter shareCardAdapter = new ShareCardAdapter(this);
        mergeAdapter.addAdapter(this.inviteAdadpter);
        mergeAdapter.addAdapter(shareCardAdapter, true);
        return mergeAdapter;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.invite_members);
        this.accountService = (AccountService) getService("account");
        this.isLeader = this.accountService.hasAccount() && this.accountService.getUserProfile().isLeader();
        this.communityConfigHelper = new CommunityConfigHelper(this);
        this.dateTimeFormatter = new DateTimeFormatter();
        this.inviteFriendHelper = new InviteFriendHelper();
        this.linkedHashMap.put(0, getString(R.string.never));
        this.linkedHashMap.put(259200, getString(R.string.datetime_n_days, 3));
        this.linkedHashMap.put(Integer.valueOf(SECOND_DAY), getString(R.string.datetime_one_day));
        this.linkedHashMap.put(43200, getString(R.string.datetime_n_hours, 12));
        this.linkedHashMap.put(Integer.valueOf(SECOND_HOUR), getString(R.string.datetime_one_hour));
        this.linkedHashMap.put(1800, getString(R.string.datetime_n_minutes, 30));
        this.configService = (ConfigService) getService("config");
        this.themeColor = this.configService.getTheme().colorPrimary();
        Iterator<Map.Entry<Integer, String>> it = this.linkedHashMap.entrySet().iterator();
        while (it.hasNext()) {
            this.durtationList.add(it.next().getKey());
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
        listView.setDividerHeight(0);
        NVListView nVListView = (NVListView) listView;
        nVListView.setOverscrollStretchHeader(-788993);
        nVListView.setOverscrollStretchFooter(-788993);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        CountDownTimer countDownTimer = this.countDownTimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        super.onDestroy();
    }

    class Adapter extends AdriftAdapter {
        public View cell;
        public String error;
        NewInvitationResponse response;

        public Adapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.list.AdriftAdapter, android.widget.Adapter
        public int getCount() {
            if (NVApplication.CLIENT_TYPE != 200) {
                if ((InviteMembersFragment.this.communityConfigHelper.getInvitePermissionType() == 2) && !InviteMembersFragment.this.isLeader) {
                    return 0;
                }
            }
            if (this.error != null) {
                return 0;
            }
            return super.getCount();
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (this.cell == null) {
                this.cell = createView(R.layout.layout_invite_members, viewGroup, view);
            }
            NewInvitationResponse newInvitationResponse = this.response;
            if (newInvitationResponse != null && newInvitationResponse.communityInvitation != null) {
                ((TextView) this.cell.findViewById(R.id.code)).setText(this.response.communityInvitation.inviteCode);
                ((TextView) this.cell.findViewById(R.id.link)).setText(this.response.communityInvitation.link);
                this.cell.findViewById(R.id.share).setOnClickListener(this.subviewClickListener);
                ((TextView) this.cell.findViewById(R.id.text)).setTextColor(InviteMembersFragment.this.themeColor);
                this.cell.findViewById(R.id.contact).setOnClickListener(this.subviewClickListener);
                TextView textView = (TextView) this.cell.findViewById(R.id.invite_history);
                textView.setOnClickListener(this.subviewClickListener);
                ViewUtils.underlineTextView(textView);
                TextView textView2 = (TextView) this.cell.findViewById(R.id.valid_links);
                textView2.setOnClickListener(this.subviewClickListener);
                ViewUtils.underlineTextView(textView2);
                final TextView textView3 = (TextView) this.cell.findViewById(R.id.count_down);
                TextView textView4 = (TextView) this.cell.findViewById(R.id.regenerate);
                ViewUtils.underlineTextView(textView4);
                textView4.setOnClickListener(this.subviewClickListener);
                this.cell.findViewById(R.id.link_layout).setOnClickListener(this.subviewClickListener);
                CountDownTimer countDownTimer = InviteMembersFragment.this.countDownTimer;
                if (countDownTimer != null) {
                    countDownTimer.cancel();
                }
                textView3.setTextColor(-6579301);
                Invitation invitation = this.response.communityInvitation;
                if (invitation.duration != 0) {
                    InviteMembersFragment.this.countDownTimer = new CountDownTimer(getRemainingTime(), 500L) { // from class: com.narvii.invite.InviteMembersFragment.Adapter.1
                        @Override // android.os.CountDownTimer
                        public void onTick(long j) {
                            Adapter adapter = Adapter.this;
                            adapter.updateCountDownText(textView3, adapter.response.communityInvitation);
                        }

                        @Override // android.os.CountDownTimer
                        public void onFinish() {
                            Adapter adapter = Adapter.this;
                            adapter.updateCountDownText(textView3, adapter.response.communityInvitation);
                        }
                    };
                    InviteMembersFragment.this.countDownTimer.start();
                } else {
                    updateCountDownText(textView3, invitation);
                }
                if (NVApplication.CLIENT_TYPE != 200) {
                    this.cell.findViewById(R.id.leader_controller).setVisibility(InviteMembersFragment.this.isLeader ? 0 : 8);
                } else {
                    this.cell.findViewById(R.id.leader_controller).setVisibility(0);
                }
            }
            return this.cell;
        }

        private long getRemainingTime() {
            return (this.response.communityInvitation.createdTime.getTime() + (this.response.communityInvitation.duration * 1000)) - System.currentTimeMillis();
        }

        private boolean isExpired() {
            return this.response.communityInvitation.duration != 0 && getRemainingTime() <= 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateCountDownText(TextView textView, Invitation invitation) {
            textView.setTextColor(-6579301);
            if (this.response.communityInvitation.duration > 0) {
                long remainingTime = getRemainingTime();
                if (remainingTime <= 0) {
                    textView.setText(R.string.expired);
                    textView.setTextColor(SupportMenu.CATEGORY_MASK);
                    return;
                }
                textView.setText(InviteMembersFragment.this.getString(R.string.expires_in) + " " + InviteMembersFragment.this.dateTimeFormatter.formatExpireCountDown(getContext(), remainingTime));
                return;
            }
            textView.setText(InviteMembersFragment.this.getString(R.string.expires_in) + " " + InviteMembersFragment.this.getString(R.string.never));
        }

        private boolean showDialogIfExpired() {
            boolean zIsExpired = isExpired();
            if (zIsExpired) {
                ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
                aCMAlertDialog.setMessage(InviteMembersFragment.this.getString(R.string.link_expired));
                aCMAlertDialog.addButton(R.string.generate, new View.OnClickListener() { // from class: com.narvii.invite.InviteMembersFragment.Adapter.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        Adapter.this.regenerate();
                    }
                });
                aCMAlertDialog.show();
            }
            return zIsExpired;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (view2 != null) {
                Community community = ((CommunityService) getService("community")).getCommunity(InviteMembersFragment.this.getIntParam("__communityId"));
                SharePayload sharePayload = InviteMembersFragment.this.inviteFriendHelper.getSharePayload(getContext(), community, this.response.communityInvitation);
                int id = view2.getId();
                if (id == R.id.share) {
                    if (showDialogIfExpired()) {
                        return false;
                    }
                    ShareDialog.getShareDialogFromCommunity(this.context, sharePayload).setSource("Share Invite URL").show();
                } else if (id == R.id.contact) {
                    if (showDialogIfExpired()) {
                        return false;
                    }
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("ndc://fragment/" + InviteContactFragment.class.getName()));
                    intent.putExtra("subject", sharePayload.subject);
                    intent.putExtra(MimeTypes.BASE_TYPE_TEXT, sharePayload.text);
                    intent.putExtra("__communityId", InviteMembersFragment.this.getIntParam("__communityId"));
                    startActivity(intent);
                } else if (id == R.id.invite_history) {
                    Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse("ndc://fragment/" + InviteHistoryFragment.class.getName()));
                    intent2.putExtra("__communityId", InviteMembersFragment.this.getIntParam("__communityId"));
                    startActivity(intent2);
                } else if (id == R.id.valid_links) {
                    Intent intent3 = new Intent("android.intent.action.VIEW", Uri.parse("ndc://fragment/" + ValidLinkFragment.class.getName()));
                    intent3.putExtra("__communityId", InviteMembersFragment.this.getIntParam("__communityId"));
                    startActivity(intent3);
                } else if (id == R.id.regenerate) {
                    regenerate();
                } else if (id == R.id.link_layout) {
                    SharePayload sharePayload2 = new SharePayload();
                    sharePayload2.object = community;
                    sharePayload2.url = this.response.communityInvitation.link;
                    ShareViewHelper shareViewHelper = new ShareViewHelper(this);
                    shareViewHelper.source = "Current Invite Code Copied";
                    shareViewHelper.share(sharePayload2, new ClipboardElement(this), null);
                }
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void regenerate() {
            ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
            actionSheetDialog.setTitle(R.string.regenerate_link_title);
            Iterator<Map.Entry<Integer, String>> it = InviteMembersFragment.this.linkedHashMap.entrySet().iterator();
            while (it.hasNext()) {
                actionSheetDialog.addItem(it.next().getValue(), false);
            }
            actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.invite.InviteMembersFragment.Adapter.3
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    int iIntValue = InviteMembersFragment.this.durtationList.get(i).intValue();
                    final ProgressDialog progressDialog = new ProgressDialog(Adapter.this.getContext());
                    progressDialog.show();
                    ((ApiService) Adapter.this.getService("api")).exec(ApiRequest.builder().scopeCommunityId(InviteMembersFragment.this.getIntParam("__communityId")).post().path("community/invitation").param("duration", Integer.valueOf(iIntValue)).param("force", true).build(), new ApiResponseListener<NewInvitationResponse>(NewInvitationResponse.class) { // from class: com.narvii.invite.InviteMembersFragment.Adapter.3.1
                        @Override // com.narvii.util.http.ApiResponseListener
                        public void onFail(ApiRequest apiRequest, int i2, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                            super.onFail(apiRequest, i2, list, str, apiResponse, th);
                            NVToast.makeText(Adapter.this.getContext(), str, 0).show();
                            if (InviteMembersFragment.this.getActivity() == null) {
                                return;
                            }
                            progressDialog.dismiss();
                        }

                        @Override // com.narvii.util.http.ApiResponseListener
                        public void onFinish(ApiRequest apiRequest, NewInvitationResponse newInvitationResponse) throws Exception {
                            super.onFinish(apiRequest, (ApiRequest) newInvitationResponse);
                            Adapter adapter = Adapter.this;
                            adapter.response = newInvitationResponse;
                            adapter.notifyDataSetChanged();
                            if (InviteMembersFragment.this.getActivity() == null) {
                                return;
                            }
                            progressDialog.dismiss();
                        }
                    });
                }
            });
            actionSheetDialog.show();
        }

        @Override // com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            sendRequest();
        }

        @Override // com.narvii.list.NVAdapter
        public String errorMessage() {
            return this.error;
        }

        @Override // com.narvii.list.NVAdapter
        public boolean isListShown() {
            return (this.response == null && this.error == null) ? false : true;
        }

        @Override // com.narvii.list.NVAdapter
        public void refresh(int i, Callback<Integer> callback) {
            this.response = null;
            this.error = null;
            sendRequest();
            notifyDataSetChanged();
        }

        void sendRequest() {
            ((ApiService) getService("api")).exec(ApiRequest.builder().scopeCommunityId(InviteMembersFragment.this.getIntParam("__communityId")).post().path("community/invitation").param("duration", 259200).build(), new ApiResponseListener<NewInvitationResponse>(NewInvitationResponse.class) { // from class: com.narvii.invite.InviteMembersFragment.Adapter.4
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, NewInvitationResponse newInvitationResponse) throws Exception {
                    super.onFinish(apiRequest, (ApiRequest) newInvitationResponse);
                    Adapter adapter = Adapter.this;
                    adapter.response = newInvitationResponse;
                    adapter.error = null;
                    adapter.notifyDataSetChanged();
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    Adapter adapter = Adapter.this;
                    adapter.error = str;
                    adapter.notifyDataSetChanged();
                }
            });
        }
    }

    class ShareCardAdapter extends AdriftAdapter {
        public ShareCardAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.list.AdriftAdapter, android.widget.Adapter
        public int getCount() {
            return super.getCount();
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.share_community_card_layout, viewGroup, view);
            Community community = ((CommunityService) getService("community")).getCommunity(InviteMembersFragment.this.getIntParam("__communityId"));
            ((ThumbImageView) viewCreateView.findViewById(R.id.community_share_icon)).setImageUrl(community.icon);
            final PromotionalImageView promotionalImageView = (PromotionalImageView) viewCreateView.findViewById(R.id.community_share_bg);
            ((TextView) viewCreateView.findViewById(R.id.text)).setTextColor(InviteMembersFragment.this.themeColor);
            if (community.promotionalMediaList != null) {
                promotionalImageView.setCommunity(community);
            } else {
                NVImageLoader nVImageLoader = (NVImageLoader) getService("imageLoader");
                String str = community.icon;
                if (str != null) {
                    nVImageLoader.get(str, new ImageLoader.ImageListener() { // from class: com.narvii.invite.InviteMembersFragment.ShareCardAdapter.1
                        @Override // com.android.volley.Response.ErrorListener
                        public void onErrorResponse(VolleyError volleyError) {
                            promotionalImageView.setImageDrawable(new ColorDrawable(ViewCompat.MEASURED_STATE_MASK));
                        }

                        @Override // com.android.volley.toolbox.ImageLoader.ImageListener
                        public void onResponse(ImageLoader.ImageContainer imageContainer, boolean z) {
                            if (imageContainer.getBitmap() == null || !InviteMembersFragment.this.isAdded()) {
                                return;
                            }
                            promotionalImageView.setImageDrawable(new BitmapDrawable(ShareCardAdapter.this.getContext().getResources(), new NativeBlurProcess().blur(imageContainer.getBitmap(), 10.0f)));
                        }
                    });
                }
            }
            TextView textView = (TextView) viewCreateView.findViewById(R.id.community_share_title);
            TextView textView2 = (TextView) viewCreateView.findViewById(R.id.community_share_tagline);
            textView.setText(community.name);
            textView2.setText(community.tagline);
            String str2 = community.endpoint;
            TextView textView3 = (TextView) viewCreateView.findViewById(R.id.community_id_info);
            textView3.setText(String.valueOf(str2));
            textView3.setTextSize(1, 16.0f);
            ((TextView) viewCreateView.findViewById(R.id.community_id_hint)).setText(InviteMembersFragment.this.getString(R.string.community_id) + ": ");
            viewCreateView.findViewById(R.id.share_amino_card).setOnClickListener(this.subviewClickListener);
            return viewCreateView;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (view2 != null && view2.getId() == R.id.share_amino_card) {
                shareAminoCard();
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }

        private void shareAminoCard() {
            Community community = ((CommunityService) getService("community")).getCommunity(InviteMembersFragment.this.getIntParam("__communityId"));
            if (community == null) {
                return;
            }
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("ndc://fragment/" + CommunityShareFragment.class.getName()));
            if (NVApplication.CLIENT_TYPE == 200) {
                String string = this.context.getContext().getString(R.string.share_community_subject_template, community.name);
                String str = this.context.getContext().getString(R.string.share_community_text_template, community.name) + "\n\n" + community.link + "\n\n";
                intent.putExtra(CommunityShareFragment.KEY_SHARE_SUBJECT, string);
                intent.putExtra(CommunityShareFragment.KEY_SHARE_TEXT, str);
                intent.putExtra(ShareDarkRoomFragment.KEY_STATISTIC_SOURCE, "ACM Share");
            } else {
                intent.putExtra(ShareDarkRoomFragment.KEY_STATISTIC_SOURCE, "Share Amino Card");
            }
            intent.putExtra("__communityId", community.id);
            intent.putExtra(ShareDarkRoomFragment.KEY_SHARE_OBJECT, JacksonUtils.writeAsString(community));
            startActivity(intent);
        }
    }
}
