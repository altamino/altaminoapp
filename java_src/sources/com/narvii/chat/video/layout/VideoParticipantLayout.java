package com.narvii.chat.video.layout;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Point;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.chat.rtc.ChannelUserWrapper;
import com.narvii.chat.rtc.RtcService;
import com.narvii.chat.signalling.ChannelUser;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.chat.video.view.UserSpeakingView;
import com.narvii.model.Media;
import com.narvii.model.User;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.util.Utils;
import com.narvii.video.ui.UserStatusData;
import com.narvii.widget.BlurImageView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.SpinDrawable;
import com.narvii.widget.VolumeIndicator;
import java.util.Set;

/* JADX INFO: loaded from: classes7.dex */
public class VideoParticipantLayout extends RtcBaseLayout {
    private static final int CHILD_COUNT_LIMIT = 7;
    private static final int DURATION = 50;
    SparseArray<Point> childMargin;
    SparseArray<Point> childSize;
    private CommunityConfigHelper communityConfigHelper;
    private int focusedId;
    public View focusedView;
    private boolean hideFaceDetectView;
    ItemClickListener itemClickListener;
    LayoutInflater layoutInflater;
    private int oldFocusedPos;
    private Set<String> pendingMutedUserList;
    RtcService rtcService;
    private int viewHeight;
    private int viewWidth;

    public interface ItemClickListener {
        void onItemClicked(int i10);
    }

    public VideoParticipantLayout(@NonNull Context context) {
        this(context, null);
    }

    private void configNewSizeAndMargin(View view, int i10, int i11, int i12) {
        if (i12 == this.focusedId) {
            return;
        }
        switch (i10) {
            case 1:
                this.childSize.put(i12, new Point(this.viewWidth, this.viewHeight));
                this.childMargin.put(i12, new Point(0, 0));
                break;
            case 2:
                this.childSize.put(i12, new Point(this.viewWidth, (int) (this.viewHeight / 2.0f)));
                this.childMargin.put(i12, new Point(0, i11 == 0 ? 0 : (int) (this.viewHeight / 2.0f)));
                break;
            case 3:
                SparseArray<Point> sparseArray = this.childSize;
                int i13 = this.viewWidth;
                if (i11 < 2) {
                    i13 /= 2;
                }
                sparseArray.put(i12, new Point(i13, (int) (this.viewHeight / 2.0f)));
                this.childMargin.put(i12, new Point(i11 == 1 ? this.viewWidth / 2 : 0, i11 >= 2 ? (int) (this.viewHeight / 2.0f) : 0));
                break;
            case 4:
                this.childSize.put(i12, new Point(this.viewWidth / 2, this.viewHeight / 2));
                this.childMargin.put(i12, new Point(i11 % 2 == 0 ? 0 : this.viewWidth / 2, i11 >= 2 ? this.viewHeight / 2 : 0));
                break;
            case 5:
                this.childSize.put(i12, new Point(i11 < 4 ? this.viewWidth / 2 : this.viewWidth, (int) (this.viewHeight / 3.0f)));
                this.childMargin.put(i12, new Point(i11 % 2 != 0 ? this.viewWidth / 2 : 0, (this.viewHeight / 3) * (i11 / 2)));
                break;
            case 6:
                this.childSize.put(i12, new Point(this.viewWidth / 2, this.viewHeight / 3));
                this.childMargin.put(i12, new Point((i11 % 2) * (this.viewWidth / 2), (i11 / 2) * (this.viewHeight / 3)));
                break;
            case 7:
                if (i11 < 2) {
                    this.childSize.put(i12, new Point(this.viewWidth / 2, this.viewHeight / 3));
                    this.childMargin.put(i12, new Point(i11 * (this.viewWidth / 2), 0));
                } else if (i11 <= 4) {
                    this.childSize.put(i12, new Point(this.viewWidth / 3, this.viewHeight / 3));
                    this.childMargin.put(i12, new Point((i11 - 2) * (this.viewWidth / 3), this.viewHeight / 3));
                } else {
                    this.childSize.put(i12, new Point(this.viewWidth / 2, this.viewHeight / 3));
                    this.childMargin.put(i12, new Point((i11 - 5) * (this.viewWidth / 2), (this.viewHeight * 2) / 3));
                }
                break;
        }
        Point point = this.childSize.get(i12);
        Point point2 = this.childMargin.get(i12);
        if (point == null || point2 == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            int i14 = marginLayoutParams.topMargin;
            int i15 = point2.y;
            if (i14 != i15) {
                marginLayoutParams.topMargin = i15;
            }
            int i16 = marginLayoutParams.leftMargin;
            int i17 = point2.x;
            if (i16 != i17) {
                marginLayoutParams.leftMargin = i17;
            }
            int i18 = marginLayoutParams.width;
            int i19 = point.x;
            if (i18 != i19) {
                marginLayoutParams.width = i19;
            }
            int i20 = marginLayoutParams.height;
            int i21 = point.y;
            if (i20 != i21) {
                marginLayoutParams.height = i21;
            }
        }
    }

    private boolean shouldShowTop(int i10, int i11) {
        switch (i10) {
            case 1:
                return true;
            case 2:
                return i11 == 1;
            case 3:
                return i11 == 2;
            case 4:
                return i11 > 1;
            case 5:
                return i11 > 2;
            case 6:
                return i11 > 1;
            case 7:
                return i11 > 1;
            default:
                return false;
        }
    }

    @Override // com.narvii.chat.video.layout.RtcBaseLayout
    protected int childLimitCount() {
        return 7;
    }

    @Override // com.narvii.chat.video.layout.RtcBaseLayout
    protected int getChannelType() {
        return 4;
    }

    @Override // com.narvii.chat.video.layout.RtcBaseLayout
    protected boolean keepMeInFirstPosition() {
        return true;
    }

    public void setFocusedId(int i10) {
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            View childAt = getChildAt(i11);
            Object tag = childAt.getTag(R.id.uid);
            if (tag != null) {
                Integer num = (Integer) tag;
                if (i10 == num.intValue()) {
                    this.oldFocusedPos = i11;
                    this.focusedId = i10;
                    this.focusedView = childAt;
                    updateChildView(childAt, i11, this.userList.get(num.intValue()));
                    return;
                }
            }
        }
    }

    public void setItemClickListener(ItemClickListener itemClickListener) {
        this.itemClickListener = itemClickListener;
    }

    public void setUnFocusId(int i10) {
        this.focusedId = -1;
        View view = this.focusedView;
        if (view != null) {
            stripView(view);
            this.focusedView.setClickable(true);
            addView(this.focusedView, this.oldFocusedPos > getChildCount() ? getChildCount() : this.oldFocusedPos);
            this.focusedView = null;
            updateViews();
        }
    }

    public VideoParticipantLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.focusedId = -1;
        this.oldFocusedPos = -1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, com.narvii.amino.R.styleable.VideoParticipantLayout);
        this.isFloatingMode = typedArrayObtainStyledAttributes.getBoolean(0, false);
        typedArrayObtainStyledAttributes.recycle();
        this.userList = new SparseArray<>();
        this.childSize = new SparseArray<>();
        setKeepScreenOn(true);
        this.childMargin = new SparseArray<>();
        this.layoutInflater = LayoutInflater.from(getContext());
        NVContext nVContext = Utils.getNVContext(getContext());
        if (nVContext != null) {
            this.rtcService = (RtcService) nVContext.getService("rtc");
        }
        this.communityConfigHelper = new CommunityConfigHelper(nVContext);
    }

    private void updateFocusView(ChannelUserWrapper channelUserWrapper) {
        Object tag;
        View view = this.focusedView;
        if (view == null || (tag = view.getTag(R.id.uid)) == null || channelUserWrapper.channelUid != ((Integer) tag).intValue()) {
            return;
        }
        updateChildView(this.focusedView, this.oldFocusedPos, channelUserWrapper);
    }

    @Override // com.narvii.chat.video.layout.RtcBaseLayout
    protected View constructNewChildView(final ChannelUserWrapper channelUserWrapper) {
        View viewInflate = this.layoutInflater.inflate(R.layout.item_video_cell, (ViewGroup) this, false);
        updateChildView(viewInflate, getChildCount() - 1, channelUserWrapper);
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.narvii.chat.video.layout.VideoParticipantLayout.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (VideoParticipantLayout.this.focusedId == -1 || (VideoParticipantLayout.this.focusedView != null && (view.getTag(R.id.uid) instanceof Integer) && VideoParticipantLayout.this.focusedId == ((Integer) view.getTag(R.id.uid)).intValue())) {
                    VideoParticipantLayout videoParticipantLayout = VideoParticipantLayout.this;
                    videoParticipantLayout.onStartChatUserDialogListener.onStartChatUserDialog(channelUserWrapper, videoParticipantLayout.threadId);
                }
            }
        };
        viewInflate.findViewById(R.id.local_mute_indicator).setTag(R.id.uid, Integer.valueOf(channelUserWrapper.channelUid));
        viewInflate.findViewById(R.id.local_mute_indicator).setOnClickListener(onClickListener);
        viewInflate.findViewById(R.id.account_info_container).setOnClickListener(onClickListener);
        viewInflate.findViewById(R.id.status_avatar).setTag(R.id.uid, Integer.valueOf(channelUserWrapper.channelUid));
        viewInflate.findViewById(R.id.status_avatar).setOnClickListener(onClickListener);
        viewInflate.findViewById(R.id.nickname_middle).setOnClickListener(onClickListener);
        viewInflate.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.video.layout.VideoParticipantLayout.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ItemClickListener itemClickListener;
                if ((VideoParticipantLayout.this.getChildCount() == 1 && VideoParticipantLayout.this.focusedId == -1) || (itemClickListener = VideoParticipantLayout.this.itemClickListener) == null) {
                    return;
                }
                itemClickListener.onItemClicked(channelUserWrapper.channelUid);
            }
        });
        return viewInflate;
    }

    @Override // com.narvii.chat.video.layout.RtcDataUpdateHandler
    public void notifyLocalMuteUserListChanged(Set<String> set) {
        SparseArray<Point> sparseArray = this.childSize;
        if (sparseArray == null || sparseArray.size() == 0) {
            this.pendingMutedUserList = set;
        } else {
            this.pendingMutedUserList = set;
            updateViews();
        }
    }

    public void setHideFaceDetectView(boolean z6) {
        if (this.hideFaceDetectView == z6) {
            return;
        }
        this.hideFaceDetectView = z6;
        updateViews();
    }

    /* JADX WARN: Code duplicated, block: B:103:0x0118  */
    /* JADX WARN: Code duplicated, block: B:109:0x0125 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:116:0x0133  */
    /* JADX WARN: Code duplicated, block: B:18:0x002e  */
    /* JADX WARN: Code duplicated, block: B:198:0x02b8  */
    /* JADX WARN: Code duplicated, block: B:47:0x008c  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.narvii.chat.video.layout.RtcBaseLayout
    protected void updateChildView(View view, int i10, ChannelUserWrapper channelUserWrapper) {
        boolean z6;
        String string;
        boolean z10;
        boolean z11;
        int i11;
        String str;
        int i12;
        String string2;
        SurfaceView surfaceView;
        if (channelUserWrapper == null) {
            return;
        }
        ChannelUser channelUser = channelUserWrapper.channelUser;
        User user = channelUser == null ? null : channelUser.userProfile;
        UserStatusData userStatusData = channelUserWrapper.userStatus;
        if (channelUserWrapper.channelUid == this.localChannelUid) {
            z6 = true;
        } else {
            if (Utils.isEqualsNotNull(channelUser == null ? null : channelUser.uid(), this.localUid)) {
                z6 = true;
            } else {
                z6 = false;
            }
        }
        if (user == null) {
            string = "";
        } else {
            string = z6 ? getContext().getString(R.string.me) : user.nickname();
        }
        if (!TextUtils.isEmpty(string) && string.length() > 20) {
            string = string.substring(0, 20);
        }
        boolean z12 = this.focusedId != -1;
        boolean z13 = getChildCount() == 1;
        boolean zShouldShowTop = shouldShowTop(getChildCount(), i10);
        Set<String> set = this.pendingMutedUserList;
        if (set == null) {
            z10 = false;
        } else {
            ChannelUser channelUser2 = channelUserWrapper.channelUser;
            if (set.contains(channelUser2 != null ? channelUser2.uid() : null)) {
                z10 = true;
            } else {
                z10 = false;
            }
        }
        boolean z14 = userStatusData != null && userStatusData.isVideoMuted();
        boolean z15 = userStatusData != null && userStatusData.isVoiceMuted();
        boolean z16 = userStatusData != null && userStatusData.isBadNetwork();
        boolean z17 = channelUserWrapper.status == 1;
        boolean z18 = z6 && this.isLauncher;
        boolean z19 = !(z17 || z18) || z10 || z14;
        RtcService rtcService = this.rtcService;
        boolean z20 = rtcService != null && rtcService.onlyMePresenterInMainChannel();
        int curVolumeLevel = userStatusData == null ? 0 : userStatusData.getCurVolumeLevel();
        VideoAccountInfoLayout videoAccountInfoLayout = (VideoAccountInfoLayout) view.findViewById(R.id.account_info_container);
        boolean z21 = this.isFloatingMode;
        if (!z21 && zShouldShowTop && !z12 && !z13 && !z10 && (z17 || z18)) {
            z11 = z20;
            i11 = 0;
        } else if (z21) {
            z11 = z20;
            if (!z21 || zShouldShowTop || z12 || z13 || z10 || !(z17 || z18)) {
                i11 = -1;
            } else {
                i11 = 2;
            }
        } else {
            if (z13) {
                z11 = z20;
            } else {
                if (z12) {
                    z11 = z20;
                    if (this.focusedId == channelUserWrapper.channelUid) {
                    }
                } else {
                    z11 = z20;
                }
                if (z21) {
                    i11 = -1;
                } else {
                    i11 = -1;
                }
            }
            if (z17 || z18) {
                i11 = 1;
            } else if (z21) {
                i11 = -1;
            } else {
                i11 = -1;
            }
        }
        videoAccountInfoLayout.setVisibility(i11 != -1 ? 0 : 8);
        videoAccountInfoLayout.setLayoutPosition(i11);
        boolean z22 = z17;
        boolean z23 = z10;
        videoAccountInfoLayout.setStatus(z15, !z19, string, curVolumeLevel, (!z17 || z10 || z15 || this.isFloatingMode || z19) ? false : true, user != null && user.isSubscribeMemberShip());
        VolumeIndicator volumeIndicator = (VolumeIndicator) view.findViewById(R.id.volume_level);
        int i13 = curVolumeLevel;
        volumeIndicator.setValue(i13 / 4.0f, true);
        volumeIndicator.setVisibility((!z22 || z23 || z15 || !z14 || this.isFloatingMode) ? 8 : 0);
        view.findViewById(R.id.local_mute_indicator).setVisibility(z23 ? 0 : 8);
        TextView textView = (TextView) view.findViewById(R.id.nickname_middle);
        textView.setText(string);
        if (this.isFloatingMode || user == null || !user.isSubscribeMemberShip() || !this.communityConfigHelper.isPremiumFeatureEnabled()) {
            str = null;
            textView.setCompoundDrawablePadding(0);
            textView.setCompoundDrawables(null, null, null, null);
        } else if (Utils.isRtl()) {
            str = null;
            textView.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, getResources().getDrawable(R.drawable.ic_badge_membership), (Drawable) null);
            textView.setCompoundDrawablePadding((int) Utils.dpToPx(getContext(), 8.0f));
        } else {
            str = null;
            textView.setCompoundDrawablesWithIntrinsicBounds(getResources().getDrawable(R.drawable.ic_badge_membership), (Drawable) null, (Drawable) null, (Drawable) null);
            textView.setCompoundDrawablePadding((int) Utils.dpToPx(getContext(), 8.0f));
        }
        view.findViewById(R.id.video_muted).setVisibility((!z23 && z14 && z15) ? 0 : 8);
        view.findViewById(R.id.bad_network).setVisibility(z16 ? 0 : 8);
        UserSpeakingView userSpeakingView = (UserSpeakingView) view.findViewById(R.id.user_speaking);
        if (this.isFloatingMode || z15 || z23 || !z14) {
            i13 = 0;
        }
        userSpeakingView.setVolumeLevel(i13);
        updateLoadingView((ImageView) view.findViewById(R.id.loading_indicator), z22, z23);
        final BlurImageView blurImageView = (BlurImageView) view.findViewById(R.id.status_bg);
        NVImageView nVImageView = (NVImageView) view.findViewById(R.id.status_avatar);
        nVImageView.setImageUrl(user == null ? "" : user.icon());
        blurImageView.setImageDrawable(new ColorDrawable(-11776948));
        nVImageView.setOnImageChangedListener(new NVImageView.OnImageChangedListener() { // from class: com.narvii.chat.video.layout.VideoParticipantLayout.3
            @Override // com.narvii.widget.NVImageView.OnImageChangedListener
            public void onImageChanged(NVImageView nVImageView2, int i14, Media media) {
                if (nVImageView2.getDrawable() != null && i14 == 4) {
                    blurImageView.setImageDrawable2(nVImageView2.getDrawable());
                }
            }
        });
        view.findViewById(R.id.status_container).setVisibility(z19 ? 0 : 8);
        FrameLayout frameLayout = (FrameLayout) view.findViewById(R.id.sv_container);
        if (userStatusData == null || userStatusData.mView == null || this.focusedId == channelUserWrapper.channelUid) {
            i12 = 0;
        } else {
            if (frameLayout.getChildCount() == 0) {
                i12 = 0;
            } else if (frameLayout.getChildCount() == 1) {
                i12 = 0;
                if (frameLayout.getChildAt(0) != userStatusData.mView) {
                }
            } else {
                i12 = 0;
            }
            frameLayout.removeAllViews();
            stripView(userStatusData.mView);
            if (this.focusedView != null) {
                userStatusData.mView.setZOrderMediaOverlay(true);
            }
            frameLayout.addView(userStatusData.mView);
        }
        if (userStatusData != null && (surfaceView = userStatusData.mView) != null) {
            surfaceView.setZOrderMediaOverlay(this.focusedId != channelUserWrapper.channelUid ? 1 : i12);
        }
        if (z23) {
            string2 = getContext().getString(R.string.local_mute);
        } else if (channelUserWrapper.status == 0 && z6) {
            string2 = getContext().getString(R.string.rtc_status_you_are_joining);
        } else {
            string2 = z16 ? getContext().getString(R.string.bad_connection) : str;
        }
        TextView textView2 = (TextView) view.findViewById(R.id.status_hint);
        textView2.setText(string2);
        textView2.setVisibility((this.isFloatingMode || TextUtils.isEmpty(string2)) ? 8 : i12);
        view.findViewById(R.id.nickname_middle).setVisibility(((!z23 && z22) || z12 || this.isFloatingMode) ? 4 : i12);
        view.findViewById(R.id.bad_connection).setVisibility((this.isFloatingMode || z19 || !z16) ? 8 : i12);
        view.findViewById(R.id.face_detect_status).setVisibility((!z6 || this.hideFaceDetectView || z14 || userStatusData == null || !userStatusData.shouldShowFaceDetectHint() || userStatusData.proItemStaus != 2 || (this.isFloatingMode && this.focusedId != channelUserWrapper.channelUid)) ? 8 : i12);
        view.findViewById(R.id.loading_avatar_progress).setVisibility(((!z11 && !z22) || z19 || !z6 || z14 || userStatusData == null || userStatusData.proItemStaus != 1 || (this.isFloatingMode && this.focusedView == null)) ? 8 : i12);
    }

    private void updateLoadingView(ImageView imageView, boolean z6, boolean z10) {
        SpinDrawable spinDrawable;
        if (imageView.getDrawable() instanceof SpinDrawable) {
            spinDrawable = (SpinDrawable) imageView.getDrawable();
        } else {
            spinDrawable = new SpinDrawable();
            spinDrawable.setLoadingColor(-1);
            imageView.setImageDrawable(spinDrawable);
        }
        if (!z6 && !z10) {
            if (!spinDrawable.isRunning()) {
                spinDrawable.start();
            }
            imageView.setVisibility(8);
        } else {
            spinDrawable.stop();
            imageView.setVisibility(8);
        }
    }

    @Override // com.narvii.chat.video.layout.RtcBaseLayout, com.narvii.chat.video.layout.RtcDataUpdateHandler
    public void notifyUserDataChanged(SignallingChannel signallingChannel, ChannelUserWrapper channelUserWrapper) {
        super.notifyUserDataChanged(signallingChannel, channelUserWrapper);
        if (this.focusedView != null) {
            updateFocusView(channelUserWrapper);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        int iIntValue;
        this.viewWidth = View.MeasureSpec.getSize(i10);
        this.viewHeight = View.MeasureSpec.getSize(i11);
        int childCount = getChildCount();
        for (int i12 = 0; i12 < childCount; i12++) {
            Object tag = getChildAt(i12).getTag(R.id.uid);
            if (tag instanceof Integer) {
                iIntValue = ((Integer) tag).intValue();
            } else {
                iIntValue = -1;
            }
            if (iIntValue != -1) {
                configNewSizeAndMargin(getChildAt(i12), childCount, i12, iIntValue);
            }
        }
        super.onMeasure(i10, i11);
    }

    @Override // com.narvii.chat.video.layout.RtcBaseLayout
    protected void onViewStatusReady() {
        super.onViewStatusReady();
        updateViews();
    }

    public void stripView(View view) {
        ViewParent parent = view.getParent();
        if (parent != null) {
            ((FrameLayout) parent).removeView(view);
        }
    }

    @Override // com.narvii.chat.video.layout.RtcBaseLayout
    protected void updateViews() {
        super.updateViews();
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            Object tag = childAt.getTag(R.id.uid);
            if (tag != null) {
                updateChildView(childAt, i10, this.userList.get(((Integer) tag).intValue()));
            }
        }
        View view = this.focusedView;
        if (view != null) {
            Object tag2 = view.getTag(R.id.uid);
            if (tag2 instanceof Integer) {
                Integer num = (Integer) tag2;
                if (this.userList.get(num.intValue()) != null) {
                    updateChildView(this.focusedView, this.oldFocusedPos, this.userList.get(num.intValue()));
                }
            }
        }
    }
}
