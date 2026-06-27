package com.narvii.share;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.AnimationUtils;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.app.NVContext;
import com.narvii.app.NVDialog;
import com.narvii.community.CommunityService;
import com.narvii.config.ConfigService;
import com.narvii.lib.R;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.model.Blog;
import com.narvii.model.ChatMessage;
import com.narvii.model.ChatThread;
import com.narvii.model.Comment;
import com.narvii.model.Feed;
import com.narvii.model.ItemCategory;
import com.narvii.model.Media;
import com.narvii.model.NVObject;
import com.narvii.model.SharedAlbum;
import com.narvii.model.SharedFile;
import com.narvii.model.StoreItemBaseObject;
import com.narvii.model.User;
import com.narvii.model.story.StoryTopic;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.modulization.Module;
import com.narvii.share.ShareViewHelper;
import com.narvii.share.elements.BaseElement;
import com.narvii.util.PackageUtils;
import com.narvii.util.PrivilegeUtils;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes3.dex */
public class ShareDialog extends NVDialog {
    public static final int POSITION_FIRST = 0;
    public static final int POSITION_SECOND = 1;
    View buttonContainer;
    ShareDialogButton[] buttons;
    private ShareViewHelper.OnClickShareItemListener clickListener;
    NVContext nvContext;
    private ShareViewHelper shareDialogHelper;
    SharePayload sharePayload;
    ViewGroup shareToolBarContainer;
    private boolean showAnimation;
    TextView titleView;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface POSITION {
    }

    @Override // com.narvii.app.NVDialog, com.narvii.logging.Page
    public String getPageName() {
        return "SharePanel";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public LogEvent.Builder getLogEventBuilder() {
        LogEvent.Builder builderActSemantic = LogEvent.builder(this).actClick().actSemantic(ActSemantic.shared);
        SharePayload sharePayload = this.sharePayload;
        return builderActSemantic.object(sharePayload != null ? sharePayload.object : null);
    }

    public ShareDialog(NVContext nVContext, SharePayload sharePayload) {
        super(nVContext, R.style.CustomDialogWithAnimation);
        this.showAnimation = true;
        this.clickListener = new ShareViewHelper.OnClickShareItemListener() { // from class: com.narvii.share.ShareDialog.1
            @Override // com.narvii.share.ShareViewHelper.OnClickShareItemListener
            public SharePayload getPayload() {
                return ShareDialog.this.sharePayload;
            }

            @Override // com.narvii.share.ShareViewHelper.OnClickShareItemListener
            public void onPreShare(SharePayload sharePayload2, Object obj) {
                ShareButtonCustomInfo shareButtonCustomInfo;
                String targetName;
                if (obj instanceof ShareButtonCopyLink) {
                    ShareDialog.this.getLogEventBuilder().area("CopyLink").actSemantic(ActSemantic.copyLink).send();
                    return;
                }
                if (obj instanceof BaseElement) {
                    String strTargetName = ((BaseElement) obj).targetName();
                    if (TextUtils.isEmpty(strTargetName)) {
                        return;
                    }
                    ShareDialog.this.getLogEventBuilder().area(strTargetName).send();
                    return;
                }
                if (!(obj instanceof ShareButtonCustomInfo) || (targetName = (shareButtonCustomInfo = (ShareButtonCustomInfo) obj).getTargetName()) == null) {
                    return;
                }
                LogEvent.Builder builderActSemantic = ShareDialog.this.getLogEventBuilder().area(targetName).actSemantic(shareButtonCustomInfo.getActSemantic());
                HashMap<String, String> extraInfo = shareButtonCustomInfo.getExtraInfo();
                if (extraInfo != null) {
                    for (String str : shareButtonCustomInfo.getExtraInfo().keySet()) {
                        builderActSemantic.extraParam(str, extraInfo.get(str));
                    }
                }
                builderActSemantic.send();
            }

            @Override // com.narvii.share.ShareViewHelper.OnClickShareItemListener
            public void onFinishShare(SharePayload sharePayload2, View view) {
                ShareDialog.this.dismiss();
            }
        };
        this.nvContext = nVContext;
        this.sharePayload = sharePayload;
        setContentView(R.layout.dialog_share_backup);
        this.titleView = (TextView) findViewById(R.id.title);
        this.shareToolBarContainer = (ViewGroup) findViewById(R.id.share_targets_layout);
        this.buttons = new ShareDialogButton[2];
        this.buttons[0] = (ShareDialogButton) findViewById(R.id.share_dialog_first_button);
        this.buttons[1] = (ShareDialogButton) findViewById(R.id.share_dialog_second_button);
        this.buttonContainer = findViewById(R.id.share_button_container);
        this.shareDialogHelper = new ShareViewHelper(nVContext);
        this.shareDialogHelper.configShareToolBar(this.clickListener, this.shareToolBarContainer);
    }

    public ShareDialog setSource(String str) {
        this.shareDialogHelper.source = str;
        return this;
    }

    public ShareDialog setStatContent(String str) {
        this.shareDialogHelper.statContent = str;
        return this;
    }

    @Override // com.narvii.app.NVDialog, android.app.Dialog
    public void show() {
        SoftKeyboard.hideSoftKeyboard(getContext());
        super.show();
        if (this.showAnimation) {
            AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
            alphaAnimation.setDuration(200L);
            View viewFindViewById = findViewById(R.id.bg);
            if (viewFindViewById != null) {
                viewFindViewById.startAnimation(alphaAnimation);
            }
            viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.share.ShareDialog.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ShareDialog.this.dismiss();
                }
            });
            View viewFindViewById2 = findViewById(R.id.main_layout);
            if (viewFindViewById2 != null) {
                viewFindViewById2.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.slide_up));
            }
        }
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        TextView textView = this.titleView;
        if (textView != null) {
            textView.setText(charSequence);
            this.titleView.setVisibility(0);
        }
    }

    @Override // android.app.Dialog
    public void setTitle(int i) {
        TextView textView = this.titleView;
        if (textView != null) {
            textView.setText(getContext().getString(i));
            this.titleView.setVisibility(0);
        }
    }

    public void setCustomButton(int i, ShareButtonCustomInfo shareButtonCustomInfo) {
        ShareDialogButton shareDialogButton = this.buttons[i];
        shareDialogButton.setText(shareButtonCustomInfo.getTextString());
        shareDialogButton.setIcon(shareButtonCustomInfo.getIcon());
        shareDialogButton.setTag(R.id.share_button_target_info, shareButtonCustomInfo);
        shareDialogButton.setOnClickListener(this.shareDialogHelper);
        shareDialogButton.setVisibility(0);
        this.buttonContainer.setVisibility(0);
    }

    public static ShareDialog getShareDialogFromFeed(NVContext nVContext, Feed feed, BaseShareButtonRepost baseShareButtonRepost) {
        List<Media> list;
        SharePayload sharePayload = new SharePayload();
        sharePayload.object = feed;
        sharePayload.needTranslateLink = true;
        if ((feed instanceof Blog) && ((Blog) feed).type == 9) {
            sharePayload.translationTarget = 11;
        }
        sharePayload.text = feed.title();
        ShareDialog shareDialog = new ShareDialog(nVContext, sharePayload);
        shareDialog.setCustomButton(0, new ShareButtonCopyLink(nVContext));
        if (showUploadAlbumOption(nVContext, feed) && (list = feed.mediaList) != null && !list.isEmpty()) {
            shareDialog.setCustomButton(1, new ShareButtonUploadToShareFolder(nVContext, null, feed.mediaList));
        } else if (!isMine(nVContext, feed) && baseShareButtonRepost != null && !Utils.isGlobalInteractionScope(nVContext)) {
            shareDialog.setCustomButton(1, baseShareButtonRepost);
        }
        return shareDialog;
    }

    public static ShareDialog getShareDialogFromStory(NVContext nVContext, Blog blog, ShareButtonSaveStory shareButtonSaveStory) {
        SharePayload sharePayload = new SharePayload();
        sharePayload.object = blog;
        sharePayload.needTranslateLink = true;
        if (blog.type == 9) {
            sharePayload.translationTarget = 11;
        }
        sharePayload.text = blog.title();
        ShareDialog shareDialog = new ShareDialog(nVContext, sharePayload);
        shareDialog.setCustomButton(0, new ShareButtonCopyLink(nVContext));
        if (shareButtonSaveStory != null) {
            shareDialog.setCustomButton(1, shareButtonSaveStory);
        }
        return shareDialog;
    }

    public static ShareDialog getShareDialogFromFanClub(NVContext nVContext, User user) {
        SharePayload sharePayload = new SharePayload();
        sharePayload.object = user;
        sharePayload.needTranslateLink = true;
        sharePayload.translationTarget = 10;
        sharePayload.text = nVContext.getContext().getString(R.string.share_fan_club_text_template, user.nickname());
        sharePayload.mediaUrl = user.icon();
        sharePayload.needDownloadImg = true;
        ShareDialog shareDialog = new ShareDialog(nVContext, sharePayload);
        shareDialog.setCustomButton(0, new ShareButtonCopyLink(nVContext));
        return shareDialog;
    }

    public static ShareDialog getShareDialogFromFeed(NVContext nVContext, Feed feed, boolean z, BaseShareButtonRepost baseShareButtonRepost) {
        List<Media> list;
        if (z) {
            SharePayload sharePayload = new SharePayload();
            sharePayload.object = feed;
            sharePayload.needTranslateLink = true;
            if ((feed instanceof Blog) && ((Blog) feed).type == 9) {
                sharePayload.translationTarget = 11;
            }
            sharePayload.text = feed.title();
            ShareDialog shareDialog = new ShareDialog(nVContext, sharePayload);
            if (showUploadAlbumOption(nVContext, feed) && (list = feed.mediaList) != null && !list.isEmpty()) {
                shareDialog.setCustomButton(0, new ShareButtonUploadToShareFolder(nVContext, null, feed.mediaList));
            }
            return shareDialog;
        }
        return getShareDialogFromFeed(nVContext, feed, baseShareButtonRepost);
    }

    public static ShareDialog getShareDialogFromComment(NVContext nVContext, Comment comment) {
        List<Media> list;
        SharePayload sharePayload = new SharePayload();
        sharePayload.object = comment;
        sharePayload.needTranslateLink = false;
        sharePayload.text = comment.content;
        ShareDialog shareDialog = new ShareDialog(nVContext, sharePayload);
        if (showUploadAlbumOption(nVContext, comment) && (list = comment.mediaList) != null && !list.isEmpty()) {
            shareDialog.setCustomButton(0, new ShareButtonUploadToShareFolder(nVContext, null, comment.mediaList));
        }
        return shareDialog;
    }

    public static ShareDialog getShareDialogFromAlbum(NVContext nVContext, SharedAlbum sharedAlbum) {
        SharePayload sharePayload = new SharePayload();
        sharePayload.text = nVContext.getContext().getString(R.string.share_shared_album_text_template, sharedAlbum.title, new PackageUtils(nVContext.getContext()).getAppName());
        sharePayload.object = sharedAlbum;
        sharePayload.needTranslateLink = true;
        ShareDialog shareDialog = new ShareDialog(nVContext, sharePayload);
        shareDialog.setCustomButton(0, new ShareButtonCopyLink(nVContext));
        return shareDialog;
    }

    public static ShareDialog getShareDialogForThread(NVContext nVContext, ChatThread chatThread) {
        SharePayload sharePayload = new SharePayload();
        sharePayload.text = nVContext.getContext().getString(R.string.share_shared_thread_template, chatThread.title);
        sharePayload.text = chatThread.title;
        sharePayload.object = chatThread;
        sharePayload.needTranslateLink = true;
        ShareDialog shareDialog = new ShareDialog(nVContext, sharePayload);
        shareDialog.setCustomButton(0, new ShareButtonCopyLink(nVContext));
        return shareDialog;
    }

    public static ShareDialog getShareDialogForGlobalProfile(NVContext nVContext, User user, boolean z) {
        SharePayload sharePayload = new SharePayload();
        sharePayload.object = user;
        sharePayload.needTranslateLink = true;
        if (z) {
            sharePayload.text = nVContext.getContext().getString(R.string.share_own_global_profile_text);
        } else {
            sharePayload.text = nVContext.getContext().getString(R.string.share_other_global_profile_text);
        }
        ShareDialog shareDialog = new ShareDialog(nVContext, sharePayload);
        shareDialog.setCustomButton(0, new ShareButtonCopyLink(nVContext));
        return shareDialog;
    }

    public static ShareDialog getShareDialogFromWikiFolder(NVContext nVContext, ItemCategory itemCategory) {
        SharePayload sharePayload = new SharePayload();
        sharePayload.object = itemCategory;
        sharePayload.needTranslateLink = true;
        sharePayload.text = nVContext.getContext().getString(R.string.share_wiki_folder_text_template, ((CommunityService) nVContext.getService("community")).getCommunity(((ConfigService) nVContext.getService("config")).getCommunityId()).name);
        ShareDialog shareDialog = new ShareDialog(nVContext, sharePayload);
        shareDialog.setCustomButton(0, new ShareButtonCopyLink(nVContext));
        return shareDialog;
    }

    public static ShareDialog getShareDialogFromStoreItem(NVContext nVContext, StoreItemBaseObject storeItemBaseObject) {
        SharePayload sharePayload = new SharePayload();
        sharePayload.object = storeItemBaseObject;
        sharePayload.needTranslateLink = true;
        sharePayload.text = nVContext.getContext().getString(R.string.share_store_item_text_template, storeItemBaseObject.getName() + " | " + storeItemBaseObject.getStoreItemTypeName(nVContext.getContext()));
        sharePayload.mediaUrl = storeItemBaseObject.getStoreIcon();
        sharePayload.needDownloadImg = true;
        sharePayload.forceUseImageOriginUrl = true;
        ShareDialog shareDialog = new ShareDialog(nVContext, sharePayload);
        shareDialog.setCustomButton(0, new ShareButtonCopyLink(nVContext));
        return shareDialog;
    }

    public static ShareDialog getShareDialogFromMedia(NVContext nVContext, Media media, NVObject nVObject, List<Media> list, BaseShareButtonRepost baseShareButtonRepost) {
        SharePayload sharePayload = new SharePayload();
        if (nVObject instanceof Feed) {
            sharePayload.text = ((Feed) nVObject).title();
        } else {
            sharePayload.text = nVContext.getContext().getString(R.string.share_media_text, new PackageUtils(nVContext.getContext()).getAppName());
        }
        sharePayload.mediaUrl = media == null ? "" : media.url;
        boolean z = nVObject instanceof ChatMessage;
        if (z || (nVObject instanceof Comment)) {
            sharePayload.needTranslateLink = false;
        } else {
            sharePayload.needTranslateLink = true;
        }
        sharePayload.object = nVObject;
        sharePayload.contentType = "media";
        if (media.isVideo()) {
            sharePayload.needDownloadImg = false;
        } else {
            sharePayload.needDownloadImg = !TextUtils.isEmpty(sharePayload.mediaUrl);
        }
        ShareDialog shareDialog = new ShareDialog(nVContext, sharePayload);
        if (showUploadAlbumOption(nVContext, nVObject) && list != null && !list.isEmpty()) {
            shareDialog.setCustomButton(1, new ShareButtonUploadToShareFolder(nVContext, media, list));
        } else if (baseShareButtonRepost != null && !z && !Utils.isGlobalInteractionScope(nVContext)) {
            shareDialog.setCustomButton(1, baseShareButtonRepost);
        }
        if (media.type != 103 && media.isImage()) {
            shareDialog.setCustomButton(0, new ShareButtonSaveImage(nVContext));
        } else {
            shareDialog.setCustomButton(0, new ShareButtonCopyLink(nVContext));
        }
        return shareDialog;
    }

    public static ShareDialog getShareDialogFromPhoto(NVContext nVContext, SharedFile sharedFile) {
        return getShareDialogFromPhoto(nVContext, sharedFile, true);
    }

    public static ShareDialog getShareDialogFromPhoto(NVContext nVContext, SharedFile sharedFile, boolean z) {
        Media media;
        SharePayload sharePayload = new SharePayload();
        sharePayload.object = sharedFile;
        sharePayload.needTranslateLink = true;
        Media media2 = sharedFile.media;
        if (media2 != null && media2.type != 103) {
            sharePayload.mediaUrl = media2.url;
            sharePayload.needDownloadImg = !TextUtils.isEmpty(sharePayload.mediaUrl);
        } else {
            sharePayload.needDownloadImg = false;
        }
        ShareDialog shareDialog = new ShareDialog(nVContext, sharePayload);
        shareDialog.setCustomButton(0, new ShareButtonCopyLink(nVContext));
        if (z && (media = sharedFile.media) != null && media.type != 103) {
            shareDialog.setCustomButton(1, new ShareButtonSaveImage(nVContext));
        }
        return shareDialog;
    }

    public static ShareDialog getShareDialogFromTopic(NVContext nVContext, StoryTopic storyTopic) {
        SharePayload sharePayload = new SharePayload();
        sharePayload.text = nVContext.getContext().getString(R.string.share_story_topic_text_template, storyTopic.getDisplayName());
        sharePayload.object = storyTopic;
        sharePayload.needTranslateLink = true;
        ShareDialog shareDialog = new ShareDialog(nVContext, sharePayload);
        shareDialog.setCustomButton(0, new ShareButtonCopyLink(nVContext));
        return shareDialog;
    }

    public static ShareDialog getShareDialogFromCommunity(NVContext nVContext, SharePayload sharePayload) {
        ShareDialog shareDialog = new ShareDialog(nVContext, sharePayload);
        shareDialog.setCustomButton(0, new ShareButtonCopyLink(nVContext));
        return shareDialog;
    }

    public static boolean showUploadAlbumOption(NVContext nVContext, NVObject nVObject) {
        String userId;
        if (nVObject == null) {
            return false;
        }
        CommunityConfigHelper communityConfigHelper = new CommunityConfigHelper(nVContext);
        if (!communityConfigHelper.isModuleEnabled(Module.MODULE_SHARED_FOLDER)) {
            return false;
        }
        if ((nVObject instanceof Blog) && ((Blog) nVObject).type == 2) {
            return false;
        }
        AccountService accountService = (AccountService) nVContext.getService("account");
        return PrivilegeUtils.visibleToUser(communityConfigHelper.getPrivilege(Module.photoUploadPath), accountService.getUserProfile()) && (userId = accountService.getUserId()) != null && Utils.isEqualsNotNull(userId, nVObject.uid());
    }

    private static boolean isMine(NVContext nVContext, Feed feed) {
        if (feed != null) {
            return Utils.isEqualsNotNull(((AccountService) nVContext.getService("account")).getUserId(), feed.uid());
        }
        return false;
    }
}
