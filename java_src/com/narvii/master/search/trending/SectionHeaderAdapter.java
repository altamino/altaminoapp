package com.narvii.master.search.trending;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.list.AdriftAdapter;
import com.narvii.list.NVAdapter;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SectionHeaderAdapter.kt */
/* loaded from: classes3.dex */
public class SectionHeaderAdapter extends AdriftAdapter {
    private NVAdapter host;
    private final int titleStrId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SectionHeaderAdapter(NVContext ctx, int i) {
        super(ctx);
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        this.titleStrId = i;
    }

    public final NVAdapter getHost$Amino_bundle() {
        return this.host;
    }

    public final void setHost$Amino_bundle(NVAdapter nVAdapter) {
        this.host = nVAdapter;
    }

    public final void setAttachHost(NVAdapter nVAdapter) {
        this.host = nVAdapter;
    }

    @Override // com.narvii.list.AdriftAdapter, android.widget.Adapter
    public int getCount() {
        NVAdapter nVAdapter = this.host;
        if (nVAdapter != null) {
            return (nVAdapter != null ? nVAdapter.getCount() : 0) > 0 ? 1 : 0;
        }
        return super.getCount();
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View viewCreateView = createView(R.layout.item_section_header, viewGroup, view);
        Intrinsics.checkExpressionValueIsNotNull(viewCreateView, "createView(R.layout.item…der, parent, convertView)");
        TextView title = (TextView) viewCreateView.findViewById(R.id.title);
        Intrinsics.checkExpressionValueIsNotNull(title, "title");
        title.setText(getContext().getString(this.titleStrId));
        return viewCreateView;
    }
}
