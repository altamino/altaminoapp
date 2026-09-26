package com.narvii.wallet.membership;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.amino.master.R;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class PrivilegeViewHolder extends RecyclerView.ViewHolder {

    @NotNull
    private final ImageView icon;

    @NotNull
    private final TextView text;

    @NotNull
    private final TextView title;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PrivilegeViewHolder(@NotNull View itemView) {
        super(itemView);
        t.j(itemView, "itemView");
        View viewFindViewById = itemView.findViewById(R.id.icon);
        t.i(viewFindViewById, "findViewById(...)");
        this.icon = (ImageView) viewFindViewById;
        View viewFindViewById2 = itemView.findViewById(R.id.title);
        t.i(viewFindViewById2, "findViewById(...)");
        this.title = (TextView) viewFindViewById2;
        View viewFindViewById3 = itemView.findViewById(R.id.text);
        t.i(viewFindViewById3, "findViewById(...)");
        this.text = (TextView) viewFindViewById3;
    }

    public final void bind(@Nullable Privilege privilege) {
        if (privilege == null) {
            return;
        }
        this.icon.setImageResource(privilege.getIcon());
        this.title.setText(privilege.getTitle());
        this.text.setText(privilege.getContent());
    }
}
