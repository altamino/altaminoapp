package com.narvii.master.home.profile;

import android.graphics.Color;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.list.NVAdapter;
import com.narvii.userblock.UserBlockService;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class UserBlockHintAdapter extends NVAdapter {
    private final boolean isGlobalStyle;

    @NotNull
    private final String uid;

    @NotNull
    private final UserBlockService userBlockService;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UserBlockHintAdapter(@NotNull NVContext ctx, @NotNull String uid, boolean z6) {
        super(ctx);
        kotlin.jvm.internal.t.j(ctx, "ctx");
        kotlin.jvm.internal.t.j(uid, "uid");
        this.uid = uid;
        this.isGlobalStyle = z6;
        Object service = ctx.getService("block");
        kotlin.jvm.internal.t.i(service, "getService(...)");
        this.userBlockService = (UserBlockService) service;
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

    @Override // android.widget.Adapter
    public int getCount() {
        return this.userBlockService.isBlocked(this.uid) ? 1 : 0;
    }

    public /* synthetic */ UserBlockHintAdapter(NVContext nVContext, String str, boolean z6, int i10, kotlin.jvm.internal.k kVar) {
        this(nVContext, str, (i10 & 4) != 0 ? true : z6);
    }

    @Override // android.widget.Adapter
    @NotNull
    public View getView(int i10, @Nullable View view, @Nullable ViewGroup viewGroup) {
        String str;
        String string;
        View viewCreateView = createView(R.layout.user_block_hint_item, viewGroup, view);
        TextView textView = (TextView) viewCreateView.findViewById(R.id.unblock_hint_tv);
        if (this.isGlobalStyle) {
            str = "#80FFFFFF";
        } else {
            str = "#B3C6C6CF";
        }
        textView.setTextColor(Color.parseColor(str));
        if (this.userBlockService.isInBlockedList(this.uid)) {
            string = viewCreateView.getResources().getString(R.string.you_are_blocking_this_user);
        } else if (this.userBlockService.isBlocked(this.uid)) {
            string = viewCreateView.getResources().getString(R.string.you_are_blocked_by_this_user);
        } else {
            string = "";
        }
        textView.setText(string);
        viewCreateView.setOnClickListener(this.subviewClickListener);
        kotlin.jvm.internal.t.i(viewCreateView, "apply(...)");
        return viewCreateView;
    }
}
