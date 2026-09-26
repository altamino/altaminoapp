package com.narvii.chat.video.layout;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Point;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.Display;
import android.view.View;
import android.view.ViewParent;
import android.view.WindowManager;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.GravityCompat;
import com.narvii.amino.master.R;
import com.narvii.chat.rtc.ChannelUserWrapper;
import com.narvii.chat.rtc.RtcService;
import com.narvii.chat.video.RtcChatManager;
import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes8.dex */
public class VideoMainContainer extends FrameLayout implements VideoParticipantLayout.ItemClickListener, View.OnClickListener {
    private static final float FLOATING_MODE_RATIO = 0.2f;
    private int curChannelUid;
    private AnimatorSet enterFocusAnimation;
    FrameLayout focusContainer;
    RtcService rtcService;
    private int screenHeight;
    private int screenWidth;
    VideoParticipantLayout videoParticipantLayout;
    private int viewHeight;
    private int viewWidth;

    public VideoMainContainer(@NonNull Context context) {
        this(context, null);
    }

    private void resetFocusId() {
        this.curChannelUid = -1;
        this.focusContainer.removeAllViews();
        this.videoParticipantLayout.setUnFocusId(this.curChannelUid);
    }

    public VideoMainContainer(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.curChannelUid = -1;
        Display defaultDisplay = ((WindowManager) getContext().getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        this.screenWidth = point.x;
        this.screenHeight = point.y;
        this.rtcService = (RtcService) Utils.getNVContext(context).getService("rtc");
    }

    private void restoreMainLayout() {
        this.videoParticipantLayout.setFloatingMode(false);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.videoParticipantLayout.getLayoutParams();
        this.videoParticipantLayout.setScaleX(1.0f);
        this.videoParticipantLayout.setScaleY(1.0f);
        layoutParams.width = this.screenWidth;
        layoutParams.height = this.screenHeight;
        layoutParams.topMargin = 0;
        layoutParams.rightMargin = 0;
        layoutParams.gravity = 17;
        this.videoParticipantLayout.setLayoutParams(layoutParams);
        resetFocusId();
    }

    public void enterBeautyMode() {
        int i10;
        VideoParticipantLayout videoParticipantLayout = this.videoParticipantLayout;
        if (videoParticipantLayout != null) {
            if ((this.curChannelUid == -1 && videoParticipantLayout.getChildCount() == 1) || (i10 = this.curChannelUid) == this.videoParticipantLayout.localChannelUid) {
                return;
            }
            if (i10 != -1) {
                restoreMainLayout();
            }
            VideoParticipantLayout videoParticipantLayout2 = this.videoParticipantLayout;
            int i11 = videoParticipantLayout2.localChannelUid;
            this.curChannelUid = i11;
            videoParticipantLayout2.setFocusedId(i11);
            View view = this.videoParticipantLayout.focusedView;
            if (view != null) {
                stripView(view);
                this.videoParticipantLayout.focusedView.setClickable(false);
                this.focusContainer.addView(this.videoParticipantLayout.focusedView, new FrameLayout.LayoutParams(-1, -1));
            }
            enterFocusMode();
        }
    }

    @Override // com.narvii.chat.video.layout.VideoParticipantLayout.ItemClickListener
    public void onItemClicked(int i10) {
        if (this.curChannelUid == i10 || i10 == -1 || this.enterFocusAnimation.isRunning()) {
            return;
        }
        if (this.curChannelUid != -1) {
            restoreMainLayout();
            return;
        }
        this.curChannelUid = i10;
        this.videoParticipantLayout.setFocusedId(i10);
        View view = this.videoParticipantLayout.focusedView;
        if (view != null) {
            stripView(view);
            this.videoParticipantLayout.focusedView.setClickable(false);
            this.focusContainer.addView(this.videoParticipantLayout.focusedView, new FrameLayout.LayoutParams(-1, -1));
        }
        SparseArray<ChannelUserWrapper> userList = this.videoParticipantLayout.getUserList();
        for (int i11 = 0; i11 < userList.size(); i11++) {
            ChannelUserWrapper channelUserWrapperValueAt = userList.valueAt(i11);
            if (channelUserWrapperValueAt != null) {
                RtcChatManager rtcManager = this.rtcService.getRtcManager();
                int i12 = channelUserWrapperValueAt.channelUid;
                rtcManager.setLowerStreamMode(i12, !Utils.isEqualsNotNull(Integer.valueOf(i12), Integer.valueOf(this.curChannelUid)));
            }
        }
        enterFocusMode();
    }

    private void enterFocusMode() {
        int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.focus_mode_margin_top) + Utils.getStatusBarHeight(getContext()) + getContext().getResources().getDimensionPixelSize(R.dimen.focus_mode_margin_right);
        int dimensionPixelSize2 = getContext().getResources().getDimensionPixelSize(R.dimen.focus_mode_margin_right);
        this.videoParticipantLayout.setFloatingMode(true);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.videoParticipantLayout.getLayoutParams();
        layoutParams.width = (int) (this.screenWidth * 0.2f);
        layoutParams.height = (int) (this.screenHeight * 0.2f);
        layoutParams.topMargin = dimensionPixelSize;
        layoutParams.rightMargin = dimensionPixelSize2;
        layoutParams.gravity = GravityCompat.END;
        this.videoParticipantLayout.setLayoutParams(layoutParams);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        restoreMainLayout();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.focusContainer = (FrameLayout) findViewById(R.id.focused_container);
        this.videoParticipantLayout = (VideoParticipantLayout) findViewById(R.id.video_layout);
        this.focusContainer.setOnClickListener(this);
        this.videoParticipantLayout.setItemClickListener(this);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.videoParticipantLayout, "scaleX", 1.0f, 0.2f);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.videoParticipantLayout, "scaleY", 1.0f, 0.2f);
        AnimatorSet animatorSet = new AnimatorSet();
        this.enterFocusAnimation = animatorSet;
        animatorSet.setDuration(300L);
        this.enterFocusAnimation.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        this.viewWidth = i10;
        this.viewHeight = i11;
    }

    public void stripView(View view) {
        ViewParent parent = view.getParent();
        if (parent != null) {
            ((FrameLayout) parent).removeView(view);
        }
    }
}
