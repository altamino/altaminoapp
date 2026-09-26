package com.narvii.chat.detail;

import android.content.Intent;
import android.view.View;
import androidx.fragment.app.Fragment;
import com.narvii.model.ChatThread;
import com.safedk.android.utils.Logger;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
final class ThreadAnnouncementFragment$clearListener$2 extends v implements e8.a<View.OnClickListener> {
    final /* synthetic */ ThreadAnnouncementFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ThreadAnnouncementFragment$clearListener$2(ThreadAnnouncementFragment threadAnnouncementFragment) {
        super(0);
        this.this$0 = threadAnnouncementFragment;
    }

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$0(ThreadAnnouncementFragment this$0, View view) {
        t.j(this$0, "this$0");
        EditThreadAnnouncementFragment.Companion companion = EditThreadAnnouncementFragment.Companion;
        ChatThread chatThread = this$0.chatThread;
        if (chatThread == null) {
            t.B("chatThread");
            chatThread = null;
        }
        safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this$0, companion.intent(chatThread));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final View.OnClickListener invoke() {
        final ThreadAnnouncementFragment threadAnnouncementFragment = this.this$0;
        return new View.OnClickListener() { // from class: com.narvii.chat.detail.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ThreadAnnouncementFragment$clearListener$2.invoke$lambda$0(threadAnnouncementFragment, view);
            }
        };
    }
}
