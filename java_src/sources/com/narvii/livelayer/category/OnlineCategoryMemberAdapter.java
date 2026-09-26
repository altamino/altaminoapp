package com.narvii.livelayer.category;

import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.list.NVAdapter;
import com.narvii.livelayer.LiveLayerMemberAdapter;
import com.narvii.livelayer.LiveLayerService;
import com.narvii.livelayer.MemberOnPageFragment;
import com.narvii.model.api.UserListResponse;
import com.narvii.util.Callback;
import com.narvii.util.text.TextUtils;
import com.safedk.android.utils.Logger;
import io.agora.rtc.Constants;

/* JADX INFO: loaded from: classes4.dex */
public abstract class OnlineCategoryMemberAdapter extends LiveLayerMemberAdapter {
    int privateChatCount;

    public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    protected int getHintInfoMultiStrId() {
        return R.string.n_members_in_private_chat_message;
    }

    protected int getHintInfoSingleStrId() {
        return R.string.one_member_in_private_chat_message;
    }

    protected abstract OnlineCategoryConfig getOnlineCategoryConfig();

    protected String getPrivateChatTopic() {
        return null;
    }

    private void sendPrivateChatRequest() {
        ((LiveLayerService) getService("liveLayer")).requestOnlineMembers(getPrivateChatTopic(), 10, false, new Callback<UserListResponse>() { // from class: com.narvii.livelayer.category.OnlineCategoryMemberAdapter.1
            @Override // com.narvii.util.Callback
            public void call(UserListResponse userListResponse) {
                OnlineCategoryMemberAdapter onlineCategoryMemberAdapter = OnlineCategoryMemberAdapter.this;
                onlineCategoryMemberAdapter.privateChatCount = userListResponse.userProfileCount;
                onlineCategoryMemberAdapter.notifyDataSetChanged();
            }
        });
    }

    @Override // com.narvii.livelayer.LiveLayerMemberAdapter
    public String getTitleView() {
        return TextUtils.getCountTitle(this.context.getContext().getString(getOnlineCategoryConfig().membersTitleId()), this.userCount);
    }

    @Override // com.narvii.livelayer.LiveLayerMemberAdapter
    public boolean onMoreItemClick() {
        Intent intent = FragmentWrapperActivity.intent(MemberOnPageFragment.class);
        intent.putExtra("title", getContext().getString(getOnlineCategoryConfig().membersTitleId()));
        intent.putExtra("topic", getOnlineCategoryConfig().topicName());
        intent.putExtra("pageBackgroundColor", getOnlineCategoryConfig().color());
        safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
        return true;
    }

    public OnlineCategoryMemberAdapter(NVContext nVContext) {
        super(nVContext);
        this.privateChatCount = -1;
    }

    @Override // com.narvii.livelayer.LiveLayerMemberAdapter
    protected String getLiveLayerTopic() {
        if (getOnlineCategoryConfig() != null) {
            return getOnlineCategoryConfig().topicName();
        }
        return null;
    }

    @Override // com.narvii.livelayer.LiveLayerMemberAdapter
    public int getTitleIcon() {
        return getOnlineCategoryConfig().iconId();
    }

    @Override // com.narvii.livelayer.LiveLayerMemberAdapter
    public int getTitleIconBackground() {
        return getOnlineCategoryConfig().membersTitleBackgroundColor();
    }

    @Override // com.narvii.livelayer.LiveLayerMemberAdapter, com.narvii.user.favorite.NVRecycleViewWrapAdapter, android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        int i11;
        View view2 = super.getView(i10, view, viewGroup);
        if (getOnlineCategoryConfig() != null) {
            int iColor = getOnlineCategoryConfig().color();
            view2.setBackgroundColor(ColorUtils.j(Color.argb(Constants.ERR_PUBLISH_STREAM_NOT_AUTHORIZED, Color.red(iColor), Color.green(iColor), Color.blue(iColor)), 1627389951));
        }
        TextView textView = (TextView) view2.findViewById(R.id.private_chat);
        textView.setText(TextUtils.getCountText(getContext(), this.privateChatCount, getHintInfoSingleStrId(), getHintInfoMultiStrId()));
        if (this.privateChatCount > 0) {
            i11 = 0;
        } else {
            i11 = 8;
        }
        textView.setVisibility(i11);
        return view2;
    }

    @Override // com.narvii.user.favorite.NVRecycleViewWrapAdapter, com.narvii.list.NVAdapter
    public void onAttach() {
        super.onAttach();
        if (getPrivateChatTopic() != null && this.privateChatCount == -1) {
            sendPrivateChatRequest();
        }
    }

    @Override // com.narvii.livelayer.LiveLayerMemberAdapter, com.narvii.user.favorite.NVRecycleViewWrapAdapter, com.narvii.list.NVAdapter
    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        this.privateChatCount = bundle.getInt("privateChatCount", -1);
    }

    @Override // com.narvii.livelayer.LiveLayerMemberAdapter, com.narvii.user.favorite.NVRecycleViewWrapAdapter, com.narvii.list.NVAdapter
    public Bundle onSaveInstanceState() {
        Bundle bundleOnSaveInstanceState = super.onSaveInstanceState();
        bundleOnSaveInstanceState.putInt("privateChatCount", this.privateChatCount);
        return bundleOnSaveInstanceState;
    }
}
