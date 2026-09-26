package com.narvii.chat.detail;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.github.mmin18.widget.RealtimeBlurView;
import com.narvii.amino.master.R;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.community.CommunityService;
import com.narvii.config.ConfigService;
import com.narvii.master.search.SearchPrefsHelper;
import com.narvii.model.ChatThread;
import com.narvii.model.Community;
import com.narvii.model.Media;
import com.narvii.model.User;
import com.narvii.util.Utils;
import com.narvii.widget.FullsizeImageView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.UserAvatarLayout;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class HeaderLayout extends RelativeLayout implements NVImageView.OnImageChangedListener {
    private TextView absentView;
    private boolean blurReady;
    private RealtimeBlurView blurView;
    private ChatThread chatThread;
    int height1;
    private FullsizeImageView imgThreadBg;
    private NVContext nvContext;
    private TextView tvTitle;
    UserAvatarLayout userAvatarLayout;
    UserClickListener userClickListener;

    interface UserClickListener {
        void onUserClicked(User user);
    }

    public HeaderLayout(Context context) {
        this(context, null);
    }

    public void setHeight1(int i10) {
        this.height1 = i10;
    }

    public void setUserClickListener(UserClickListener userClickListener) {
        this.userClickListener = userClickListener;
    }

    public HeaderLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.nvContext = Utils.getNVContext(context);
        setClipChildren(false);
    }

    @Override // com.narvii.widget.NVImageView.OnImageChangedListener
    public void onImageChanged(NVImageView nVImageView, int i10, Media media) {
        if (this.blurReady || i10 != 4) {
            return;
        }
        this.blurReady = true;
        requestLayout();
    }

    public void setThread(ChatThread chatThread) {
        List<User> list;
        NVContext nVContext;
        if (chatThread == null) {
            return;
        }
        this.chatThread = chatThread;
        String str = chatThread.icon;
        if (str == null && chatThread.isJumpstart()) {
            str = "res://ic_amino";
        }
        if (str != null || (nVContext = this.nvContext) == null) {
            this.imgThreadBg.setImageUrl(str);
        } else {
            ConfigService configService = (ConfigService) nVContext.getService("config");
            Community community = ((CommunityService) this.nvContext.getService(SearchPrefsHelper.PREFS_KEY_COMMUNITY)).getCommunity(configService.getCommunityId());
            if (community != null) {
                this.imgThreadBg.setImageDrawable(configService.getCommunityId() == 0 ? new ColorDrawable(getResources().getColor(R.color.color_default_primary)) : new ColorDrawable(community.themeColor()));
            }
        }
        this.tvTitle.setText(chatThread.title);
        final User author = chatThread.getAuthor();
        if (author == null && (list = chatThread.membersSummary) != null) {
            for (User user : list) {
                if (Utils.isEqualsNotNull(user.uid, chatThread.uid())) {
                    author = user;
                    break;
                }
            }
        }
        this.userAvatarLayout.setUser(author);
        this.userAvatarLayout.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.detail.HeaderLayout.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UserClickListener userClickListener = HeaderLayout.this.userClickListener;
                if (userClickListener != null) {
                    userClickListener.onUserClicked(author);
                }
            }
        });
        this.absentView.setVisibility(chatThread.condition == 2 ? 0 : 4);
    }

    private void setAlpha(View view, int i10, int i11) {
        int top = view.getTop();
        if (top <= i10) {
            view.setAlpha(0.0f);
            view.setVisibility(4);
        } else if (top >= i11) {
            view.setAlpha(1.0f);
            view.setVisibility(0);
        } else {
            view.setAlpha(1.0f - (((i11 - top) * 1.0f) / (i11 - i10)));
            view.setVisibility(0);
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        FullsizeImageView fullsizeImageView;
        super.onFinishInflate();
        this.blurView = (RealtimeBlurView) findViewById(R.id.blur);
        this.imgThreadBg = (FullsizeImageView) findViewById(R.id.image);
        this.tvTitle = (TextView) findViewById(R.id.title);
        this.absentView = (TextView) findViewById(R.id.chat_author_absent);
        UserAvatarLayout userAvatarLayout = (UserAvatarLayout) findViewById(R.id.user_avatar_layout);
        this.userAvatarLayout = userAvatarLayout;
        userAvatarLayout.setClipChildren(false);
        this.userAvatarLayout.setClipToPadding(false);
        int iDpToPxInt = Utils.dpToPxInt(getContext(), 4.0f);
        this.userAvatarLayout.setPadding(iDpToPxInt, iDpToPxInt, iDpToPxInt, iDpToPxInt);
        this.absentView.setPadding(iDpToPxInt, iDpToPxInt, iDpToPxInt, iDpToPxInt);
        if (this.blurView != null && (fullsizeImageView = this.imgThreadBg) != null) {
            fullsizeImageView.setOnImageChangedListener(this);
        }
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        float f;
        super.onLayout(z6, i10, i11, i12, i13);
        int width = getWidth();
        int height = getHeight();
        int statusBarOverlaySize = ((NVActivity) getContext()).getStatusBarOverlaySize();
        int actionBarOverlaySize = ((NVActivity) getContext()).getActionBarOverlaySize();
        int i14 = statusBarOverlaySize + actionBarOverlaySize;
        int i15 = i14 / 2;
        int i16 = i14 + i15;
        int width2 = this.userAvatarLayout.getWidth();
        int i17 = (width - width2) / 2;
        int i18 = (int) (width2 * 0.56f * 0.25f);
        int i19 = (height - width2) - i18;
        int i20 = i17 + width2;
        int i21 = i19 + width2;
        this.userAvatarLayout.layout(i17, i19, i20, i21);
        int i22 = width2 / 2;
        int i23 = 0;
        this.imgThreadBg.layout(0, 0, width, Math.max((height - i22) - i18, i14));
        if (this.absentView.getVisibility() == 0) {
            this.absentView.layout(i17, i19, i20, i21);
        }
        int height2 = this.tvTitle.getHeight();
        int width3 = this.tvTitle.getWidth();
        int i24 = (i14 + ((((height - actionBarOverlaySize) - statusBarOverlaySize) - height2) / 2)) - i22;
        this.tvTitle.layout((width - width3) / 2, i24, (width + width3) / 2, height2 + i24);
        setAlpha(this.tvTitle, i15, i16);
        setAlpha(this.userAvatarLayout, i15, i16);
        int i25 = this.height1;
        if (this.blurReady) {
            int i26 = i25 / 2;
            if (height < i26) {
                f = (((height - statusBarOverlaySize) - actionBarOverlaySize) * 1.0f) / ((i26 - statusBarOverlaySize) - actionBarOverlaySize);
            } else {
                f = 1.0f;
            }
            if (f < 0.0f) {
                f = 0.0f;
            }
            RealtimeBlurView realtimeBlurView = this.blurView;
            if (f >= 1.0f) {
                i23 = 4;
            }
            realtimeBlurView.setVisibility(i23);
            this.blurView.setAlpha(1.0f - f);
            return;
        }
        this.blurView.setVisibility(4);
    }
}
