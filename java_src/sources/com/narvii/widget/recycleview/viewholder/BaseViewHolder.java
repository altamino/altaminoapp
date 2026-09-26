package com.narvii.widget.recycleview.viewholder;

import android.view.View;
import androidx.annotation.IdRes;
import androidx.recyclerview.widget.RecyclerView;
import e8.a;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.m;
import w7.o;
import w7.q;

/* JADX INFO: loaded from: classes6.dex */
public class BaseViewHolder extends RecyclerView.ViewHolder {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: com.narvii.widget.recycleview.viewholder.BaseViewHolder$bind$1, reason: invalid class name */
    static final class AnonymousClass1<T> extends v implements a<T> {
        final /* synthetic */ int $res;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(int i10) {
            super(0);
            this.$res = i10;
        }

        /* JADX WARN: Incorrect return type in method signature: ()TT; */
        @Override // e8.a
        @Nullable
        public final View invoke() {
            View view = BaseViewHolder.this.itemView;
            if (view != null) {
                return view.findViewById(this.$res);
            }
            return null;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseViewHolder(@NotNull View itemView) {
        super(itemView);
        t.j(itemView, "itemView");
    }

    @NotNull
    protected final <T extends View> m<T> bind(@IdRes int i10) {
        return o.b(q.NONE, new AnonymousClass1(i10));
    }
}
