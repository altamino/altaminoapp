package com.narvii.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import com.narvii.lib.R;
import com.narvii.logging.LogProxyNVContext;
import com.narvii.util.Log;
import com.narvii.util.statusbar.StatusBarUtils;

/* loaded from: classes2.dex */
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
    protected boolean canSendActiveLog(boolean z) {
        return false;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
    }

    public void setStyle(int i) {
        if (i != 0) {
            this.mTheme = i;
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
        FragmentTransaction fragmentTransactionBeginTransaction = fragmentManager.beginTransaction();
        fragmentTransactionBeginTransaction.add(this, str);
        fragmentTransactionBeginTransaction.commitAllowingStateLoss();
    }

    public void dismiss() {
        dismissInternal();
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
        FragmentTransaction fragmentTransactionBeginTransaction = getFragmentManager().beginTransaction();
        fragmentTransactionBeginTransaction.remove(this);
        fragmentTransactionBeginTransaction.commitAllowingStateLoss();
    }

    public Dialog getDialog() {
        return this.mDialog;
    }

    public int getTheme() {
        return this.mTheme;
    }

    public void setCancelable(boolean z) {
        this.mCancelable = z;
        NVDialog nVDialog = this.mDialog;
        if (nVDialog != null) {
            nVDialog.setCancelable(z);
        }
    }

    public boolean isCancelable() {
        return this.mCancelable;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        if (this.mShownByMe) {
            return;
        }
        this.mDismissed = false;
    }

    @Override // android.support.v4.app.Fragment
    public void onDetach() {
        super.onDetach();
        if (this.mShownByMe || this.mDismissed) {
            return;
        }
        this.mDismissed = true;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            try {
                dismiss();
            } catch (Exception e) {
                Log.e("dialog fragment", e);
            }
        }
    }

    @Override // android.support.v4.app.Fragment
    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        this.mDialog = onCreateDialog(bundle);
        NVDialog nVDialog = this.mDialog;
        if (nVDialog != null) {
            Window window = nVDialog.getWindow();
            if (window != null) {
                StatusBarUtils.addTranslucentFlags(window);
            }
            return (LayoutInflater) this.mDialog.getContext().getSystemService("layout_inflater");
        }
        return (LayoutInflater) getContext().getSystemService("layout_inflater");
    }

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

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        Bundle bundle2;
        super.onActivityCreated(bundle);
        if (this.mDialog == null) {
            return;
        }
        View view = getView();
        if (view != null) {
            if (view.getParent() != null) {
                throw new IllegalStateException("DialogFragment can not be attached to a container view");
            }
            this.mDialog.setContentView(view);
        }
        FragmentActivity activity = getActivity();
        if (activity != null) {
            this.mDialog.setOwnerActivity(activity);
        }
        this.mDialog.setCancelable(this.mCancelable);
        this.mDialog.setOnCancelListener(this);
        this.mDialog.setOnDismissListener(this);
        if (bundle == null || (bundle2 = bundle.getBundle(SAVED_DIALOG_STATE_TAG)) == null) {
            return;
        }
        this.mDialog.onRestoreInstanceState(bundle2);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        NVDialog nVDialog = this.mDialog;
        if (nVDialog != null) {
            this.mViewDestroyed = false;
            nVDialog.show();
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        Bundle bundleOnSaveInstanceState;
        super.onSaveInstanceState(bundle);
        NVDialog nVDialog = this.mDialog;
        if (nVDialog != null && (bundleOnSaveInstanceState = nVDialog.onSaveInstanceState()) != null) {
            bundle.putBundle(SAVED_DIALOG_STATE_TAG, bundleOnSaveInstanceState);
        }
        int i = this.mTheme;
        if (i != 0) {
            bundle.putInt(SAVED_THEME, i);
        }
        boolean z = this.mCancelable;
        if (z) {
            return;
        }
        bundle.putBoolean(SAVED_CANCELABLE, z);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onStop() {
        super.onStop();
        NVDialog nVDialog = this.mDialog;
        if (nVDialog != null) {
            nVDialog.hide();
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        NVDialog nVDialog = this.mDialog;
        if (nVDialog != null) {
            this.mViewDestroyed = true;
            nVDialog.dismiss();
            this.mDialog = null;
        }
    }

    @Override // com.narvii.logging.LogProxyNVContext
    public NVContext getLogNVContext() {
        return this.mDialog;
    }
}
