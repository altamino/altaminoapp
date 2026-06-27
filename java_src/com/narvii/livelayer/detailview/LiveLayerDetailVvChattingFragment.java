package com.narvii.livelayer.detailview;

import android.os.Bundle;
import android.widget.ListAdapter;
import com.narvii.amino.mastes.R;
import com.narvii.list.MergeAdapter;
import com.narvii.livelayer.LiveLayerMemberAdapter;
import com.narvii.livelayer.category.AVChatCategoryConfig;
import com.narvii.livelayer.category.OnlineCategoryConfig;
import com.narvii.livelayer.detailview.LiveLayerDetailBaseChattingFragment;
import com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment;

/* loaded from: classes3.dex */
public class LiveLayerDetailVvChattingFragment extends LiveLayerDetailBaseChattingFragment {
    public LiveLayerDetailVvChattingFragment() {
        this.source = "Live Layer (Voice Chats)";
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
        this.memberAdapter = new LiveLayerDetailBaseFragment.MemberListAdapterWithCapture(this) { // from class: com.narvii.livelayer.detailview.LiveLayerDetailVvChattingFragment.1
            @Override // com.narvii.livelayer.category.OnlineCategoryMemberAdapter
            protected String getPrivateChatTopic() {
                return "users-vv-chatting-private";
            }
        };
        LiveLayerMemberAdapter liveLayerMemberAdapter = this.memberAdapter;
        liveLayerMemberAdapter.source = this.source;
        if (!this.fromSpeedDial) {
            mergeAdapterCreateDefaultAdapter.addAdapter(liveLayerMemberAdapter);
        }
        mergeAdapterCreateDefaultAdapter.addAdapter(new LiveLayerDetailBaseChattingFragment.ActivePublicChatroomsTitleAdapter());
        LiveLayerDetailBaseChattingFragment.VvChatListAdapter vvChatListAdapter = new LiveLayerDetailBaseChattingFragment.VvChatListAdapter(this);
        this.mainListAdapter = vvChatListAdapter;
        mergeAdapterCreateDefaultAdapter.addAdapter(vvChatListAdapter);
        if (!this.fromSpeedDial) {
            mergeAdapterCreateDefaultAdapter.addAdapter(new LiveLayerDetailBaseChattingFragment.StartChatAdapter(this, R.string.start_vv_chat, "VV"));
            LiveLayerDetailBaseFragment.BaseListAdapter baseListAdapter = this.mainListAdapter;
            baseListAdapter.getClass();
            mergeAdapterCreateDefaultAdapter.addAdapter(new LiveLayerDetailBaseFragment.BaseListAdapter.RecommendAdapter(this));
            LiveLayerDetailBaseFragment.BaseListAdapter baseListAdapter2 = this.mainListAdapter;
            baseListAdapter2.getClass();
            LiveLayerDetailBaseFragment.BaseListAdapter.BaseRecommendedAdapter baseRecommendedAdapter = new LiveLayerDetailBaseFragment.BaseListAdapter.BaseRecommendedAdapter(this);
            this.recommendListAdapter = baseRecommendedAdapter;
            mergeAdapterCreateDefaultAdapter.addAdapter(baseRecommendedAdapter);
        }
        return mergeAdapterCreateDefaultAdapter;
    }

    @Override // com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment
    protected OnlineCategoryConfig getOnlineCategoryConfig() {
        return new AVChatCategoryConfig();
    }
}
