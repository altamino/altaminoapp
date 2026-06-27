package com.narvii.chat.video.layout;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Point;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.narvii.amino.R;
import com.narvii.app.NVContext;
import com.narvii.chat.rtc.ChannelUserWrapper;
import com.narvii.chat.rtc.RtcService;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.util.Utils;
import com.narvii.widget.SpinDrawable;
import java.util.Set;

/* loaded from: classes2.dex */
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
        void onItemClicked(int i);
    }

    private boolean shouldShowTop(int i, int i2) {
        switch (i) {
            case 1:
                return true;
            case 2:
                return i2 == 1;
            case 3:
                return i2 == 2;
            case 4:
                return i2 > 1;
            case 5:
                return i2 > 2;
            case 6:
                return i2 > 1;
            case 7:
                return i2 > 1;
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

    public void setItemClickListener(ItemClickListener itemClickListener) {
        this.itemClickListener = itemClickListener;
    }

    public void setHideFaceDetectView(boolean z) {
        if (this.hideFaceDetectView == z) {
            return;
        }
        this.hideFaceDetectView = z;
        updateViews();
    }

    public VideoParticipantLayout(Context context) {
        this(context, null);
    }

    public VideoParticipantLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.focusedId = -1;
        this.oldFocusedPos = -1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.VideoParticipantLayout);
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

    @Override // com.narvii.chat.video.layout.RtcBaseLayout
    protected View constructNewChildView(final ChannelUserWrapper channelUserWrapper) {
        View viewInflate = this.layoutInflater.inflate(com.narvii.amino.mastes.R.layout.item_video_cell, (ViewGroup) this, false);
        updateChildView(viewInflate, getChildCount() - 1, channelUserWrapper);
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.narvii.chat.video.layout.VideoParticipantLayout.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (VideoParticipantLayout.this.focusedId == -1 || (VideoParticipantLayout.this.focusedView != null && (view.getTag(com.narvii.amino.mastes.R.id.uid) instanceof Integer) && VideoParticipantLayout.this.focusedId == ((Integer) view.getTag(com.narvii.amino.mastes.R.id.uid)).intValue())) {
                    VideoParticipantLayout videoParticipantLayout = VideoParticipantLayout.this;
                    videoParticipantLayout.onStartChatUserDialogListener.onStartChatUserDialog(channelUserWrapper, videoParticipantLayout.threadId);
                }
            }
        };
        viewInflate.findViewById(com.narvii.amino.mastes.R.id.local_mute_indicator).setTag(com.narvii.amino.mastes.R.id.uid, Integer.valueOf(channelUserWrapper.channelUid));
        viewInflate.findViewById(com.narvii.amino.mastes.R.id.local_mute_indicator).setOnClickListener(onClickListener);
        viewInflate.findViewById(com.narvii.amino.mastes.R.id.account_info_container).setOnClickListener(onClickListener);
        viewInflate.findViewById(com.narvii.amino.mastes.R.id.status_avatar).setTag(com.narvii.amino.mastes.R.id.uid, Integer.valueOf(channelUserWrapper.channelUid));
        viewInflate.findViewById(com.narvii.amino.mastes.R.id.status_avatar).setOnClickListener(onClickListener);
        viewInflate.findViewById(com.narvii.amino.mastes.R.id.nickname_middle).setOnClickListener(onClickListener);
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

    public void stripView(View view) {
        ViewParent parent = view.getParent();
        if (parent != null) {
            ((FrameLayout) parent).removeView(view);
        }
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
        View view = this.focusedView;
        if (view != null) {
            Object tag2 = view.getTag(com.narvii.amino.mastes.R.id.uid);
            if (tag2 instanceof Integer) {
                Integer num = (Integer) tag2;
                if (this.userList.get(num.intValue()) != null) {
                    updateChildView(this.focusedView, this.oldFocusedPos, this.userList.get(num.intValue()));
                }
            }
        }
    }

    public void setFocusedId(int i) {
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            Object tag = childAt.getTag(com.narvii.amino.mastes.R.id.uid);
            if (tag != null) {
                Integer num = (Integer) tag;
                if (i == num.intValue()) {
                    this.oldFocusedPos = i2;
                    this.focusedId = i;
                    this.focusedView = childAt;
                    updateChildView(childAt, i2, this.userList.get(num.intValue()));
                    return;
                }
            }
        }
    }

    @Override // com.narvii.chat.video.layout.RtcBaseLayout
    protected void onViewStatusReady() {
        super.onViewStatusReady();
        updateViews();
    }

    public void setUnFocusId(int i) {
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

    /* JADX WARN: Removed duplicated region for block: B:19:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x02d2  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x008e  */
    @Override // com.narvii.chat.video.layout.RtcBaseLayout
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void updateChildView(android.view.View r25, int r26, com.narvii.chat.rtc.ChannelUserWrapper r27) {
        /*
            Method dump skipped, instructions count: 943
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.chat.video.layout.VideoParticipantLayout.updateChildView(android.view.View, int, com.narvii.chat.rtc.ChannelUserWrapper):void");
    }

    private void updateLoadingView(ImageView imageView, boolean z, boolean z2) {
        SpinDrawable spinDrawable;
        if (imageView.getDrawable() instanceof SpinDrawable) {
            spinDrawable = (SpinDrawable) imageView.getDrawable();
        } else {
            spinDrawable = new SpinDrawable();
            spinDrawable.setLoadingColor(-1);
            imageView.setImageDrawable(spinDrawable);
        }
        if (z || z2) {
            spinDrawable.stop();
            imageView.setVisibility(8);
        } else {
            if (!spinDrawable.isRunning()) {
                spinDrawable.start();
            }
            imageView.setVisibility(8);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        this.viewWidth = View.MeasureSpec.getSize(i);
        this.viewHeight = View.MeasureSpec.getSize(i2);
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            Object tag = getChildAt(i3).getTag(com.narvii.amino.mastes.R.id.uid);
            int iIntValue = tag instanceof Integer ? ((Integer) tag).intValue() : -1;
            if (iIntValue != -1) {
                configNewSizeAndMargin(getChildAt(i3), childCount, i3, iIntValue);
            }
        }
        super.onMeasure(i, i2);
    }

    private void configNewSizeAndMargin(View view, int i, int i2, int i3) {
        if (i3 == this.focusedId) {
            return;
        }
        switch (i) {
            case 1:
                this.childSize.put(i3, new Point(this.viewWidth, this.viewHeight));
                this.childMargin.put(i3, new Point(0, 0));
                break;
            case 2:
                this.childSize.put(i3, new Point(this.viewWidth, (int) (this.viewHeight / 2.0f)));
                this.childMargin.put(i3, new Point(0, i2 == 0 ? 0 : (int) (this.viewHeight / 2.0f)));
                break;
            case 3:
                SparseArray<Point> sparseArray = this.childSize;
                int i4 = this.viewWidth;
                if (i2 < 2) {
                    i4 /= 2;
                }
                sparseArray.put(i3, new Point(i4, (int) (this.viewHeight / 2.0f)));
                this.childMargin.put(i3, new Point(i2 == 1 ? this.viewWidth / 2 : 0, i2 >= 2 ? (int) (this.viewHeight / 2.0f) : 0));
                break;
            case 4:
                this.childSize.put(i3, new Point(this.viewWidth / 2, this.viewHeight / 2));
                this.childMargin.put(i3, new Point(i2 % 2 == 0 ? 0 : this.viewWidth / 2, i2 >= 2 ? this.viewHeight / 2 : 0));
                break;
            case 5:
                this.childSize.put(i3, new Point(i2 < 4 ? this.viewWidth / 2 : this.viewWidth, (int) (this.viewHeight / 3.0f)));
                this.childMargin.put(i3, new Point(i2 % 2 != 0 ? this.viewWidth / 2 : 0, (this.viewHeight / 3) * (i2 / 2)));
                break;
            case 6:
                this.childSize.put(i3, new Point(this.viewWidth / 2, this.viewHeight / 3));
                this.childMargin.put(i3, new Point((i2 % 2) * (this.viewWidth / 2), (i2 / 2) * (this.viewHeight / 3)));
                break;
            case 7:
                if (i2 >= 2) {
                    if (i2 > 4) {
                        this.childSize.put(i3, new Point(this.viewWidth / 2, this.viewHeight / 3));
                        this.childMargin.put(i3, new Point((i2 - 5) * (this.viewWidth / 2), (this.viewHeight * 2) / 3));
                        break;
                    } else {
                        this.childSize.put(i3, new Point(this.viewWidth / 3, this.viewHeight / 3));
                        this.childMargin.put(i3, new Point((i2 - 2) * (this.viewWidth / 3), this.viewHeight / 3));
                        break;
                    }
                } else {
                    this.childSize.put(i3, new Point(this.viewWidth / 2, this.viewHeight / 3));
                    this.childMargin.put(i3, new Point(i2 * (this.viewWidth / 2), 0));
                    break;
                }
        }
        Point point = this.childSize.get(i3);
        Point point2 = this.childMargin.get(i3);
        if (point == null || point2 == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            int i5 = marginLayoutParams.topMargin;
            int i6 = point2.y;
            if (i5 != i6) {
                marginLayoutParams.topMargin = i6;
            }
            int i7 = marginLayoutParams.leftMargin;
            int i8 = point2.x;
            if (i7 != i8) {
                marginLayoutParams.leftMargin = i8;
            }
            int i9 = marginLayoutParams.width;
            int i10 = point.x;
            if (i9 != i10) {
                marginLayoutParams.width = i10;
            }
            int i11 = marginLayoutParams.height;
            int i12 = point.y;
            if (i11 != i12) {
                marginLayoutParams.height = i12;
            }
        }
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

    @Override // com.narvii.chat.video.layout.RtcBaseLayout, com.narvii.chat.video.layout.RtcDataUpdateHandler
    public void notifyUserDataChanged(SignallingChannel signallingChannel, ChannelUserWrapper channelUserWrapper) {
        super.notifyUserDataChanged(signallingChannel, channelUserWrapper);
        if (this.focusedView != null) {
            updateFocusView(channelUserWrapper);
        }
    }

    private void updateFocusView(ChannelUserWrapper channelUserWrapper) {
        Object tag;
        View view = this.focusedView;
        if (view == null || (tag = view.getTag(com.narvii.amino.mastes.R.id.uid)) == null || channelUserWrapper.channelUid != ((Integer) tag).intValue()) {
            return;
        }
        updateChildView(this.focusedView, this.oldFocusedPos, channelUserWrapper);
    }
}
