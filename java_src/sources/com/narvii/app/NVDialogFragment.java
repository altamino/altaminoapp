package com.narvii.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.narvii.lib.R;
import com.narvii.logging.LogProxyNVContext;
import com.narvii.util.Log;
import com.narvii.util.statusbar.StatusBarUtils;

/* JADX INFO: loaded from: classes6.dex */
public class NVDialogFragment extends NVFragment implements DialogInterface.OnCancelListener, DialogInterface.OnDismissListener, LogProxyNVContext {
    private static final String SAVED_CANCELABLE = "android:cancelable";
    private static final String SAVED_DIALOG_STATE_TAG = "android:savedDialogState";
    private static final String SAVED_THEME = "android:theme";
    NVDialog initDialog;
    NVDialog mDialog;
    boolean mDismissed;
    boolean mShownByMe;
    boolean mViewDestroyed;
    int mTheme = 0;
    boolean mCancelable = true;

    @Override // com.narvii.app.NVFragment
    protected boolean canSendActiveLog(boolean z6) {
        return false;
    }

    public Dialog getDialog() {
        return this.mDialog;
    }

    @Override // com.narvii.logging.LogProxyNVContext
    public NVContext getLogNVContext() {
        return this.mDialog;
    }

    @StyleRes
    public int getTheme() {
        return this.mTheme;
    }

    public boolean isCancelable() {
        return this.mCancelable;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
    }

    public void setStyle(@StyleRes int i10) {
        if (i10 != 0) {
            this.mTheme = i10;
        }
    }

    public void show(Activity activity, FragmentManager fragmentManager, String str) {
        this.mDismissed = false;
        this.mShownByMe = true;
        if (activity != null) {
            this.initDialog = new NVDialog(activity, R.style.CustomDialog) { // from class: com.narvii.app.NVDialogFragment.1
                @Override // com.narvii.app.NVDialog, com.narvii.logging.Page
                public String getPageName() {
                    return NVDialogFragment.this.getPageName();
                }
            };
        }
        FragmentTransaction fragmentTransactionQ = fragmentManager.q();
        fragmentTransactionQ.e(this, str);
        fragmentTransactionQ.k();
    }

    void dismissInternal() {
        if (this.mDismissed) {
            return;
        }
        this.mDismissed = true;
        this.mShownByMe = false;
        NVDialog nVDialog = this.mDialog;
        if (nVDialog != null) {
            nVDialog.dismiss();
        }
        this.mViewDestroyed = true;
        FragmentTransaction fragmentTransactionQ = getFragmentManager().q();
        fragmentTransactionQ.t(this);
        fragmentTransactionQ.k();
    }

    @NonNull
    public NVDialog onCreateDialog(Bundle bundle) {
        NVDialog nVDialog = this.initDialog;
        if (nVDialog != null) {
            return nVDialog;
        }
        if (getActivity() != null) {
            return new NVDialog(getActivity(), R.style.CustomDialog) { // from class: com.narvii.app.NVDialogFragment.2
                @Override // com.narvii.app.NVDialog, com.narvii.logging.Page
                public String getPageName() {
                    return NVDialogFragment.this.getPageName();
                }
            };
        }
        return null;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        if (this.mViewDestroyed) {
            return;
        }
        dismissInternal();
    }

    public void setCancelable(boolean z6) {
        this.mCancelable = z6;
        NVDialog nVDialog = this.mDialog;
        if (nVDialog != null) {
            nVDialog.setCancelable(z6);
        }
    }

    public void dismiss() {
        dismissInternal();
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        Bundle bundle2;
        super.onActivityCreated(bundle);
        if (this.mDialog == null) {
            return;
        }
        View view = getView();
        if (view != null) {
            if (view.getParent() == null) {
                this.mDialog.setContentView(view);
            } else {
                throw new IllegalStateException("DialogFragment can not be attached to a container view");
            }
        }
        FragmentActivity activity = getActivity();
        if (activity != null) {
            this.mDialog.setOwnerActivity(activity);
        }
        this.mDialog.setCancelable(this.mCancelable);
        this.mDialog.setOnCancelListener(this);
        this.mDialog.setOnDismissListener(this);
        if (bundle != null && (bundle2 = bundle.getBundle(SAVED_DIALOG_STATE_TAG)) != null) {
            this.mDialog.onRestoreInstanceState(bundle2);
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        if (!this.mShownByMe) {
            this.mDismissed = false;
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            try {
                dismiss();
            } catch (Exception e) {
                Log.e("dialog fragment", e);
            }
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        NVDialog nVDialog = this.mDialog;
        if (nVDialog != null) {
            this.mViewDestroyed = true;
            nVDialog.dismiss();
            this.mDialog = null;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        if (!this.mShownByMe && !this.mDismissed) {
            this.mDismissed = true;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        NVDialog nVDialogOnCreateDialog = onCreateDialog(bundle);
        this.mDialog = nVDialogOnCreateDialog;
        if (nVDialogOnCreateDialog != null) {
            Window window = nVDialogOnCreateDialog.getWindow();
            if (window != null) {
                StatusBarUtils.addTranslucentFlags(window);
            }
            return (LayoutInflater) this.mDialog.getContext().getSystemService("layout_inflater");
        }
        return (LayoutInflater) getContext().getSystemService("layout_inflater");
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        Bundle bundleOnSaveInstanceState;
        super.onSaveInstanceState(bundle);
        NVDialog nVDialog = this.mDialog;
        if (nVDialog != null && (bundleOnSaveInstanceState = nVDialog.onSaveInstanceState()) != null) {
            bundle.putBundle(SAVED_DIALOG_STATE_TAG, bundleOnSaveInstanceState);
        }
        int i10 = this.mTheme;
        if (i10 != 0) {
            bundle.putInt(SAVED_THEME, i10);
        }
        boolean z6 = this.mCancelable;
        if (!z6) {
            bundle.putBoolean(SAVED_CANCELABLE, z6);
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        NVDialog nVDialog = this.mDialog;
        if (nVDialog != null) {
            this.mViewDestroyed = false;
            nVDialog.show();
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        NVDialog nVDialog = this.mDialog;
        if (nVDialog != null) {
            nVDialog.hide();
        }
    }
}
