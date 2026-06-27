package com.narvii.user.profile.adapter;

import android.graphics.Color;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.detail.DetailAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.logging.ActSemantic;
import com.narvii.widget.UserAvatarLayout;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CommentAddAdapter.kt */
/* loaded from: classes3.dex */
public abstract class CommentAddAdapter extends NVAdapter {
    private boolean show;

    @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
    public String getAreaName() {
        return "CommentBar";
    }

    protected int getCommentBackgroundRes(boolean z) {
        return z ? R.drawable.edit_round_add_comment_dark : R.drawable.edit_round_add_comment_light;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return 0L;
    }

    public abstract void onCommentNew();

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CommentAddAdapter(NVContext ctx) {
        super(ctx);
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        this.show = true;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.show ? 1 : 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        DetailAdapter.CellType cellType = DetailAdapter.COMMENT_ADD;
        Intrinsics.checkExpressionValueIsNotNull(cellType, "DetailAdapter.COMMENT_ADD");
        return cellType;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View viewCreateView = createView(R.layout.detail_comment_add_item, viewGroup, view);
        TextView textView = (TextView) viewCreateView.findViewById(R.id.add_comment);
        textView.setOnClickListener(this.subviewClickListener);
        textView.setTextColor(getCommentTextColor(this.darkTheme));
        textView.setBackgroundResource(getCommentBackgroundRes(this.darkTheme));
        AccountService account = (AccountService) getService("account");
        Intrinsics.checkExpressionValueIsNotNull(account, "account");
        ((UserAvatarLayout) viewCreateView.findViewById(R.id.user_avatar_layout)).setUser(account.getUserProfile());
        Intrinsics.checkExpressionValueIsNotNull(viewCreateView, "createView<View>(R.layou…out).setUser(u)\n        }");
        return viewCreateView;
    }

    @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
        if (i == 0) {
            logClickEvent(ActSemantic.checkComment);
            onCommentNew();
        }
        return super.onItemClick(listAdapter, i, obj, view, view2);
    }

    public final void setVisibleInList(boolean z) {
        this.show = z;
        notifyDataSetChanged();
    }

    protected int getCommentTextColor(boolean z) {
        if (z) {
            return -1;
        }
        return Color.parseColor("#FF888888");
    }
}
