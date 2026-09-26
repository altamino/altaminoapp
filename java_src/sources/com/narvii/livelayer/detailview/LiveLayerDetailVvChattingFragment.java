package com.narvii.livelayer.detailview;

import android.os.Bundle;
import android.widget.ListAdapter;
import com.narvii.amino.master.R;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.list.MergeAdapter;
import com.narvii.livelayer.category.AVChatCategoryConfig;
import com.narvii.livelayer.category.OnlineCategoryConfig;
import com.narvii.util.statistics.StatisticsService;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class LiveLayerDetailVvChattingFragment extends LiveLayerDetailBaseChattingFragment {
    @Override // com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment
    protected OnlineCategoryConfig getOnlineCategoryConfig() {
        return new AVChatCategoryConfig();
    }

    public LiveLayerDetailVvChattingFragment() {
        this.source = "Live Layer (Voice Chats)";
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        MergeAdapter mergeAdapterCreateDefaultAdapter = createDefaultAdapter();
        LiveLayerDetailBaseFragment.MemberListAdapterWithCapture memberListAdapterWithCapture = new LiveLayerDetailBaseFragment.MemberListAdapterWithCapture(this) { // from class: com.narvii.livelayer.detailview.LiveLayerDetailVvChattingFragment.1
            @Override // com.narvii.livelayer.category.OnlineCategoryMemberAdapter
            protected String getPrivateChatTopic() {
                return "users-vv-chatting-private";
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
            mergeAdapterCreateDefaultAdapter.addAdapter(new LiveLayerDetailBaseChattingFragment.StartChatAdapter(this, R.string.start_vv_chat, "VV"));
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
        String stringParam = getStringParam(ExternalPostPreviewFragment.SOURCE);
        if (stringParam != null && stringParam.contains("Speed Dial")) {
            this.source = stringParam;
        }
        if (bundle == null) {
            ((StatisticsService) getService("statistics")).event("Live Layer - VV Chats Page").source(stringParam).userPropInc("Live Layer VV Chats Page");
        }
    }
}
