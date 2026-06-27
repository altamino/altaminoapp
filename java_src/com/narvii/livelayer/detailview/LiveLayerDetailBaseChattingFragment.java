package com.narvii.livelayer.detailview;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.chat.ChatFragment;
import com.narvii.chat.post.ThreadPost;
import com.narvii.chat.post.ThreadPostNewActivity;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.chat.video.VVChatEntryHelper;
import com.narvii.list.NVAdapter;
import com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.Impression.LinearImpressionCollector;
import com.narvii.model.ChatThread;
import com.narvii.model.User;
import com.narvii.model.api.ListResponse;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.modulization.Module;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.widget.NVImageView;
import com.narvii.widget.RtcIndicatorView;

/* loaded from: classes3.dex */
public abstract class LiveLayerDetailBaseChattingFragment extends LiveLayerDetailBaseFragment {
    protected boolean fromSpeedDial;
    boolean publicChatEnabled;

    @Override // com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.fromSpeedDial = getBooleanParam("fromSpeedDial");
        CommunityConfigHelper communityConfigHelper = new CommunityConfigHelper(getParentContext());
        this.publicChatEnabled = communityConfigHelper.isChatEnabled() && communityConfigHelper.isPublicChatEnabled();
    }

    protected abstract class BaseChattingListAdapter extends LiveLayerDetailBaseFragment.BaseListAdapter<OnlineChatThread, ListResponse<? extends OnlineChatThread>> {
        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "Chats";
        }

        public BaseChattingListAdapter(NVContext nVContext) {
            super(nVContext);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<OnlineChatThread> dataType() {
            return OnlineChatThread.class;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<? extends ListResponse<? extends OnlineChatThread>> responseType() {
            return OnlineChatThreadListResponse.class;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            addImpressionCollector(new LinearImpressionCollector(ChatThread.class));
        }

        @Override // com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment.BaseListAdapter, com.narvii.list.NVPagedAdapter
        public boolean showListEnd(int i) {
            LiveLayerDetailBaseFragment.BaseListAdapter.BaseRecommendedAdapter baseRecommendedAdapter;
            return (i != 0 || (baseRecommendedAdapter = LiveLayerDetailBaseChattingFragment.this.recommendListAdapter) == null || baseRecommendedAdapter.getCount() == 0) ? false : true;
        }

        @Override // com.narvii.list.NVPagedAdapter
        public View createListEndItem(ViewGroup viewGroup, View view, int i) {
            if (i == 0) {
                return createView(R.layout.live_layer_detail_list_empty, viewGroup, view);
            }
            return super.createListEndItem(viewGroup, view, i);
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if ((obj instanceof ChatThread) && startChat((ChatThread) obj)) {
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }

        protected boolean startChat(ChatThread chatThread) {
            if (chatThread == null) {
                return false;
            }
            logClickEvent(chatThread, ActSemantic.checkDetail);
            Intent intent = FragmentWrapperActivity.intent(ChatFragment.class);
            intent.putExtra("id", chatThread.threadId);
            intent.putExtra("thread", JacksonUtils.writeAsString(chatThread));
            Intent intent2 = new Intent("openHangout");
            intent2.putExtra("intent", intent);
            ensureLogin(intent2);
            return true;
        }

        @Override // com.narvii.list.NVAdapter
        protected void onLoginResult(boolean z, Intent intent) {
            if (z && "openHangout".equals(intent.getAction())) {
                Intent intent2 = (Intent) intent.getParcelableExtra("intent");
                intent2.putExtra("Source", LiveLayerDetailBaseChattingFragment.this.source);
                startActivity(intent2);
                return;
            }
            super.onLoginResult(z, intent);
        }
    }

    protected class StartChatAdapter extends NVAdapter {
        String doAfter;
        int strId;

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        public StartChatAdapter(NVContext nVContext, int i, String str) {
            super(nVContext);
            this.strId = i;
            this.doAfter = str;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return LiveLayerDetailBaseChattingFragment.this.publicChatEnabled ? 1 : 0;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.live_layer_chat_start, viewGroup, view);
            ((TextView) viewCreateView.findViewById(R.id.text)).setText(this.strId);
            return viewCreateView;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            Intent intent = new Intent(getContext(), (Class<?>) ThreadPostNewActivity.class);
            intent.putExtra("doAfter", this.doAfter);
            intent.putExtra("Source", LiveLayerDetailBaseChattingFragment.this.source);
            intent.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(new ThreadPost()));
            startActivity(intent);
            return true;
        }
    }

    protected class ActivePublicChatroomsTitleAdapter extends LiveLayerCategoryTitleAdapter {
        @Override // com.narvii.livelayer.detailview.LiveLayerCategoryTitleAdapter
        public int getTitleIcon() {
            return R.drawable.ic_livelayer_public_chat;
        }

        @Override // com.narvii.livelayer.detailview.LiveLayerCategoryTitleAdapter
        public int getTitleIconBackgroundColor() {
            return -16749825;
        }

        public ActivePublicChatroomsTitleAdapter() {
            super(LiveLayerDetailBaseChattingFragment.this);
        }

        @Override // com.narvii.livelayer.detailview.LiveLayerCategoryTitleAdapter
        public String getTitleView() {
            return LiveLayerDetailBaseChattingFragment.this.getString(R.string.live_layer_category_title);
        }

        @Override // com.narvii.livelayer.detailview.LiveLayerCategoryTitleAdapter, android.widget.Adapter
        public int getCount() {
            LiveLayerDetailBaseFragment.BaseListAdapter baseListAdapter = LiveLayerDetailBaseChattingFragment.this.mainListAdapter;
            if (baseListAdapter == null || baseListAdapter.getCount() == 0) {
                return 0;
            }
            return super.getCount();
        }
    }

    public class VvChatListAdapter extends BaseChattingListAdapter {
        @Override // com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment.BaseListAdapter
        protected int getLayoutId() {
            return R.layout.live_layer_detail_vv_chatting_item;
        }

        @Override // com.narvii.livelayer.detailview.LiveLayerDetailBaseChattingFragment.BaseChattingListAdapter, com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment.BaseListAdapter, com.narvii.list.NVPagedAdapter
        public boolean showListEnd(int i) {
            return i == 0;
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

        public VvChatListAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment.BaseListAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup, boolean z) {
            View itemView = super.getItemView(obj, view, viewGroup, z);
            if (obj instanceof ChatThread) {
                ChatThread chatThread = (ChatThread) obj;
                NVImageView nVImageView = (NVImageView) itemView.findViewById(R.id.image);
                if (nVImageView != null) {
                    nVImageView.setImageUrl(chatThread.icon);
                }
                RtcIndicatorView rtcIndicatorView = (RtcIndicatorView) itemView.findViewById(R.id.rtc_indicator_view);
                rtcIndicatorView.updateView();
                View view2 = rtcIndicatorView.rtcIndicator;
                TextView textView = (TextView) itemView.findViewById(R.id.title);
                if (textView != null) {
                    textView.setText(chatThread.title);
                    ((ViewGroup.MarginLayoutParams) textView.getLayoutParams()).topMargin = (int) Utils.dpToPx(getContext(), (view2 == null || view2.getVisibility() != 0) ? 15.0f : 30.0f);
                }
                NVImageView nVImageView2 = (NVImageView) itemView.findViewById(R.id.organizer_avatar);
                User userOwner = chatThread.owner();
                if (userOwner != null) {
                    nVImageView2.setImageUrl(userOwner.icon());
                }
                View viewFindViewById = itemView.findViewById(R.id.fans_only_content_indicator);
                if (viewFindViewById != null) {
                    viewFindViewById.setVisibility(chatThread.isFansOnly() ? 0 : 8);
                }
            }
            if (z) {
                View viewFindViewById2 = itemView.findViewById(R.id.organizer_speaking_layout);
                if (viewFindViewById2 != null) {
                    viewFindViewById2.setVisibility(8);
                }
                View viewFindViewById3 = itemView.findViewById(R.id.rtc_indicator);
                if (viewFindViewById3 != null) {
                    viewFindViewById3.setVisibility(8);
                }
            }
            alignOnlineBar(itemView, R.id.organizer_speaking_layout);
            return itemView;
        }

        @Override // com.narvii.livelayer.detailview.LiveLayerDetailBaseChattingFragment.BaseChattingListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (obj instanceof ChatThread) {
                ChatThread chatThread = (ChatThread) obj;
                if (SignallingChannel.isLegalChannelType(chatThread.getRTCType())) {
                    new VVChatEntryHelper(this).launchLiveChannelFromLaunchEvent(chatThread, chatThread.getRTCType(), LiveLayerDetailBaseChattingFragment.this.source, true);
                    return true;
                }
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }
    }
}
