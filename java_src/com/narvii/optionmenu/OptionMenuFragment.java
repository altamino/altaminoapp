package com.narvii.optionmenu;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupMenu;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVFragment;
import com.narvii.chat.core.ChatService;
import com.narvii.chat.global.GlobalChatHelper;
import com.narvii.comment.list.CommentListFragment;
import com.narvii.community.CommunityService;
import com.narvii.config.ConfigService;
import com.narvii.feed.FeedHelper;
import com.narvii.flag.report.FlagReportOptionDialog;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.media.PostMediaPickerFragment;
import com.narvii.media.SaveImageHelper;
import com.narvii.model.ChatMessage;
import com.narvii.model.ChatThread;
import com.narvii.model.Comment;
import com.narvii.model.Community;
import com.narvii.model.Feed;
import com.narvii.model.Item;
import com.narvii.model.Media;
import com.narvii.model.NVObject;
import com.narvii.model.SharedFile;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.notification.Notification;
import com.narvii.permisson.NVPermission;
import com.narvii.poweruser.AdvancedOptionDialog;
import com.narvii.poweruser.history.ModerationHistoryBaseFragment;
import com.narvii.share.BaseShareButtonRepost;
import com.narvii.share.ShareButtonSaveImage;
import com.narvii.share.ShareDialog;
import com.narvii.share.SharePayload;
import com.narvii.util.Callback;
import com.narvii.util.CheckEligibleHelper;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.YoutubeUtils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import com.narvii.video.NVFullScreenVideoActivity;
import com.narvii.widget.FontAwesomeView;
import java.io.Serializable;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class OptionMenuFragment extends NVFragment {
    private static final int OPTION_MENU_TYPE_CHAT_MESSAGE = 3;
    private static final int OPTION_MENU_TYPE_COMMENT = 4;
    private static final int OPTION_MENU_TYPE_FEED = 1;
    private static final int OPTION_MENU_TYPE_OTHER = 0;
    private static final int OPTION_MENU_TYPE_SHARE_FILE = 2;
    private static final int OPTION_MENU_TYPE_USER = 5;
    private AccountService accountService;
    private ChatService chatService;
    private CommunityService communityService;
    private ConfigService config;
    private FontAwesomeView fontAwesomeView;
    private boolean isAnnouncement;
    private Media media;
    private NVObject parent;
    private int type;
    private String url;

    public static OptionMenuFragment newInstance(String str, String str2, Serializable serializable) {
        return newInstance(str, str2, serializable, false);
    }

    public static OptionMenuFragment newInstance(String str, String str2, Serializable serializable, boolean z) {
        OptionMenuFragment optionMenuFragment = new OptionMenuFragment();
        Bundle bundle = new Bundle();
        bundle.putString("media", str);
        bundle.putString("parent", str2);
        bundle.putSerializable("parentClass", serializable);
        bundle.putBoolean(CommentListFragment.COMMENT_KEY_IS_ANNOUNCEMENT, z);
        optionMenuFragment.setArguments(bundle);
        return optionMenuFragment;
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.accountService = (AccountService) getService("account");
        this.communityService = (CommunityService) getService("community");
        this.config = (ConfigService) getService("config");
        this.chatService = (ChatService) getService("chat");
        this.type = checkType();
        this.media = (Media) JacksonUtils.readAs(getStringParam("media"), Media.class);
        this.url = this.media.url;
        this.isAnnouncement = getBooleanParam(CommentListFragment.COMMENT_KEY_IS_ANNOUNCEMENT, false);
        return layoutInflater.inflate(R.layout.fragment_option_menu, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.fontAwesomeView = (FontAwesomeView) view.findViewById(R.id.actionbar_ops);
        this.fontAwesomeView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.optionmenu.OptionMenuFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                OptionMenuFragment.this.setPopupMenu();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPopupMenu() {
        PopupMenu popupMenu = new PopupMenu(getActivity(), this.fontAwesomeView);
        setupMenus(popupMenu);
        getActivity();
        popupMenu.setOnMenuItemClickListener(new PopupMenu.OnMenuItemClickListener() { // from class: com.narvii.optionmenu.OptionMenuFragment.2
            @Override // android.widget.PopupMenu.OnMenuItemClickListener
            public boolean onMenuItemClick(MenuItem menuItem) {
                switch (menuItem.getItemId()) {
                    case R.string.advanced /* 2131689620 */:
                        new AdvancedOptionDialog.Builder(OptionMenuFragment.this.getParentContext()).nvObject(OptionMenuFragment.this.parent).build().show();
                        break;
                    case R.string.delete /* 2131690312 */:
                        OptionMenuFragment optionMenuFragment = OptionMenuFragment.this;
                        optionMenuFragment.delete((ChatMessage) optionMenuFragment.parent);
                        break;
                    case R.string.flag_for_review /* 2131691221 */:
                        OptionMenuFragment.this.flag();
                        break;
                    case R.string.open_in_youtube /* 2131692798 */:
                        YoutubeUtils.openYoutubeVideo(OptionMenuFragment.this.getParentContext(), OptionMenuFragment.this.url);
                        break;
                    case R.string.save_image /* 2131693354 */:
                        OptionMenuFragment.this.saveImage();
                        break;
                    case R.string.share /* 2131693474 */:
                        OptionMenuFragment.this.share();
                        break;
                    case R.string.share_upload_to_share_folder /* 2131693533 */:
                        OptionMenuFragment optionMenuFragment2 = OptionMenuFragment.this;
                        optionMenuFragment2.uploadToShareFolder(optionMenuFragment2.media);
                        break;
                }
                return false;
            }
        });
        popupMenu.show();
    }

    private int checkType() {
        Class cls = getArguments() != null ? (Class) getArguments().getSerializable("parentClass") : null;
        String stringParam = getStringParam("parent");
        if (!TextUtils.isEmpty(stringParam)) {
            try {
                if (cls == Feed.class) {
                    this.parent = (NVObject) JacksonUtils.readUsing(stringParam, new Feed.FeedDeserializer());
                    return 1;
                }
                if (cls == ChatMessage.class) {
                    this.parent = (NVObject) JacksonUtils.readAs(stringParam, ChatMessage.class);
                    return 3;
                }
                if (cls == SharedFile.class) {
                    this.parent = (NVObject) JacksonUtils.readAs(stringParam, SharedFile.class);
                    return 2;
                }
                if (cls == Comment.class) {
                    this.parent = (NVObject) JacksonUtils.readAs(stringParam, Comment.class);
                    return 4;
                }
                if (cls == Item.class) {
                    this.parent = (NVObject) JacksonUtils.readUsing(stringParam, new Feed.FeedDeserializer());
                    return 1;
                }
                if (cls == User.class) {
                    this.parent = (NVObject) JacksonUtils.readAs(stringParam, User.class);
                    return 5;
                }
                this.parent = this.communityService.getCommunity(this.config.getCommunityId());
                return 0;
            } catch (Exception e) {
                Log.e(e.getMessage());
            }
        }
        return 0;
    }

    private void setupMenus(PopupMenu popupMenu) {
        if (YoutubeUtils.getYoutubeVideoIdFromUrl(this.url) != null) {
            popupMenu.getMenu().add(0, R.string.open_in_youtube, 0, R.string.open_in_youtube);
        }
        if (this.isAnnouncement) {
            popupMenu.getMenu().add(0, R.string.save_image, 0, R.string.save_image);
            return;
        }
        int i = this.type;
        if (i == 0) {
            popupMenu.getMenu().add(0, R.string.flag_for_review, 0, R.string.flag_for_review);
            if (this.media.isImage()) {
                popupMenu.getMenu().add(0, R.string.share, 0, R.string.share);
                return;
            }
            return;
        }
        if (i == 1) {
            if (isMine(this.parent)) {
                if (this.media.isVideo()) {
                    popupMenu.getMenu().add(0, R.string.share, 0, R.string.share);
                }
            } else {
                popupMenu.getMenu().add(0, R.string.flag_for_review, 0, R.string.flag_for_review);
            }
            if (this.media.isImage()) {
                popupMenu.getMenu().add(0, R.string.share, 0, R.string.share);
                return;
            }
            return;
        }
        if (i != 2) {
            if (i == 3) {
                if (isMine(this.parent)) {
                    if (this.media.isVideo() && ShareDialog.showUploadAlbumOption(getParentContext(), this.parent)) {
                        popupMenu.getMenu().add(0, R.string.share_upload_to_share_folder, 0, R.string.share_upload_to_share_folder);
                    }
                    popupMenu.getMenu().add(0, R.string.delete, 0, R.string.delete);
                } else {
                    popupMenu.getMenu().add(0, R.string.flag_for_review, 0, R.string.flag_for_review);
                }
                User userProfile = this.accountService.getUserProfile();
                boolean z = userProfile != null && userProfile.isCurator();
                if ((this.parent instanceof ChatMessage) && z) {
                    popupMenu.getMenu().add(0, R.string.advanced, 0, R.string.advanced);
                }
                if (this.media.isImage()) {
                    popupMenu.getMenu().add(0, R.string.share, 0, R.string.share);
                    return;
                }
                return;
            }
            if (i == 4) {
                if (isMine(this.parent)) {
                    if (this.media.isVideo()) {
                        popupMenu.getMenu().add(0, R.string.share, 0, R.string.share);
                    }
                } else {
                    popupMenu.getMenu().add(0, R.string.flag_for_review, 0, R.string.flag_for_review);
                }
                if (this.media.isImage()) {
                    popupMenu.getMenu().add(0, R.string.share, 0, R.string.share);
                    return;
                }
                return;
            }
            if (i != 5) {
                return;
            }
            if (userIsMe(this.parent)) {
                if (this.media.isVideo() && ShareDialog.showUploadAlbumOption(getParentContext(), this.parent)) {
                    popupMenu.getMenu().add(0, R.string.share_upload_to_share_folder, 0, R.string.share_upload_to_share_folder);
                    return;
                }
                return;
            }
            popupMenu.getMenu().add(0, R.string.flag_for_review, 0, R.string.flag_for_review);
        }
    }

    private boolean isMine(NVObject nVObject) {
        return Utils.isEqualsNotNull(nVObject == null ? null : nVObject.uid(), this.accountService.getUserId());
    }

    private boolean userIsMe(NVObject nVObject) {
        return Utils.isEqualsNotNull(nVObject == null ? null : nVObject.uid(), this.accountService.getUserId());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void delete(final ChatMessage chatMessage) {
        if (chatMessage.messageId == null) {
            this.chatService.recallMessage(chatMessage.clientRefId);
            return;
        }
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.optionmenu.OptionMenuFragment.3
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                OptionMenuFragment.this.sendNotification(new Notification("delete", chatMessage));
            }
        };
        progressDialog.show();
        ((ApiService) getService("api")).exec(ApiRequest.builder().chatServer().delete().path("/chat/thread/" + chatMessage.threadId + "/message/" + chatMessage.messageId).build(), progressDialog.dismissListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void uploadToShareFolder(final Media media) {
        final ArrayList arrayList = new ArrayList();
        arrayList.add(media);
        new CheckEligibleHelper(getParentContext()).checkEligible("shared-folder", "image-upload", new Callback() { // from class: com.narvii.optionmenu.OptionMenuFragment.4
            @Override // com.narvii.util.Callback
            public void call(Object obj) {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("ndc://fragment/" + PostMediaPickerFragment.class.getName()));
                intent.putExtra("list", JacksonUtils.writeAsString(arrayList));
                intent.putExtra("selected", JacksonUtils.writeAsString(media));
                intent.putExtra(ModerationHistoryBaseFragment.PARAMS_OBJECT_ID, OptionMenuFragment.this.parent.id());
                intent.putExtra(ModerationHistoryBaseFragment.PARAMS_OBJECT_TYPE, OptionMenuFragment.this.parent.objectType());
                OptionMenuFragment.this.getParentContext().startActivity(intent);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveImage() {
        NVPermission.builder(this).permission("android.permission.WRITE_EXTERNAL_STORAGE").requestCode(108).permissionListener(this).request();
    }

    @Override // com.narvii.app.NVFragment, com.narvii.permisson.PermissionListener
    public void onPermissionGranted(int i) {
        if (i == 108) {
            new SaveImageHelper(getParentContext()).save(this.media);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void share() {
        if (this.media.isVideo()) {
            if (this.parent instanceof Feed) {
                sharePost();
                return;
            } else {
                shareVideo();
                return;
            }
        }
        shareImage();
    }

    private void sharePost() {
        ShareDialog.getShareDialogFromFeed(getParentContext(), (Feed) this.parent, true, null).show();
    }

    private void shareVideo() {
        if (this.parent instanceof Comment) {
            ShareDialog.getShareDialogFromComment(getParentContext(), (Comment) this.parent).show();
        }
    }

    private void shareImage() {
        if (this.parent instanceof Community) {
            SharePayload sharePayload = new SharePayload();
            sharePayload.mediaUrl = this.media.url;
            sharePayload.object = ((CommunityService) getService("community")).getCommunity(((ConfigService) getService("config")).getCommunityId());
            ShareDialog shareDialog = new ShareDialog(getParentContext(), sharePayload);
            shareDialog.setCustomButton(0, new ShareButtonSaveImage(getParentContext()));
            shareDialog.show();
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.media);
        if (!isMine(this.parent)) {
            NVObject nVObject = this.parent;
            if (!(nVObject instanceof ChatMessage) && !(nVObject instanceof Comment)) {
                if (nVObject instanceof Feed) {
                    ShareDialog.getShareDialogFromMedia(getParentContext(), this.media, this.parent, arrayList, new BaseShareButtonRepost(getParentContext()) { // from class: com.narvii.optionmenu.OptionMenuFragment.5
                        @Override // com.narvii.share.ShareButtonCustomInfo
                        public void onClick(SharePayload sharePayload2) {
                            new FeedHelper(OptionMenuFragment.this.getParentContext()).source("Post Detail Share Bar").repost((Feed) OptionMenuFragment.this.parent);
                        }
                    }).show();
                    return;
                } else {
                    ShareDialog.getShareDialogFromMedia(getParentContext(), this.media, this.parent, arrayList, null).show();
                    return;
                }
            }
        }
        ShareDialog.getShareDialogFromMedia(getParentContext(), this.media, this.parent, arrayList, null).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void flag() {
        if (checkCommunityAvailability()) {
            FlagReportOptionDialog.Builder builderRefMediaUrl = new FlagReportOptionDialog.Builder(getParentContext()).nvObject(this.parent).refMediaUrl(this.url);
            if ((this.parent instanceof ChatMessage) && (getActivity() instanceof NVFullScreenVideoActivity)) {
                builderRefMediaUrl.screenShotFlag(true);
            }
            builderRefMediaUrl.build().show();
        }
    }

    private boolean checkCommunityAvailability() {
        this.config = (ConfigService) getService("config");
        return !new GlobalChatHelper(getParentContext()).tryJoinCommunity(this.config.getCommunityId(), false, new GlobalChatHelper.JoinCommunityCallback() { // from class: com.narvii.optionmenu.OptionMenuFragment.6
            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            public ChatThread followingChatToJoin() {
                return null;
            }

            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            public int getActionRTCType() {
                return 0;
            }

            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            public void onPostJoinCommunity(int i, boolean z) {
            }

            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            public void onCheckLoginFailed() {
                OptionMenuFragment.this.ensureLogin(new Intent("joinChannel"));
            }

            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            public boolean onPreJoinCommunity(int i) {
                Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
                intent.putExtra("id", i);
                OptionMenuFragment.this.startActivity(intent);
                return true;
            }
        });
    }

    public void setMedia(Media media) {
        this.media = media;
    }
}
