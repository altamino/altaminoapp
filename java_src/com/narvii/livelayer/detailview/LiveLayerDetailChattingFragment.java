package com.narvii.livelayer.detailview;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.list.MergeAdapter;
import com.narvii.livelayer.LiveLayerMemberAdapter;
import com.narvii.livelayer.category.ChatCategoryConfig;
import com.narvii.livelayer.category.OnlineCategoryConfig;
import com.narvii.livelayer.detailview.LiveLayerDetailBaseChattingFragment;
import com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment;
import com.narvii.model.ChatThread;
import com.narvii.widget.NVImageView;

/* loaded from: classes3.dex */
public class LiveLayerDetailChattingFragment extends LiveLayerDetailBaseChattingFragment {
    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "LiveLayerChats";
    }

    public LiveLayerDetailChattingFragment() {
        this.source = "Live Layer (Chats)";
    }

    @Override // com.narvii.livelayer.detailview.LiveLayerDetailBaseChattingFragment, com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        String stringParam = getStringParam("Source");
        if (stringParam == null || !stringParam.contains("Speed Dial")) {
            return;
        }
        this.source = stringParam;
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        MergeAdapter mergeAdapterCreateDefaultAdapter = createDefaultAdapter();
        this.memberAdapter = new LiveLayerDetailBaseFragment.MemberListAdapterWithCapture(this) { // from class: com.narvii.livelayer.detailview.LiveLayerDetailChattingFragment.1
            @Override // com.narvii.livelayer.category.OnlineCategoryMemberAdapter
            protected String getPrivateChatTopic() {
                return "users-chatting-private";
            }
        };
        LiveLayerMemberAdapter liveLayerMemberAdapter = this.memberAdapter;
        liveLayerMemberAdapter.source = this.source;
        mergeAdapterCreateDefaultAdapter.addAdapter(liveLayerMemberAdapter);
        mergeAdapterCreateDefaultAdapter.addAdapter(new LiveLayerDetailBaseChattingFragment.ActivePublicChatroomsTitleAdapter());
        ChatListAdapter chatListAdapter = new ChatListAdapter(this);
        this.mainListAdapter = chatListAdapter;
        mergeAdapterCreateDefaultAdapter.addAdapter(chatListAdapter);
        mergeAdapterCreateDefaultAdapter.addAdapter(new LiveLayerDetailBaseChattingFragment.StartChatAdapter(this, R.string.start_public_chat, null));
        LiveLayerDetailBaseFragment.BaseListAdapter baseListAdapter = this.mainListAdapter;
        baseListAdapter.getClass();
        mergeAdapterCreateDefaultAdapter.addAdapter(new LiveLayerDetailBaseFragment.BaseListAdapter.RecommendAdapter(this));
        LiveLayerDetailBaseFragment.BaseListAdapter baseListAdapter2 = this.mainListAdapter;
        baseListAdapter2.getClass();
        LiveLayerDetailBaseFragment.BaseListAdapter.BaseRecommendedAdapter baseRecommendedAdapter = new LiveLayerDetailBaseFragment.BaseListAdapter.BaseRecommendedAdapter(this);
        this.recommendListAdapter = baseRecommendedAdapter;
        mergeAdapterCreateDefaultAdapter.addAdapter(baseRecommendedAdapter);
        LiveLayerDetailBaseFragment.EmptyAdapter emptyAdapter = new LiveLayerDetailBaseFragment.EmptyAdapter(this);
        emptyAdapter.setAdapter(this.mainListAdapter);
        emptyAdapter.addSubViewAdapter(this.recommendListAdapter);
        mergeAdapterCreateDefaultAdapter.addAdapter(emptyAdapter);
        return mergeAdapterCreateDefaultAdapter;
    }

    @Override // com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment
    protected OnlineCategoryConfig getOnlineCategoryConfig() {
        return new ChatCategoryConfig();
    }

    public class ChatListAdapter extends LiveLayerDetailBaseChattingFragment.BaseChattingListAdapter {
        @Override // com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment.BaseListAdapter
        protected int getLayoutId() {
            return R.layout.live_layer_detail_chatting_item;
        }

        @Override // com.narvii.livelayer.detailview.LiveLayerDetailBaseChattingFragment.BaseChattingListAdapter, com.narvii.list.NVPagedAdapter
        public /* bridge */ /* synthetic */ View createListEndItem(ViewGroup viewGroup, View view, int i) {
            return super.createListEndItem(viewGroup, view, i);
        }

        @Override // com.narvii.livelayer.detailview.LiveLayerDetailBaseChattingFragment.BaseChattingListAdapter, com.narvii.list.NVAdapter, com.narvii.logging.Area
        public /* bridge */ /* synthetic */ String getAreaName() {
            return super.getAreaName();
        }

        @Override // com.narvii.livelayer.detailview.LiveLayerDetailBaseChattingFragment.BaseChattingListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public /* bridge */ /* synthetic */ void onAttach() {
            super.onAttach();
        }

        @Override // com.narvii.livelayer.detailview.LiveLayerDetailBaseChattingFragment.BaseChattingListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public /* bridge */ /* synthetic */ boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }

        @Override // com.narvii.livelayer.detailview.LiveLayerDetailBaseChattingFragment.BaseChattingListAdapter, com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment.BaseListAdapter, com.narvii.list.NVPagedAdapter
        public /* bridge */ /* synthetic */ boolean showListEnd(int i) {
            return super.showListEnd(i);
        }

        public ChatListAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment.BaseListAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup, boolean z) {
            View viewFindViewById;
            View itemView = super.getItemView(obj, view, viewGroup, z);
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
                    viewFindViewById2.setVisibility(chatThread.isFansOnly() ? 0 : 8);
                }
            }
            if (z && (viewFindViewById = itemView.findViewById(R.id.live_layer_auto_bubble)) != null) {
                viewFindViewById.setVisibility(8);
            }
            alignOnlineBar(itemView, R.id.live_layer_auto_bubble);
            return itemView;
        }
    }
}
