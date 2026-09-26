package com.narvii.chat.hangout;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.github.mmin18.widget.FlexLayout;
import com.google.firebase.crashlytics.internal.common.b0;
import com.narvii.amino.master.R;
import com.narvii.chat.thread.OnlineUserInfoInfo;
import com.narvii.chat.video.view.UserSpeakingView;
import com.narvii.model.ChatThread;
import com.narvii.model.Community;
import com.narvii.model.PlayList;
import com.narvii.model.PlayListItem;
import com.narvii.model.User;
import com.narvii.suggest.interest.InterestTopicView;
import com.narvii.util.DateTimeFormatter;
import com.narvii.util.Utils;
import com.narvii.widget.CommunityIconView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.UserAvatarLayout;
import java.text.DecimalFormat;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class HangoutItem extends FlexLayout {
    CommunityIconView communityIcon;
    LinearLayout communityInfoPanel;
    TextView communityName;
    TextView disabledMask;
    private View fansOnlyIndicator;
    DateTimeFormatter fmt;
    NVImageView image;
    TextView latestedMessageDateView;
    TextView membersCount;
    UserAvatarLayout organizerAvatar;
    UserSpeakingView organizerSpeakingView;
    NVImageView playingIcon;
    TextView playingTitle;
    TextView title;
    InterestTopicView topicView;

    public void setOnlineUserList(ChatThread chatThread, OnlineUserInfoInfo onlineUserInfoInfo) {
        if (onlineUserInfoInfo == null || chatThread == null) {
            return;
        }
        setupOnlineMemberBar(chatThread, onlineUserInfoInfo.userProfileList, onlineUserInfoInfo.userProfileCount);
    }

    public void setThread(ChatThread chatThread, PlayList playList) {
        setThread(chatThread, playList, null);
    }

    private String formatMemberCount(int i10) {
        if (i10 < 10000) {
            return String.valueOf(i10);
        }
        if (i10 >= 1000000) {
            return "1M";
        }
        return Double.valueOf(new DecimalFormat(b0.DEFAULT_VERSION_NAME).format(i10 / 1000.0f)) + "K";
    }

    private void setupOnlineMemberBar(ChatThread chatThread, List<User> list, int i10) {
        int i11 = chatThread.membersCount;
        if (i11 > 0) {
            this.membersCount.setText(formatMemberCount(i11));
            this.membersCount.setVisibility(0);
        } else {
            this.membersCount.setVisibility(8);
        }
        int rTCType = chatThread.getRTCType();
        if (rTCType == 1 || rTCType == 3 || rTCType == 4 || rTCType == 5) {
            NVImageView nVImageView = this.playingIcon;
            if (nVImageView != null) {
                nVImageView.setVisibility(0);
                this.playingIcon.setImageUrl("assets://video_green.webp");
            }
            TextView textView = this.playingTitle;
            if (textView != null) {
                textView.setVisibility(0);
                return;
            }
            return;
        }
        NVImageView nVImageView2 = this.playingIcon;
        if (nVImageView2 != null) {
            nVImageView2.setImageUrl(null);
            this.playingIcon.setVisibility(8);
        }
        TextView textView2 = this.playingTitle;
        if (textView2 != null) {
            textView2.setVisibility(8);
        }
    }

    public void setCommunityInfo(Community community) {
        if (community == null) {
            this.communityInfoPanel.setVisibility(8);
            return;
        }
        this.communityInfoPanel.setVisibility(0);
        this.topicView.setVisibility(8);
        this.communityIcon.setCommunity(community);
        this.communityName.setText(community.name);
        GradientDrawable gradientDrawable = new GradientDrawable();
        float fDpToPx = Utils.dpToPx(getContext(), 8.0f);
        gradientDrawable.setCornerRadii(new float[]{fDpToPx, fDpToPx, fDpToPx, fDpToPx, fDpToPx, fDpToPx, fDpToPx, fDpToPx});
        gradientDrawable.setColor(community.themeColor());
        this.communityInfoPanel.setBackground(gradientDrawable);
    }

    public void setOnlineUserList(ChatThread chatThread, List<User> list) {
        if (list == null || chatThread == null) {
            return;
        }
        setupOnlineMemberBar(chatThread, list, list.size());
    }

    public void setThread(ChatThread chatThread, PlayList playList, String str) {
        List<PlayListItem> list;
        int i10;
        this.communityInfoPanel.setVisibility(8);
        NVImageView nVImageView = this.image;
        if (TextUtils.isEmpty(str)) {
            str = chatThread.icon;
        }
        nVImageView.setImageUrl(str);
        this.title.setText(chatThread.title);
        boolean zHasLiveAction = hasLiveAction(chatThread);
        if (zHasLiveAction || chatThread.lastMessageSummary == null) {
            this.latestedMessageDateView.setVisibility(8);
        } else {
            this.latestedMessageDateView.setVisibility(0);
            this.latestedMessageDateView.setText(this.fmt.formatChatCardTime(chatThread.lastMessageSummary.createdTime));
        }
        if (this.playingTitle != null) {
            if (playList == null || (list = playList.items) == null || (i10 = playList.currentItemIndex) < 0 || i10 >= list.size()) {
                this.playingTitle.setText(getResources().getString(R.string.live));
            } else {
                PlayListItem playListItem = playList.items.get(playList.currentItemIndex);
                if (playListItem != null && !TextUtils.isEmpty(playListItem.title)) {
                    this.playingTitle.setText(playListItem.title);
                    this.playingTitle.post(new Runnable() { // from class: com.narvii.chat.hangout.HangoutItem.1
                        @Override // java.lang.Runnable
                        public void run() {
                            TextView textView = HangoutItem.this.playingTitle;
                            textView.setText(textView.getText());
                        }
                    });
                }
            }
        }
        if (chatThread.author != null) {
            User author = chatThread.getAuthor();
            this.organizerAvatar.setVisibility(chatThread.condition != 2 ? 0 : 8);
            this.organizerAvatar.setUser(author);
            if (zHasLiveAction) {
                this.organizerAvatar.setAvatarStroke(0.0f);
                this.organizerAvatar.showAudioStroke(true);
                this.organizerSpeakingView.setVisibility(0);
            } else {
                this.organizerAvatar.setAvatarStroke(author.hasAvatarFrame() ? 0.0f : 2.0f);
                this.organizerAvatar.showAudioStroke(false);
                this.organizerSpeakingView.setVisibility(8);
            }
        } else {
            this.organizerAvatar.setUser(null);
            this.organizerAvatar.setVisibility(8);
            this.organizerSpeakingView.setVisibility(8);
        }
        setupOnlineMemberBar(chatThread, chatThread.membersSummary, 0);
        View view = this.fansOnlyIndicator;
        if (view != null) {
            view.setVisibility(chatThread.isFansOnly() ? 0 : 4);
        }
        InterestTopicView interestTopicView = this.topicView;
        if (interestTopicView != null) {
            if (chatThread.promotedTopic == null) {
                interestTopicView.setVisibility(8);
            } else {
                interestTopicView.setChecked(true);
                this.topicView.setTopicData(chatThread.promotedTopic);
                this.topicView.setVisibility(0);
            }
        }
        TextView textView = this.disabledMask;
        if (textView != null) {
            textView.setVisibility(chatThread.isDisabled() ? 0 : 8);
        }
    }

    public HangoutItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.fmt = DateTimeFormatter.getInstance(context);
    }

    private boolean hasLiveAction(ChatThread chatThread) {
        int rTCType = chatThread.getRTCType();
        if (rTCType == 1 || rTCType == 4 || rTCType == 3 || rTCType == 5) {
            return true;
        }
        return false;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.image = (NVImageView) findViewById(R.id.image);
        this.title = (TextView) findViewById(R.id.title);
        this.organizerAvatar = (UserAvatarLayout) findViewById(R.id.user_avatar_layout);
        this.organizerSpeakingView = (UserSpeakingView) findViewById(R.id.organizer_speaking_view);
        this.communityInfoPanel = (LinearLayout) findViewById(R.id.community_info_panel);
        this.communityIcon = (CommunityIconView) findViewById(R.id.community_icon);
        this.communityName = (TextView) findViewById(R.id.community_name);
        this.membersCount = (TextView) findViewById(R.id.member_count);
        this.fansOnlyIndicator = findViewById(R.id.fans_only_content_indicator);
        this.latestedMessageDateView = (TextView) findViewById(R.id.latest_message_time);
        this.topicView = (InterestTopicView) findViewById(R.id.interest_item_view);
        this.playingTitle = (TextView) findViewById(R.id.playing_title);
        this.playingIcon = (NVImageView) findViewById(R.id.playing_icon);
        this.disabledMask = (TextView) findViewById(R.id.disable_mask);
    }
}
