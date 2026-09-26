package com.narvii.master.home.profile;

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
import androidx.core.content.ContextCompat;
import com.narvii.amino.master.R;
import com.narvii.app.NVFragment;
import com.narvii.util.ActionBarIcon;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public abstract class BaseSingleEditFragment extends NVFragment {

    @NotNull
    private final w7.m api$delegate = w7.o.a(new BaseSingleEditFragment$api$2(this));

    @NotNull
    private final w7.m progressDialog$delegate = w7.o.a(new BaseSingleEditFragment$progressDialog$2(this));

    @Nullable
    private ApiRequest request;

    @Nullable
    public final ApiRequest getRequest() {
        return this.request;
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public int initNVTheme() {
        return 2;
    }

    public abstract int layoutId();

    public abstract boolean passValidate();

    public final void setRequest(@Nullable ApiRequest apiRequest) {
        this.request = apiRequest;
    }

    protected void submit() {
    }

    public abstract int title();

    protected void updateView() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ProgressDialog createProgressDialog() {
        return new ProgressDialog(getContext());
    }

    @NotNull
    public final ApiService getApi() {
        Object value = this.api$delegate.getValue();
        kotlin.jvm.internal.t.i(value, "getValue(...)");
        return (ApiService) value;
    }

    @NotNull
    public final ProgressDialog getProgressDialog() {
        return (ProgressDialog) this.progressDialog$delegate.getValue();
    }

    public final void observeTextChanged(@NotNull EditText et) {
        kotlin.jvm.internal.t.j(et, "et");
        et.addTextChangedListener(new TextWatcher() { // from class: com.narvii.master.home.profile.BaseSingleEditFragment.observeTextChanged.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(@Nullable CharSequence charSequence, int i10, int i11, int i12) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(@Nullable CharSequence charSequence, int i10, int i11, int i12) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(@Nullable Editable editable) {
                BaseSingleEditFragment.this.invalidateOptionsMenu();
                BaseSingleEditFragment.this.updateView();
            }
        });
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
        return inflater.inflate(layoutId(), viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(@NotNull MenuItem item) {
        kotlin.jvm.internal.t.j(item, "item");
        if (item.getItemId() == R.string.submit) {
            startSubmit();
        }
        return super.onOptionsItemSelected(item);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPrepareOptionsMenu(@NotNull Menu menu) {
        kotlin.jvm.internal.t.j(menu, "menu");
        MenuItem menuItemFindItem = menu.findItem(R.string.submit);
        boolean zPassValidate = passValidate();
        menuItemFindItem.setEnabled(zPassValidate);
        menuItemFindItem.setIcon(zPassValidate ? new ActionBarIcon(getContext(), getString(R.string.fa_check), 0.85f, ContextCompat.getColor(getContext(), R.color.white), 255, false) : new ActionBarIcon(getContext(), getString(R.string.fa_check), 0.85f, ContextCompat.getColor(getContext(), R.color.white), 128, false));
        super.onPrepareOptionsMenu(menu);
    }

    private final void startSubmit() {
        SoftKeyboard.hideSoftKeyboard(getContext());
        if (passValidate()) {
            submit();
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        setBackButtonDrawable(ContextCompat.getDrawable(getContext(), R.drawable.ic_actionbar_close));
        setTitle(title());
        setHasOptionsMenu(true);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onPause() {
        SoftKeyboard.hideSoftKeyboard(getContext());
        super.onPause();
    }
}
