package com.narvii.chat.global.chat;

import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.mastes.R;
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
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RecommendChatAdapter.kt */
/* loaded from: classes2.dex */
public final class RecommendChatAdapter extends HangoutListAdapter {
    private final NVContext ctx;
    private final int ndcId;
    private long updateTime;

    /* compiled from: RecommendChatAdapter.kt */
    public interface RecommendChatRefresh {
        void refreshRecommendChat();
    }

    @Override // com.narvii.chat.hangout.HangoutListAdapter, com.narvii.list.NVAdapter, com.narvii.logging.Area
    public String getAreaName() {
        return "RecommendedChatList";
    }

    @Override // com.narvii.chat.hangout.HangoutListAdapter
    protected int getViewLayoutId() {
        return R.layout.chat_global_recommand_item;
    }

    public RecommendChatAdapter(NVContext nVContext, int i) {
        super(nVContext);
        this.ctx = nVContext;
        this.ndcId = i;
        this.paginationType = -2;
        setDarkTheme(true);
    }

    public final NVContext getCtx() {
        return this.ctx;
    }

    public final int getNdcId() {
        return this.ndcId;
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
    public void onAttach() {
        super.onAttach();
        addImpressionCollector(new LinearImpressionCollector(ChatThread.class));
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected ApiRequest createRequest(boolean z) {
        ApiRequest apiRequestBuild = ApiRequest.builder().communityId(this.ndcId).path("live-layer/public-chats").build();
        Intrinsics.checkExpressionValueIsNotNull(apiRequestBuild, "builder.build()");
        return apiRequestBuild;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.chat.hangout.HangoutListAdapter, com.narvii.list.NVPagedAdapter
    public void onPageResponse(ApiRequest apiRequest, ThreadListResponse threadListResponse, int i) {
        List<ChatThread> list;
        if (threadListResponse != null && (list = threadListResponse.threadList) != null && list.size() > 4) {
            threadListResponse.threadList = threadListResponse.threadList.subList(0, 4);
        }
        super.onPageResponse(apiRequest, threadListResponse, i);
    }

    @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View view2 = super.getView(i, view, viewGroup);
        view2.setOnClickListener(this.subviewClickListener);
        Intrinsics.checkExpressionValueIsNotNull(view2, "view");
        return view2;
    }

    @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
    public int getCount() {
        if (errorMessage() != null) {
            return 0;
        }
        return super.getCount();
    }

    @Override // com.narvii.chat.hangout.HangoutListAdapter, com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        if ((notification != null ? notification.obj : null) instanceof ChatThread) {
            Object obj = notification.obj;
            if (obj == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.model.ChatThread");
            }
            if (((ChatThread) obj).type == 2) {
                List<? extends ChatThread> listRawList = rawList();
                Object obj2 = notification.obj;
                if (obj2 == null) {
                    throw new TypeCastException("null cannot be cast to non-null type com.narvii.model.ChatThread");
                }
                ChatThread chatThread = (ChatThread) Utils.searchForId(listRawList, ((ChatThread) obj2).id());
                if (chatThread != null) {
                    Object obj3 = notification.obj;
                    if (obj3 == null) {
                        throw new TypeCastException("null cannot be cast to non-null type com.narvii.model.ChatThread");
                    }
                    if (((ChatThread) obj3).author == null) {
                        if (obj3 == null) {
                            throw new TypeCastException("null cannot be cast to non-null type com.narvii.model.ChatThread");
                        }
                        ((ChatThread) obj3).author = chatThread.author;
                    }
                }
            }
        }
        super.onNotification(notification);
    }

    public final void refreshWithRateControl() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis > this.updateTime + 60000) {
            this.updateTime = jCurrentTimeMillis;
            refresh(0, null);
        }
    }

    /* compiled from: RecommendChatAdapter.kt */
    public final class RecommendHeaderAdapter extends AdriftAdapter {
        public RecommendHeaderAdapter() {
            super(RecommendChatAdapter.this.getCtx());
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.chat_global_recommand_header, viewGroup, view);
            Intrinsics.checkExpressionValueIsNotNull(viewCreateView, "createView(R.layout.chat…der, parent, convertView)");
            return viewCreateView;
        }

        @Override // com.narvii.list.AdriftAdapter, android.widget.Adapter
        public int getCount() {
            return (RecommendChatAdapter.this.getCount() == 0 || !RecommendChatAdapter.this.isListShown()) ? 0 : 1;
        }
    }
}
