package com.narvii.monetization;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.text.TextUtils;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.model.ChatBubble;
import com.narvii.model.IStoreItem;
import com.narvii.model.NVObject;
import com.narvii.monetization.bubble.BubbleHelper;
import com.narvii.monetization.bubble.BubbleService;
import com.narvii.monetization.utils.SetBubbleHintDialog;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;

/* JADX INFO: loaded from: classes8.dex */
public class ChatBubbleOwnStatusController extends StoreItemOwnStatusController implements SetBubbleHintDialog.ApplyAllChatListener {
    private static final String TAG = "ChatBubbleOwnStatusController";
    BubbleService bubbleService;
    protected boolean isOriginActivited;
    protected boolean isOriginSet;
    private LocalBroadcastManager lbm;
    private boolean onlyApplyForAll;
    BroadcastReceiver receiver;
    private SetBubbleHintDialog setBubbleHintDialog;
    private String threadId;

    public ChatBubbleOwnStatusController(NVContext nVContext, StoreItemStatusView storeItemStatusView) {
        this(nVContext, storeItemStatusView, null);
    }

    @Override // com.narvii.monetization.StoreItemOwnStatusController
    protected boolean canUseInGlobal() {
        return true;
    }

    @Override // com.narvii.monetization.StoreItemOwnStatusController
    protected int getActivatedStrId(boolean z6) {
        return R.string.use_it;
    }

    @Override // com.narvii.monetization.StoreItemOwnStatusController
    public void setStoreItem(IStoreItem iStoreItem) {
        super.setStoreItem(iStoreItem);
        if ((iStoreItem instanceof ChatBubble) && this.setBubbleHintDialog == null) {
            SetBubbleHintDialog setBubbleHintDialog = new SetBubbleHintDialog(this.nvContext, (ChatBubble) iStoreItem, this.threadId);
            this.setBubbleHintDialog = setBubbleHintDialog;
            setBubbleHintDialog.setApplyAllChatBubbleListener(this);
        }
    }

    @Override // com.narvii.monetization.StoreItemOwnStatusController
    protected boolean showToast() {
        return false;
    }

    public ChatBubbleOwnStatusController(NVContext nVContext, StoreItemStatusView storeItemStatusView, String str) {
        this(nVContext, storeItemStatusView, str, false);
    }

    @Override // com.narvii.monetization.StoreItemOwnStatusController
    protected ApiRequest createActivateRequest() {
        return new ApiRequest.Builder().path("chat/chat-bubble/" + this.iStoreItem.id() + "/activate").post().build();
    }

    @Override // com.narvii.monetization.utils.SetBubbleHintDialog.ApplyAllChatListener
    public void onAppliedBubble(String str) {
        if (Utils.isEqualsNotNull(str, this.iStoreItem.id())) {
            setCurStatusSet();
            new BubbleHelper(this.nvContext).sendBubbleNotification((ChatBubble) this.iStoreItem, false, this.threadId, true);
            NVToast.makeText(this.nvContext.getContext(), R.string.set_successfully, 1).show();
        }
    }

    @Override // com.narvii.monetization.StoreItemOwnStatusController
    public void onCreate() {
        this.lbm.c(this.receiver, new IntentFilter(BubbleService.ACTION_STATUS_CHANGED));
        this.lbm.c(this.receiver, new IntentFilter(BubbleService.ACTION_PROGRESS_CHANGED));
        this.lbm.c(this.receiver, new IntentFilter(BubbleService.ACTION_BUBBLE_READY));
    }

    @Override // com.narvii.monetization.StoreItemOwnStatusController
    public void onDestroy() {
        this.lbm.f(this.receiver);
        IStoreItem iStoreItem = this.iStoreItem;
        if (iStoreItem == null || TextUtils.isEmpty(iStoreItem.id())) {
            return;
        }
        this.bubbleService.cancel(this.iStoreItem.id());
    }

    @Override // com.narvii.monetization.StoreItemOwnStatusController
    protected void onPurchaseSuccess(NVObject nVObject) {
        if (nVObject instanceof ChatBubble) {
            ChatBubble chatBubble = (ChatBubble) nVObject;
            this.bubbleService.requireBubble(chatBubble.id(), chatBubble.version, chatBubble.resourceUrl);
        }
    }

    public void setCurStatusSet() {
        StoreItemStatusView storeItemStatusView = this.storeItemStatusView;
        if (storeItemStatusView != null) {
            storeItemStatusView.updateStatus(6);
        }
    }

    @Override // com.narvii.monetization.StoreItemOwnStatusController
    public void useItem() {
        SetBubbleHintDialog setBubbleHintDialog = this.setBubbleHintDialog;
        if (setBubbleHintDialog == null || setBubbleHintDialog.isShowing()) {
            return;
        }
        this.setBubbleHintDialog.show();
    }

    public ChatBubbleOwnStatusController(NVContext nVContext, StoreItemStatusView storeItemStatusView, String str, boolean z6) {
        super(nVContext, storeItemStatusView);
        this.receiver = new BroadcastReceiver() { // from class: com.narvii.monetization.ChatBubbleOwnStatusController.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                String stringExtra = intent.getStringExtra("bid");
                int intExtra = intent.getIntExtra("rev", 0);
                ChatBubbleOwnStatusController chatBubbleOwnStatusController = ChatBubbleOwnStatusController.this;
                IStoreItem iStoreItem = chatBubbleOwnStatusController.iStoreItem;
                if ((iStoreItem instanceof ChatBubble) && !chatBubbleOwnStatusController.isOriginActivited) {
                    ChatBubble chatBubble = (ChatBubble) iStoreItem;
                    if (BubbleService.ACTION_PROGRESS_CHANGED.equals(intent.getAction())) {
                        IStoreItem iStoreItem2 = ChatBubbleOwnStatusController.this.iStoreItem;
                        if (Utils.isEqualsNotNull(iStoreItem2 != null ? iStoreItem2.id() : null, stringExtra) && intExtra == chatBubble.version()) {
                            Log.d(ChatBubbleOwnStatusController.TAG, "progress update " + ChatBubbleOwnStatusController.this.bubbleService.getProgress(stringExtra));
                            ChatBubbleOwnStatusController chatBubbleOwnStatusController2 = ChatBubbleOwnStatusController.this;
                            chatBubbleOwnStatusController2.updateDownloadingProgress((int) (chatBubbleOwnStatusController2.bubbleService.getProgress(stringExtra) * 100.0f));
                            return;
                        }
                        return;
                    }
                    if (BubbleService.ACTION_STATUS_CHANGED.equals(intent.getAction()) || BubbleService.ACTION_BUBBLE_READY.equals(intent.getAction())) {
                        IStoreItem iStoreItem3 = ChatBubbleOwnStatusController.this.iStoreItem;
                        if (Utils.isEqualsNotNull(iStoreItem3 != null ? iStoreItem3.id() : null, stringExtra) && intExtra == chatBubble.version()) {
                            int status = ChatBubbleOwnStatusController.this.bubbleService.getStatus(stringExtra, intExtra);
                            Log.d(ChatBubbleOwnStatusController.TAG, "progress status change  " + status);
                            if (status == 5 || status == -1) {
                                ChatBubbleOwnStatusController.this.onActivated();
                            }
                        }
                    }
                }
            }
        };
        this.bubbleService = (BubbleService) nVContext.getService("bubble");
        this.lbm = LocalBroadcastManager.b(nVContext.getContext());
        this.onlyApplyForAll = z6;
        this.threadId = str;
    }

    @Override // com.narvii.monetization.StoreItemOwnStatusController
    public void onActivated(boolean z6) {
        super.onActivated(z6);
        IStoreItem iStoreItem = this.iStoreItem;
        if (iStoreItem instanceof ChatBubble) {
            ChatBubble chatBubble = (ChatBubble) iStoreItem;
            chatBubble.isActivated = true;
            new BubbleHelper(this.nvContext).sendBubbleNotification(chatBubble, true, null);
        }
    }

    public void setStoreItem(IStoreItem iStoreItem, String str) {
        StoreItemStatusView storeItemStatusView;
        setStoreItem(iStoreItem);
        if (iStoreItem != null && !this.isOriginSet) {
            this.isOriginActivited = iStoreItem.isActivated();
            this.isOriginSet = true;
        }
        if (!Utils.isEqualsNotNull(str, iStoreItem == null ? null : iStoreItem.id()) || (storeItemStatusView = this.storeItemStatusView) == null) {
            return;
        }
        storeItemStatusView.updateStatus(6);
    }
}
