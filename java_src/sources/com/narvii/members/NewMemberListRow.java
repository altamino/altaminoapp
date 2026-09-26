package com.narvii.members;

import android.content.Context;
import android.content.Intent;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.list.ObjectItemClickListener;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.logging.LogUtils;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.model.api.UserListResponse;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.recycleview.NVHorizontalRecycleView;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public final class NewMemberListRow extends LinearLayout {

    @Nullable
    private NewMemberListAdapter adapter;

    @Nullable
    private ObjectItemClickListener itemClickListener;

    private final class NewMemberListAdapter extends HorizontalMemberAdapter {

        @Nullable
        private ArrayList<User> cachedList;
        private final int cid;
        final /* synthetic */ NewMemberListRow this$0;

        public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        @Override // com.narvii.widget.recycleview.NVRecycleAdapter
        protected boolean autoLoadNextPage() {
            return false;
        }

        public final int getCid() {
            return this.cid;
        }

        @Override // com.narvii.members.HorizontalMemberAdapter
        protected int getNormalItemLayoutId() {
            return R.layout.item_chat_to_new_member_list;
        }

        @Override // com.narvii.widget.recycleview.NVRecycleAdapter
        protected int pageSize() {
            return 20;
        }

        @Override // com.narvii.members.HorizontalMemberAdapter
        protected boolean shouldShakeMoods() {
            return false;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NewMemberListAdapter(@NotNull NewMemberListRow newMemberListRow, NVContext ctx, int i10) {
            super(ctx);
            t.j(ctx, "ctx");
            this.this$0 = newMemberListRow;
            this.cid = i10;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.widget.recycleview.NVRecycleAdapter
        public void onPageResponse(@Nullable ApiRequest apiRequest, @Nullable UserListResponse userListResponse, boolean z6) {
            ArrayList<User> arrayList;
            super.onPageResponse(apiRequest, userListResponse, z6);
            if (userListResponse != null) {
                List<User> list = userListResponse.list();
                t.i(list, "list(...)");
                if (!(!list.isEmpty()) || (arrayList = this.cachedList) == null) {
                    return;
                }
                t.g(arrayList);
                arrayList.clear();
                ArrayList<User> arrayList2 = this.cachedList;
                t.g(arrayList2);
                arrayList2.addAll(userListResponse.list());
            }
        }

        public final void refresh(@NotNull ArrayList<User> cachedList) {
            t.j(cachedList, "cachedList");
            this.cachedList = cachedList;
            refresh();
        }

        @Override // com.narvii.widget.recycleview.NVRecycleAdapter
        @NotNull
        public View createLoadMoreItem(@Nullable ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.horizontal_empty_list_item, viewGroup);
            t.i(viewCreateView, "createView(...)");
            return viewCreateView;
        }

        @Override // com.narvii.widget.recycleview.NVRecycleAdapter
        @NotNull
        protected ApiRequest createRequest(int i10, int i11, @Nullable String str) {
            ApiRequest.Builder builderPath = ApiRequest.builder().path("/user-profile");
            builderPath.communityId(this.cid);
            builderPath.param("type", MemberListFragment.KEY_TYPE_RECENT);
            builderPath.param("start", Integer.valueOf(i10));
            builderPath.param("size", Integer.valueOf(i11));
            builderPath.timeout(AccessibilityNodeInfoCompat.EXTRA_DATA_TEXT_CHARACTER_LOCATION_ARG_MAX_LENGTH);
            builderPath.retry(0);
            ApiRequest apiRequestBuild = builderPath.build();
            t.i(apiRequestBuild, "build(...)");
            return apiRequestBuild;
        }

        @Override // com.narvii.widget.recycleview.NVRecycleAdapter, com.narvii.widget.recycleview.ItemClickSupport.OnItemClickListener
        public void onItemClicked(@Nullable RecyclerView recyclerView, int i10, @Nullable View view) {
            super.onItemClicked(recyclerView, i10, view);
            if (getItemType(i10, null) == 1) {
                this.this$0.toAllNewMembersPage();
                ObjectItemClickListener itemClickListener = this.this$0.getItemClickListener();
                if (itemClickListener != null) {
                    itemClickListener.onItemClick(null);
                    return;
                }
                return;
            }
            Object itemAt = getItemAt(i10);
            if (itemAt instanceof User) {
                ObjectItemClickListener itemClickListener2 = this.this$0.getItemClickListener();
                if (itemClickListener2 != null) {
                    itemClickListener2.onItemClick((NVObject) itemAt);
                }
                Intent intent = UserProfileFragment.intent(this.context, (User) itemAt);
                if (intent != null) {
                    intent.putExtra(ExternalPostPreviewFragment.SOURCE, "New Members");
                }
                safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(this.context.getContext(), intent);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NewMemberListRow(@NotNull Context context) {
        super(context);
        t.j(context, "context");
    }

    public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Nullable
    public ObjectItemClickListener getItemClickListener() {
        return this.itemClickListener;
    }

    public void setItemClickListener(@Nullable ObjectItemClickListener objectItemClickListener) {
        this.itemClickListener = objectItemClickListener;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NewMemberListRow(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        t.j(context, "context");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void toAllNewMembersPage() {
        Intent intent = FragmentWrapperActivity.intent(MemberListFragment.class);
        intent.putExtra(MemberListFragment.KEY_TYPE, MemberListFragment.KEY_TYPE_RECENT);
        intent.putExtra(ExternalPostPreviewFragment.SOURCE, "New Members");
        safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(getContext(), intent);
    }

    public final void setupMemberList(@NotNull NVContext ctx, int i10, @NotNull ArrayList<User> cachedList) {
        t.j(ctx, "ctx");
        t.j(cachedList, "cachedList");
        NVHorizontalRecycleView nVHorizontalRecycleView = (NVHorizontalRecycleView) findViewById(R.id.new_members_list);
        if (this.adapter == null) {
            NewMemberListAdapter newMemberListAdapter = new NewMemberListAdapter(this, ctx, i10);
            this.adapter = newMemberListAdapter;
            nVHorizontalRecycleView.setAdapter(newMemberListAdapter);
        }
        if (cachedList.isEmpty()) {
            NewMemberListAdapter newMemberListAdapter2 = this.adapter;
            t.g(newMemberListAdapter2);
            newMemberListAdapter2.refresh(cachedList);
        } else {
            NewMemberListAdapter newMemberListAdapter3 = this.adapter;
            t.g(newMemberListAdapter3);
            newMemberListAdapter3.setListData(cachedList);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onFinishInflate$lambda$0(NewMemberListRow this$0, View view) {
        t.j(this$0, "this$0");
        LogEvent.clickBuilder(LogUtils.getPageContext(this$0), ActSemantic.listViewEnter).area("NewestMembersSeeAll").send();
        this$0.toAllNewMembersPage();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        NVHorizontalRecycleView nVHorizontalRecycleView = (NVHorizontalRecycleView) findViewById(R.id.new_members_list);
        TextView textView = (TextView) findViewById(R.id.option_see_all);
        nVHorizontalRecycleView.setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
        ViewCompat.J0(nVHorizontalRecycleView, Utils.isRtl() ? 1 : 0);
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.members.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NewMemberListRow.onFinishInflate$lambda$0(this.f2484a, view);
            }
        });
    }
}
