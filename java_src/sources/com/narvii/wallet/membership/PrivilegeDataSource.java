package com.narvii.wallet.membership;

import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.paging.source.SinglePageDataSource;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class PrivilegeDataSource extends SinglePageDataSource<Privilege> {

    @NotNull
    private final List<Privilege> privilegeList;

    @Override // com.narvii.paging.source.SinglePageDataSource
    @NotNull
    public List<Privilege> pageData() {
        return this.privilegeList;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PrivilegeDataSource(@NotNull NVContext ctx) {
        super(ctx);
        t.j(ctx, "ctx");
        ArrayList arrayList = new ArrayList();
        this.privilegeList = arrayList;
        arrayList.add(new Privilege(R.drawable.membership_privileges_ic_3, R.string.membership_privileges_title_3, R.string.membership_privileges_text_3));
        arrayList.add(new Privilege(R.drawable.membership_privileges_ic_1, R.string.membership_privileges_title_1, R.string.membership_privileges_text_1));
        arrayList.add(new Privilege(R.drawable.membership_privileges_ic_avatar_frame, R.string.membership_privileges_title_avatar_frame, R.string.membership_privileges_text_avatar_frame));
        arrayList.add(new Privilege(R.drawable.membership_privileges_ic_2, R.string.membership_privileges_title_2, R.string.membership_privileges_text_2));
        arrayList.add(new Privilege(R.drawable.membership_privileges_ic_4, R.string.membership_privileges_title_4, R.string.membership_privileges_text_4));
        arrayList.add(new Privilege(R.drawable.membership_privileges_ic_5, R.string.membership_privileges_title_5, R.string.membership_privileges_text_5));
        arrayList.add(new Privilege(R.drawable.membership_privileges_ic_streak_repair, R.string.membership_privileges_title_streak_repair, R.string.membership_privileges_text_streak_repair));
        arrayList.add(new Privilege(R.drawable.membership_privileges_ic_new_feature, R.string.membership_privileges_title_new_feature, R.string.membership_privileges_text_new_feature));
    }
}
