package com.narvii.livelayer.detailview;

import android.os.Bundle;
import android.widget.ListAdapter;
import com.narvii.amino.master.R;
import com.narvii.list.MergeAdapter;
import com.narvii.livelayer.category.LiveChatCategoryConfig;
import com.narvii.livelayer.category.OnlineCategoryConfig;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class LiveLayerDetailLiveChattingFragment extends LiveLayerDetailBaseChattingFragment {
    @Override // com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment
    protected OnlineCategoryConfig getOnlineCategoryConfig() {
        return new LiveChatCategoryConfig();
    }

    public LiveLayerDetailLiveChattingFragment() {
        this.source = "Live Layer (Watching Videos)";
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        MergeAdapter mergeAdapterCreateDefaultAdapter = createDefaultAdapter();
        LiveLayerDetailBaseFragment.MemberListAdapterWithCapture memberListAdapterWithCapture = new LiveLayerDetailBaseFragment.MemberListAdapterWithCapture(this) { // from class: com.narvii.livelayer.detailview.LiveLayerDetailLiveChattingFragment.1
            @Override // com.narvii.livelayer.category.OnlineCategoryMemberAdapter
            protected String getPrivateChatTopic() {
                return "users-live-chatting-private";
            }
        };
        this.memberAdapter = memberListAdapterWithCapture;
        memberListAdapterWithCapture.source = this.source;
        if (!this.fromSpeedDial) {
            mergeAdapterCreateDefaultAdapter.addAdapter(memberListAdapterWithCapture);
        }
        mergeAdapterCreateDefaultAdapter.addAdapter(new LiveLayerDetailBaseChattingFragment.ActivePublicChatroomsTitleAdapter());
        LiveLayerDetailBaseChattingFragment.VvChatListAdapter vvChatListAdapter = new LiveLayerDetailBaseChattingFragment.VvChatListAdapter(this);
        this.mainListAdapter = vvChatListAdapter;
        mergeAdapterCreateDefaultAdapter.addAdapter(vvChatListAdapter);
        if (!this.fromSpeedDial) {
            mergeAdapterCreateDefaultAdapter.addAdapter(new LiveLayerDetailBaseChattingFragment.StartChatAdapter(this, R.string.start_live_chat_0, null));
            LiveLayerDetailBaseFragment.BaseListAdapter baseListAdapter = this.mainListAdapter;
            Objects.requireNonNull(baseListAdapter);
            mergeAdapterCreateDefaultAdapter.addAdapter(new LiveLayerDetailBaseFragment.BaseListAdapter.RecommendAdapter(this));
            LiveLayerDetailBaseFragment.BaseListAdapter baseListAdapter2 = this.mainListAdapter;
            Objects.requireNonNull(baseListAdapter2);
            LiveLayerDetailBaseFragment.BaseListAdapter.BaseRecommendedAdapter baseRecommendedAdapter = new LiveLayerDetailBaseFragment.BaseListAdapter.BaseRecommendedAdapter(this);
            this.recommendListAdapter = baseRecommendedAdapter;
            mergeAdapterCreateDefaultAdapter.addAdapter(baseRecommendedAdapter);
        }
        return mergeAdapterCreateDefaultAdapter;
    }

    @Override // com.narvii.livelayer.detailview.LiveLayerDetailBaseChattingFragment, com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }
}
