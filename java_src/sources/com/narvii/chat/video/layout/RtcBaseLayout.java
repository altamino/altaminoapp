package com.narvii.chat.video.layout;

import android.content.Context;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.chat.dialog.VVChatUserDialog;
import com.narvii.chat.rtc.ChannelUserWrapper;
import com.narvii.chat.signalling.ChannelUser;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.model.ChatThread;
import com.narvii.util.Utils;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes8.dex */
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

    public RtcBaseLayout(@NonNull Context context) {
        this(context, null);
    }

    protected int childLimitCount() {
        return -1;
    }

    protected int getChannelType() {
        return 0;
    }

    public SparseArray<ChannelUserWrapper> getUserList() {
        return this.userList;
    }

    protected boolean keepMeInFirstPosition() {
        return false;
    }

    protected void onViewStatusReady() {
    }

    public void removeMappedChildView(int i10) {
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            View childAt = getChildAt(i11);
            Object tag = childAt.getTag(R.id.uid);
            if (tag != null && ((Integer) tag).intValue() == i10) {
                removeView(childAt);
                return;
            }
        }
    }

    public void setChatThread(ChatThread chatThread) {
        this.chatThread = chatThread;
    }

    public void setIsLauncher(boolean z6) {
        this.isLauncher = z6;
    }

    public void setLocalChannelUid(int i10) {
        this.localChannelUid = i10;
    }

    public void setLocalUid(String str) {
        this.localUid = str;
    }

    public void setThreadId(String str) {
        this.threadId = str;
    }

    public void setUserClickedListener(UserClickedListener userClickedListener) {
        this.userClickedListener = userClickedListener;
    }

    public void setVVProfileClickListener(VVChatUserDialog.VVProfileClickListener vVProfileClickListener) {
        this.VVProfileClickListener = vVProfileClickListener;
    }

    protected void updateChildView(View view, int i10, ChannelUserWrapper channelUserWrapper) {
    }

    protected void updateViews() {
    }

    public RtcBaseLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
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

    @Override // com.narvii.chat.video.layout.RtcDataUpdateHandler
    public void notifyUserDataChanged(SignallingChannel signallingChannel, ChannelUserWrapper channelUserWrapper) {
        if (channelUserWrapper == null || signallingChannel == null || signallingChannel.channelType == 0) {
            return;
        }
        this.localChannelUid = signallingChannel.channelUid;
        this.isBatchMode = false;
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            Object tag = childAt.getTag(R.id.uid);
            if (tag != null && channelUserWrapper.channelUid == ((Integer) tag).intValue()) {
                updateChildView(childAt, i10, channelUserWrapper);
            }
        }
    }

    @Override // com.narvii.chat.video.layout.RtcDataUpdateHandler
    public void notifyUserDataListChanged(SignallingChannel signallingChannel, SparseArray<ChannelUserWrapper> sparseArray) {
        if (sparseArray == null || sparseArray.size() == 0 || signallingChannel == null || signallingChannel.channelType == 0) {
            return;
        }
        this.localChannelUid = signallingChannel.channelUid;
        this.isBatchMode = false;
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            Object tag = childAt.getTag(R.id.uid);
            if (tag != null) {
                Integer num = (Integer) tag;
                if (sparseArray.indexOfKey(num.intValue()) >= 0) {
                    updateChildView(childAt, i10, sparseArray.get(num.intValue()));
                }
            }
        }
    }

    @Override // com.narvii.chat.video.layout.RtcDataUpdateHandler
    public void notifyUserWrapperListChanged(SignallingChannel signallingChannel, SparseArray<ChannelUserWrapper> sparseArray) {
        if (sparseArray == null || signallingChannel == null || signallingChannel.channelType == 0) {
            return;
        }
        this.localChannelUid = signallingChannel.channelUid;
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        while (true) {
            boolean z6 = true;
            if (i10 >= this.userList.size()) {
                break;
            }
            if (sparseArray.get(this.userList.keyAt(i10)) != null && sparseArray.get(this.userList.keyAt(i10)).channelUser != null && sparseArray.get(this.userList.keyAt(i10)).channelUser.joinRole != 1) {
                z6 = false;
            }
            if (sparseArray.indexOfKey(this.userList.keyAt(i10)) < 0 || !z6) {
                arrayList.add(Integer.valueOf(this.userList.keyAt(i10)));
            }
            i10++;
        }
        this.isBatchMode = (arrayList.size() == 1 || arrayList.size() == 0) ? false : true;
        this.oldListCount = this.userList.size();
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            this.userList.remove(((Integer) arrayList.get(i11)).intValue());
            removeMappedChildView(((Integer) arrayList.get(i11)).intValue());
        }
        ArrayList arrayList2 = new ArrayList();
        for (int i12 = 0; i12 < sparseArray.size(); i12++) {
            boolean z10 = sparseArray.valueAt(i12).channelUser != null && sparseArray.valueAt(i12).channelUser.joinRole == 1;
            if (this.userList.indexOfKey(sparseArray.keyAt(i12)) < 0 && z10) {
                arrayList2.add(Integer.valueOf(sparseArray.keyAt(i12)));
            }
        }
        this.isBatchMode = (arrayList2.size() == 1 || arrayList2.size() == 0) ? false : true;
        this.oldListCount = this.userList.size();
        NVContext nVContext = Utils.getNVContext(getContext());
        String userId = nVContext != null ? ((AccountService) nVContext.getService("account")).getUserId() : null;
        for (int i13 = 0; i13 < arrayList2.size(); i13++) {
            if (((Integer) arrayList2.get(i13)).intValue() == signallingChannel.channelUid && this.userList.size() >= childLimitCount()) {
                int iKeyAt = this.userList.keyAt(0);
                this.userList.remove(iKeyAt);
                removeMappedChildView(iKeyAt);
            }
            if (childLimitCount() == -1 || this.userList.size() + 1 <= childLimitCount()) {
                this.userList.put(((Integer) arrayList2.get(i13)).intValue(), sparseArray.get(((Integer) arrayList2.get(i13)).intValue()));
                ChannelUser channelUser = sparseArray.get(((Integer) arrayList2.get(i13)).intValue()).channelUser;
                addNewChildView(sparseArray.get(((Integer) arrayList2.get(i13)).intValue()), signallingChannel.channelUid == ((Integer) arrayList2.get(i13)).intValue() || Utils.isEqualsNotNull(channelUser == null ? null : channelUser.uid(), userId));
            }
        }
        onViewStatusReady();
    }

    public void setFloatingMode(boolean z6) {
        this.isFloatingMode = z6;
        updateViews();
    }

    protected void addNewChildView(ChannelUserWrapper channelUserWrapper, boolean z6) {
        if (childLimitCount() != -1 && this.userList.size() > childLimitCount()) {
            return;
        }
        View viewConstructNewChildView = constructNewChildView(channelUserWrapper);
        viewConstructNewChildView.setTag(R.id.uid, Integer.valueOf(channelUserWrapper.channelUid));
        if (z6) {
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
