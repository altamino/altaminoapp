package com.narvii.chat.detail;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.github.mmin18.widget.RealtimeBlurView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.community.CommunityService;
import com.narvii.config.ConfigService;
import com.narvii.model.ChatThread;
import com.narvii.model.Community;
import com.narvii.model.Media;
import com.narvii.model.User;
import com.narvii.util.Utils;
import com.narvii.widget.FullsizeImageView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.UserAvatarLayout;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
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

    public void setUserClickListener(UserClickListener userClickListener) {
        this.userClickListener = userClickListener;
    }

    public HeaderLayout(Context context) {
        this(context, null);
    }

    public HeaderLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.nvContext = Utils.getNVContext(context);
        setClipChildren(false);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        FullsizeImageView fullsizeImageView;
        super.onFinishInflate();
        this.blurView = (RealtimeBlurView) findViewById(R.id.blur);
        this.imgThreadBg = (FullsizeImageView) findViewById(R.id.image);
        this.tvTitle = (TextView) findViewById(R.id.title);
        this.absentView = (TextView) findViewById(R.id.chat_author_absent);
        this.userAvatarLayout = (UserAvatarLayout) findViewById(R.id.user_avatar_layout);
        this.userAvatarLayout.setClipChildren(false);
        this.userAvatarLayout.setClipToPadding(false);
        int iDpToPxInt = Utils.dpToPxInt(getContext(), 4.0f);
        this.userAvatarLayout.setPadding(iDpToPxInt, iDpToPxInt, iDpToPxInt, iDpToPxInt);
        this.absentView.setPadding(iDpToPxInt, iDpToPxInt, iDpToPxInt, iDpToPxInt);
        if (this.blurView == null || (fullsizeImageView = this.imgThreadBg) == null) {
            return;
        }
        fullsizeImageView.setOnImageChangedListener(this);
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
        if (str == null && (nVContext = this.nvContext) != null) {
            ConfigService configService = (ConfigService) nVContext.getService("config");
            Community community = ((CommunityService) this.nvContext.getService("community")).getCommunity(configService.getCommunityId());
            if (community != null) {
                this.imgThreadBg.setImageDrawable(configService.getCommunityId() == 0 ? new ColorDrawable(getResources().getColor(R.color.color_default_primary)) : new ColorDrawable(community.themeColor()));
            }
        } else {
            this.imgThreadBg.setImageUrl(str);
        }
        this.tvTitle.setText(chatThread.title);
        final User author = chatThread.getAuthor();
        if (author == null && (list = chatThread.membersSummary) != null) {
            Iterator<User> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                User next = it.next();
                if (Utils.isEqualsNotNull(next.uid, chatThread.uid())) {
                    author = next;
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

    @Override // com.narvii.widget.NVImageView.OnImageChangedListener
    public void onImageChanged(NVImageView nVImageView, int i, Media media) {
        if (this.blurReady || i != 4) {
            return;
        }
        this.blurReady = true;
        requestLayout();
    }

    public void setHeight1(int i) {
        this.height1 = i;
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        int width = getWidth();
        int height = getHeight();
        int statusBarOverlaySize = ((NVActivity) getContext()).getStatusBarOverlaySize();
        int actionBarOverlaySize = ((NVActivity) getContext()).getActionBarOverlaySize();
        int i5 = statusBarOverlaySize + actionBarOverlaySize;
        int i6 = i5 / 2;
        int i7 = i5 + i6;
        int width2 = this.userAvatarLayout.getWidth();
        int i8 = (width - width2) / 2;
        int i9 = (int) (width2 * 0.56f * 0.25f);
        int i10 = (height - width2) - i9;
        int i11 = i8 + width2;
        int i12 = i10 + width2;
        this.userAvatarLayout.layout(i8, i10, i11, i12);
        int i13 = width2 / 2;
        this.imgThreadBg.layout(0, 0, width, Math.max((height - i13) - i9, i5));
        if (this.absentView.getVisibility() == 0) {
            this.absentView.layout(i8, i10, i11, i12);
        }
        int height2 = this.tvTitle.getHeight();
        int width3 = this.tvTitle.getWidth();
        int i14 = (i5 + ((((height - actionBarOverlaySize) - statusBarOverlaySize) - height2) / 2)) - i13;
        this.tvTitle.layout((width - width3) / 2, i14, (width + width3) / 2, height2 + i14);
        setAlpha(this.tvTitle, i6, i7);
        setAlpha(this.userAvatarLayout, i6, i7);
        int i15 = this.height1;
        if (this.blurReady) {
            float f = height < i15 / 2 ? (((height - statusBarOverlaySize) - actionBarOverlaySize) * 1.0f) / ((r11 - statusBarOverlaySize) - actionBarOverlaySize) : 1.0f;
            if (f < 0.0f) {
                f = 0.0f;
            }
            this.blurView.setVisibility(f < 1.0f ? 0 : 4);
            this.blurView.setAlpha(1.0f - f);
            return;
        }
        this.blurView.setVisibility(4);
    }

    private void setAlpha(View view, int i, int i2) {
        int top = view.getTop();
        if (top <= i) {
            view.setAlpha(0.0f);
            view.setVisibility(4);
        } else if (top >= i2) {
            view.setAlpha(1.0f);
            view.setVisibility(0);
        } else {
            view.setAlpha(1.0f - (((i2 - top) * 1.0f) / (i2 - i)));
            view.setVisibility(0);
        }
    }
}
