package com.narvii.master.home.profile;

import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVFragment;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.EditAminoIdResponse;
import com.narvii.util.ActionBarIcon;
import com.narvii.util.CheckAminoIdUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.widget.ACMAlertDialog;
import java.util.HashMap;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: EditAminoIdFragment.kt */
/* loaded from: classes3.dex */
public final class EditAminoIdFragment extends NVFragment {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(EditAminoIdFragment.class), "account", "getAccount()Lcom/narvii/account/AccountService;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(EditAminoIdFragment.class), "api", "getApi()Lcom/narvii/util/http/ApiService;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(EditAminoIdFragment.class), "edtAminoId", "getEdtAminoId()Landroid/widget/EditText;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(EditAminoIdFragment.class), "editDelete", "getEditDelete()Landroid/widget/ImageView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(EditAminoIdFragment.class), "limitAlert", "getLimitAlert()Landroid/widget/TextView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(EditAminoIdFragment.class), "inputHint", "getInputHint()Landroid/widget/TextView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(EditAminoIdFragment.class), "comfirmDialog", "getComfirmDialog()Lcom/narvii/widget/ACMAlertDialog;"))};
    public static final Companion Companion = new Companion(null);
    public static final int MAX_LENGTH = 25;
    public static final int MIN_LENGTH = 3;
    private HashMap _$_findViewCache;
    private ApiRequest changeAminoIdReq;
    private ACMAlertDialog errorDialog;
    private ProgressDialog progressDialog;
    private final Lazy account$delegate = LazyKt__LazyJVMKt.lazy(new Function0<AccountService>() { // from class: com.narvii.master.home.profile.EditAminoIdFragment$account$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final AccountService invoke() {
            return (AccountService) this.this$0.getService("account");
        }
    });
    private final Lazy api$delegate = LazyKt__LazyJVMKt.lazy(new Function0<ApiService>() { // from class: com.narvii.master.home.profile.EditAminoIdFragment$api$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final ApiService invoke() {
            return (ApiService) this.this$0.getService("api");
        }
    });
    private final Lazy edtAminoId$delegate = bind(R.id.edit_amino_id);
    private final Lazy editDelete$delegate = bind(R.id.edit_delete);
    private final Lazy limitAlert$delegate = bind(R.id.limit_alert);
    private final Lazy inputHint$delegate = bind(R.id.input_hint);
    private final Lazy comfirmDialog$delegate = LazyKt__LazyJVMKt.lazy(new Function0<ACMAlertDialog>() { // from class: com.narvii.master.home.profile.EditAminoIdFragment$comfirmDialog$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final ACMAlertDialog invoke() {
            return this.this$0.createComfirmDialog();
        }
    });

    /* JADX INFO: Access modifiers changed from: private */
    public final AccountService getAccount() {
        Lazy lazy = this.account$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (AccountService) lazy.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ApiService getApi() {
        Lazy lazy = this.api$delegate;
        KProperty kProperty = $$delegatedProperties[1];
        return (ApiService) lazy.getValue();
    }

    private final ACMAlertDialog getComfirmDialog() {
        Lazy lazy = this.comfirmDialog$delegate;
        KProperty kProperty = $$delegatedProperties[6];
        return (ACMAlertDialog) lazy.getValue();
    }

    private final ImageView getEditDelete() {
        Lazy lazy = this.editDelete$delegate;
        KProperty kProperty = $$delegatedProperties[3];
        return (ImageView) lazy.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final EditText getEdtAminoId() {
        Lazy lazy = this.edtAminoId$delegate;
        KProperty kProperty = $$delegatedProperties[2];
        return (EditText) lazy.getValue();
    }

    private final TextView getInputHint() {
        Lazy lazy = this.inputHint$delegate;
        KProperty kProperty = $$delegatedProperties[5];
        return (TextView) lazy.getValue();
    }

    private final TextView getLimitAlert() {
        Lazy lazy = this.limitAlert$delegate;
        KProperty kProperty = $$delegatedProperties[4];
        return (TextView) lazy.getValue();
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

    @Override // com.narvii.app.theme.NVThemeFragment
    public int initNVTheme() {
        return 2;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    /* compiled from: EditAminoIdFragment.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onCreate(bundle);
        setBackButtonDrawable(ContextCompat.getDrawable(getContext(), R.drawable.ic_actionbar_close));
        setTitle(R.string.edit_amino_id);
        this.progressDialog = new ProgressDialog(getContext());
        setHasOptionsMenu(true);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onPause() {
        SoftKeyboard.hideSoftKeyboard(getContext());
        super.onPause();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ACMAlertDialog createComfirmDialog() {
        ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
        aCMAlertDialog.setTitle(R.string.are_you_sure);
        aCMAlertDialog.setMessage(R.string.edit_amino_id_hint_simple);
        aCMAlertDialog.addButton(R.string.cancel, null);
        aCMAlertDialog.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.master.home.profile.EditAminoIdFragment.createComfirmDialog.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EditAminoIdFragment.this.submit();
            }
        });
        return aCMAlertDialog;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onActivityCreated(bundle);
        getEdtAminoId().addTextChangedListener(new TextWatcher() { // from class: com.narvii.master.home.profile.EditAminoIdFragment.onActivityCreated.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                EditAminoIdFragment.this.invalidateOptionsMenu();
                EditAminoIdFragment.this.updateView();
            }
        });
        getEditDelete().setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.profile.EditAminoIdFragment.onActivityCreated.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EditAminoIdFragment.this.getEdtAminoId().setText((CharSequence) null);
            }
        });
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_edit_amino_id, viewGroup, false);
    }

    @Override // android.support.v4.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        ActionBarIcon actionBarIcon;
        Intrinsics.checkParameterIsNotNull(menu, "menu");
        MenuItem submitItem = menu.findItem(R.string.submit);
        boolean zValidatePass = validatePass();
        Intrinsics.checkExpressionValueIsNotNull(submitItem, "submitItem");
        submitItem.setEnabled(zValidatePass);
        if (zValidatePass) {
            actionBarIcon = new ActionBarIcon(getContext(), getString(R.string.fa_check), 0.85f, ContextCompat.getColor(getContext(), R.color.white), 255, false);
        } else {
            actionBarIcon = new ActionBarIcon(getContext(), getString(R.string.fa_check), 0.85f, ContextCompat.getColor(getContext(), R.color.white), 128, false);
        }
        submitItem.setIcon(actionBarIcon);
        super.onPrepareOptionsMenu(menu);
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        Intrinsics.checkParameterIsNotNull(menu, "menu");
        menu.add(0, R.string.submit, 0, R.string.submit).setIcon(new ActionBarIcon(getContext(), getString(R.string.fa_check), 0.85f, ContextCompat.getColor(getContext(), R.color.white), 127, false)).setShowAsAction(2);
        super.onCreateOptionsMenu(menu, menuInflater);
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem item) {
        Intrinsics.checkParameterIsNotNull(item, "item");
        if (item.getItemId() == R.string.submit) {
            updateAminoId();
        }
        return super.onOptionsItemSelected(item);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        getEdtAminoId().setText(getAccount().getAminoId());
        getInputHint().setText(getString(R.string.edit_amino_id_hint, 3, 25));
    }

    private final boolean validatePass() {
        return CheckAminoIdUtils.Companion.validateAminoId(getEdtAminoId().getText().toString(), 25, 3) == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateView() {
        int iValidateAminoId = CheckAminoIdUtils.Companion.validateAminoId(getEdtAminoId().getText().toString(), 25, 3);
        if (iValidateAminoId == 1) {
            getLimitAlert().setVisibility(8);
            getEdtAminoId().setTextColor((int) 4294967295L);
            return;
        }
        if (iValidateAminoId == 2) {
            getEdtAminoId().setTextColor((int) 4294901837L);
            getLimitAlert().setVisibility(0);
            getLimitAlert().setText(getString(R.string.amino_id_illegal_limit));
        } else if (iValidateAminoId == 3) {
            getEdtAminoId().setTextColor((int) 4294901837L);
            getLimitAlert().setVisibility(0);
            getLimitAlert().setText(getString(R.string.amino_id_length_limit, 25));
        } else {
            if (iValidateAminoId != 4) {
                return;
            }
            getEdtAminoId().setTextColor((int) 4294967295L);
            getLimitAlert().setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void submit() {
        ProgressDialog progressDialog = this.progressDialog;
        if (progressDialog != null) {
            progressDialog.show();
        }
        ProgressDialog progressDialog2 = this.progressDialog;
        if (progressDialog2 != null) {
            progressDialog2.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.master.home.profile.EditAminoIdFragment.submit.1
                @Override // android.content.DialogInterface.OnCancelListener
                public final void onCancel(DialogInterface dialogInterface) {
                    if (EditAminoIdFragment.this.changeAminoIdReq != null) {
                        EditAminoIdFragment.this.getApi().abort(EditAminoIdFragment.this.changeAminoIdReq);
                    }
                }
            });
        }
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put("aminoId", getEdtAminoId().getText().toString());
        this.changeAminoIdReq = ApiRequest.builder().https().post().path("/account/change-amino-id").body(objectNodeCreateObjectNode).build();
        getApi().exec(this.changeAminoIdReq, new ApiResponseListener<EditAminoIdResponse>(EditAminoIdResponse.class) { // from class: com.narvii.master.home.profile.EditAminoIdFragment.submit.2
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, EditAminoIdResponse editAminoIdResponse) throws Exception {
                super.onFinish(apiRequest, (ApiRequest) editAminoIdResponse);
                ProgressDialog progressDialog3 = EditAminoIdFragment.this.progressDialog;
                if (progressDialog3 != null) {
                    progressDialog3.dismiss();
                }
                EditAminoIdFragment.this.getAccount().updateAminoId(editAminoIdResponse != null ? editAminoIdResponse.aminoId : null, editAminoIdResponse != null ? editAminoIdResponse.timestamp : null, editAminoIdResponse != null ? editAminoIdResponse.aminoIdEditable : false);
                EditAminoIdFragment.this.finish();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str, apiResponse, th);
                ProgressDialog progressDialog3 = EditAminoIdFragment.this.progressDialog;
                if (progressDialog3 != null) {
                    progressDialog3.dismiss();
                }
                ACMAlertDialog aCMAlertDialog = EditAminoIdFragment.this.errorDialog;
                if (aCMAlertDialog == null || !aCMAlertDialog.isShowing()) {
                    EditAminoIdFragment editAminoIdFragment = EditAminoIdFragment.this;
                    editAminoIdFragment.errorDialog = new ACMAlertDialog(editAminoIdFragment.getContext());
                    ACMAlertDialog aCMAlertDialog2 = EditAminoIdFragment.this.errorDialog;
                    if (aCMAlertDialog2 != null) {
                        aCMAlertDialog2.setMessage(str);
                    }
                    ACMAlertDialog aCMAlertDialog3 = EditAminoIdFragment.this.errorDialog;
                    if (aCMAlertDialog3 != null) {
                        aCMAlertDialog3.addButton(R.string.got_it, null);
                    }
                    ACMAlertDialog aCMAlertDialog4 = EditAminoIdFragment.this.errorDialog;
                    if (aCMAlertDialog4 != null) {
                        aCMAlertDialog4.show();
                    }
                }
            }
        });
    }

    private final void updateAminoId() {
        if (getComfirmDialog().isShowing()) {
            return;
        }
        getComfirmDialog().show();
    }

    private final <T extends View> Lazy<T> bind(final int i) {
        return LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, new Function0<T>() { // from class: com.narvii.master.home.profile.EditAminoIdFragment.bind.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Incorrect return type in method signature: ()TT; */
            @Override // kotlin.jvm.functions.Function0
            public final View invoke() {
                View view = EditAminoIdFragment.this.getView();
                View viewFindViewById = view != null ? view.findViewById(i) : null;
                if (viewFindViewById != null) {
                    return viewFindViewById;
                }
                throw new TypeCastException("null cannot be cast to non-null type T");
            }
        });
    }
}
