package com.narvii.chat.setting.helper;

import android.os.Bundle;
import android.view.View;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVActivity;
import com.narvii.app.NVFragment;
import com.narvii.chat.setting.LiveWaitingListFragment;
import com.narvii.model.ChatThread;
import com.narvii.scene.service.BaseBottomSheetBehaviorService;
import com.narvii.util.JacksonUtils;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ChatWaitingListService.kt */
/* loaded from: classes2.dex */
public final class ChatWaitingListService extends BaseBottomSheetBehaviorService implements LiveWaitingListFragment.IWaitingListListener {
    private boolean isWaitingListShown;
    private ChatThread thread;
    private LiveWaitingListFragment waitingListFragment;

    @Override // com.narvii.scene.service.BaseBottomSheetBehaviorService
    public int initBottomLayout() {
        return R.layout.waiting_list_bottom_layout;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChatWaitingListService(NVActivity ctx) {
        super(ctx);
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
    }

    public final boolean isWaitingListShown() {
        return this.isWaitingListShown;
    }

    public final void setWaitingListShown(boolean z) {
        this.isWaitingListShown = z;
    }

    @Override // com.narvii.scene.service.BaseBottomSheetBehaviorService
    public NVFragment initFragment() {
        LiveWaitingListFragment liveWaitingListFragment = new LiveWaitingListFragment();
        Bundle bundle = new Bundle();
        ChatThread chatThread = this.thread;
        bundle.putString("thread", JacksonUtils.writeAsString(chatThread != null ? chatThread.getBriefContent() : null));
        liveWaitingListFragment.setArguments(bundle);
        liveWaitingListFragment.setWaitingListListener(this);
        this.waitingListFragment = liveWaitingListFragment;
        return liveWaitingListFragment;
    }

    @Override // com.narvii.scene.service.BaseBottomSheetBehaviorService
    public void show() {
        LiveWaitingListFragment liveWaitingListFragment;
        super.show();
        ChatThread chatThread = this.thread;
        if (chatThread != null && (liveWaitingListFragment = this.waitingListFragment) != null) {
            liveWaitingListFragment.updateWaitingList(chatThread);
        }
        this.isWaitingListShown = true;
    }

    public final void show(ChatThread chatThread) {
        this.thread = chatThread;
        LiveWaitingListFragment liveWaitingListFragment = this.waitingListFragment;
        if (liveWaitingListFragment != null) {
            liveWaitingListFragment.setChatThread(chatThread);
        }
        show();
    }

    @Override // com.narvii.scene.service.BaseBottomSheetBehaviorService
    public void onCollapsed() {
        super.onCollapsed();
        this.isWaitingListShown = false;
    }

    @Override // com.narvii.scene.service.BaseBottomSheetBehaviorService
    public void onBottomLayoutCreated(View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onBottomLayoutCreated(view);
        view.findViewById(R.id.out_area).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.setting.helper.ChatWaitingListService.onBottomLayoutCreated.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ChatWaitingListService.this.dismiss();
            }
        });
    }

    @Override // com.narvii.chat.setting.LiveWaitingListFragment.IWaitingListListener
    public void closeWaitingList() {
        dismiss();
    }
}
