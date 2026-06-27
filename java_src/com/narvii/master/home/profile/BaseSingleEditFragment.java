package com.narvii.master.home.profile;

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
import com.narvii.amino.mastes.R;
import com.narvii.app.NVFragment;
import com.narvii.util.ActionBarIcon;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import java.util.HashMap;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: BaseSingleEditFragment.kt */
/* loaded from: classes3.dex */
public abstract class BaseSingleEditFragment extends NVFragment {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(BaseSingleEditFragment.class), "api", "getApi()Lcom/narvii/util/http/ApiService;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(BaseSingleEditFragment.class), "progressDialog", "getProgressDialog()Lcom/narvii/util/dialog/ProgressDialog;"))};
    private HashMap _$_findViewCache;
    private final Lazy api$delegate = LazyKt__LazyJVMKt.lazy(new Function0<ApiService>() { // from class: com.narvii.master.home.profile.BaseSingleEditFragment$api$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final ApiService invoke() {
            return (ApiService) this.this$0.getService("api");
        }
    });
    private final Lazy progressDialog$delegate = LazyKt__LazyJVMKt.lazy(new Function0<ProgressDialog>() { // from class: com.narvii.master.home.profile.BaseSingleEditFragment$progressDialog$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final ProgressDialog invoke() {
            return this.this$0.createProgressDialog();
        }
    });
    private ApiRequest request;

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

    public final ApiService getApi() {
        Lazy lazy = this.api$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (ApiService) lazy.getValue();
    }

    public final ProgressDialog getProgressDialog() {
        Lazy lazy = this.progressDialog$delegate;
        KProperty kProperty = $$delegatedProperties[1];
        return (ProgressDialog) lazy.getValue();
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public int initNVTheme() {
        return 2;
    }

    public abstract int layoutId();

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    public abstract boolean passValidate();

    protected void submit() {
    }

    public abstract int title();

    protected void updateView() {
    }

    public final ApiRequest getRequest() {
        return this.request;
    }

    public final void setRequest(ApiRequest apiRequest) {
        this.request = apiRequest;
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return inflater.inflate(layoutId(), viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onActivityCreated(bundle);
        setBackButtonDrawable(ContextCompat.getDrawable(getContext(), R.drawable.ic_actionbar_close));
        setTitle(title());
        setHasOptionsMenu(true);
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        Intrinsics.checkParameterIsNotNull(menu, "menu");
        menu.add(0, R.string.submit, 0, R.string.submit).setIcon(new ActionBarIcon(getContext(), getString(R.string.fa_check), 0.85f, ContextCompat.getColor(getContext(), R.color.white), 127, false)).setShowAsAction(2);
        super.onCreateOptionsMenu(menu, menuInflater);
    }

    @Override // android.support.v4.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        ActionBarIcon actionBarIcon;
        Intrinsics.checkParameterIsNotNull(menu, "menu");
        MenuItem submitItem = menu.findItem(R.string.submit);
        boolean zPassValidate = passValidate();
        Intrinsics.checkExpressionValueIsNotNull(submitItem, "submitItem");
        submitItem.setEnabled(zPassValidate);
        if (zPassValidate) {
            actionBarIcon = new ActionBarIcon(getContext(), getString(R.string.fa_check), 0.85f, ContextCompat.getColor(getContext(), R.color.white), 255, false);
        } else {
            actionBarIcon = new ActionBarIcon(getContext(), getString(R.string.fa_check), 0.85f, ContextCompat.getColor(getContext(), R.color.white), 128, false);
        }
        submitItem.setIcon(actionBarIcon);
        super.onPrepareOptionsMenu(menu);
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem item) {
        Intrinsics.checkParameterIsNotNull(item, "item");
        if (item.getItemId() == R.string.submit) {
            startSubmit();
        }
        return super.onOptionsItemSelected(item);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onPause() {
        SoftKeyboard.hideSoftKeyboard(getContext());
        super.onPause();
    }

    private final void startSubmit() {
        SoftKeyboard.hideSoftKeyboard(getContext());
        if (passValidate()) {
            submit();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ProgressDialog createProgressDialog() {
        return new ProgressDialog(getContext());
    }

    public final void observeTextChanged(EditText et) {
        Intrinsics.checkParameterIsNotNull(et, "et");
        et.addTextChangedListener(new TextWatcher() { // from class: com.narvii.master.home.profile.BaseSingleEditFragment.observeTextChanged.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                BaseSingleEditFragment.this.invalidateOptionsMenu();
                BaseSingleEditFragment.this.updateView();
            }
        });
    }
}
