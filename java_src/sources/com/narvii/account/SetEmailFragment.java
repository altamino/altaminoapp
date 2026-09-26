package com.narvii.account;

import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.databinding.FragmentSetEmailBinding;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.FragmentExtensionsKt;
import com.narvii.util.NVToast;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import java.util.List;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public final class SetEmailFragment extends SetIdentityFragment {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {kotlin.jvm.internal.q0.g(new kotlin.jvm.internal.g0(SetEmailFragment.class, "binding", "getBinding()Lcom/narvii/amino/databinding/FragmentSetEmailBinding;", 0))};

    @NotNull
    private final kotlin.properties.d binding$delegate = FragmentExtensionsKt.viewBinding(this, SetEmailFragment$binding$2.INSTANCE);

    private final FragmentSetEmailBinding getBinding() {
        return (FragmentSetEmailBinding) this.binding$delegate.getValue(this, $$delegatedProperties[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$1(SetEmailFragment this$0, View view) {
        String string;
        kotlin.jvm.internal.t.j(this$0, "this$0");
        Editable text = this$0.getBinding().edit.getText();
        if (text == null || (string = text.toString()) == null) {
            return;
        }
        this$0.checkLegality(string);
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        kotlin.jvm.internal.t.j(inflater, "inflater");
        return getBinding().getRoot();
    }

    @Override // com.narvii.account.SetIdentityFragment, com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        kotlin.jvm.internal.t.j(view, "view");
        super.onViewCreated(view, bundle);
        getBinding().edit.addTextChangedListener(new TextWatcher() { // from class: com.narvii.account.SetEmailFragment.onViewCreated.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(@Nullable CharSequence charSequence, int i10, int i11, int i12) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(@Nullable CharSequence charSequence, int i10, int i11, int i12) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(@Nullable Editable editable) {
                SetEmailFragment.this.updateVerifyButton();
            }
        });
        getBinding().verifyEmail.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.account.l0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                SetEmailFragment.onViewCreated$lambda$1(this.f1719a, view2);
            }
        });
    }

    @Override // com.narvii.account.SetIdentityFragment
    public void requestCode(@NotNull final String identity) {
        kotlin.jvm.internal.t.j(identity, "identity");
        showProgress();
        requestSecurityCode(1, identity, 1, new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.account.SetEmailFragment.requestCode.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(@NotNull ApiRequest req, int i10, @Nullable List<? extends NameValuePair> list, @NotNull String message, @Nullable ApiResponse apiResponse, @NotNull Throwable t5) {
                kotlin.jvm.internal.t.j(req, "req");
                kotlin.jvm.internal.t.j(message, "message");
                kotlin.jvm.internal.t.j(t5, "t");
                super.onFail(req, i10, list, message, apiResponse, t5);
                SetEmailFragment.this.dismissProgress();
                NVToast.makeText(SetEmailFragment.this.getContext(), message, 1).show();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(@NotNull ApiRequest req, @Nullable ApiResponse apiResponse) throws Exception {
                kotlin.jvm.internal.t.j(req, "req");
                super.onFinish(req, apiResponse);
                SetEmailFragment.this.getVerifyCodeHelper().updateEmailVerifyTime(identity);
                SetEmailFragment.this.dismissProgress();
                SetEmailFragment.this.goNext(identity);
            }
        });
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        if (getRequest() != null) {
            ((ApiService) getService("api")).abort(getRequest());
            setRequest(null);
        }
        super.onDestroy();
    }

    public final void updateVerifyButton() {
        getBinding().verifyEmail.setEnabled(getAccountUtils().isValidEmail(getBinding().edit.getText().toString()));
    }
}
