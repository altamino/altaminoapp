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
import com.narvii.amino.R;
import com.narvii.chat.rtc.ChannelUserWrapper;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.video.ui.UserStatusData;
import com.narvii.widget.SpinDrawable;
import java.util.Set;

/* loaded from: classes2.dex */
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

    @Override // com.narvii.chat.video.layout.RtcBaseLayout
    protected int getChannelType() {
        return 1;
    }

    public VoiceParticipantLayout(Context context) {
        this(context, null);
    }

    public VoiceParticipantLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.cellWidthRatio = 0.19f;
        this.childCountLimit = 7;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.VoiceParticipantLayout);
        this.isFloatingMode = typedArrayObtainStyledAttributes.getBoolean(0, false);
        typedArrayObtainStyledAttributes.recycle();
        this.childCenterPosition = new SparseArray<>();
        this.layoutInflater = LayoutInflater.from(getContext());
        this.cellWidthRatio = this.isFloatingMode ? 0.3f : 0.19f;
        setKeepScreenOn(true);
    }

    @Override // com.narvii.chat.video.layout.RtcBaseLayout
    protected void updateViews() {
        super.updateViews();
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            Object tag = childAt.getTag(com.narvii.amino.mastes.R.id.uid);
            if (tag != null) {
                updateChildView(childAt, i, this.userList.get(((Integer) tag).intValue()));
            }
        }
    }

    public void setIsGroupChat(boolean z) {
        this.childCountLimit = z ? 7 : 9;
    }

    @Override // com.narvii.chat.video.layout.RtcBaseLayout
    protected int childLimitCount() {
        return this.childCountLimit;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00a3  */
    @Override // com.narvii.chat.video.layout.RtcBaseLayout
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void updateChildView(android.view.View r13, int r14, com.narvii.chat.rtc.ChannelUserWrapper r15) {
        /*
            Method dump skipped, instructions count: 427
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.chat.video.layout.VoiceParticipantLayout.updateChildView(android.view.View, int, com.narvii.chat.rtc.ChannelUserWrapper):void");
    }

    private void updateLoadingView(ImageView imageView, boolean z, boolean z2, boolean z3) {
        SpinDrawable spinDrawable;
        if (imageView.getDrawable() instanceof SpinDrawable) {
            spinDrawable = (SpinDrawable) imageView.getDrawable();
        } else {
            spinDrawable = new SpinDrawable();
            spinDrawable.setLoadingColor(-1);
            imageView.setImageDrawable(spinDrawable);
        }
        if (z || z2 || z3) {
            spinDrawable.stop();
            imageView.setVisibility(8);
        } else {
            if (!spinDrawable.isRunning()) {
                spinDrawable.start();
            }
            imageView.setVisibility(0);
        }
    }

    public void updateCallerLayout() {
        this.cellWidthRatio = 0.2f;
        requestLayout();
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
    }

    @Override // com.narvii.chat.video.layout.RtcBaseLayout
    protected View constructNewChildView(final ChannelUserWrapper channelUserWrapper) {
        View viewInflate = this.layoutInflater.inflate(com.narvii.amino.mastes.R.layout.item_audio_cell, (ViewGroup) this, false);
        updateChildView(viewInflate, getChildCount() - 1, channelUserWrapper);
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.narvii.chat.video.layout.VoiceParticipantLayout.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Object tag = view.getTag(com.narvii.amino.mastes.R.id.uid);
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
        viewInflate.findViewById(com.narvii.amino.mastes.R.id.local_mute_indicator).setOnClickListener(onClickListener);
        viewInflate.findViewById(com.narvii.amino.mastes.R.id.nickname).setOnClickListener(onClickListener);
        viewInflate.findViewById(com.narvii.amino.mastes.R.id.avatar).setOnClickListener(onClickListener);
        return viewInflate;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        this.viewWidth = View.MeasureSpec.getSize(i);
        this.viewHeight = View.MeasureSpec.getSize(i2);
        this.radius = (int) ((Math.min(this.viewWidth, this.viewHeight) - (getContext().getResources().getDimensionPixelSize(com.narvii.amino.mastes.R.dimen.voice_default_padding) * 2)) * 0.11f);
        this.gridCellWidth = Math.max((int) ((Math.min(this.viewWidth, this.viewHeight) - (getContext().getResources().getDimensionPixelSize(com.narvii.amino.mastes.R.dimen.voice_default_padding) * 2)) / 3.0f), this.radius * 2);
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            configCircle(childCount, i3, ((Integer) childAt.getTag(com.narvii.amino.mastes.R.id.uid)).intValue());
            childAt.getLayoutParams().width = childCount == 9 ? this.gridCellWidth : (int) (this.viewWidth * this.cellWidthRatio);
        }
        super.onMeasure(i, i2);
    }

    private void configCircle(int i, int i2, int i3) {
        int i4 = this.viewWidth / 2;
        int i5 = this.viewHeight / 2;
        if (i == 1 || i2 == 0) {
            this.childCenterPosition.put(i3, new Point(i4, i5));
            return;
        }
        if (i == 9) {
            int i6 = i5 - this.gridCellWidth;
            if (i2 <= 3 || i2 > 5) {
                i5 = i2 >= 6 ? i5 + this.gridCellWidth : i6;
            }
            int i7 = i4 - this.gridCellWidth;
            if (i2 != 2 && i2 != 7) {
                i4 = (i2 == 3 || i2 == 5 || i2 == 8) ? i4 + this.gridCellWidth : i7;
            }
            this.childCenterPosition.put(i3, new Point(i4, i5));
            return;
        }
        double d = ((i2 - 1) * 360) / (i - 1);
        Double.isNaN(d);
        double d2 = (d / 180.0d) * 3.141592653589793d;
        double d3 = i4;
        double d4 = this.radius * 3.25f;
        double dSin = Math.sin(d2);
        Double.isNaN(d4);
        Double.isNaN(d3);
        double d5 = i5;
        double d6 = this.radius * 3.25f;
        double dCos = Math.cos(d2);
        Double.isNaN(d6);
        Double.isNaN(d5);
        this.childCenterPosition.put(i3, new Point((int) (d3 + (d4 * dSin)), (int) (d5 - (d6 * dCos))));
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        for (int i5 = 0; i5 < getChildCount(); i5++) {
            View childAt = getChildAt(i5);
            Point point = this.childCenterPosition.get(((Integer) childAt.getTag(com.narvii.amino.mastes.R.id.uid)).intValue());
            int measuredWidth = childAt.getMeasuredWidth() / 2;
            int measuredHeight = childAt.getMeasuredHeight() / 2;
            childAt.getLayoutParams().width = (int) (this.viewWidth * 0.19f);
            int i6 = point.x;
            int i7 = point.y;
            childAt.layout(i6 - measuredWidth, i7 - measuredHeight, i6 + measuredWidth, i7 + measuredHeight);
        }
    }

    public float dpToPx(Context context, float f) {
        return TypedValue.applyDimension(1, f, context.getResources().getDisplayMetrics());
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

    /* JADX WARN: Multi-variable type inference failed */
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
        for (int i = 0; i < sparseArray.size(); i++) {
            ChannelUserWrapper channelUserWrapperValueAt = sparseArray.valueAt(i);
            UserStatusData userStatusData = channelUserWrapperValueAt.userStatus;
            if (userStatusData != null && userStatusData.mVolume != 0 && this.userList.get(channelUserWrapperValueAt.channelUid) == null) {
                sparseArray2.put(channelUserWrapperValueAt.channelUid, channelUserWrapperValueAt);
            } else {
                sparseArray3.put(channelUserWrapperValueAt.channelUid, channelUserWrapperValueAt);
            }
        }
        super.notifyUserDataListChanged(signallingChannel, sparseArray3);
        if (sparseArray2.size() != 0) {
            for (int i2 = 0; i2 < this.userList.size(); i2++) {
                if (this.userList.valueAt(i2) != null && this.userList.valueAt(i2).userStatus != null && this.userList.valueAt(i2).channelUid != this.localChannelUid && this.userList.valueAt(i2).userStatus.mVolume == 0) {
                    sparseArray4.put(this.userList.keyAt(i2), this.userList.valueAt(i2));
                }
            }
            if (sparseArray4.size() == 0) {
                return;
            }
            int i3 = 0;
            for (int i4 = 0; i4 < getChildCount(); i4++) {
                View childAt = getChildAt(i4);
                Object tag = childAt.getTag(com.narvii.amino.mastes.R.id.uid);
                if (tag != null) {
                    Integer num = (Integer) tag;
                    if (sparseArray4.indexOfKey(num.intValue()) >= 0 && i3 < sparseArray2.size()) {
                        this.userList.remove(num.intValue());
                        setTagForChildView(childAt, sparseArray2.keyAt(i3));
                        this.userList.put(sparseArray2.keyAt(i3), sparseArray2.valueAt(i3));
                        updateChildView(childAt, i4, (ChannelUserWrapper) sparseArray2.valueAt(i3));
                        i3++;
                    }
                }
            }
        }
    }

    private void setTagForChildView(View view, int i) {
        if (view == null) {
            return;
        }
        view.setTag(com.narvii.amino.mastes.R.id.uid, Integer.valueOf(i));
        View viewFindViewById = view.findViewById(com.narvii.amino.mastes.R.id.local_mute_indicator);
        if (viewFindViewById != null) {
            viewFindViewById.setTag(com.narvii.amino.mastes.R.id.uid, Integer.valueOf(i));
        }
        View viewFindViewById2 = view.findViewById(com.narvii.amino.mastes.R.id.nickname);
        if (viewFindViewById2 != null) {
            viewFindViewById2.setTag(com.narvii.amino.mastes.R.id.uid, Integer.valueOf(i));
        }
        View viewFindViewById3 = view.findViewById(com.narvii.amino.mastes.R.id.avatar);
        if (viewFindViewById3 != null) {
            viewFindViewById3.setTag(com.narvii.amino.mastes.R.id.uid, Integer.valueOf(i));
        }
    }
}
