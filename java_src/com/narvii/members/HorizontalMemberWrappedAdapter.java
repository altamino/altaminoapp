package com.narvii.members;

import android.content.Intent;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.logging.ActSemantic;
import com.narvii.members.HorizontalMemberAdapter;
import com.narvii.model.User;
import com.narvii.model.api.UserListResponse;
import com.narvii.user.favorite.NVRecycleViewWrapAdapter;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.http.ApiRequest;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: HorizontalMemberWrappedAdapter.kt */
/* loaded from: classes3.dex */
public abstract class HorizontalMemberWrappedAdapter extends NVRecycleViewWrapAdapter {
    private final MemberAdapter adapter;
    private final NVContext nvContext;

    protected abstract ApiRequest createRequest(int i, int i2, String str);

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        return false;
    }

    protected boolean isSinglePage() {
        return false;
    }

    protected boolean showEndItemView() {
        return false;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HorizontalMemberWrappedAdapter(NVContext nvContext) {
        super(nvContext, null);
        Intrinsics.checkParameterIsNotNull(nvContext, "nvContext");
        this.nvContext = nvContext;
        this.adapter = new MemberAdapter();
        setRecycleAdapter(this.adapter);
    }

    @Override // com.narvii.user.favorite.NVRecycleViewWrapAdapter, android.widget.Adapter
    public int getCount() {
        if (this.adapter.getItemCount() == 0) {
            return 0;
        }
        return super.getCount();
    }

    /* compiled from: HorizontalMemberWrappedAdapter.kt */
    public final class MemberAdapter extends HorizontalMemberAdapter {
        @Override // com.narvii.members.HorizontalMemberAdapter
        protected int getDefaultPadding() {
            return 0;
        }

        @Override // com.narvii.members.HorizontalMemberAdapter
        protected int getNormalItemLayoutId() {
            return R.layout.item_user_large;
        }

        @Override // com.narvii.members.HorizontalMemberAdapter
        protected boolean shouldShakeMoods() {
            return true;
        }

        public MemberAdapter() {
            super(HorizontalMemberWrappedAdapter.this.nvContext);
        }

        @Override // com.narvii.widget.recycleview.NVRecycleAdapter
        protected ApiRequest createRequest(int i, int i2, String str) {
            return HorizontalMemberWrappedAdapter.this.createRequest(i, i2, str);
        }

        @Override // com.narvii.members.HorizontalMemberAdapter
        protected int getEndItemLayoutId() {
            if (HorizontalMemberWrappedAdapter.this.showEndItemView()) {
                return super.getEndItemLayoutId();
            }
            return 0;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.widget.recycleview.NVRecycleAdapter
        public void onPageResponse(ApiRequest request, UserListResponse resp, boolean z) {
            Intrinsics.checkParameterIsNotNull(request, "request");
            Intrinsics.checkParameterIsNotNull(resp, "resp");
            super.onPageResponse(request, (ApiRequest) resp, z);
            if (HorizontalMemberWrappedAdapter.this.isSinglePage()) {
                this._isEnd = true;
                notifyDataSetChanged();
            }
        }

        @Override // com.narvii.members.HorizontalMemberAdapter, com.narvii.widget.recycleview.NVRecycleAdapter
        protected void bindCustomViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            super.bindCustomViewHolder(viewHolder, i);
            if (viewHolder instanceof HorizontalMemberAdapter.UserViewHolder) {
                ((HorizontalMemberAdapter.UserViewHolder) viewHolder).nicknameView.setDarkTheme(HorizontalMemberWrappedAdapter.this.isDarkNVTheme());
            }
        }

        @Override // com.narvii.widget.recycleview.NVRecycleAdapter, com.narvii.widget.recycleview.ItemClickSupport.OnItemClickListener
        public void onItemClicked(RecyclerView recyclerView, int i, View v) {
            Intrinsics.checkParameterIsNotNull(recyclerView, "recyclerView");
            Intrinsics.checkParameterIsNotNull(v, "v");
            super.onItemClicked(recyclerView, i, v);
            Object itemAt = getItemAt(i);
            if (itemAt instanceof User) {
                HorizontalMemberWrappedAdapter.this.logClickEvent(itemAt, ActSemantic.checkDetail);
                Intent intent = UserProfileFragment.intent(this.context, (User) itemAt);
                if (intent != null) {
                    HorizontalMemberWrappedAdapter.this.startActivity(intent);
                }
            }
        }
    }
}
