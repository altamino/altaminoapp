package com.narvii.chat.video.layout;

import android.content.Context;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.widget.FrameLayout;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.chat.dialog.VVChatUserDialog;
import com.narvii.chat.rtc.ChannelUserWrapper;
import com.narvii.chat.signalling.ChannelUser;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.model.ChatThread;
import com.narvii.util.Utils;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public abstract class RtcBaseLayout extends FrameLayout implements RtcDataUpdateHandler {
    private VVChatUserDialog.VVProfileClickListener VVProfileClickListener;
    private ChatThread chatThread;
    protected boolean isBatchMode;
    protected boolean isFloatingMode;
    protected boolean isLauncher;
    protected int localChannelUid;
    protected String localUid;
    protected int oldListCount;
    protected OnStartChatUserDialogListener onStartChatUserDialogListener;
    protected String threadId;
    UserClickedListener userClickedListener;
    SparseArray<ChannelUserWrapper> userList;

    interface OnStartChatUserDialogListener {
        void onStartChatUserDialog(ChannelUserWrapper channelUserWrapper, String str);
    }

    public interface UserClickedListener {
        void onUserClicked(ChannelUserWrapper channelUserWrapper, String str);
    }

    protected int childLimitCount() {
        return -1;
    }

    protected int getChannelType() {
        return 0;
    }

    protected boolean keepMeInFirstPosition() {
        return false;
    }

    protected void onViewStatusReady() {
    }

    protected void updateChildView(View view, int i, ChannelUserWrapper channelUserWrapper) {
    }

    protected void updateViews() {
    }

    public void setVVProfileClickListener(VVChatUserDialog.VVProfileClickListener vVProfileClickListener) {
        this.VVProfileClickListener = vVProfileClickListener;
    }

    public void setFloatingMode(boolean z) {
        this.isFloatingMode = z;
        updateViews();
    }

    public void setUserClickedListener(UserClickedListener userClickedListener) {
        this.userClickedListener = userClickedListener;
    }

    public SparseArray<ChannelUserWrapper> getUserList() {
        return this.userList;
    }

    public RtcBaseLayout(Context context) {
        this(context, null);
    }

    public RtcBaseLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.isBatchMode = false;
        this.oldListCount = 0;
        this.onStartChatUserDialogListener = new OnStartChatUserDialogListener() { // from class: com.narvii.chat.video.layout.RtcBaseLayout.1
            @Override // com.narvii.chat.video.layout.RtcBaseLayout.OnStartChatUserDialogListener
            public void onStartChatUserDialog(ChannelUserWrapper channelUserWrapper, String str) {
                UserClickedListener userClickedListener = RtcBaseLayout.this.userClickedListener;
                if (userClickedListener != null) {
                    userClickedListener.onUserClicked(channelUserWrapper, str);
                }
            }
        };
        this.userList = new SparseArray<>();
    }

    protected View constructNewChildView(ChannelUserWrapper channelUserWrapper) {
        return new View(getContext());
    }

    public void setThreadId(String str) {
        this.threadId = str;
    }

    public void setChatThread(ChatThread chatThread) {
        this.chatThread = chatThread;
    }

    public void removeMappedChildView(int i) {
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            Object tag = childAt.getTag(R.id.uid);
            if (tag != null && ((Integer) tag).intValue() == i) {
                removeView(childAt);
                return;
            }
        }
    }

    protected void addNewChildView(ChannelUserWrapper channelUserWrapper, boolean z) {
        if (childLimitCount() == -1 || this.userList.size() <= childLimitCount()) {
            View viewConstructNewChildView = constructNewChildView(channelUserWrapper);
            viewConstructNewChildView.setTag(R.id.uid, Integer.valueOf(channelUserWrapper.channelUid));
            if (z) {
                if (keepMeInFirstPosition()) {
                    addView(viewConstructNewChildView);
                    return;
                } else {
                    addView(viewConstructNewChildView, 0);
                    return;
                }
            }
            if (keepMeInFirstPosition()) {
                addView(viewConstructNewChildView, 0);
            } else {
                addView(viewConstructNewChildView);
            }
        }
    }

    public void setLocalChannelUid(int i) {
        this.localChannelUid = i;
    }

    public void setLocalUid(String str) {
        this.localUid = str;
    }

    public void setIsLauncher(boolean z) {
        this.isLauncher = z;
    }

    @Override // com.narvii.chat.video.layout.RtcDataUpdateHandler
    public void notifyUserWrapperListChanged(SignallingChannel signallingChannel, SparseArray<ChannelUserWrapper> sparseArray) {
        if (sparseArray == null || signallingChannel == null || signallingChannel.channelType == 0) {
            return;
        }
        this.localChannelUid = signallingChannel.channelUid;
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (true) {
            boolean z = true;
            if (i >= this.userList.size()) {
                break;
            }
            if (sparseArray.get(this.userList.keyAt(i)) != null && sparseArray.get(this.userList.keyAt(i)).channelUser != null && sparseArray.get(this.userList.keyAt(i)).channelUser.joinRole != 1) {
                z = false;
            }
            if (sparseArray.indexOfKey(this.userList.keyAt(i)) < 0 || !z) {
                arrayList.add(Integer.valueOf(this.userList.keyAt(i)));
            }
            i++;
        }
        this.isBatchMode = (arrayList.size() == 1 || arrayList.size() == 0) ? false : true;
        this.oldListCount = this.userList.size();
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            this.userList.remove(((Integer) arrayList.get(i2)).intValue());
            removeMappedChildView(((Integer) arrayList.get(i2)).intValue());
        }
        ArrayList arrayList2 = new ArrayList();
        for (int i3 = 0; i3 < sparseArray.size(); i3++) {
            boolean z2 = sparseArray.valueAt(i3).channelUser != null && sparseArray.valueAt(i3).channelUser.joinRole == 1;
            if (this.userList.indexOfKey(sparseArray.keyAt(i3)) < 0 && z2) {
                arrayList2.add(Integer.valueOf(sparseArray.keyAt(i3)));
            }
        }
        this.isBatchMode = (arrayList2.size() == 1 || arrayList2.size() == 0) ? false : true;
        this.oldListCount = this.userList.size();
        NVContext nVContext = Utils.getNVContext(getContext());
        String userId = nVContext != null ? ((AccountService) nVContext.getService("account")).getUserId() : null;
        for (int i4 = 0; i4 < arrayList2.size(); i4++) {
            if (((Integer) arrayList2.get(i4)).intValue() == signallingChannel.channelUid && this.userList.size() >= childLimitCount()) {
                int iKeyAt = this.userList.keyAt(0);
                this.userList.remove(iKeyAt);
                removeMappedChildView(iKeyAt);
            }
            if (childLimitCount() == -1 || this.userList.size() + 1 <= childLimitCount()) {
                this.userList.put(((Integer) arrayList2.get(i4)).intValue(), sparseArray.get(((Integer) arrayList2.get(i4)).intValue()));
                ChannelUser channelUser = sparseArray.get(((Integer) arrayList2.get(i4)).intValue()).channelUser;
                addNewChildView(sparseArray.get(((Integer) arrayList2.get(i4)).intValue()), signallingChannel.channelUid == ((Integer) arrayList2.get(i4)).intValue() || Utils.isEqualsNotNull(channelUser == null ? null : channelUser.uid(), userId));
            }
        }
        onViewStatusReady();
    }

    @Override // com.narvii.chat.video.layout.RtcDataUpdateHandler
    public void notifyUserDataListChanged(SignallingChannel signallingChannel, SparseArray<ChannelUserWrapper> sparseArray) {
        if (sparseArray == null || sparseArray.size() == 0 || signallingChannel == null || signallingChannel.channelType == 0) {
            return;
        }
        this.localChannelUid = signallingChannel.channelUid;
        this.isBatchMode = false;
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            Object tag = childAt.getTag(R.id.uid);
            if (tag != null) {
                Integer num = (Integer) tag;
                if (sparseArray.indexOfKey(num.intValue()) >= 0) {
                    updateChildView(childAt, i, sparseArray.get(num.intValue()));
                }
            }
        }
    }

    @Override // com.narvii.chat.video.layout.RtcDataUpdateHandler
    public void notifyUserDataChanged(SignallingChannel signallingChannel, ChannelUserWrapper channelUserWrapper) {
        if (channelUserWrapper == null || signallingChannel == null || signallingChannel.channelType == 0) {
            return;
        }
        this.localChannelUid = signallingChannel.channelUid;
        this.isBatchMode = false;
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            Object tag = childAt.getTag(R.id.uid);
            if (tag != null && channelUserWrapper.channelUid == ((Integer) tag).intValue()) {
                updateChildView(childAt, i, channelUserWrapper);
            }
        }
    }
}
