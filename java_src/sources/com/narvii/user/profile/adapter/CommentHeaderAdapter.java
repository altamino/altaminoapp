package com.narvii.user.profile.adapter;

import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.list.NVAdapter;
import com.narvii.model.User;
import com.narvii.prefs.UserProfilePrivilegeFragment;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.widget.TintButton;
import com.safedk.android.utils.Logger;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public abstract class CommentHeaderAdapter extends NVAdapter {
    private int commentCount;
    private int curSort;
    private final boolean isMe;

    public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    protected int getBackgroundColorRes(boolean z6) {
        return z6 ? R.color.header_bg_dark : R.color.header_color_light;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return 1;
    }

    @Override // android.widget.Adapter
    @Nullable
    public Void getItem(int i10) {
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i10) {
        return 0L;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i10) {
        return false;
    }

    public final boolean isMe() {
        return this.isMe;
    }

    public abstract void onCommentRefresh();

    public abstract void onCommentSort(int i10);

    protected boolean showCommentTitle() {
        return true;
    }

    protected boolean userProfilePrivilegeFragmentIsDarkTheme() {
        return false;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CommentHeaderAdapter(@NotNull NVContext ctx, boolean z6) {
        super(ctx);
        t.j(ctx, "ctx");
        this.isMe = z6;
    }

    private final void setCommentSort(int i10) {
        this.curSort = i10;
        onCommentSort(i10);
    }

    @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(@Nullable ListAdapter listAdapter, int i10, @Nullable Object obj, @Nullable View view, @Nullable View view2) {
        Integer numValueOf = view2 != null ? Integer.valueOf(view2.getId()) : null;
        if (numValueOf != null && numValueOf.intValue() == R.id.comment_slides) {
            ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
            actionSheetDialog.addItem(R.string.comment_sort_top, this.curSort == 2 ? 4 : 8);
            actionSheetDialog.addItem(R.string.comment_sort_newest, this.curSort == 0 ? 4 : 8);
            actionSheetDialog.addItem(R.string.comment_sort_oldest, this.curSort == 1 ? 4 : 8);
            actionSheetDialog.addItem(R.string.refresh, 0);
            actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.user.profile.adapter.a
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i11) {
                    CommentHeaderAdapter.onItemClick$lambda$1(this.f2811a, dialogInterface, i11);
                }
            });
            actionSheetDialog.show();
            return true;
        }
        if (numValueOf != null && numValueOf.intValue() == R.id.user_comment_setting) {
            Intent intent = FragmentWrapperActivity.intent(UserProfilePrivilegeFragment.class);
            intent.putExtra("title", this.context.getContext().getString(R.string.comment_permission));
            intent.putExtra("subTitle", this.context.getContext().getResources().getString(R.string.allow_commenting_on_my_profile));
            intent.putExtra("privilegeKey", User.COMMENT);
            intent.putExtra("isDarkTheme", userProfilePrivilegeFragmentIsDarkTheme());
            safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
        }
        return super.onItemClick(listAdapter, i10, obj, view, view2);
    }

    public final void setCommentCount(int i10) {
        this.commentCount = i10;
        notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onItemClick$lambda$1(CommentHeaderAdapter this$0, DialogInterface dialogInterface, int i10) {
        t.j(this$0, "this$0");
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    this$0.onCommentRefresh();
                    return;
                } else {
                    this$0.setCommentSort(1);
                    return;
                }
            }
            this$0.setCommentSort(0);
            return;
        }
        this$0.setCommentSort(2);
    }

    @Override // android.widget.Adapter
    @NotNull
    public View getView(int i10, @Nullable View view, @Nullable ViewGroup viewGroup) {
        int color;
        String str;
        View viewCreateView = createView(R.layout.detail_comment_header_item, viewGroup, view);
        int i11 = 0;
        viewCreateView.setPadding(0, 0, 0, 0);
        if (!this.darkTheme) {
            color = Color.parseColor("#FF888888");
        } else {
            color = -1;
        }
        TextView textView = (TextView) viewCreateView.findViewById(R.id.text);
        TextView textView2 = (TextView) viewCreateView.findViewById(R.id.comment_count);
        if (showCommentTitle()) {
            textView.setVisibility(0);
            textView.setText(viewCreateView.getContext().getString(R.string.comments));
            textView.setTextColor(color);
            textView.setOnClickListener(this.subviewClickListener);
            textView2.setVisibility(0);
            textView2.setTextColor(color);
            textView2.setOnClickListener(this.subviewClickListener);
            int i12 = this.commentCount;
            if (i12 == 0) {
                str = "";
            } else {
                str = "(" + i12 + ")";
            }
            textView2.setText(str);
        } else {
            textView.setVisibility(4);
            textView2.setVisibility(4);
        }
        viewCreateView.findViewById(R.id.comment_slides).setOnClickListener(this.subviewClickListener);
        ((TintButton) viewCreateView.findViewById(R.id.comment_slides)).setTintColor(color);
        ((TintButton) viewCreateView.findViewById(R.id.user_comment_setting)).setTintColor(color);
        View viewFindViewById = viewCreateView.findViewById(R.id.user_comment_setting);
        if (!this.isMe) {
            i11 = 8;
        }
        viewFindViewById.setVisibility(i11);
        viewCreateView.findViewById(R.id.user_comment_setting).setOnClickListener(this.subviewClickListener);
        viewCreateView.findViewById(R.id.cell_layout).setBackgroundColor(ContextCompat.getColor(viewCreateView.getContext(), getBackgroundColorRes(this.darkTheme)));
        viewCreateView.setOnClickListener(this.subviewClickListener);
        t.i(viewCreateView, "apply(...)");
        return viewCreateView;
    }
}
