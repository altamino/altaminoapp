package com.narvii.wallet.membership;

import android.content.Intent;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.wallet.MembershipMainRecyclerFragment;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public final class MembershipActivity extends FragmentWrapperActivity {

    @NotNull
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final Intent createMembershipIntent() {
            Intent intent = FragmentWrapperActivity.intent(MembershipMainRecyclerFragment.class);
            t.i(intent, "intent(...)");
            return intent;
        }
    }

    @NotNull
    public static final Intent createMembershipIntent() {
        return Companion.createMembershipIntent();
    }
}
