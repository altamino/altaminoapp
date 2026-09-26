package com.narvii.account;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentTransaction;
import com.narvii.account.verifyaccount.ConfirmPasswordFragment;
import com.narvii.amino.databinding.DialogDeleteAccountBinding;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVDialogFragment;
import com.narvii.util.FragmentExtensionsKt;
import com.narvii.util.Log;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class ConfirmDeleteAccountFragment extends NVDialogFragment {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {kotlin.jvm.internal.q0.g(new kotlin.jvm.internal.g0(ConfirmDeleteAccountFragment.class, "binding", "getBinding()Lcom/narvii/amino/databinding/DialogDeleteAccountBinding;", 0))};

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private final kotlin.properties.d binding$delegate = FragmentExtensionsKt.viewBinding(this, ConfirmDeleteAccountFragment$binding$2.INSTANCE);

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }

        public final void show(@Nullable NVContext nVContext) {
            Context context = nVContext != null ? nVContext.getContext() : null;
            if (!(context instanceof NVActivity)) {
                if (context == null) {
                    return;
                }
                Log.e("cannot find nvActivity by nvContext");
            } else {
                NVActivity nVActivity = (NVActivity) context;
                if (nVActivity.getSupportFragmentManager().m0("_delete_account") != null) {
                    return;
                }
                new ConfirmDeleteAccountFragment().show((Activity) context, nVActivity.getSupportFragmentManager(), "_delete_account");
            }
        }
    }

    public static final void show(@Nullable NVContext nVContext) {
        Companion.show(nVContext);
    }

    private final DialogDeleteAccountBinding getBinding() {
        return (DialogDeleteAccountBinding) this.binding$delegate.getValue(this, $$delegatedProperties[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$4(ConfirmDeleteAccountFragment this$0, View view) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        this$0.dismiss();
        FragmentTransaction fragmentTransactionQ = this$0.getParentFragmentManager().q();
        ConfirmPasswordFragment confirmPasswordFragment = new ConfirmPasswordFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("verify_type", 8);
        confirmPasswordFragment.setArguments(bundle);
        Integer containerId = this$0.getContainerId();
        if (containerId != null) {
            kotlin.jvm.internal.t.g(containerId);
            fragmentTransactionQ.u(containerId.intValue(), confirmPasswordFragment);
            fragmentTransactionQ.k();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$5(ConfirmDeleteAccountFragment this$0, View view) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        this$0.dismiss();
    }

    @Override // androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        kotlin.jvm.internal.t.j(inflater, "inflater");
        ConstraintLayout root = getBinding().getRoot();
        kotlin.jvm.internal.t.i(root, "getRoot(...)");
        return root;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        kotlin.jvm.internal.t.j(view, "view");
        super.onViewCreated(view, bundle);
        getBinding().deleteAccountBtn.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.account.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ConfirmDeleteAccountFragment.onViewCreated$lambda$4(this.f1707a, view2);
            }
        });
        getBinding().closeBtn.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.account.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ConfirmDeleteAccountFragment.onViewCreated$lambda$5(this.f1709a, view2);
            }
        });
    }
}
