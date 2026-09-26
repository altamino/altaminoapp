package com.narvii.user.profile.adapter;

import android.graphics.Color;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.detail.DetailAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.logging.ActSemantic;
import com.narvii.widget.UserAvatarLayout;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public abstract class CommentAddAdapter extends NVAdapter {
    private boolean show;

    @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
    @NotNull
    public String getAreaName() {
        return "CommentBar";
    }

    protected int getCommentBackgroundRes(boolean z6) {
        return z6 ? R.drawable.edit_round_add_comment_dark : R.drawable.edit_round_add_comment_light;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.show ? 1 : 0;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i10) {
        return 0L;
    }

    public abstract void onCommentNew();

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CommentAddAdapter(@NotNull NVContext ctx) {
        super(ctx);
        t.j(ctx, "ctx");
        this.show = true;
    }

    protected int getCommentTextColor(boolean z6) {
        if (z6) {
            return -1;
        }
        return Color.parseColor("#FF888888");
    }

    @Override // android.widget.Adapter
    @NotNull
    public Object getItem(int i10) {
        DetailAdapter.CellType COMMENT_ADD = DetailAdapter.COMMENT_ADD;
        t.i(COMMENT_ADD, "COMMENT_ADD");
        return COMMENT_ADD;
    }

    @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(@Nullable ListAdapter listAdapter, int i10, @Nullable Object obj, @Nullable View view, @Nullable View view2) {
        if (i10 == 0) {
            logClickEvent(ActSemantic.checkComment);
            onCommentNew();
        }
        return super.onItemClick(listAdapter, i10, obj, view, view2);
    }

    public final void setVisibleInList(boolean z6) {
        this.show = z6;
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    @NotNull
    public View getView(int i10, @Nullable View view, @Nullable ViewGroup viewGroup) {
        View viewCreateView = createView(R.layout.detail_comment_add_item, viewGroup, view);
        TextView textView = (TextView) viewCreateView.findViewById(R.id.add_comment);
        textView.setOnClickListener(this.subviewClickListener);
        textView.setTextColor(getCommentTextColor(this.darkTheme));
        textView.setBackgroundResource(getCommentBackgroundRes(this.darkTheme));
        ((UserAvatarLayout) viewCreateView.findViewById(R.id.user_avatar_layout)).setUser(((AccountService) getService("account")).getUserProfile());
        t.i(viewCreateView, "apply(...)");
        return viewCreateView;
    }
}
