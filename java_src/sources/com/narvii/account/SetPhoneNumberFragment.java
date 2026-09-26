package com.narvii.account;

import android.os.Bundle;
import android.telephony.PhoneNumberUtils;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import com.narvii.account.mobile.MyPhoneCountryCodePicker;
import com.narvii.amino.databinding.FragmentSetPhoneNumberBinding;
import com.narvii.amino.master.R;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.FragmentExtensionsKt;
import com.narvii.util.NVToast;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.NameValuePair;
import java.util.List;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class SetPhoneNumberFragment extends SetIdentityFragment {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {kotlin.jvm.internal.q0.g(new kotlin.jvm.internal.g0(SetPhoneNumberFragment.class, "binding", "getBinding()Lcom/narvii/amino/databinding/FragmentSetPhoneNumberBinding;", 0))};

    @NotNull
    private final kotlin.properties.d binding$delegate = FragmentExtensionsKt.viewBinding(this, SetPhoneNumberFragment$binding$2.INSTANCE);
    private MyPhoneCountryCodePicker countryCodePicker;

    /* JADX INFO: Access modifiers changed from: private */
    public final FragmentSetPhoneNumberBinding getBinding() {
        return (FragmentSetPhoneNumberBinding) this.binding$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final String getCurrentPhoneNumber() {
        MyPhoneCountryCodePicker myPhoneCountryCodePicker = this.countryCodePicker;
        if (myPhoneCountryCodePicker == null) {
            kotlin.jvm.internal.t.B("countryCodePicker");
            myPhoneCountryCodePicker = null;
        }
        return org.slf4j.c.ANY_NON_NULL_MARKER + myPhoneCountryCodePicker.getCountryCode() + " " + PhoneNumberUtils.stripSeparators(getBinding().phoneInputLayout.getEditContent().toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$0(SetPhoneNumberFragment this$0, View view) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        this$0.checkLegality(this$0.getCurrentPhoneNumber());
    }

    @Override // androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        kotlin.jvm.internal.t.j(inflater, "inflater");
        LinearLayout root = getBinding().getRoot();
        kotlin.jvm.internal.t.i(root, "getRoot(...)");
        return root;
    }

    @Override // com.narvii.account.SetIdentityFragment, com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        kotlin.jvm.internal.t.j(view, "view");
        super.onViewCreated(view, bundle);
        View viewFindViewById = view.findViewById(R.id.country_picker);
        kotlin.jvm.internal.t.i(viewFindViewById, "findViewById(...)");
        this.countryCodePicker = (MyPhoneCountryCodePicker) viewFindViewById;
        getBinding().phoneInputLayout.addTextChangedListener(new TextWatcher() { // from class: com.narvii.account.SetPhoneNumberFragment.onViewCreated.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(@Nullable CharSequence charSequence, int i10, int i11, int i12) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(@Nullable CharSequence charSequence, int i10, int i11, int i12) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(@Nullable Editable editable) {
                Button button = SetPhoneNumberFragment.this.getBinding().verifyPhone;
                String editContent = SetPhoneNumberFragment.this.getBinding().phoneInputLayout.getEditContent();
                boolean z6 = false;
                if (editContent != null && (!kotlin.text.t.z(editContent))) {
                    z6 = true;
                }
                button.setEnabled(z6);
            }
        });
        getBinding().verifyPhone.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.account.n0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                SetPhoneNumberFragment.onViewCreated$lambda$0(this.f1729a, view2);
            }
        });
    }

    @Override // com.narvii.account.SetIdentityFragment
    public void requestCode(@NotNull final String identity) {
        kotlin.jvm.internal.t.j(identity, "identity");
        showProgress();
        requestSecurityCode(8, identity, 1, new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.account.SetPhoneNumberFragment.requestCode.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(@NotNull ApiRequest req, int i10, @Nullable List<? extends NameValuePair> list, @NotNull String message, @Nullable ApiResponse apiResponse, @NotNull Throwable t5) {
                kotlin.jvm.internal.t.j(req, "req");
                kotlin.jvm.internal.t.j(message, "message");
                kotlin.jvm.internal.t.j(t5, "t");
                super.onFail(req, i10, list, message, apiResponse, t5);
                SetPhoneNumberFragment.this.dismissProgress();
                NVToast.makeText(SetPhoneNumberFragment.this.getContext(), message, 1).show();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(@NotNull ApiRequest req, @Nullable ApiResponse apiResponse) throws Exception {
                kotlin.jvm.internal.t.j(req, "req");
                super.onFinish(req, apiResponse);
                SetPhoneNumberFragment.this.getVerifyCodeHelper().updatePhoneVerifyTime(identity);
                SetPhoneNumberFragment.this.dismissProgress();
                SetPhoneNumberFragment.this.goNext(identity);
            }
        });
    }
}
