package com.narvii.chat.organizer;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.narvii.amino.master.R;
import com.narvii.chat.ChatMemberPickerFragment;
import com.narvii.chat.rtc.RtcService;
import com.narvii.chat.signalling.ChannelUser;
import com.narvii.model.ChatThread;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.modulization.Module;
import com.narvii.modulization.entry.EntryManager;
import com.narvii.modulization.entry.EntrySetting;
import com.narvii.modulization.entry.Privilege;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.NVImageView;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public class ChatOrganizerPickerFragment extends ChatMemberPickerFragment {
    private RtcService rtcService;
    private boolean isVvchatHintShown = false;
    private Set<String> vvChatUsers = new HashSet();

    protected class OrganizerPickerAdapter extends ChatMemberPickerFragment.Adapter {
        @Override // com.narvii.chat.ChatMemberPickerFragment.Adapter, com.narvii.user.list.UserListAdapter
        protected boolean filterYourself() {
            return false;
        }

        @Override // com.narvii.chat.ChatMemberPickerFragment.Adapter, com.narvii.user.list.UserListAdapter
        protected int layoutId() {
            return R.layout.user_item_picker_with_vvchat_indicator;
        }

        protected OrganizerPickerAdapter() {
            super();
        }

        @Override // com.narvii.chat.ChatMemberPickerFragment.Adapter, com.narvii.user.list.UserListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (obj instanceof User) {
                final User user = (User) obj;
                if (!ChatOrganizerPickerFragment.this.isVvchatHintShown && ChatOrganizerPickerFragment.this.isThreadInVvchat() && !ChatOrganizerPickerFragment.this.vvChatUsers.contains(user.uid)) {
                    ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
                    aCMAlertDialog.setMessage(R.string.trans_organizer_picker_hint_in_vvchat);
                    aCMAlertDialog.addButton(R.string.cancel, (View.OnClickListener) null, -4473925);
                    aCMAlertDialog.addButton(R.string.picker_anyway, new View.OnClickListener() { // from class: com.narvii.chat.organizer.ChatOrganizerPickerFragment.OrganizerPickerAdapter.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view3) {
                            OrganizerPickerAdapter.this.pickerUser(user);
                            ChatOrganizerPickerFragment.this.isVvchatHintShown = true;
                        }
                    });
                    aCMAlertDialog.show();
                    return true;
                }
            }
            return super.onItemClick(listAdapter, i10, obj, view, view2);
        }

        @Override // com.narvii.chat.ChatMemberPickerFragment.Adapter, com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            ApiRequest.Builder builder = ApiRequest.builder();
            builder.path("/chat/thread/" + ((ChatMemberPickerFragment) ChatOrganizerPickerFragment.this).thread.threadId + "/member");
            builder.param("type", "organizer-transfer-candidates");
            if (!TextUtils.isEmpty(((ChatMemberPickerFragment) ChatOrganizerPickerFragment.this).instantSearchListener.getKeyword())) {
                builder.param("q", ((ChatMemberPickerFragment) ChatOrganizerPickerFragment.this).instantSearchListener.getKeyword());
            }
            return builder.build();
        }

        @Override // com.narvii.user.list.UserListAdapter, com.narvii.list.NVPagedAdapter
        public List<User> filterResponseList(List<User> list, int i10) {
            List<User> listFilterResponseList = super.filterResponseList(list, i10);
            if (listFilterResponseList == null) {
                return listFilterResponseList;
            }
            ArrayList arrayList = new ArrayList();
            for (User user : listFilterResponseList) {
                if (user.isAvailableCandidate && ChatOrganizerPickerFragment.this.checkAuth(user)) {
                    arrayList.add(user);
                }
            }
            return arrayList;
        }

        @Override // com.narvii.chat.ChatMemberPickerFragment.Adapter, com.narvii.user.list.UserListAdapter, com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            int mainChannelType;
            View itemView = super.getItemView(obj, view, viewGroup);
            User user = (User) obj;
            NVImageView nVImageView = (NVImageView) itemView.findViewById(R.id.rtc_indicator);
            if (nVImageView != null) {
                nVImageView.setVisibility(8);
                if (ChatOrganizerPickerFragment.this.vvChatUsers.contains(user.uid) && ((mainChannelType = ChatOrganizerPickerFragment.this.rtcService.getMainChannelType()) == 4 || mainChannelType == 1 || mainChannelType == 5)) {
                    nVImageView.setImageUrl("assets://video_green.webp");
                    nVImageView.setVisibility(0);
                }
            }
            return itemView;
        }
    }

    @Override // com.narvii.chat.ChatMemberPickerFragment
    protected boolean showSearchBar() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkAuth(User user) {
        boolean z6;
        Privilege privilege;
        CommunityConfigHelper communityConfigHelper = new CommunityConfigHelper(this);
        boolean z10 = communityConfigHelper.isPostEnabled() && communityConfigHelper.isPublicChatEnabled();
        EntrySetting entrySetting = new EntryManager(this).getEntrySetting(Module.MODULE_POSTS, "postType", "publicChatRooms");
        if (entrySetting == null || (privilege = entrySetting.privilege) == null) {
            z6 = true;
        } else {
            z6 = privilege.type != 2 || user.level >= privilege.minLevel || user.isCurator();
            if (entrySetting.privilege.type == 3 && !user.isCurator()) {
                z6 = false;
            }
        }
        return z10 && z6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isThreadInVvchat() {
        ChatThread mainChannelChatThread;
        int mainChannelType = this.rtcService.getMainChannelType();
        return (mainChannelType == 1 || mainChannelType == 4 || mainChannelType == 3) && (mainChannelChatThread = this.rtcService.getMainChannelChatThread()) != null && TextUtils.equals(mainChannelChatThread.threadId, this.thread.threadId);
    }

    @Override // com.narvii.chat.ChatMemberPickerFragment
    protected ChatMemberPickerFragment.Adapter createMainAdapter() {
        return new OrganizerPickerAdapter();
    }

    @Override // com.narvii.chat.ChatMemberPickerFragment
    protected void onConfirmPick(List<User> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        ApiRequest.Builder builder = ApiRequest.builder();
        builder.path("/chat/thread/" + this.thread.threadId + "/transfer-organizer");
        builder.post();
        ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
        Iterator<User> it = list.iterator();
        while (it.hasNext()) {
            arrayNodeCreateArrayNode.add(it.next().uid);
        }
        builder.param("uidList", arrayNodeCreateArrayNode);
        final ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.show();
        ((ApiService) getService("api")).exec(builder.build(), new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.chat.organizer.ChatOrganizerPickerFragment.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list2, String str, ApiResponse apiResponse, Throwable th) {
                progressDialog.dismiss();
                NVToast.makeText(ChatOrganizerPickerFragment.this.getContext(), str, 0).show();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                progressDialog.dismiss();
                ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(ChatOrganizerPickerFragment.this.getContext());
                aCMAlertDialog.setMessage("Your request was succesfully sent, you need to wait for someone to accept it.");
                aCMAlertDialog.addButton(android.R.string.ok, new View.OnClickListener() { // from class: com.narvii.chat.organizer.ChatOrganizerPickerFragment.1.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        ChatOrganizerPickerFragment.this.finish();
                    }
                });
                aCMAlertDialog.show();
            }
        });
    }

    @Override // com.narvii.chat.ChatMemberPickerFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        String str;
        User user;
        super.onCreate(bundle);
        setTitle(R.string.select_members);
        RtcService rtcService = (RtcService) getService("rtc");
        this.rtcService = rtcService;
        Collection<ChannelUser> mainChannelChannelUserList = rtcService.getMainChannelChannelUserList();
        this.vvChatUsers.clear();
        if (isThreadInVvchat() && mainChannelChannelUserList != null) {
            for (ChannelUser channelUser : mainChannelChannelUserList) {
                if (channelUser != null && (user = channelUser.userProfile) != null && channelUser.joinRole == 1) {
                    str = user.uid;
                } else {
                    str = null;
                }
                if (!TextUtils.isEmpty(str)) {
                    this.vvChatUsers.add(str);
                }
            }
        }
    }
}
