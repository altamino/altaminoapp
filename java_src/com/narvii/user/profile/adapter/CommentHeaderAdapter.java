package com.narvii.user.profile.adapter;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.support.v4.content.ContextCompat;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.list.NVAdapter;
import com.narvii.model.User;
import com.narvii.prefs.UserProfilePrivilegeFragment;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.widget.TintButton;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CommentHeaderAdapter.kt */
/* loaded from: classes3.dex */
public abstract class CommentHeaderAdapter extends NVAdapter {
    private int commentCount;
    private int curSort;
    private final boolean isMe;

    protected int getBackgroundColorRes(boolean z) {
        return z ? R.color.header_bg_dark : R.color.header_color_light;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return 1;
    }

    @Override // android.widget.Adapter
    public Void getItem(int i) {
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return 0L;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        return false;
    }

    public abstract void onCommentRefresh();

    public abstract void onCommentSort(int i);

    protected boolean showCommentTitle() {
        return true;
    }

    protected boolean userProfilePrivilegeFragmentIsDarkTheme() {
        return false;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CommentHeaderAdapter(NVContext ctx, boolean z) {
        super(ctx);
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        this.isMe = z;
    }

    public final boolean isMe() {
        return this.isMe;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        String string;
        View viewCreateView = createView(R.layout.detail_comment_header_item, viewGroup, view);
        viewCreateView.setPadding(0, 0, 0, 0);
        int color = !this.darkTheme ? Color.parseColor("#FF888888") : -1;
        TextView commentsTV = (TextView) viewCreateView.findViewById(R.id.text);
        TextView countTV = (TextView) viewCreateView.findViewById(R.id.comment_count);
        if (showCommentTitle()) {
            Intrinsics.checkExpressionValueIsNotNull(commentsTV, "commentsTV");
            commentsTV.setVisibility(0);
            commentsTV.setText(viewCreateView.getContext().getString(R.string.comments));
            commentsTV.setTextColor(color);
            commentsTV.setOnClickListener(this.subviewClickListener);
            Intrinsics.checkExpressionValueIsNotNull(countTV, "countTV");
            countTV.setVisibility(0);
            countTV.setTextColor(color);
            countTV.setOnClickListener(this.subviewClickListener);
            if (this.commentCount == 0) {
                string = "";
            } else {
                StringBuilder sb = new StringBuilder();
                sb.append('(');
                sb.append(this.commentCount);
                sb.append(')');
                string = sb.toString();
            }
            countTV.setText(string);
        } else {
            Intrinsics.checkExpressionValueIsNotNull(commentsTV, "commentsTV");
            commentsTV.setVisibility(4);
            Intrinsics.checkExpressionValueIsNotNull(countTV, "countTV");
            countTV.setVisibility(4);
        }
        viewCreateView.findViewById(R.id.comment_slides).setOnClickListener(this.subviewClickListener);
        View viewFindViewById = viewCreateView.findViewById(R.id.comment_slides);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "findViewById<TintButton>(R.id.comment_slides)");
        ((TintButton) viewFindViewById).setTintColor(color);
        View viewFindViewById2 = viewCreateView.findViewById(R.id.user_comment_setting);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById2, "findViewById<TintButton>….id.user_comment_setting)");
        ((TintButton) viewFindViewById2).setTintColor(color);
        View viewFindViewById3 = viewCreateView.findViewById(R.id.user_comment_setting);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById3, "findViewById<View>(R.id.user_comment_setting)");
        viewFindViewById3.setVisibility(this.isMe ? 0 : 8);
        viewCreateView.findViewById(R.id.user_comment_setting).setOnClickListener(this.subviewClickListener);
        viewCreateView.findViewById(R.id.cell_layout).setBackgroundColor(ContextCompat.getColor(viewCreateView.getContext(), getBackgroundColorRes(this.darkTheme)));
        viewCreateView.setOnClickListener(this.subviewClickListener);
        Intrinsics.checkExpressionValueIsNotNull(viewCreateView, "createView<View>(R.layou…wClickListener)\n        }");
        return viewCreateView;
    }

    @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
        Integer numValueOf = view2 != null ? Integer.valueOf(view2.getId()) : null;
        if (numValueOf != null && numValueOf.intValue() == R.id.comment_slides) {
            ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
            actionSheetDialog.addItem(R.string.comment_sort_top, this.curSort == 2 ? 4 : 8);
            actionSheetDialog.addItem(R.string.comment_sort_newest, this.curSort == 0 ? 4 : 8);
            actionSheetDialog.addItem(R.string.comment_sort_oldest, this.curSort != 1 ? 8 : 4);
            actionSheetDialog.addItem(R.string.refresh, 0);
            actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.user.profile.adapter.CommentHeaderAdapter.onItemClick.1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    if (i2 == 0) {
                        CommentHeaderAdapter.this.setCommentSort(2);
                        return;
                    }
                    if (i2 == 1) {
                        CommentHeaderAdapter.this.setCommentSort(0);
                    } else if (i2 == 2) {
                        CommentHeaderAdapter.this.setCommentSort(1);
                    } else {
                        CommentHeaderAdapter.this.onCommentRefresh();
                    }
                }
            });
            actionSheetDialog.show();
            return true;
        }
        if (numValueOf != null && numValueOf.intValue() == R.id.user_comment_setting) {
            Intent intent = FragmentWrapperActivity.intent(UserProfilePrivilegeFragment.class);
            NVContext context = this.context;
            Intrinsics.checkExpressionValueIsNotNull(context, "context");
            intent.putExtra("title", context.getContext().getString(R.string.comment_permission));
            NVContext context2 = this.context;
            Intrinsics.checkExpressionValueIsNotNull(context2, "context");
            Context context3 = context2.getContext();
            Intrinsics.checkExpressionValueIsNotNull(context3, "context.context");
            intent.putExtra("subTitle", context3.getResources().getString(R.string.allow_commenting_on_my_profile));
            intent.putExtra("privilegeKey", User.COMMENT);
            intent.putExtra("isDarkTheme", userProfilePrivilegeFragmentIsDarkTheme());
            startActivity(intent);
        }
        return super.onItemClick(listAdapter, i, obj, view, view2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setCommentSort(int i) {
        this.curSort = i;
        onCommentSort(i);
    }

    public final void setCommentCount(int i) {
        this.commentCount = i;
        notifyDataSetChanged();
    }
}
