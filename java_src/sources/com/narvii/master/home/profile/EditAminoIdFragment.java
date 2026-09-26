package com.narvii.master.home.profile;

import android.content.DialogInterface;
import android.os.Bundle;
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
import androidx.annotation.IdRes;
import androidx.core.content.ContextCompat;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
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
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class EditAminoIdFragment extends NVFragment {

    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int MAX_LENGTH = 25;
    public static final int MIN_LENGTH = 3;

    @Nullable
    private ApiRequest changeAminoIdReq;

    @Nullable
    private ACMAlertDialog errorDialog;

    @Nullable
    private ProgressDialog progressDialog;

    @NotNull
    private final w7.m account$delegate = w7.o.a(new EditAminoIdFragment$account$2(this));

    @NotNull
    private final w7.m api$delegate = w7.o.a(new EditAminoIdFragment$api$2(this));

    @NotNull
    private final w7.m edtAminoId$delegate = bind(R.id.edit_amino_id);

    @NotNull
    private final w7.m editDelete$delegate = bind(R.id.edit_delete);

    @NotNull
    private final w7.m limitAlert$delegate = bind(R.id.limit_alert);

    @NotNull
    private final w7.m inputHint$delegate = bind(R.id.input_hint);

    @NotNull
    private final w7.m comfirmDialog$delegate = w7.o.a(new EditAminoIdFragment$comfirmDialog$2(this));

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: com.narvii.master.home.profile.EditAminoIdFragment$bind$1, reason: invalid class name */
    static final class AnonymousClass1<T> extends kotlin.jvm.internal.v implements e8.a<T> {
        final /* synthetic */ int $res;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(int i10) {
            super(0);
            this.$res = i10;
        }

        /* JADX WARN: Incorrect return type in method signature: ()TT; */
        @Override // e8.a
        @NotNull
        public final View invoke() {
            View view = EditAminoIdFragment.this.getView();
            View viewFindViewById = view != null ? view.findViewById(this.$res) : null;
            kotlin.jvm.internal.t.h(viewFindViewById, "null cannot be cast to non-null type T of com.narvii.master.home.profile.EditAminoIdFragment.bind");
            return viewFindViewById;
        }
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public int initNVTheme() {
        return 2;
    }

    private final <T extends View> w7.m<T> bind(@IdRes int i10) {
        return w7.o.b(w7.q.NONE, new AnonymousClass1(i10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ACMAlertDialog createComfirmDialog() {
        ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
        aCMAlertDialog.setTitle(R.string.are_you_sure);
        aCMAlertDialog.setMessage(R.string.edit_amino_id_hint_simple);
        aCMAlertDialog.addButton(R.string.cancel, null);
        aCMAlertDialog.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.master.home.profile.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EditAminoIdFragment.createComfirmDialog$lambda$0(this.f2346a, view);
            }
        });
        return aCMAlertDialog;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createComfirmDialog$lambda$0(EditAminoIdFragment this$0, View view) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        this$0.submit();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AccountService getAccount() {
        Object value = this.account$delegate.getValue();
        kotlin.jvm.internal.t.i(value, "getValue(...)");
        return (AccountService) value;
    }

    private final ApiService getApi() {
        Object value = this.api$delegate.getValue();
        kotlin.jvm.internal.t.i(value, "getValue(...)");
        return (ApiService) value;
    }

    private final ACMAlertDialog getComfirmDialog() {
        return (ACMAlertDialog) this.comfirmDialog$delegate.getValue();
    }

    private final ImageView getEditDelete() {
        return (ImageView) this.editDelete$delegate.getValue();
    }

    private final EditText getEdtAminoId() {
        return (EditText) this.edtAminoId$delegate.getValue();
    }

    private final TextView getInputHint() {
        return (TextView) this.inputHint$delegate.getValue();
    }

    private final TextView getLimitAlert() {
        return (TextView) this.limitAlert$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onActivityCreated$lambda$1(EditAminoIdFragment this$0, View view) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        this$0.getEdtAminoId().setText((CharSequence) null);
    }

    private final void submit() {
        ProgressDialog progressDialog = this.progressDialog;
        if (progressDialog != null) {
            progressDialog.show();
        }
        ProgressDialog progressDialog2 = this.progressDialog;
        if (progressDialog2 != null) {
            progressDialog2.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.master.home.profile.c
                @Override // android.content.DialogInterface.OnCancelListener
                public final void onCancel(DialogInterface dialogInterface) {
                    EditAminoIdFragment.submit$lambda$2(this.f2348a, dialogInterface);
                }
            });
        }
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put("aminoId", getEdtAminoId().getText().toString());
        this.changeAminoIdReq = ApiRequest.builder().https().post().path("/account/change-amino-id").body(objectNodeCreateObjectNode).build();
        getApi().exec(this.changeAminoIdReq, new ApiResponseListener<EditAminoIdResponse>(EditAminoIdResponse.class) { // from class: com.narvii.master.home.profile.EditAminoIdFragment.submit.2
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(@Nullable ApiRequest apiRequest, @Nullable EditAminoIdResponse editAminoIdResponse) throws Exception {
                super.onFinish(apiRequest, editAminoIdResponse);
                ProgressDialog progressDialog3 = EditAminoIdFragment.this.progressDialog;
                if (progressDialog3 != null) {
                    progressDialog3.dismiss();
                }
                EditAminoIdFragment.this.getAccount().updateAminoId(editAminoIdResponse != null ? editAminoIdResponse.aminoId : null, editAminoIdResponse != null ? editAminoIdResponse.timestamp : null, editAminoIdResponse != null ? editAminoIdResponse.aminoIdEditable : false);
                EditAminoIdFragment.this.finish();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(@Nullable ApiRequest apiRequest, int i10, @Nullable List<NameValuePair> list, @Nullable String str, @Nullable ApiResponse apiResponse, @Nullable Throwable th) {
                super.onFail(apiRequest, i10, list, str, apiResponse, th);
                ProgressDialog progressDialog3 = EditAminoIdFragment.this.progressDialog;
                if (progressDialog3 != null) {
                    progressDialog3.dismiss();
                }
                ACMAlertDialog aCMAlertDialog = EditAminoIdFragment.this.errorDialog;
                if (aCMAlertDialog == null || !aCMAlertDialog.isShowing()) {
                    EditAminoIdFragment.this.errorDialog = new ACMAlertDialog(EditAminoIdFragment.this.getContext());
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

    /* JADX INFO: Access modifiers changed from: private */
    public static final void submit$lambda$2(EditAminoIdFragment this$0, DialogInterface dialogInterface) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        if (this$0.changeAminoIdReq != null) {
            this$0.getApi().abort(this$0.changeAminoIdReq);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(@NotNull Menu menu, @NotNull MenuInflater inflater) {
        kotlin.jvm.internal.t.j(menu, "menu");
        kotlin.jvm.internal.t.j(inflater, "inflater");
        menu.add(0, R.string.submit, 0, R.string.submit).setIcon(new ActionBarIcon(getContext(), getString(R.string.fa_check), 0.85f, ContextCompat.getColor(getContext(), R.color.white), 127, false)).setShowAsAction(2);
        super.onCreateOptionsMenu(menu, inflater);
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        kotlin.jvm.internal.t.j(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_edit_amino_id, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(@NotNull MenuItem item) {
        kotlin.jvm.internal.t.j(item, "item");
        if (item.getItemId() == R.string.submit) {
            updateAminoId();
        }
        return super.onOptionsItemSelected(item);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPrepareOptionsMenu(@NotNull Menu menu) {
        kotlin.jvm.internal.t.j(menu, "menu");
        MenuItem menuItemFindItem = menu.findItem(R.string.submit);
        boolean zValidatePass = validatePass();
        menuItemFindItem.setEnabled(zValidatePass);
        menuItemFindItem.setIcon(zValidatePass ? new ActionBarIcon(getContext(), getString(R.string.fa_check), 0.85f, ContextCompat.getColor(getContext(), R.color.white), 255, false) : new ActionBarIcon(getContext(), getString(R.string.fa_check), 0.85f, ContextCompat.getColor(getContext(), R.color.white), 128, false));
        super.onPrepareOptionsMenu(menu);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        kotlin.jvm.internal.t.j(view, "view");
        super.onViewCreated(view, bundle);
        getEdtAminoId().setText(getAccount().getAminoId());
        getInputHint().setText(getString(R.string.edit_amino_id_hint, 3, 25));
    }

    private final void updateAminoId() {
        if (!getComfirmDialog().isShowing()) {
            getComfirmDialog().show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateView() {
        int iValidateAminoId = CheckAminoIdUtils.Companion.validateAminoId(getEdtAminoId().getText().toString(), 25, 3);
        if (iValidateAminoId != 1) {
            if (iValidateAminoId != 2) {
                if (iValidateAminoId != 3) {
                    if (iValidateAminoId == 4) {
                        getEdtAminoId().setTextColor(-1);
                        getLimitAlert().setVisibility(8);
                        return;
                    }
                    return;
                }
                getEdtAminoId().setTextColor(-65459);
                getLimitAlert().setVisibility(0);
                getLimitAlert().setText(getString(R.string.amino_id_length_limit, 25));
                return;
            }
            getEdtAminoId().setTextColor(-65459);
            getLimitAlert().setVisibility(0);
            getLimitAlert().setText(getString(R.string.amino_id_illegal_limit));
            return;
        }
        getLimitAlert().setVisibility(8);
        getEdtAminoId().setTextColor(-1);
    }

    private final boolean validatePass() {
        if (CheckAminoIdUtils.Companion.validateAminoId(getEdtAminoId().getText().toString(), 25, 3) == 1) {
            return true;
        }
        return false;
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        getEdtAminoId().addTextChangedListener(new TextWatcher() { // from class: com.narvii.master.home.profile.EditAminoIdFragment.onActivityCreated.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(@Nullable CharSequence charSequence, int i10, int i11, int i12) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(@Nullable CharSequence charSequence, int i10, int i11, int i12) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(@Nullable Editable editable) {
                EditAminoIdFragment.this.invalidateOptionsMenu();
                EditAminoIdFragment.this.updateView();
            }
        });
        getEditDelete().setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.profile.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EditAminoIdFragment.onActivityCreated$lambda$1(this.f2344a, view);
            }
        });
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setBackButtonDrawable(ContextCompat.getDrawable(getContext(), R.drawable.ic_actionbar_close));
        setTitle(R.string.edit_amino_id);
        this.progressDialog = new ProgressDialog(getContext());
        setHasOptionsMenu(true);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onPause() {
        SoftKeyboard.hideSoftKeyboard(getContext());
        super.onPause();
    }
}
