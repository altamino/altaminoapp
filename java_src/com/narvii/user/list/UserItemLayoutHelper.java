package com.narvii.user.list;

import android.view.View;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: UserItemLayoutHelper.kt */
/* loaded from: classes3.dex */
public final class UserItemLayoutHelper {
    private final AccountService accountService;
    private final NVContext ctx;

    public final void configLayout(View view, User user) {
        configLayout$default(this, view, user, false, 4, null);
    }

    public UserItemLayoutHelper(NVContext ctx) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        this.ctx = ctx;
        Object service = this.ctx.getService("account");
        Intrinsics.checkExpressionValueIsNotNull(service, "ctx.getService<AccountService>(\"account\")");
        this.accountService = (AccountService) service;
    }

    public final NVContext getCtx() {
        return this.ctx;
    }

    public final AccountService getAccountService() {
        return this.accountService;
    }

    public static /* synthetic */ void configLayout$default(UserItemLayoutHelper userItemLayoutHelper, View view, User user, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = true;
        }
        userItemLayoutHelper.configLayout(view, user, z);
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x007d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void configLayout(android.view.View r11, com.narvii.model.User r12, boolean r13) {
        /*
            r10 = this;
            if (r11 == 0) goto Lc3
            if (r12 != 0) goto L6
            goto Lc3
        L6:
            r11.getContext()
            r0 = 2131299344(0x7f090c10, float:1.8216687E38)
            android.view.View r0 = r11.findViewById(r0)
            com.narvii.widget.UserAvatarLayout r0 = (com.narvii.widget.UserAvatarLayout) r0
            if (r0 == 0) goto L18
            r0.setUser(r12)
            goto L2f
        L18:
            r0 = 2131296484(0x7f0900e4, float:1.8210886E38)
            android.view.View r0 = r11.findViewById(r0)
            boolean r1 = r0 instanceof com.narvii.widget.ThumbImageView
            if (r1 != 0) goto L24
            r0 = 0
        L24:
            com.narvii.widget.ThumbImageView r0 = (com.narvii.widget.ThumbImageView) r0
            if (r0 == 0) goto L2f
            java.lang.String r1 = r12.icon()
            r0.setImageUrl(r1)
        L2f:
            r0 = 2131298148(0x7f090764, float:1.821426E38)
            android.view.View r0 = r11.findViewById(r0)
            boolean r1 = r0 instanceof com.narvii.widget.NicknameView
            if (r1 == 0) goto L40
            com.narvii.widget.NicknameView r0 = (com.narvii.widget.NicknameView) r0
            r0.setUser(r12)
            goto L4d
        L40:
            boolean r1 = r0 instanceof android.widget.TextView
            if (r1 == 0) goto L4d
            android.widget.TextView r0 = (android.widget.TextView) r0
            java.lang.String r1 = r12.nickname()
            r0.setText(r1)
        L4d:
            r0 = 2131296367(0x7f09006f, float:1.8210649E38)
            android.view.View r0 = r11.findViewById(r0)
            r1 = 8
            if (r0 == 0) goto L5b
            r0.setVisibility(r1)
        L5b:
            r0 = 2131296416(0x7f0900a0, float:1.8210748E38)
            android.view.View r0 = r11.findViewById(r0)
            android.widget.TextView r0 = (android.widget.TextView) r0
            r2 = 1
            r3 = 0
            if (r0 == 0) goto L82
            if (r13 == 0) goto L7d
            java.lang.String r13 = r12.aminoId
            if (r13 == 0) goto L77
            int r13 = r13.length()
            if (r13 != 0) goto L75
            goto L77
        L75:
            r13 = 0
            goto L78
        L77:
            r13 = 1
        L78:
            if (r13 == 0) goto L7b
            goto L7d
        L7b:
            r13 = 0
            goto L7f
        L7d:
            r13 = 8
        L7f:
            r0.setVisibility(r13)
        L82:
            if (r0 == 0) goto L9a
            java.lang.StringBuilder r13 = new java.lang.StringBuilder
            r13.<init>()
            java.lang.String r4 = "@"
            r13.append(r4)
            java.lang.String r4 = r12.aminoId
            r13.append(r4)
            java.lang.String r13 = r13.toString()
            r0.setText(r13)
        L9a:
            r13 = 2131297297(0x7f090411, float:1.8212535E38)
            android.view.View r13 = r11.findViewById(r13)
            android.widget.TextView r13 = (android.widget.TextView) r13
            if (r13 == 0) goto La8
            r13.setVisibility(r1)
        La8:
            r13 = 2131298234(0x7f0907ba, float:1.8214435E38)
            android.view.View r13 = r11.findViewById(r13)
            if (r13 == 0) goto Lba
            int r0 = r12.onlineStatus
            if (r0 != r2) goto Lb6
            goto Lb7
        Lb6:
            r3 = 4
        Lb7:
            r13.setVisibility(r3)
        Lba:
            r7 = 0
            r8 = 4
            r9 = 0
            r4 = r10
            r5 = r11
            r6 = r12
            markDisabled$default(r4, r5, r6, r7, r8, r9)
        Lc3:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.user.list.UserItemLayoutHelper.configLayout(android.view.View, com.narvii.model.User, boolean):void");
    }

    public static /* synthetic */ void markDisabled$default(UserItemLayoutHelper userItemLayoutHelper, View view, NVObject nVObject, int i, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            i = 0;
        }
        userItemLayoutHelper.markDisabled(view, nVObject, i);
    }

    protected final void markDisabled(View cell, NVObject nVObject, int i) {
        Intrinsics.checkParameterIsNotNull(cell, "cell");
        if (nVObject != null && nVObject.status() == 9) {
            AccountService accountService = this.accountService;
            User userProfile = accountService != null ? accountService.getUserProfile() : null;
            if (userProfile != null && userProfile.isCurator()) {
                i = R.drawable.disabled_cell_bg;
            }
        }
        cell.setBackgroundResource(i);
    }
}
