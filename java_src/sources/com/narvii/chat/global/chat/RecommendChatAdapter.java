package com.narvii.chat.global.chat;

import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.chat.hangout.HangoutListAdapter;
import com.narvii.chat.thread.ThreadListResponse;
import com.narvii.list.AdriftAdapter;
import com.narvii.logging.Impression.LinearImpressionCollector;
import com.narvii.model.ChatThread;
import com.narvii.notification.Notification;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
public final class RecommendChatAdapter extends HangoutListAdapter {

    @Nullable
    private final NVContext ctx;
    private final int ndcId;

    @NotNull
    private final e8.l<Boolean, l0> showStoreBadgeCallback;
    private long updateTime;

    public interface RecommendChatRefresh {
        void refreshRecommendChat();
    }

    public final class RecommendHeaderAdapter extends AdriftAdapter {
        public RecommendHeaderAdapter() {
            super(RecommendChatAdapter.this.getCtx());
        }

        @Override // com.narvii.list.AdriftAdapter, android.widget.Adapter
        public int getCount() {
            return (RecommendChatAdapter.this.getCount() == 0 || !RecommendChatAdapter.this.isListShown()) ? 0 : 1;
        }

        @Override // android.widget.Adapter
        @NotNull
        public View getView(int i10, @Nullable View view, @Nullable ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.chat_global_recommand_header, viewGroup, view);
            t.i(viewCreateView, "createView(...)");
            return viewCreateView;
        }
    }

    @Override // com.narvii.chat.hangout.HangoutListAdapter, com.narvii.list.NVAdapter, com.narvii.logging.Area
    @NotNull
    public String getAreaName() {
        return "RecommendedChatList";
    }

    @Nullable
    public final NVContext getCtx() {
        return this.ctx;
    }

    public final int getNdcId() {
        return this.ndcId;
    }

    @NotNull
    public final e8.l<Boolean, l0> getShowStoreBadgeCallback() {
        return this.showStoreBadgeCallback;
    }

    @Override // com.narvii.chat.hangout.HangoutListAdapter
    protected int getViewLayoutId() {
        return R.layout.chat_global_recommand_item;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public RecommendChatAdapter(@Nullable NVContext nVContext, int i10, @NotNull e8.l<? super Boolean, l0> showStoreBadgeCallback) {
        super(nVContext);
        t.j(showStoreBadgeCallback, "showStoreBadgeCallback");
        this.ctx = nVContext;
        this.ndcId = i10;
        this.showStoreBadgeCallback = showStoreBadgeCallback;
        this.paginationType = -2;
        setDarkTheme(true);
    }

    @Override // com.narvii.chat.hangout.HangoutListAdapter, com.narvii.notification.NotificationListener
    public void onNotification(@Nullable Notification notification) {
        if ((notification != null ? notification.obj : null) instanceof ChatThread) {
            Object obj = notification.obj;
            t.h(obj, "null cannot be cast to non-null type com.narvii.model.ChatThread");
            if (((ChatThread) obj).type == 2) {
                List<? extends ChatThread> listRawList = rawList();
                Object obj2 = notification.obj;
                t.h(obj2, "null cannot be cast to non-null type com.narvii.model.ChatThread");
                ChatThread chatThread = (ChatThread) Utils.searchForId(listRawList, ((ChatThread) obj2).id());
                if (chatThread != null) {
                    Object obj3 = notification.obj;
                    t.h(obj3, "null cannot be cast to non-null type com.narvii.model.ChatThread");
                    if (((ChatThread) obj3).author == null) {
                        Object obj4 = notification.obj;
                        t.h(obj4, "null cannot be cast to non-null type com.narvii.model.ChatThread");
                        ((ChatThread) obj4).author = chatThread.author;
                    }
                }
            }
        }
        super.onNotification(notification);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.chat.hangout.HangoutListAdapter, com.narvii.list.NVPagedAdapter
    public void onPageResponse(@Nullable ApiRequest apiRequest, @Nullable ThreadListResponse threadListResponse, int i10) {
        List<ChatThread> list;
        if (threadListResponse != null && (list = threadListResponse.threadList) != null && list.size() > 4) {
            threadListResponse.threadList = threadListResponse.threadList.subList(0, 4);
        }
        e8.l<Boolean, l0> lVar = this.showStoreBadgeCallback;
        Boolean bool = threadListResponse != null ? threadListResponse.showStoreBadge : null;
        lVar.invoke(Boolean.valueOf(bool != null ? bool.booleanValue() : false));
        super.onPageResponse(apiRequest, threadListResponse, i10);
    }

    @Override // com.narvii.list.NVPagedAdapter
    @NotNull
    protected ApiRequest createRequest(boolean z6) {
        ApiRequest apiRequestBuild = ApiRequest.builder().communityId(this.ndcId).path("live-layer/public-chats").build();
        t.i(apiRequestBuild, "build(...)");
        return apiRequestBuild;
    }

    @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
    public int getCount() {
        if (errorMessage() != null) {
            return 0;
        }
        return super.getCount();
    }

    @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
    @NotNull
    public View getView(int i10, @Nullable View view, @Nullable ViewGroup viewGroup) {
        View view2 = super.getView(i10, view, viewGroup);
        view2.setOnClickListener(this.subviewClickListener);
        t.g(view2);
        return view2;
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
    public void onAttach() {
        super.onAttach();
        addImpressionCollector(new LinearImpressionCollector(ChatThread.class));
    }

    public final void refreshWithRateControl() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis > this.updateTime + ((long) 60000)) {
            this.updateTime = jCurrentTimeMillis;
            refresh(0, null);
        }
    }
}
