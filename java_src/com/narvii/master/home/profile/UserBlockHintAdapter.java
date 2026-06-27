package com.narvii.master.home.profile;

import android.content.res.Resources;
import android.graphics.Color;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.list.NVAdapter;
import com.narvii.userblock.UserBlockService;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: UserBlockHintAdapter.kt */
/* loaded from: classes3.dex */
public final class UserBlockHintAdapter extends NVAdapter {
    private final boolean isGlobalStyle;
    private final String uid;
    private final UserBlockService userBlockService;

    @Override // android.widget.Adapter
    public Void getItem(int i) {
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return 0L;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UserBlockHintAdapter(NVContext ctx, String uid, boolean z) {
        super(ctx);
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        Intrinsics.checkParameterIsNotNull(uid, "uid");
        this.uid = uid;
        this.isGlobalStyle = z;
        Object service = ctx.getService("block");
        Intrinsics.checkExpressionValueIsNotNull(service, "ctx.getService(\"block\")");
        this.userBlockService = (UserBlockService) service;
    }

    public /* synthetic */ UserBlockHintAdapter(NVContext nVContext, String str, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(nVContext, str, (i & 4) != 0 ? true : z);
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) throws Resources.NotFoundException {
        String string;
        View viewCreateView = createView(R.layout.user_block_hint_item, viewGroup, view);
        TextView hint = (TextView) viewCreateView.findViewById(R.id.unblock_hint_tv);
        hint.setTextColor(Color.parseColor(this.isGlobalStyle ? "#80FFFFFF" : "#B3C6C6CF"));
        Intrinsics.checkExpressionValueIsNotNull(hint, "hint");
        if (this.userBlockService.isInBlockedList(this.uid)) {
            string = viewCreateView.getResources().getString(R.string.you_are_blocking_this_user);
        } else {
            string = this.userBlockService.isBlocked(this.uid) ? viewCreateView.getResources().getString(R.string.you_are_blocked_by_this_user) : "";
        }
        hint.setText(string);
        viewCreateView.setOnClickListener(this.subviewClickListener);
        Intrinsics.checkExpressionValueIsNotNull(viewCreateView, "createView<View>(R.layou…wClickListener)\n        }");
        return viewCreateView;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.userBlockService.isBlocked(this.uid) ? 1 : 0;
    }
}
