package com.narvii.permisson;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import com.safedk.android.utils.Logger;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
public final class RationaleDialogConfigExt {

    /* JADX INFO: renamed from: com.narvii.permisson.RationaleDialogConfigExt$emptyAction$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements l<View, l0> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        AnonymousClass1() {
            super(1);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(@NotNull View it) {
            t.j(it, "it");
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(View view) {
            invoke2(view);
            return l0.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.narvii.permisson.RationaleDialogConfigExt$openSettings$1, reason: invalid class name and case insensitive filesystem */
    static final class C05511 extends v implements l<View, l0> {
        final /* synthetic */ Context $ctx;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05511(Context context) {
            super(1);
            this.$ctx = context;
        }

        public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(View view) {
            invoke2(view);
            return l0.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(@NotNull View it) {
            t.j(it, "it");
            Intent intent = new Intent();
            intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.fromParts("package", this.$ctx.getPackageName(), null));
            safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(this.$ctx, intent);
        }
    }

    @NotNull
    public static final l<View, l0> emptyAction() {
        return AnonymousClass1.INSTANCE;
    }

    @NotNull
    public static final RationaleDialogConfig defaultConfig(@NotNull String permission, @NotNull l<? super View, l0> onPositive, @NotNull l<? super View, l0> onNegative) {
        t.j(permission, "permission");
        t.j(onPositive, "onPositive");
        t.j(onNegative, "onNegative");
        return new RationaleDialogConfig(permission, null, null, onPositive, onNegative);
    }

    public static /* synthetic */ RationaleDialogConfig defaultConfig$default(String str, l lVar, l lVar2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            lVar = emptyAction();
        }
        if ((i10 & 4) != 0) {
            lVar2 = emptyAction();
        }
        return defaultConfig(str, lVar, lVar2);
    }

    @NotNull
    public static final l<View, l0> openSettings(@NotNull Context ctx) {
        t.j(ctx, "ctx");
        return new C05511(ctx);
    }
}
