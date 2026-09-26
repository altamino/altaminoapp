package com.narvii.chat.setting.helper;

import android.os.Bundle;
import android.view.View;
import com.narvii.amino.master.R;
import com.narvii.app.NVActivity;
import com.narvii.app.NVFragment;
import com.narvii.chat.setting.LiveWaitingListFragment;
import com.narvii.chat.setting.helper.ChatWaitingListService;
import com.narvii.model.ChatThread;
import com.narvii.scene.service.BaseBottomSheetBehaviorService;
import com.narvii.util.JacksonUtils;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class ChatWaitingListService extends BaseBottomSheetBehaviorService implements LiveWaitingListFragment.IWaitingListListener {
    private boolean isWaitingListShown;

    @Nullable
    private ChatThread thread;

    @Nullable
    private LiveWaitingListFragment waitingListFragment;

    @Override // com.narvii.scene.service.BaseBottomSheetBehaviorService
    public int initBottomLayout() {
        return R.layout.waiting_list_bottom_layout;
    }

    public final boolean isWaitingListShown() {
        return this.isWaitingListShown;
    }

    public final void setWaitingListShown(boolean z6) {
        this.isWaitingListShown = z6;
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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChatWaitingListService(@NotNull NVActivity ctx) {
        super(ctx);
        t.j(ctx, "ctx");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onBottomLayoutCreated$lambda$1(ChatWaitingListService this$0, View view) {
        t.j(this$0, "this$0");
        this$0.dismiss();
    }

    @Override // com.narvii.scene.service.BaseBottomSheetBehaviorService
    @NotNull
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
    public void onBottomLayoutCreated(@NotNull View view) {
        t.j(view, "view");
        super.onBottomLayoutCreated(view);
        view.findViewById(R.id.out_area).setOnClickListener(new View.OnClickListener() { // from class: x5.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ChatWaitingListService.onBottomLayoutCreated$lambda$1(this.f3366a, view2);
            }
        });
    }

    @Override // com.narvii.chat.setting.LiveWaitingListFragment.IWaitingListListener
    public void closeWaitingList() {
        dismiss();
    }

    @Override // com.narvii.scene.service.BaseBottomSheetBehaviorService
    public void onCollapsed() {
        super.onCollapsed();
        this.isWaitingListShown = false;
    }

    public final void show(@Nullable ChatThread chatThread) {
        this.thread = chatThread;
        LiveWaitingListFragment liveWaitingListFragment = this.waitingListFragment;
        if (liveWaitingListFragment != null) {
            liveWaitingListFragment.setChatThread(chatThread);
        }
        show();
    }
}
