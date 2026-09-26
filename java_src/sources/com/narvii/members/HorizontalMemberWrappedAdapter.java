package com.narvii.members;

import android.content.Intent;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.list.NVAdapter;
import com.narvii.logging.ActSemantic;
import com.narvii.model.User;
import com.narvii.model.api.UserListResponse;
import com.narvii.user.favorite.NVRecycleViewWrapAdapter;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.http.ApiRequest;
import com.safedk.android.utils.Logger;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public abstract class HorizontalMemberWrappedAdapter extends NVRecycleViewWrapAdapter {

    @NotNull
    private final MemberAdapter adapter;

    @NotNull
    private final NVContext nvContext;

    public final class MemberAdapter extends HorizontalMemberAdapter {
        public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

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
        @NotNull
        protected ApiRequest createRequest(int i10, int i11, @Nullable String str) {
            return HorizontalMemberWrappedAdapter.this.createRequest(i10, i11, str);
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
        public void onPageResponse(@NotNull ApiRequest request, @NotNull UserListResponse resp, boolean z6) {
            t.j(request, "request");
            t.j(resp, "resp");
            super.onPageResponse(request, resp, z6);
            if (HorizontalMemberWrappedAdapter.this.isSinglePage()) {
                this._isEnd = true;
                notifyDataSetChanged();
            }
        }

        @Override // com.narvii.members.HorizontalMemberAdapter, com.narvii.widget.recycleview.NVRecycleAdapter
        protected void bindCustomViewHolder(@Nullable RecyclerView.ViewHolder viewHolder, int i10) {
            super.bindCustomViewHolder(viewHolder, i10);
            if (viewHolder instanceof HorizontalMemberAdapter.UserViewHolder) {
                ((HorizontalMemberAdapter.UserViewHolder) viewHolder).nicknameView.setDarkTheme(HorizontalMemberWrappedAdapter.this.isDarkNVTheme());
            }
        }

        @Override // com.narvii.widget.recycleview.NVRecycleAdapter, com.narvii.widget.recycleview.ItemClickSupport.OnItemClickListener
        public void onItemClicked(@NotNull RecyclerView recyclerView, int i10, @NotNull View v5) {
            t.j(recyclerView, "recyclerView");
            t.j(v5, "v");
            super.onItemClicked(recyclerView, i10, v5);
            Object itemAt = getItemAt(i10);
            if (itemAt instanceof User) {
                HorizontalMemberWrappedAdapter.this.logClickEvent(itemAt, ActSemantic.checkDetail);
                Intent intent = UserProfileFragment.intent(this.context, (User) itemAt);
                if (intent != null) {
                    safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(HorizontalMemberWrappedAdapter.this, intent);
                }
            }
        }
    }

    @NotNull
    protected abstract ApiRequest createRequest(int i10, int i11, @Nullable String str);

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i10) {
        return false;
    }

    protected boolean isSinglePage() {
        return false;
    }

    protected boolean showEndItemView() {
        return false;
    }

    @Override // com.narvii.user.favorite.NVRecycleViewWrapAdapter, android.widget.Adapter
    public int getCount() {
        if (this.adapter.getItemCount() == 0) {
            return 0;
        }
        return super.getCount();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HorizontalMemberWrappedAdapter(@NotNull NVContext nvContext) {
        super(nvContext, null);
        t.j(nvContext, "nvContext");
        this.nvContext = nvContext;
        MemberAdapter memberAdapter = new MemberAdapter();
        this.adapter = memberAdapter;
        setRecycleAdapter(memberAdapter);
    }
}
