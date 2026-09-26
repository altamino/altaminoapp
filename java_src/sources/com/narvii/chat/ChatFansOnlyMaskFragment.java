package com.narvii.chat;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.IdRes;
import androidx.fragment.app.Fragment;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.NVFragment;
import com.narvii.influencer.FanClub;
import com.narvii.influencer.FanClubSubscriptionDialog;
import com.narvii.model.ChatThread;
import com.narvii.model.User;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.widget.NicknameView;
import com.narvii.widget.UserAvatarLayout;
import com.safedk.android.utils.Logger;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class ChatFansOnlyMaskFragment extends NVFragment implements ThreadInfoHost {

    @NotNull
    private final w7.m avatarLayout$delegate = bind(this, R.id.user_avatar_layout);

    @NotNull
    private final w7.m nicknameView$delegate = bind(this, R.id.nickname);

    @NotNull
    private final w7.m btnBecomeFans$delegate = bind(this, R.id.become_fans);

    @NotNull
    private final w7.m hint$delegate = bind(this, R.id.hint);

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: com.narvii.chat.ChatFansOnlyMaskFragment$bind$1, reason: invalid class name */
    static final class AnonymousClass1<T> extends v implements e8.a<T> {
        final /* synthetic */ int $res;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(int i10) {
            super(0);
            this.$res = i10;
        }

        /* JADX WARN: Incorrect return type in method signature: ()TT; */
        @Override // e8.a
        @NotNull
        public final View invoke() {
            View view = ChatFansOnlyMaskFragment.this.getView();
            View viewFindViewById = view != null ? view.findViewById(this.$res) : null;
            kotlin.jvm.internal.t.h(viewFindViewById, "null cannot be cast to non-null type T of com.narvii.chat.ChatFansOnlyMaskFragment.bind");
            return viewFindViewById;
        }
    }

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public boolean isValidPage() {
        return false;
    }

    private final <T extends View> w7.m<T> bind(ChatFansOnlyMaskFragment chatFansOnlyMaskFragment, @IdRes int i10) {
        return w7.o.b(w7.q.NONE, chatFansOnlyMaskFragment.new AnonymousClass1(i10));
    }

    private final UserAvatarLayout getAvatarLayout() {
        return (UserAvatarLayout) this.avatarLayout$delegate.getValue();
    }

    private final TextView getBtnBecomeFans() {
        return (TextView) this.btnBecomeFans$delegate.getValue();
    }

    private final TextView getHint() {
        return (TextView) this.hint$delegate.getValue();
    }

    private final NicknameView getNicknameView() {
        return (NicknameView) this.nicknameView$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$1(ChatFansOnlyMaskFragment this$0, View view) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        ChatThread thread = this$0.getThread();
        User author = thread != null ? thread.getAuthor() : null;
        if (author != null) {
            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this$0, UserProfileFragment.intent(this$0, author));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$2(ChatFansOnlyMaskFragment this$0, View view) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        if (this$0.getThread() != null) {
            ChatThread thread = this$0.getThread();
            kotlin.jvm.internal.t.g(thread);
            if (thread.author != null) {
                ChatThread thread2 = this$0.getThread();
                kotlin.jvm.internal.t.g(thread2);
                if (!thread2.author.isInfluencer()) {
                    NVToast.makeText(this$0.getContext(), R.string.this_fan_club_closed_hint, 1).show();
                    return;
                }
            }
        }
        this$0.showFansSubscriptionDialog();
    }

    @Override // com.narvii.chat.ThreadInfoHost
    @NotNull
    public String getThreadId() {
        String stringParam = getStringParam("id");
        kotlin.jvm.internal.t.i(stringParam, "getStringParam(...)");
        return stringParam;
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        kotlin.jvm.internal.t.j(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_fans_only_mask, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        kotlin.jvm.internal.t.j(view, "view");
        super.onViewCreated(view, bundle);
        view.setOnClickListener(null);
        updateViews();
        getAvatarLayout().setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ChatFansOnlyMaskFragment.onViewCreated$lambda$1(this.f1949a, view2);
            }
        });
        getBtnBecomeFans().setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ChatFansOnlyMaskFragment.onViewCreated$lambda$2(this.f1953a, view2);
            }
        });
    }

    private final boolean isFansBefore() {
        ChatThread thread;
        FanClub fanClub;
        if (getThread() == null || (thread = getThread()) == null || (fanClub = ((AccountService) getService("account")).getFanClub(thread.uid)) == null) {
            return false;
        }
        return fanClub.hasSubscriptionBefore();
    }

    @Override // com.narvii.chat.ThreadInfoHost
    @Nullable
    public ChatThread getThread() {
        if (getParentFragment() instanceof ChatFragment) {
            Fragment parentFragment = getParentFragment();
            kotlin.jvm.internal.t.h(parentFragment, "null cannot be cast to non-null type com.narvii.chat.ChatFragment");
            return ((ChatFragment) parentFragment).thread;
        }
        return (ChatThread) JacksonUtils.readAs(getStringParam("thread"), ChatThread.class);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // com.narvii.chat.ThreadInfoHost
    public void onThreadChanged(@Nullable ChatThread chatThread) {
        updateViews();
    }

    public final void showFansSubscriptionDialog() {
        String strUid;
        ChatThread thread = getThread();
        if (thread == null || (strUid = thread.uid()) == null) {
            strUid = null;
        }
        FanClubSubscriptionDialog.showSubscriptionDialog(this, strUid, "Chat Thread");
    }

    public final void updateViews() {
        User author;
        int i10;
        ChatThread thread = getThread();
        String str = null;
        if (thread != null) {
            author = thread.getAuthor();
        } else {
            author = null;
        }
        if (author != null) {
            getAvatarLayout().setUser(author);
            getNicknameView().setUser(author);
        }
        TextView btnBecomeFans = getBtnBecomeFans();
        if (isFansBefore()) {
            i10 = R.string.renew;
        } else {
            i10 = R.string.become_a_fan;
        }
        btnBecomeFans.setText(i10);
        if (author != null) {
            str = author.nickname;
        }
        if (str == null) {
            str = "";
        }
        getHint().setText(getString(R.string.fans_only_hint_chat, str));
    }
}
