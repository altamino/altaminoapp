package com.narvii.livelayer.detailview;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.airbnb.lottie.LottieAnimationView;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.list.MergeAdapter;
import com.narvii.livelayer.category.OnlineCategoryConfig;
import com.narvii.livelayer.category.ScreenRoomCategoryConfig;
import com.narvii.model.PlayList;
import com.narvii.model.PlayListItem;
import com.narvii.util.statistics.StatisticsService;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes8.dex */
public class LiveLayerDetailScreenRoomFragment extends LiveLayerDetailBaseChattingFragment {

    public class ScreenRoomChatListAdapter extends LiveLayerDetailBaseChattingFragment.VvChatListAdapter {
        public ScreenRoomChatListAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.livelayer.detailview.LiveLayerDetailBaseChattingFragment.VvChatListAdapter, com.narvii.livelayer.detailview.LiveLayerDetailBaseChattingFragment.BaseChattingListAdapter, com.narvii.list.NVPagedAdapter
        public View createListEndItem(ViewGroup viewGroup, View view, int i10) {
            return i10 == 0 ? createView(R.layout.live_layer_detail_list_screen_room_empty, viewGroup, view) : super.createListEndItem(viewGroup, view, i10);
        }

        @Override // com.narvii.livelayer.detailview.LiveLayerDetailBaseChattingFragment.VvChatListAdapter, com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment.BaseListAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup, boolean z6) {
            PlayList playList;
            List<PlayListItem> list;
            int i10;
            PlayListItem playListItem;
            View itemView = super.getItemView(obj, view, viewGroup, z6);
            final TextView textView = (TextView) itemView.findViewById(R.id.screen_room_playing);
            textView.setVisibility(8);
            if ((obj instanceof OnlineChatThread) && (playList = ((OnlineChatThread) obj).playlistInThreadInfo) != null && (list = playList.items) != null && (i10 = playList.currentItemIndex) >= 0 && i10 < list.size() && (playListItem = playList.items.get(playList.currentItemIndex)) != null && !TextUtils.isEmpty(playListItem.title)) {
                textView.setText(playListItem.title);
                textView.setVisibility(0);
                textView.post(new Runnable() { // from class: com.narvii.livelayer.detailview.LiveLayerDetailScreenRoomFragment.ScreenRoomChatListAdapter.1
                    @Override // java.lang.Runnable
                    public void run() {
                        TextView textView2 = textView;
                        textView2.setText(textView2.getText());
                    }
                });
            }
            View viewFindViewById = itemView.findViewById(R.id.organizer_speaking_layout);
            if (viewFindViewById != null) {
                viewFindViewById.setVisibility(8);
            }
            if (!z6) {
                LottieAnimationView lottieAnimationView = (LottieAnimationView) itemView.findViewById(R.id.sr_anim);
                LiveLayerDetailScreenRoomFragment.this.randomAnimView(lottieAnimationView);
                lottieAnimationView.setVisibility(0);
            }
            alignOnlineBar(itemView, R.id.sr_anim);
            return itemView;
        }

        @Override // com.narvii.livelayer.detailview.LiveLayerDetailBaseChattingFragment.VvChatListAdapter, com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment.BaseListAdapter
        protected int getLayoutId() {
            return super.getLayoutId();
        }
    }

    @Override // com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment
    protected OnlineCategoryConfig getOnlineCategoryConfig() {
        return new ScreenRoomCategoryConfig();
    }

    public LiveLayerDetailScreenRoomFragment() {
        this.source = "Live Layer (Watching Videos)";
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        MergeAdapter mergeAdapterCreateDefaultAdapter = createDefaultAdapter();
        LiveLayerDetailBaseFragment.MemberListAdapterWithCapture memberListAdapterWithCapture = new LiveLayerDetailBaseFragment.MemberListAdapterWithCapture(this) { // from class: com.narvii.livelayer.detailview.LiveLayerDetailScreenRoomFragment.1
            @Override // com.narvii.livelayer.category.OnlineCategoryMemberAdapter
            protected int getHintInfoMultiStrId() {
                return R.string.n_members_in_private_screening_room;
            }

            @Override // com.narvii.livelayer.category.OnlineCategoryMemberAdapter
            protected int getHintInfoSingleStrId() {
                return R.string.one_member_in_private_screen_room;
            }

            @Override // com.narvii.livelayer.category.OnlineCategoryMemberAdapter
            protected String getPrivateChatTopic() {
                return "users-watching-videos-private";
            }

            @Override // com.narvii.livelayer.category.OnlineCategoryMemberAdapter, com.narvii.livelayer.LiveLayerMemberAdapter
            public int getTitleIcon() {
                return R.drawable.ic_live_layer_screenroom_online_member_title;
            }
        };
        this.memberAdapter = memberListAdapterWithCapture;
        memberListAdapterWithCapture.source = this.source;
        if (!this.fromSpeedDial) {
            mergeAdapterCreateDefaultAdapter.addAdapter(memberListAdapterWithCapture);
        }
        mergeAdapterCreateDefaultAdapter.addAdapter(new LiveLayerDetailBaseChattingFragment.ActivePublicChatroomsTitleAdapter() { // from class: com.narvii.livelayer.detailview.LiveLayerDetailScreenRoomFragment.2
            @Override // com.narvii.livelayer.detailview.LiveLayerDetailBaseChattingFragment.ActivePublicChatroomsTitleAdapter, com.narvii.livelayer.detailview.LiveLayerCategoryTitleAdapter
            public String getTitleView() {
                return LiveLayerDetailScreenRoomFragment.this.getString(R.string.active_screening_rooms);
            }
        });
        ScreenRoomChatListAdapter screenRoomChatListAdapter = new ScreenRoomChatListAdapter(this);
        this.mainListAdapter = screenRoomChatListAdapter;
        mergeAdapterCreateDefaultAdapter.addAdapter(screenRoomChatListAdapter);
        if (!this.fromSpeedDial) {
            mergeAdapterCreateDefaultAdapter.addAdapter(new LiveLayerDetailBaseChattingFragment.StartChatAdapter(this, R.string.start_screening_room, "SR"));
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
            ((StatisticsService) getService("statistics")).event("Live Layer - Watching Videos").source(stringParam).userPropInc("Live Layer Watching Videos");
        }
    }
}
