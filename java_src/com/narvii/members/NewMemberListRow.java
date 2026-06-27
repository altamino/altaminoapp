package com.narvii.members;

import android.content.Context;
import android.content.Intent;
import android.support.v4.view.ViewCompat;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.narvii.amino.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
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
import java.util.ArrayList;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: NewMemberListRow.kt */
/* loaded from: classes3.dex */
public final class NewMemberListRow extends LinearLayout {
    private HashMap _$_findViewCache;
    private NewMemberListAdapter adapter;
    private ObjectItemClickListener itemClickListener;

    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    public ObjectItemClickListener getItemClickListener() {
        return this.itemClickListener;
    }

    public void setItemClickListener(ObjectItemClickListener objectItemClickListener) {
        this.itemClickListener = objectItemClickListener;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NewMemberListRow(Context context) {
        super(context);
        Intrinsics.checkParameterIsNotNull(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NewMemberListRow(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkParameterIsNotNull(context, "context");
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        NVHorizontalRecycleView new_members_list = (NVHorizontalRecycleView) _$_findCachedViewById(R.id.new_members_list);
        Intrinsics.checkExpressionValueIsNotNull(new_members_list, "new_members_list");
        new_members_list.setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
        ViewCompat.setLayoutDirection((NVHorizontalRecycleView) _$_findCachedViewById(R.id.new_members_list), Utils.isRtl() ? 1 : 0);
        ((TextView) _$_findCachedViewById(R.id.option_see_all)).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.members.NewMemberListRow.onFinishInflate.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LogEvent.clickBuilder(LogUtils.getPageContext(NewMemberListRow.this), ActSemantic.listViewEnter).area("NewestMembersSeeAll").send();
                NewMemberListRow.this.toAllNewMembersPage();
            }
        });
    }

    public final void setupMemberList(NVContext ctx, int i, ArrayList<User> cachedList) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        Intrinsics.checkParameterIsNotNull(cachedList, "cachedList");
        if (this.adapter == null) {
            this.adapter = new NewMemberListAdapter(this, ctx, i);
            NVHorizontalRecycleView new_members_list = (NVHorizontalRecycleView) _$_findCachedViewById(R.id.new_members_list);
            Intrinsics.checkExpressionValueIsNotNull(new_members_list, "new_members_list");
            new_members_list.setAdapter(this.adapter);
        }
        if (cachedList.isEmpty()) {
            NewMemberListAdapter newMemberListAdapter = this.adapter;
            if (newMemberListAdapter != null) {
                newMemberListAdapter.refresh(cachedList);
                return;
            } else {
                Intrinsics.throwNpe();
                throw null;
            }
        }
        NewMemberListAdapter newMemberListAdapter2 = this.adapter;
        if (newMemberListAdapter2 != null) {
            newMemberListAdapter2.setListData(cachedList);
        } else {
            Intrinsics.throwNpe();
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void toAllNewMembersPage() {
        Intent intent = FragmentWrapperActivity.intent(MemberListFragment.class);
        intent.putExtra(MemberListFragment.KEY_TYPE, MemberListFragment.KEY_TYPE_RECENT);
        intent.putExtra("Source", "New Members");
        getContext().startActivity(intent);
    }

    /* compiled from: NewMemberListRow.kt */
    private final class NewMemberListAdapter extends HorizontalMemberAdapter {
        private ArrayList<User> cachedList;
        private final int cid;
        final /* synthetic */ NewMemberListRow this$0;

        @Override // com.narvii.widget.recycleview.NVRecycleAdapter
        protected boolean autoLoadNextPage() {
            return false;
        }

        @Override // com.narvii.members.HorizontalMemberAdapter
        protected int getNormalItemLayoutId() {
            return com.narvii.amino.mastes.R.layout.item_chat_to_new_member_list;
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
        public NewMemberListAdapter(NewMemberListRow newMemberListRow, NVContext ctx, int i) {
            super(ctx);
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            this.this$0 = newMemberListRow;
            this.cid = i;
        }

        public final int getCid() {
            return this.cid;
        }

        public final void refresh(ArrayList<User> cachedList) {
            Intrinsics.checkParameterIsNotNull(cachedList, "cachedList");
            this.cachedList = cachedList;
            refresh();
        }

        @Override // com.narvii.widget.recycleview.NVRecycleAdapter
        public View createLoadMoreItem(ViewGroup viewGroup) {
            View viewCreateView = createView(com.narvii.amino.mastes.R.layout.horizontal_empty_list_item, viewGroup);
            Intrinsics.checkExpressionValueIsNotNull(viewCreateView, "createView(R.layout.hori…_empty_list_item, parent)");
            return viewCreateView;
        }

        @Override // com.narvii.widget.recycleview.NVRecycleAdapter
        protected ApiRequest createRequest(int i, int i2, String str) {
            ApiRequest.Builder builderPath = ApiRequest.builder().path("/user-profile");
            builderPath.communityId(this.cid);
            builderPath.param("type", MemberListFragment.KEY_TYPE_RECENT);
            builderPath.param(TtmlNode.START, Integer.valueOf(i));
            builderPath.param("size", Integer.valueOf(i2));
            builderPath.timeout(20000);
            builderPath.retry(0);
            ApiRequest apiRequestBuild = builderPath.build();
            Intrinsics.checkExpressionValueIsNotNull(apiRequestBuild, "builder.build()");
            return apiRequestBuild;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.widget.recycleview.NVRecycleAdapter
        public void onPageResponse(ApiRequest apiRequest, UserListResponse userListResponse, boolean z) {
            ArrayList<User> arrayList;
            super.onPageResponse(apiRequest, (ApiRequest) userListResponse, z);
            if (userListResponse != null) {
                Intrinsics.checkExpressionValueIsNotNull(userListResponse.list(), "it.list()");
                if (!(!r1.isEmpty()) || (arrayList = this.cachedList) == null) {
                    return;
                }
                if (arrayList != null) {
                    arrayList.clear();
                    ArrayList<User> arrayList2 = this.cachedList;
                    if (arrayList2 != null) {
                        arrayList2.addAll(userListResponse.list());
                        return;
                    } else {
                        Intrinsics.throwNpe();
                        throw null;
                    }
                }
                Intrinsics.throwNpe();
                throw null;
            }
        }

        @Override // com.narvii.widget.recycleview.NVRecycleAdapter, com.narvii.widget.recycleview.ItemClickSupport.OnItemClickListener
        public void onItemClicked(RecyclerView recyclerView, int i, View view) {
            super.onItemClicked(recyclerView, i, view);
            if (getItemType(i, null) == 1) {
                this.this$0.toAllNewMembersPage();
                ObjectItemClickListener itemClickListener = this.this$0.getItemClickListener();
                if (itemClickListener != null) {
                    itemClickListener.onItemClick(null);
                    return;
                }
                return;
            }
            Object itemAt = getItemAt(i);
            if (itemAt instanceof User) {
                ObjectItemClickListener itemClickListener2 = this.this$0.getItemClickListener();
                if (itemClickListener2 != null) {
                    itemClickListener2.onItemClick((NVObject) itemAt);
                }
                Intent intent = UserProfileFragment.intent(this.context, (User) itemAt);
                if (intent != null) {
                    intent.putExtra("Source", "New Members");
                }
                NVContext context = this.context;
                Intrinsics.checkExpressionValueIsNotNull(context, "context");
                context.getContext().startActivity(intent);
            }
        }
    }
}
