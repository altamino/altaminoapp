package com.narvii.livelayer.detailview;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.list.MergeAdapter;
import com.narvii.livelayer.category.ChatCategoryConfig;
import com.narvii.livelayer.category.OnlineCategoryConfig;
import com.narvii.model.ChatThread;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.widget.NVImageView;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class LiveLayerDetailChattingFragment extends LiveLayerDetailBaseChattingFragment {

    public class ChatListAdapter extends LiveLayerDetailBaseChattingFragment.BaseChattingListAdapter {
        @Override // com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment.BaseListAdapter
        protected int getLayoutId() {
            return R.layout.live_layer_detail_chatting_item;
        }

        public ChatListAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.livelayer.detailview.LiveLayerDetailBaseChattingFragment.BaseChattingListAdapter, com.narvii.list.NVPagedAdapter
        public /* bridge */ /* synthetic */ View createListEndItem(ViewGroup viewGroup, View view, int i10) {
            return super.createListEndItem(viewGroup, view, i10);
        }

        @Override // com.narvii.livelayer.detailview.LiveLayerDetailBaseChattingFragment.BaseChattingListAdapter, com.narvii.list.NVAdapter, com.narvii.logging.Area
        public /* bridge */ /* synthetic */ String getAreaName() {
            return super.getAreaName();
        }

        @Override // com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment.BaseListAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup, boolean z6) {
            View viewFindViewById;
            int i10;
            View itemView = super.getItemView(obj, view, viewGroup, z6);
            if (obj instanceof ChatThread) {
                ChatThread chatThread = (ChatThread) obj;
                NVImageView nVImageView = (NVImageView) itemView.findViewById(R.id.image);
                if (nVImageView != null) {
                    nVImageView.setImageUrl(chatThread.icon);
                }
                TextView textView = (TextView) itemView.findViewById(R.id.title);
                if (textView != null) {
                    textView.setText(chatThread.title);
                }
                View viewFindViewById2 = itemView.findViewById(R.id.fans_only_content_indicator);
                if (viewFindViewById2 != null) {
                    if (chatThread.isFansOnly()) {
                        i10 = 0;
                    } else {
                        i10 = 8;
                    }
                    viewFindViewById2.setVisibility(i10);
                }
            }
            if (z6 && (viewFindViewById = itemView.findViewById(R.id.live_layer_auto_bubble)) != null) {
                viewFindViewById.setVisibility(8);
            }
            alignOnlineBar(itemView, R.id.live_layer_auto_bubble);
            return itemView;
        }

        @Override // com.narvii.livelayer.detailview.LiveLayerDetailBaseChattingFragment.BaseChattingListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public /* bridge */ /* synthetic */ void onAttach() {
            super.onAttach();
        }

        @Override // com.narvii.livelayer.detailview.LiveLayerDetailBaseChattingFragment.BaseChattingListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public /* bridge */ /* synthetic */ boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            return super.onItemClick(listAdapter, i10, obj, view, view2);
        }

        @Override // com.narvii.livelayer.detailview.LiveLayerDetailBaseChattingFragment.BaseChattingListAdapter, com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment.BaseListAdapter, com.narvii.list.NVPagedAdapter
        public /* bridge */ /* synthetic */ boolean showListEnd(int i10) {
            return super.showListEnd(i10);
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "live_layer_chatting";
    }

    @Override // com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment
    protected OnlineCategoryConfig getOnlineCategoryConfig() {
        return new ChatCategoryConfig();
    }

    public LiveLayerDetailChattingFragment() {
        this.source = "Live Layer (Chats)";
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        MergeAdapter mergeAdapterCreateDefaultAdapter = createDefaultAdapter();
        LiveLayerDetailBaseFragment.MemberListAdapterWithCapture memberListAdapterWithCapture = new LiveLayerDetailBaseFragment.MemberListAdapterWithCapture(this) { // from class: com.narvii.livelayer.detailview.LiveLayerDetailChattingFragment.1
            @Override // com.narvii.livelayer.category.OnlineCategoryMemberAdapter
            protected String getPrivateChatTopic() {
                return "users-chatting-private";
            }
        };
        this.memberAdapter = memberListAdapterWithCapture;
        memberListAdapterWithCapture.source = this.source;
        mergeAdapterCreateDefaultAdapter.addAdapter(memberListAdapterWithCapture);
        mergeAdapterCreateDefaultAdapter.addAdapter(new LiveLayerDetailBaseChattingFragment.ActivePublicChatroomsTitleAdapter());
        ChatListAdapter chatListAdapter = new ChatListAdapter(this);
        this.mainListAdapter = chatListAdapter;
        mergeAdapterCreateDefaultAdapter.addAdapter(chatListAdapter);
        mergeAdapterCreateDefaultAdapter.addAdapter(new LiveLayerDetailBaseChattingFragment.StartChatAdapter(this, R.string.start_public_chat, null));
        LiveLayerDetailBaseFragment.BaseListAdapter baseListAdapter = this.mainListAdapter;
        Objects.requireNonNull(baseListAdapter);
        mergeAdapterCreateDefaultAdapter.addAdapter(new LiveLayerDetailBaseFragment.BaseListAdapter.RecommendAdapter(this));
        LiveLayerDetailBaseFragment.BaseListAdapter baseListAdapter2 = this.mainListAdapter;
        Objects.requireNonNull(baseListAdapter2);
        LiveLayerDetailBaseFragment.BaseListAdapter.BaseRecommendedAdapter baseRecommendedAdapter = new LiveLayerDetailBaseFragment.BaseListAdapter.BaseRecommendedAdapter(this);
        this.recommendListAdapter = baseRecommendedAdapter;
        mergeAdapterCreateDefaultAdapter.addAdapter(baseRecommendedAdapter);
        LiveLayerDetailBaseFragment.EmptyAdapter emptyAdapter = new LiveLayerDetailBaseFragment.EmptyAdapter(this);
        emptyAdapter.setAdapter(this.mainListAdapter);
        emptyAdapter.addSubViewAdapter(this.recommendListAdapter);
        mergeAdapterCreateDefaultAdapter.addAdapter(emptyAdapter);
        return mergeAdapterCreateDefaultAdapter;
    }

    @Override // com.narvii.livelayer.detailview.LiveLayerDetailBaseChattingFragment, com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        String stringParam = getStringParam(ExternalPostPreviewFragment.SOURCE);
        if (stringParam != null && stringParam.contains("Speed Dial")) {
            this.source = stringParam;
        }
        if (bundle == null) {
            ((StatisticsService) getService("statistics")).event("Live Layer - Chats Page").source(stringParam).userPropInc("Live Layer Chats Page");
        }
    }
}
