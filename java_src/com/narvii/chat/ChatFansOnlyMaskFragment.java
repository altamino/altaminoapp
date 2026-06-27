package com.narvii.chat;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
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
import java.util.HashMap;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: ChatFansOnlyMaskFragment.kt */
/* loaded from: classes2.dex */
public final class ChatFansOnlyMaskFragment extends NVFragment implements ThreadInfoHost {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ChatFansOnlyMaskFragment.class), "avatarLayout", "getAvatarLayout()Lcom/narvii/widget/UserAvatarLayout;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ChatFansOnlyMaskFragment.class), "nicknameView", "getNicknameView()Lcom/narvii/widget/NicknameView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ChatFansOnlyMaskFragment.class), "btnBecomeFans", "getBtnBecomeFans()Landroid/widget/TextView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ChatFansOnlyMaskFragment.class), "hint", "getHint()Landroid/widget/TextView;"))};
    private HashMap _$_findViewCache;
    private final Lazy avatarLayout$delegate = bind(this, R.id.user_avatar_layout);
    private final Lazy nicknameView$delegate = bind(this, R.id.nickname);
    private final Lazy btnBecomeFans$delegate = bind(this, R.id.become_fans);
    private final Lazy hint$delegate = bind(this, R.id.hint);

    private final UserAvatarLayout getAvatarLayout() {
        Lazy lazy = this.avatarLayout$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (UserAvatarLayout) lazy.getValue();
    }

    private final TextView getBtnBecomeFans() {
        Lazy lazy = this.btnBecomeFans$delegate;
        KProperty kProperty = $$delegatedProperties[2];
        return (TextView) lazy.getValue();
    }

    private final TextView getHint() {
        Lazy lazy = this.hint$delegate;
        KProperty kProperty = $$delegatedProperties[3];
        return (TextView) lazy.getValue();
    }

    private final NicknameView getNicknameView() {
        Lazy lazy = this.nicknameView$delegate;
        KProperty kProperty = $$delegatedProperties[1];
        return (NicknameView) lazy.getValue();
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View view2 = getView();
        if (view2 == null) {
            return null;
        }
        View viewFindViewById = view2.findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public boolean isValidPage() {
        return false;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_fans_only_mask, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        view.setOnClickListener(null);
        updateViews();
        getAvatarLayout().setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.ChatFansOnlyMaskFragment.onViewCreated.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ChatThread thread = ChatFansOnlyMaskFragment.this.getThread();
                User author = thread != null ? thread.getAuthor() : null;
                if (author != null) {
                    ChatFansOnlyMaskFragment.this.startActivity(UserProfileFragment.intent(ChatFansOnlyMaskFragment.this, author));
                }
            }
        });
        getBtnBecomeFans().setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.ChatFansOnlyMaskFragment.onViewCreated.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                if (ChatFansOnlyMaskFragment.this.getThread() != null) {
                    ChatThread thread = ChatFansOnlyMaskFragment.this.getThread();
                    if (thread == null) {
                        Intrinsics.throwNpe();
                        throw null;
                    }
                    if (thread.author != null) {
                        ChatThread thread2 = ChatFansOnlyMaskFragment.this.getThread();
                        if (thread2 == null) {
                            Intrinsics.throwNpe();
                            throw null;
                        }
                        User user = thread2.author;
                        Intrinsics.checkExpressionValueIsNotNull(user, "getThread()!!.author");
                        if (!user.isInfluencer()) {
                            NVToast.makeText(ChatFansOnlyMaskFragment.this.getContext(), R.string.this_fan_club_closed_hint, 1).show();
                            return;
                        }
                    }
                }
                ChatFansOnlyMaskFragment.this.showFansSubscriptionDialog();
            }
        });
    }

    public final void showFansSubscriptionDialog() {
        String strUid;
        ChatThread thread = getThread();
        if (thread == null || (strUid = thread.uid()) == null) {
            strUid = null;
        }
        FanClubSubscriptionDialog.showSubscriptionDialog(this, strUid, "Chat Thread");
    }

    @Override // com.narvii.chat.ThreadInfoHost
    public void onThreadChanged(ChatThread chatThread) {
        updateViews();
    }

    @Override // com.narvii.chat.ThreadInfoHost
    public String getThreadId() {
        String stringParam = getStringParam("id");
        Intrinsics.checkExpressionValueIsNotNull(stringParam, "getStringParam(\"id\")");
        return stringParam;
    }

    @Override // com.narvii.chat.ThreadInfoHost
    public ChatThread getThread() {
        if (getParentFragment() instanceof ChatFragment) {
            Fragment parentFragment = getParentFragment();
            if (parentFragment != null) {
                return ((ChatFragment) parentFragment).thread;
            }
            throw new TypeCastException("null cannot be cast to non-null type com.narvii.chat.ChatFragment");
        }
        return (ChatThread) JacksonUtils.readAs(getStringParam("thread"), ChatThread.class);
    }

    public final void updateViews() {
        String str;
        ChatThread thread = getThread();
        User author = thread != null ? thread.getAuthor() : null;
        if (author != null) {
            getAvatarLayout().setUser(author);
            getNicknameView().setUser(author);
        }
        getBtnBecomeFans().setText(isFansBefore() ? R.string.renew : R.string.become_a_fan);
        if (author == null || (str = author.nickname) == null) {
            str = "";
        }
        getHint().setText(getString(R.string.fans_only_hint_chat, str));
    }

    private final boolean isFansBefore() {
        ChatThread thread;
        FanClub fanClub;
        if (getThread() == null || (thread = getThread()) == null || (fanClub = ((AccountService) getService("account")).getFanClub(thread.uid)) == null) {
            return false;
        }
        return fanClub.hasSubscriptionBefore();
    }

    private final <T extends View> Lazy<T> bind(ChatFansOnlyMaskFragment chatFansOnlyMaskFragment, final int i) {
        return LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, new Function0<T>() { // from class: com.narvii.chat.ChatFansOnlyMaskFragment.bind.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Incorrect return type in method signature: ()TT; */
            @Override // kotlin.jvm.functions.Function0
            public final View invoke() {
                View view = ChatFansOnlyMaskFragment.this.getView();
                View viewFindViewById = view != null ? view.findViewById(i) : null;
                if (viewFindViewById != null) {
                    return viewFindViewById;
                }
                throw new TypeCastException("null cannot be cast to non-null type T");
            }
        });
    }
}
