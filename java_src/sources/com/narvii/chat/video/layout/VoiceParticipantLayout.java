package com.narvii.chat.video.layout;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Point;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.chat.rtc.ChannelUserWrapper;
import com.narvii.chat.rtc.RtcService;
import com.narvii.chat.signalling.ChannelUser;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.chat.video.view.UserSpeakingView;
import com.narvii.model.User;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.util.Utils;
import com.narvii.video.ui.UserStatusData;
import com.narvii.widget.NicknameView;
import com.narvii.widget.SpinDrawable;
import com.narvii.widget.UserAvatarLayout;
import com.narvii.widget.VolumeIndicator;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public class VoiceParticipantLayout extends RtcBaseLayout {
    public static final float CELL_WIDTH_RATIO = 0.19f;
    private static final float CELL_WIDTH_RATIO_FLOATING = 0.3f;
    private static final int CHILD_COUNT_LIMIT_GROUP = 7;
    private static final int CHILD_COUNT_LIMIT_PUBLIC = 9;
    private static final int DEFAULT_PADDING = 10;
    public static final float OUT_INNER_RATIO = 3.25f;
    private static final float RADIUS_RATIO_OF_SCREEN = 0.11f;
    private float cellWidthRatio;
    SparseArray<Point> childCenterPosition;
    private int childCountLimit;
    private int gridCellWidth;
    LayoutInflater layoutInflater;
    private Set<String> pendingMutedUserList;
    private int radius;
    private int viewHeight;
    private int viewWidth;

    public VoiceParticipantLayout(@NonNull Context context) {
        this(context, null);
    }

    @Override // com.narvii.chat.video.layout.RtcBaseLayout
    protected int childLimitCount() {
        return this.childCountLimit;
    }

    @Override // com.narvii.chat.video.layout.RtcBaseLayout
    protected int getChannelType() {
        return 1;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        for (int i14 = 0; i14 < getChildCount(); i14++) {
            View childAt = getChildAt(i14);
            Point point = this.childCenterPosition.get(((Integer) childAt.getTag(R.id.uid)).intValue());
            int measuredWidth = childAt.getMeasuredWidth() / 2;
            int measuredHeight = childAt.getMeasuredHeight() / 2;
            childAt.getLayoutParams().width = (int) (this.viewWidth * 0.19f);
            int i15 = point.x;
            int i16 = point.y;
            childAt.layout(i15 - measuredWidth, i16 - measuredHeight, i15 + measuredWidth, i16 + measuredHeight);
        }
    }

    public void setIsGroupChat(boolean z6) {
        this.childCountLimit = z6 ? 7 : 9;
    }

    public VoiceParticipantLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.cellWidthRatio = 0.19f;
        this.childCountLimit = 7;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, com.narvii.amino.R.styleable.VoiceParticipantLayout);
        this.isFloatingMode = typedArrayObtainStyledAttributes.getBoolean(0, false);
        typedArrayObtainStyledAttributes.recycle();
        this.childCenterPosition = new SparseArray<>();
        this.layoutInflater = LayoutInflater.from(getContext());
        this.cellWidthRatio = this.isFloatingMode ? 0.3f : 0.19f;
        setKeepScreenOn(true);
    }

    private void configCircle(int i10, int i11, int i12) {
        int i13 = this.viewWidth / 2;
        int i14 = this.viewHeight / 2;
        if (i10 == 1 || i11 == 0) {
            this.childCenterPosition.put(i12, new Point(i13, i14));
            return;
        }
        if (i10 != 9) {
            double d = (((double) (((i11 - 1) * 360) / (i10 - 1))) / 180.0d) * 3.141592653589793d;
            this.childCenterPosition.put(i12, new Point((int) (((double) i13) + (((double) (this.radius * 3.25f)) * Math.sin(d))), (int) (((double) i14) - (((double) (this.radius * 3.25f)) * Math.cos(d)))));
            return;
        }
        int i15 = this.gridCellWidth;
        int i16 = i14 - i15;
        if (i11 <= 3 || i11 > 5) {
            i14 = i11 >= 6 ? i14 + i15 : i16;
        }
        int i17 = i13 - i15;
        if (i11 != 2 && i11 != 7) {
            i13 = (i11 == 3 || i11 == 5 || i11 == 8) ? i13 + i15 : i17;
        }
        this.childCenterPosition.put(i12, new Point(i13, i14));
    }

    private void setTagForChildView(View view, int i10) {
        if (view == null) {
            return;
        }
        view.setTag(R.id.uid, Integer.valueOf(i10));
        View viewFindViewById = view.findViewById(R.id.local_mute_indicator);
        if (viewFindViewById != null) {
            viewFindViewById.setTag(R.id.uid, Integer.valueOf(i10));
        }
        View viewFindViewById2 = view.findViewById(R.id.nickname);
        if (viewFindViewById2 != null) {
            viewFindViewById2.setTag(R.id.uid, Integer.valueOf(i10));
        }
        View viewFindViewById3 = view.findViewById(R.id.avatar);
        if (viewFindViewById3 != null) {
            viewFindViewById3.setTag(R.id.uid, Integer.valueOf(i10));
        }
    }

    @Override // com.narvii.chat.video.layout.RtcBaseLayout
    protected View constructNewChildView(final ChannelUserWrapper channelUserWrapper) {
        View viewInflate = this.layoutInflater.inflate(R.layout.item_audio_cell, (ViewGroup) this, false);
        updateChildView(viewInflate, getChildCount() - 1, channelUserWrapper);
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.narvii.chat.video.layout.VoiceParticipantLayout.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Object tag = view.getTag(R.id.uid);
                if (tag != null && (tag instanceof Integer)) {
                    Integer num = (Integer) tag;
                    if (VoiceParticipantLayout.this.userList.get(num.intValue()) != null) {
                        ChannelUserWrapper channelUserWrapper2 = VoiceParticipantLayout.this.userList.get(num.intValue());
                        if (channelUserWrapper2 != null) {
                            VoiceParticipantLayout voiceParticipantLayout = VoiceParticipantLayout.this;
                            voiceParticipantLayout.onStartChatUserDialogListener.onStartChatUserDialog(channelUserWrapper2, voiceParticipantLayout.threadId);
                            return;
                        }
                        return;
                    }
                }
                VoiceParticipantLayout voiceParticipantLayout2 = VoiceParticipantLayout.this;
                voiceParticipantLayout2.onStartChatUserDialogListener.onStartChatUserDialog(channelUserWrapper, voiceParticipantLayout2.threadId);
            }
        };
        viewInflate.findViewById(R.id.local_mute_indicator).setOnClickListener(onClickListener);
        viewInflate.findViewById(R.id.nickname).setOnClickListener(onClickListener);
        viewInflate.findViewById(R.id.avatar).setOnClickListener(onClickListener);
        return viewInflate;
    }

    @Override // com.narvii.chat.video.layout.RtcDataUpdateHandler
    public void notifyLocalMuteUserListChanged(Set<String> set) {
        if (this.childCenterPosition == null) {
            this.pendingMutedUserList = set;
        } else {
            this.pendingMutedUserList = set;
            updateViews();
        }
    }

    @Override // com.narvii.chat.video.layout.RtcBaseLayout, com.narvii.chat.video.layout.RtcDataUpdateHandler
    public void notifyUserDataListChanged(SignallingChannel signallingChannel, SparseArray<ChannelUserWrapper> sparseArray) {
        if (sparseArray == null) {
            return;
        }
        if (sparseArray.size() <= childLimitCount()) {
            super.notifyUserDataListChanged(signallingChannel, sparseArray);
            return;
        }
        SparseArray sparseArray2 = new SparseArray();
        SparseArray<ChannelUserWrapper> sparseArray3 = new SparseArray<>();
        SparseArray sparseArray4 = new SparseArray();
        for (int i10 = 0; i10 < sparseArray.size(); i10++) {
            ChannelUserWrapper channelUserWrapperValueAt = sparseArray.valueAt(i10);
            UserStatusData userStatusData = channelUserWrapperValueAt.userStatus;
            if (userStatusData == null || userStatusData.mVolume == 0 || this.userList.get(channelUserWrapperValueAt.channelUid) != null) {
                sparseArray3.put(channelUserWrapperValueAt.channelUid, channelUserWrapperValueAt);
            } else {
                sparseArray2.put(channelUserWrapperValueAt.channelUid, channelUserWrapperValueAt);
            }
        }
        super.notifyUserDataListChanged(signallingChannel, sparseArray3);
        if (sparseArray2.size() != 0) {
            for (int i11 = 0; i11 < this.userList.size(); i11++) {
                if (this.userList.valueAt(i11) != null && this.userList.valueAt(i11).userStatus != null && this.userList.valueAt(i11).channelUid != this.localChannelUid && this.userList.valueAt(i11).userStatus.mVolume == 0) {
                    sparseArray4.put(this.userList.keyAt(i11), this.userList.valueAt(i11));
                }
            }
            if (sparseArray4.size() == 0) {
                return;
            }
            int i12 = 0;
            for (int i13 = 0; i13 < getChildCount(); i13++) {
                View childAt = getChildAt(i13);
                Object tag = childAt.getTag(R.id.uid);
                if (tag != null) {
                    Integer num = (Integer) tag;
                    if (sparseArray4.indexOfKey(num.intValue()) >= 0 && i12 < sparseArray2.size()) {
                        this.userList.remove(num.intValue());
                        setTagForChildView(childAt, sparseArray2.keyAt(i12));
                        this.userList.put(sparseArray2.keyAt(i12), (ChannelUserWrapper) sparseArray2.valueAt(i12));
                        updateChildView(childAt, i13, (ChannelUserWrapper) sparseArray2.valueAt(i12));
                        i12++;
                    }
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:32:0x006b  */
    /* JADX WARN: Code duplicated, block: B:57:0x00a3  */
    @Override // com.narvii.chat.video.layout.RtcBaseLayout
    protected void updateChildView(View view, int i10, ChannelUserWrapper channelUserWrapper) {
        boolean z6;
        boolean z10;
        SignallingChannel mainSigChannel;
        if (channelUserWrapper == null) {
            return;
        }
        ChannelUser channelUser = channelUserWrapper.channelUser;
        User user = channelUser == null ? null : channelUser.userProfile;
        UserStatusData userStatusData = channelUserWrapper.userStatus;
        NVContext nVContext = Utils.getNVContext(getContext());
        CommunityConfigHelper communityConfigHelper = new CommunityConfigHelper(nVContext, (nVContext == null || (mainSigChannel = ((RtcService) nVContext.getService("rtc")).getMainSigChannel()) == null) ? 0 : mainSigChannel.ndcId);
        UserAvatarLayout userAvatarLayout = (UserAvatarLayout) view.findViewById(R.id.user_avatar_layout);
        userAvatarLayout.setUser(user, user != null && user.isSubscribeMemberShip(), communityConfigHelper.isPremiumFeatureEnabled());
        if (this.isFloatingMode) {
            userAvatarLayout.setAvatarStroke(1.0f, true);
        }
        Set<String> set = this.pendingMutedUserList;
        if (set == null) {
            z6 = false;
        } else {
            ChannelUser channelUser2 = channelUserWrapper.channelUser;
            if (set.contains(channelUser2 == null ? null : channelUser2.uid())) {
                z6 = true;
            } else {
                z6 = false;
            }
        }
        boolean z11 = userStatusData != null && userStatusData.isVoiceMuted();
        boolean z12 = channelUserWrapper.status == 1;
        boolean z13 = userStatusData != null && userStatusData.isBadNetwork();
        if (channelUserWrapper.channelUid == this.localChannelUid) {
            z10 = true;
        } else {
            ChannelUser channelUser3 = channelUserWrapper.channelUser;
            if (Utils.isEqualsNotNull(channelUser3 != null ? channelUser3.uid() : null, this.localUid)) {
                z10 = true;
            } else {
                z10 = false;
            }
        }
        NicknameView nicknameView = (NicknameView) view.findViewById(R.id.nickname);
        nicknameView.setUser(user);
        if (z10) {
            nicknameView.setText(R.string.me);
        }
        nicknameView.setVisibility(this.isFloatingMode ? 8 : 0);
        ((ImageView) view.findViewById(R.id.nickname_badge)).setVisibility((this.isFloatingMode || user == null || !user.isSubscribeMemberShip() || !communityConfigHelper.isPremiumFeatureEnabled()) ? 8 : 0);
        VolumeIndicator volumeIndicator = (VolumeIndicator) view.findViewById(R.id.volume_level);
        volumeIndicator.setVisibility((!z12 || z6 || z11) ? 8 : 0);
        int curVolumeLevel = (userStatusData == null || z11) ? 0 : userStatusData.getCurVolumeLevel();
        if (this.isFloatingMode) {
            volumeIndicator.setValue(0.0f, false);
        } else {
            volumeIndicator.setValue(curVolumeLevel / 4.0f, true);
        }
        if (z6 || z11) {
            curVolumeLevel = 0;
        } else if (z10 && !z12) {
            curVolumeLevel = 1;
        }
        UserSpeakingView userSpeakingView = (UserSpeakingView) view.findViewById(R.id.user_speaking);
        userSpeakingView.setVolumeLevel(curVolumeLevel);
        userAvatarLayout.showAudioStroke((!z10 || z12) && curVolumeLevel > 0);
        userSpeakingView.setPendingSpeakingMode(z10 && !z12);
        view.findViewById(R.id.local_mute_indicator).setVisibility(z6 ? 0 : 8);
        view.findViewById(R.id.muted).setVisibility((z6 || !z11) ? 8 : 0);
        view.findViewById(R.id.bad_network).setVisibility(z13 ? 0 : 8);
        view.findViewById(R.id.bad_connection_container).setVisibility((this.isFloatingMode || !z13) ? 8 : 0);
        updateLoadingView((ImageView) view.findViewById(R.id.loading_indicator), z12, z6, z10);
        view.findViewById(R.id.local_mute).setVisibility((this.isFloatingMode || !z6) ? 8 : 0);
    }

    private void updateLoadingView(ImageView imageView, boolean z6, boolean z10, boolean z11) {
        SpinDrawable spinDrawable;
        if (imageView.getDrawable() instanceof SpinDrawable) {
            spinDrawable = (SpinDrawable) imageView.getDrawable();
        } else {
            spinDrawable = new SpinDrawable();
            spinDrawable.setLoadingColor(-1);
            imageView.setImageDrawable(spinDrawable);
        }
        if (!z6 && !z10 && !z11) {
            if (!spinDrawable.isRunning()) {
                spinDrawable.start();
            }
            imageView.setVisibility(0);
        } else {
            spinDrawable.stop();
            imageView.setVisibility(8);
        }
    }

    public float dpToPx(Context context, float f) {
        return TypedValue.applyDimension(1, f, context.getResources().getDisplayMetrics());
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        int i12;
        this.viewWidth = View.MeasureSpec.getSize(i10);
        int size = View.MeasureSpec.getSize(i11);
        this.viewHeight = size;
        this.radius = (int) ((Math.min(this.viewWidth, size) - (getContext().getResources().getDimensionPixelSize(R.dimen.voice_default_padding) * 2)) * 0.11f);
        this.gridCellWidth = Math.max((int) ((Math.min(this.viewWidth, this.viewHeight) - (getContext().getResources().getDimensionPixelSize(R.dimen.voice_default_padding) * 2)) / 3.0f), this.radius * 2);
        int childCount = getChildCount();
        for (int i13 = 0; i13 < childCount; i13++) {
            View childAt = getChildAt(i13);
            configCircle(childCount, i13, ((Integer) childAt.getTag(R.id.uid)).intValue());
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            if (childCount == 9) {
                i12 = this.gridCellWidth;
            } else {
                i12 = (int) (this.viewWidth * this.cellWidthRatio);
            }
            layoutParams.width = i12;
        }
        super.onMeasure(i10, i11);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
    }

    public void updateCallerLayout() {
        this.cellWidthRatio = 0.2f;
        requestLayout();
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
    }
}
