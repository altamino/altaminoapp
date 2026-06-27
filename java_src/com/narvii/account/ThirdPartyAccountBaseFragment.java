package com.narvii.account;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentTransaction;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVApplication;
import com.narvii.photos.PhotoManager;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ProxyStack;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.URL;

/* loaded from: classes2.dex */
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

    protected String getSignUpMethod() {
        return null;
    }

    public void finishThirdPartLoginWithResult(final String str, boolean z, int i, String str2, ApiRequest apiRequest) {
        if (isAdded()) {
            if (!z && (i == 213 || i == 251 || i == 256)) {
                str2 = null;
            }
            super.finishWithResult(z, i, str2, apiRequest);
            this.thirdPartySecret = str;
            if (z) {
                return;
            }
            if (i == 213) {
                if (this.isLoginFlow) {
                    AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
                    builder.setMessage(R.string.account_have_no_account_now);
                    builder.setPositiveButton(R.string.account_create_account, new DialogInterface.OnClickListener() { // from class: com.narvii.account.ThirdPartyAccountBaseFragment.2
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i2) {
                            ThirdPartyAccountBaseFragment.this.handleNoEmailDetected(str);
                        }
                    });
                    builder.setNegativeButton(R.string.cancel, (DialogInterface.OnClickListener) null);
                    builder.show();
                    return;
                }
                handleNoEmailDetected(str);
                return;
            }
            if (i != 251) {
                if (i != 256) {
                    return;
                }
                requirePasswordForLeader(str);
            } else {
                if (this.isLoginFlow) {
                    AlertDialog.Builder builder2 = new AlertDialog.Builder(getContext());
                    builder2.setMessage(R.string.account_have_no_account_now);
                    builder2.setPositiveButton(R.string.account_create_account, new DialogInterface.OnClickListener() { // from class: com.narvii.account.ThirdPartyAccountBaseFragment.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i2) {
                            ThirdPartyAccountBaseFragment.this.requirePassword(str);
                        }
                    });
                    builder2.setNegativeButton(R.string.cancel, (DialogInterface.OnClickListener) null);
                    builder2.show();
                    return;
                }
                requirePassword(str);
            }
        }
    }

    @Override // com.narvii.account.AccountBaseFragment
    protected void handleAlreadyRegistered(String str, String str2) {
        final com.narvii.util.dialog.AlertDialog alertDialog = new com.narvii.util.dialog.AlertDialog(getContext());
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

    /* JADX INFO: Access modifiers changed from: private */
    public void handleNoEmailDetected(String str) {
        if (!LoginOrSignupFragment.showPhoneNumberItem) {
            requireEmail(str);
        } else {
            requireEmailOrPhoneNumber(str);
        }
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

    private void requireEmail(String str) {
        EmailSignupFragment emailSignupFragment = new EmailSignupFragment();
        Bundle bundle = new Bundle();
        bundle.putString(AccountBaseFragment.KEY_THIRD_PART_SECRET, str);
        bundle.putBoolean(AccountBaseFragment.KEY_IS_THIRD_PART, true);
        bundle.putString(AccountBaseFragment.KEY_SIGN_UP_METHOD, getSignUpMethod());
        emailSignupFragment.setArguments(bundle);
        goNext(emailSignupFragment);
    }

    protected void requirePassword(final String str) {
        queryThirdPartyInfo(new QueryThirdPartyInfoCallBack() { // from class: com.narvii.account.ThirdPartyAccountBaseFragment.7
            @Override // com.narvii.account.ThirdPartyAccountBaseFragment.QueryThirdPartyInfoCallBack
            public void onComplete(String str2, String str3) {
                SignUpSetPasswordFragment signUpSetPasswordFragment = new SignUpSetPasswordFragment();
                Bundle bundle = new Bundle();
                bundle.putString(AccountBaseFragment.KEY_THIRD_PART_SECRET, str);
                bundle.putBoolean(AccountBaseFragment.KEY_IS_THIRD_PART, true);
                bundle.putString(AccountBaseFragment.KEY_SIGN_UP_METHOD, ThirdPartyAccountBaseFragment.this.getSignUpMethod());
                bundle.putString(AccountBaseFragment.KEY_NICKNAME, str2);
                bundle.putString(AccountBaseFragment.KEY_THIRDPARTY_AVATAR_URL, str3);
                signUpSetPasswordFragment.setArguments(bundle);
                ThirdPartyAccountBaseFragment.this.goToSetPasswordPage(signUpSetPasswordFragment);
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

    /* JADX INFO: Access modifiers changed from: private */
    public void goNext(Fragment fragment) {
        if (!isAdded() || getFragmentManager() == null) {
            return;
        }
        FragmentTransaction fragmentTransactionBeginTransaction = getFragmentManager().beginTransaction();
        fragmentTransactionBeginTransaction.setCustomAnimations(R.anim.activity_push_left_in, R.anim.activity_push_left_out, R.anim.activity_push_right_in, R.anim.activity_push_right_out);
        fragmentTransactionBeginTransaction.replace(R.id.frame, fragment).addToBackStack(null).commitAllowingStateLoss();
    }

    protected void queryThirdPartyInfo(QueryThirdPartyInfoCallBack queryThirdPartyInfoCallBack) {
        if (queryThirdPartyInfoCallBack != null) {
            queryThirdPartyInfoCallBack.onComplete(null, null);
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

    @Override // com.narvii.account.AccountBaseFragment
    public boolean cancel() {
        runningTask = null;
        return super.cancel();
    }

    static class DownloadTask extends Thread {
        SaveImageCallBack callback;
        File dir;
        PhotoManager photo;
        String photoUrl;
        boolean success;
        String url;

        DownloadTask() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Runnable runnable;
            File fileCreateTmpFile = Utils.createTmpFile(true);
            try {
                try {
                    InputStream inputStream = new ProxyStack(NVApplication.instance()).createConnection(new URL(this.url)).getInputStream();
                    FileOutputStream fileOutputStream = new FileOutputStream(fileCreateTmpFile);
                    byte[] bArr = new byte[4096];
                    while (true) {
                        int i = inputStream.read(bArr);
                        if (i == -1) {
                            break;
                        } else {
                            fileOutputStream.write(bArr, 0, i);
                        }
                    }
                    inputStream.close();
                    fileOutputStream.close();
                    this.photoUrl = this.photo.importPhoto(this.dir, Uri.fromFile(fileCreateTmpFile));
                    this.success = true;
                    fileCreateTmpFile.delete();
                } catch (Exception e) {
                    Log.w("fail to download background image " + this.url, e);
                    this.success = false;
                    fileCreateTmpFile.delete();
                    if (this.callback == null) {
                        return;
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
    }
}
