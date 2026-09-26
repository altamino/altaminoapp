package com.narvii.account;

import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;
import com.narvii.account.verifyaccount.SetPasswordFragment;
import com.narvii.amino.master.R;
import com.narvii.app.NVApplication;
import com.narvii.photos.PhotoManager;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ProxyStack;
import com.narvii.volley.util.HurlConnectionHelper;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.URL;

/* JADX INFO: loaded from: classes.dex */
public class ThirdPartyAccountBaseFragment extends AccountBaseFragment {
    public static final int API_ERR_EMAIL = 213;
    public static final int API_ERR_EMAIL_NO_PASSWORD = 251;
    public static final int API_ERR_EMAIL_TAKEN = 215;
    static DownloadTask runningTask;
    protected boolean isLoginFlow;
    private String thirdPartySecret;

    public interface QueryThirdPartyInfoCallBack {
        void onComplete(String str, String str2);
    }

    interface SaveImageCallBack {
        void onCompleted(String str);
    }

    @Override // com.narvii.account.AccountBaseFragment
    public boolean cancel() {
        runningTask = null;
        return super.cancel();
    }

    protected String getSignUpMethod() {
        return null;
    }

    static class DownloadTask extends Thread {
        SaveImageCallBack callback;
        File dir;
        PhotoManager photo;
        String photoUrl;
        boolean success;
        String url;

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Runnable runnable;
            File fileCreateTmpFile = Utils.createTmpFile(true);
            try {
                try {
                    InputStream inputStream = HurlConnectionHelper.getInputStream(new ProxyStack(NVApplication.instance()).createConnection(new URL(this.url)));
                    FileOutputStream fileOutputStream = new FileOutputStream(fileCreateTmpFile);
                    byte[] bArr = new byte[4096];
                    while (true) {
                        int i10 = inputStream.read(bArr);
                        if (i10 == -1) {
                            break;
                        } else {
                            fileOutputStream.write(bArr, 0, i10);
                        }
                    }
                    inputStream.close();
                    fileOutputStream.close();
                    this.photoUrl = this.photo.importPhoto(this.dir, Uri.fromFile(fileCreateTmpFile));
                    this.success = true;
                    fileCreateTmpFile.delete();
                    if (this.callback != null) {
                        runnable = new Runnable() { // from class: com.narvii.account.ThirdPartyAccountBaseFragment.DownloadTask.1
                            @Override // java.lang.Runnable
                            public void run() {
                                DownloadTask downloadTask = ThirdPartyAccountBaseFragment.runningTask;
                                DownloadTask downloadTask2 = DownloadTask.this;
                                if (downloadTask == downloadTask2) {
                                    downloadTask2.callback.onCompleted(downloadTask2.photoUrl);
                                    ThirdPartyAccountBaseFragment.runningTask = null;
                                }
                            }
                        };
                        Utils.post(runnable);
                    }
                } catch (Exception e) {
                    Log.w("fail to download background image " + this.url, e);
                    this.success = false;
                    fileCreateTmpFile.delete();
                    if (this.callback == null) {
                    } else {
                        runnable = new Runnable() { // from class: com.narvii.account.ThirdPartyAccountBaseFragment.DownloadTask.1
                            @Override // java.lang.Runnable
                            public void run() {
                                DownloadTask downloadTask = ThirdPartyAccountBaseFragment.runningTask;
                                DownloadTask downloadTask2 = DownloadTask.this;
                                if (downloadTask == downloadTask2) {
                                    downloadTask2.callback.onCompleted(downloadTask2.photoUrl);
                                    ThirdPartyAccountBaseFragment.runningTask = null;
                                }
                            }
                        };
                    }
                }
            } catch (Throwable th) {
                fileCreateTmpFile.delete();
                if (this.callback != null) {
                    Utils.post(new Runnable() { // from class: com.narvii.account.ThirdPartyAccountBaseFragment.DownloadTask.1
                        @Override // java.lang.Runnable
                        public void run() {
                            DownloadTask downloadTask = ThirdPartyAccountBaseFragment.runningTask;
                            DownloadTask downloadTask2 = DownloadTask.this;
                            if (downloadTask == downloadTask2) {
                                downloadTask2.callback.onCompleted(downloadTask2.photoUrl);
                                ThirdPartyAccountBaseFragment.runningTask = null;
                            }
                        }
                    });
                }
                throw th;
            }
        }

        DownloadTask() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleNoEmailDetected(String str) {
        if (LoginActivity.showPhoneNumberItem.booleanValue()) {
            requireEmailOrPhoneNumber(str);
        } else {
            requireEmail(str);
        }
    }

    private void requireEmail(String str) {
        EmailSignupFragment emailSignupFragment = new EmailSignupFragment();
        Bundle bundle = new Bundle();
        bundle.putString(AccountBaseFragment.KEY_THIRD_PART_SECRET, str);
        bundle.putBoolean(AccountBaseFragment.KEY_IS_THIRD_PART, true);
        bundle.putString(AccountBaseFragment.KEY_SIGN_UP_METHOD, getSignUpMethod());
        emailSignupFragment.setArguments(bundle);
        goNext(emailSignupFragment);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void requireEmailOrPhoneNumber(final String str) {
        queryThirdPartyInfo(new QueryThirdPartyInfoCallBack() { // from class: com.narvii.account.ThirdPartyAccountBaseFragment.6
            @Override // com.narvii.account.ThirdPartyAccountBaseFragment.QueryThirdPartyInfoCallBack
            public void onComplete(String str2, String str3) {
                ThirdPartySetUpFragment thirdPartySetUpFragment = new ThirdPartySetUpFragment();
                Bundle bundle = new Bundle();
                bundle.putString(AccountBaseFragment.KEY_THIRD_PART_SECRET, str);
                bundle.putBoolean("isLogin", ThirdPartyAccountBaseFragment.this.isLoginFlow);
                bundle.putBoolean(AccountBaseFragment.KEY_IS_THIRD_PART, true);
                bundle.putString(AccountBaseFragment.KEY_SIGN_UP_METHOD, ThirdPartyAccountBaseFragment.this.getSignUpMethod());
                bundle.putString(AccountBaseFragment.KEY_NICKNAME, str2);
                bundle.putString(AccountBaseFragment.KEY_THIRDPARTY_AVATAR_URL, str3);
                thirdPartySetUpFragment.setArguments(bundle);
                ThirdPartyAccountBaseFragment.this.goNext(thirdPartySetUpFragment);
            }
        });
    }

    private void requirePasswordForLeader(String str) {
        LeaderThirdPartyLoginFragment leaderThirdPartyLoginFragment = new LeaderThirdPartyLoginFragment();
        Bundle bundle = new Bundle();
        bundle.putString(AccountBaseFragment.KEY_THIRD_PART_SECRET, str);
        bundle.putBoolean(AccountBaseFragment.KEY_IS_THIRD_PART, true);
        bundle.putString(AccountBaseFragment.KEY_SIGN_UP_METHOD, getSignUpMethod());
        leaderThirdPartyLoginFragment.setArguments(bundle);
        goNext(leaderThirdPartyLoginFragment);
    }

    @Override // com.narvii.account.AccountBaseFragment
    protected void handleAlreadyRegistered(String str, String str2) {
        final AlertDialog alertDialog = new AlertDialog(getContext());
        alertDialog.setContentView(R.layout.account_error_email_taken);
        if (TextUtils.isEmpty(str)) {
            ((TextView) alertDialog.findViewById(R.id.title)).setText(R.string.account_error_email_registered);
        } else {
            ((TextView) alertDialog.findViewById(R.id.title)).setText(str);
        }
        alertDialog.findViewById(R.id.login_with_email).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.account.ThirdPartyAccountBaseFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                alertDialog.dismiss();
                ThirdPartyAccountBaseFragment.this.switchLogin(new Intent());
            }
        });
        alertDialog.findViewById(R.id.create_acount).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.account.ThirdPartyAccountBaseFragment.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                alertDialog.dismiss();
                ThirdPartyAccountBaseFragment thirdPartyAccountBaseFragment = ThirdPartyAccountBaseFragment.this;
                thirdPartyAccountBaseFragment.requireEmailOrPhoneNumber(thirdPartyAccountBaseFragment.thirdPartySecret);
            }
        });
        alertDialog.findViewById(R.id.cancel).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.account.ThirdPartyAccountBaseFragment.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                alertDialog.dismiss();
            }
        });
        alertDialog.show();
    }

    protected void queryThirdPartyInfo(QueryThirdPartyInfoCallBack queryThirdPartyInfoCallBack) {
        if (queryThirdPartyInfoCallBack != null) {
            queryThirdPartyInfoCallBack.onComplete(null, null);
        }
    }

    protected void requirePassword(final String str) {
        queryThirdPartyInfo(new QueryThirdPartyInfoCallBack() { // from class: com.narvii.account.ThirdPartyAccountBaseFragment.7
            @Override // com.narvii.account.ThirdPartyAccountBaseFragment.QueryThirdPartyInfoCallBack
            public void onComplete(String str2, String str3) {
                SetPasswordFragment setPasswordFragment = new SetPasswordFragment();
                Bundle bundle = new Bundle();
                bundle.putString(AccountBaseFragment.KEY_THIRD_PART_SECRET, str);
                bundle.putBoolean(AccountBaseFragment.KEY_IS_THIRD_PART, true);
                bundle.putString(AccountBaseFragment.KEY_SIGN_UP_METHOD, ThirdPartyAccountBaseFragment.this.getSignUpMethod());
                bundle.putString(AccountBaseFragment.KEY_NICKNAME, str2);
                bundle.putString(AccountBaseFragment.KEY_THIRDPARTY_AVATAR_URL, str3);
                bundle.putInt("verify_type", 4);
                setPasswordFragment.setArguments(bundle);
                ThirdPartyAccountBaseFragment.this.goToSetPasswordPage(setPasswordFragment);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void goNext(Fragment fragment) {
        if (isAdded() && getFragmentManager() != null) {
            FragmentTransaction fragmentTransactionQ = getFragmentManager().q();
            fragmentTransactionQ.z(R.anim.activity_push_left_in, R.anim.activity_push_left_out, R.anim.activity_push_right_in, R.anim.activity_push_right_out);
            if (getContainerId() != null) {
                fragmentTransactionQ.u(getContainerId().intValue(), fragment).h(null).k();
            } else {
                fragmentTransactionQ.u(R.id.frame, fragment).h(null).k();
            }
        }
    }

    public void finishThirdPartLoginWithResult(final String str, boolean z6, int i10, String str2, ApiRequest apiRequest) {
        if (!isAdded()) {
            return;
        }
        if (!z6 && (i10 == 213 || i10 == 251 || i10 == 256)) {
            str2 = null;
        }
        super.finishWithResult(z6, i10, str2, apiRequest);
        this.thirdPartySecret = str;
        if (!z6) {
            if (i10 != 213) {
                if (i10 != 251) {
                    if (i10 == 256) {
                        requirePasswordForLeader(str);
                        return;
                    }
                    return;
                } else {
                    if (this.isLoginFlow) {
                        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(getContext());
                        builder.setMessage(R.string.account_have_no_account_now);
                        builder.setPositiveButton(R.string.account_create_account, new DialogInterface.OnClickListener() { // from class: com.narvii.account.ThirdPartyAccountBaseFragment.1
                            @Override // android.content.DialogInterface.OnClickListener
                            public void onClick(DialogInterface dialogInterface, int i11) {
                                ThirdPartyAccountBaseFragment.this.requirePassword(str);
                            }
                        });
                        builder.setNegativeButton(R.string.cancel, (DialogInterface.OnClickListener) null);
                        builder.show();
                        return;
                    }
                    requirePassword(str);
                    return;
                }
            }
            if (this.isLoginFlow) {
                android.app.AlertDialog.Builder builder2 = new android.app.AlertDialog.Builder(getContext());
                builder2.setMessage(R.string.account_have_no_account_now);
                builder2.setPositiveButton(R.string.account_create_account, new DialogInterface.OnClickListener() { // from class: com.narvii.account.ThirdPartyAccountBaseFragment.2
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i11) {
                        ThirdPartyAccountBaseFragment.this.handleNoEmailDetected(str);
                    }
                });
                builder2.setNegativeButton(R.string.cancel, (DialogInterface.OnClickListener) null);
                builder2.show();
                return;
            }
            handleNoEmailDetected(str);
        }
    }

    protected void saveImage(String str, SaveImageCallBack saveImageCallBack) {
        if (TextUtils.isEmpty(str)) {
            saveImageCallBack.onCompleted(null);
        }
        File file = new File(getContext().getFilesDir(), "third");
        if (!file.exists()) {
            file.mkdirs();
        }
        DownloadTask downloadTask = new DownloadTask();
        downloadTask.url = str;
        downloadTask.dir = file;
        downloadTask.photo = (PhotoManager) getService("photo");
        downloadTask.callback = saveImageCallBack;
        runningTask = downloadTask;
        downloadTask.start();
    }
}
