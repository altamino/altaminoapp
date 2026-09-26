package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes2.dex */
public final class ChatDetailActionsBinding implements ViewBinding {

    @NonNull
    public final Button chatJoin;

    @NonNull
    public final Button chatLeave;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final Button seeChatList;

    @NonNull
    public static ChatDetailActionsBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ChatDetailActionsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.chat_detail_actions, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ChatDetailActionsBinding(@NonNull LinearLayout linearLayout, @NonNull Button button, @NonNull Button button2, @NonNull Button button3) {
        this.rootView = linearLayout;
        this.chatJoin = button;
        this.chatLeave = button2;
        this.seeChatList = button3;
    }

    @NonNull
    public static ChatDetailActionsBinding bind(@NonNull View view) {
        int i10 = R.id.chat_join;
        Button button = (Button) ViewBindings.a(view, R.id.chat_join);
        if (button != null) {
            i10 = R.id.chat_leave;
            Button button2 = (Button) ViewBindings.a(view, R.id.chat_leave);
            if (button2 != null) {
                i10 = R.id.see_chat_list;
                Button button3 = (Button) ViewBindings.a(view, R.id.see_chat_list);
                if (button3 != null) {
                    return new ChatDetailActionsBinding((LinearLayout) view, button, button2, button3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
