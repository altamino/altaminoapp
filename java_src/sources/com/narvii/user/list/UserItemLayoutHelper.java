package com.narvii.user.list;

import android.view.View;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.chat.input.MentionedEditText;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.widget.NicknameView;
import com.narvii.widget.ThumbImageView;
import com.narvii.widget.UserAvatarLayout;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class UserItemLayoutHelper {

    @NotNull
    private final AccountService accountService;

    @NotNull
    private final NVContext ctx;

    public final void configLayout(@Nullable View view, @Nullable User user) {
        configLayout$default(this, view, user, false, 4, null);
    }

    @NotNull
    public final AccountService getAccountService() {
        return this.accountService;
    }

    @NotNull
    public final NVContext getCtx() {
        return this.ctx;
    }

    public UserItemLayoutHelper(@NotNull NVContext ctx) {
        t.j(ctx, "ctx");
        this.ctx = ctx;
        Object service = ctx.getService("account");
        t.i(service, "getService(...)");
        this.accountService = (AccountService) service;
    }

    public static /* synthetic */ void configLayout$default(UserItemLayoutHelper userItemLayoutHelper, View view, User user, boolean z6, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z6 = true;
        }
        userItemLayoutHelper.configLayout(view, user, z6);
    }

    public static /* synthetic */ void markDisabled$default(UserItemLayoutHelper userItemLayoutHelper, View view, NVObject nVObject, int i10, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            i10 = 0;
        }
        userItemLayoutHelper.markDisabled(view, nVObject, i10);
    }

    public final void configLayout(@Nullable View view, @Nullable User user, boolean z6) {
        String str;
        if (view == null || user == null) {
            return;
        }
        view.getContext();
        UserAvatarLayout userAvatarLayout = (UserAvatarLayout) view.findViewById(R.id.user_avatar_layout);
        if (userAvatarLayout != null) {
            userAvatarLayout.setUser(user);
        } else {
            View viewFindViewById = view.findViewById(R.id.avatar);
            ThumbImageView thumbImageView = viewFindViewById instanceof ThumbImageView ? (ThumbImageView) viewFindViewById : null;
            if (thumbImageView != null) {
                thumbImageView.setImageUrl(user.icon());
            }
        }
        View viewFindViewById2 = view.findViewById(R.id.nickname);
        if (viewFindViewById2 instanceof NicknameView) {
            ((NicknameView) viewFindViewById2).setUser(user);
        } else if (viewFindViewById2 instanceof TextView) {
            ((TextView) viewFindViewById2).setText(user.nickname());
        }
        View viewFindViewById3 = view.findViewById(R.id.address);
        if (viewFindViewById3 != null) {
            viewFindViewById3.setVisibility(8);
        }
        TextView textView = (TextView) view.findViewById(R.id.amino_id);
        if (textView != null) {
            textView.setVisibility((!z6 || (str = user.aminoId) == null || str.length() == 0) ? 8 : 0);
        }
        if (textView != null) {
            textView.setText(MentionedEditText.DEFAULT_METION_TAG + user.aminoId);
        }
        TextView textView2 = (TextView) view.findViewById(R.id.extra_info);
        if (textView2 != null) {
            textView2.setVisibility(8);
        }
        View viewFindViewById4 = view.findViewById(R.id.online_status_oval);
        if (viewFindViewById4 != null) {
            viewFindViewById4.setVisibility(user.onlineStatus != 1 ? 4 : 0);
        }
        markDisabled$default(this, view, user, 0, 4, null);
    }

    protected final void markDisabled(@NotNull View cell, @Nullable NVObject nVObject, int i10) {
        t.j(cell, "cell");
        if (nVObject != null && nVObject.status() == 9) {
            AccountService accountService = this.accountService;
            User userProfile = accountService != null ? accountService.getUserProfile() : null;
            if (userProfile != null && userProfile.isCurator()) {
                i10 = R.drawable.disabled_cell_bg;
            }
        }
        cell.setBackgroundResource(i10);
    }
}
