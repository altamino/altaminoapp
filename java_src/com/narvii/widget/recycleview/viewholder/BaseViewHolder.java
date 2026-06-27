package com.narvii.widget.recycleview.viewholder;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: BaseViewHolder.kt */
/* loaded from: classes3.dex */
public class BaseViewHolder extends RecyclerView.ViewHolder {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseViewHolder(View itemView) {
        super(itemView);
        Intrinsics.checkParameterIsNotNull(itemView, "itemView");
    }

    protected final <T extends View> Lazy<T> bind(final int i) {
        return LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, new Function0<T>() { // from class: com.narvii.widget.recycleview.viewholder.BaseViewHolder.bind.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Incorrect return type in method signature: ()TT; */
            @Override // kotlin.jvm.functions.Function0
            public final View invoke() {
                View view = BaseViewHolder.this.itemView;
                View viewFindViewById = view != null ? view.findViewById(i) : null;
                if (viewFindViewById instanceof View) {
                    return viewFindViewById;
                }
                return null;
            }
        });
    }
}
