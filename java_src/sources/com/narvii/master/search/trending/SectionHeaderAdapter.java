package com.narvii.master.search.trending;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.list.AdriftAdapter;
import com.narvii.list.NVAdapter;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public class SectionHeaderAdapter extends AdriftAdapter {

    @Nullable
    private NVAdapter host;
    private final int titleStrId;

    @Nullable
    public final NVAdapter getHost$Amino_bundle() {
        return this.host;
    }

    public final void setAttachHost(@Nullable NVAdapter nVAdapter) {
        this.host = nVAdapter;
    }

    public final void setHost$Amino_bundle(@Nullable NVAdapter nVAdapter) {
        this.host = nVAdapter;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SectionHeaderAdapter(@NotNull NVContext ctx, int i10) {
        super(ctx);
        t.j(ctx, "ctx");
        this.titleStrId = i10;
    }

    @Override // com.narvii.list.AdriftAdapter, android.widget.Adapter
    public int getCount() {
        NVAdapter nVAdapter = this.host;
        if (nVAdapter != null) {
            return (nVAdapter == null || nVAdapter.getCount() <= 0) ? 0 : 1;
        }
        return super.getCount();
    }

    @Override // android.widget.Adapter
    @NotNull
    public View getView(int i10, @Nullable View view, @Nullable ViewGroup viewGroup) {
        View viewCreateView = createView(R.layout.item_section_header, viewGroup, view);
        t.i(viewCreateView, "createView(...)");
        ((TextView) viewCreateView.findViewById(R.id.title)).setText(getContext().getString(this.titleStrId));
        return viewCreateView;
    }
}
