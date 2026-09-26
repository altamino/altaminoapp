package com.narvii.permisson;

import android.content.Context;
import android.content.Intent;
import android.graphics.Typeface;
import android.net.Uri;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.RelativeSizeSpan;
import android.text.style.StyleSpan;
import android.view.View;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.view.GravityCompat;
import com.narvii.lib.R;
import com.narvii.util.Callback;
import com.narvii.widget.ACMAlertDialog;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class PermissionRationaleDialog extends ACMAlertDialog {
    public static final int ACTION_ALLOW = 1;
    public static boolean isShowing;
    private Callback<Integer> callback;
    private Callback cancelCallback;
    private Context context;
    public String deniedInfo;
    List<String> deniedPermissionHint;
    public HashMap<String, String> rations;
    private TextView tvMessage;

    public static class Builder {
        private Context context;
        PermissionRationaleDialog rationaleDialog;

        public Builder addPermissionDeniedHint(String str) {
            this.rationaleDialog.addPermissionDeniedHint(str);
            return this;
        }

        public Builder addPermissionRationale(String str, String str2) {
            this.rationaleDialog.addPermissionRationale(str, str2);
            return this;
        }

        public Builder addPermissionDeniedHint(int i10) {
            this.rationaleDialog.addPermissionDeniedHint(i10);
            return this;
        }

        public Builder addPermissionRationale(int i10, int i11) {
            this.rationaleDialog.addPermissionRationale(i10, i11);
            return this;
        }

        public Builder setCallback(Callback<Integer> callback) {
            this.rationaleDialog.callback = callback;
            return this;
        }

        public Builder setCancelCallback(Callback<Integer> callback) {
            this.rationaleDialog.cancelCallback = callback;
            return this;
        }

        public Builder setDeniedHintInfo(String str) {
            this.rationaleDialog.setDeniedInfo(str);
            return this;
        }

        public Builder setDeniedPermissionList(List<String> list) {
            if (list == null) {
                return this;
            }
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                this.rationaleDialog.addPermissionDeniedHint(PermissionUtils.PERMISSION_NAMES.get(it.next()).intValue());
            }
            return this;
        }

        public Builder setRationalePermissionList(List<String> list) {
            if (list == null) {
                return this;
            }
            for (String str : list) {
                this.rationaleDialog.addPermissionRationale(PermissionUtils.PERMISSION_NAMES.get(str).intValue(), PermissionUtils.PERMISSION_RATIONALES.get(str).intValue());
            }
            return this;
        }

        public void show() {
            this.rationaleDialog.parepageDialog();
            this.rationaleDialog.show();
        }

        public Builder(Context context) {
            this.rationaleDialog = new PermissionRationaleDialog(context);
            this.context = context;
        }
    }

    public void addPermissionDeniedHint(String str) {
        this.deniedPermissionHint.add(str);
    }

    public void addPermissionRationale(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        this.rations.put(str, str2);
    }

    public void setDeniedInfo(String str) {
        this.deniedInfo = str;
    }

    public static Builder builder(Context context) {
        return new Builder(context);
    }

    public void addPermissionDeniedHint(int i10) {
        String string = this.context.getString(i10);
        if (TextUtils.isEmpty(string)) {
            return;
        }
        this.deniedPermissionHint.add(string);
    }

    public void parepageDialog() {
        setTitle(R.string.allow_amino_permission);
        this.title.setTextColor(ContextCompat.getColor(getContext(), R.color.dialog_option_blue));
        this.title.setTypeface(Typeface.DEFAULT);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        for (Map.Entry<String, String> entry : this.rations.entrySet()) {
            int length = spannableStringBuilder.length();
            spannableStringBuilder.append((CharSequence) entry.getKey());
            spannableStringBuilder.setSpan(new StyleSpan(1), length, spannableStringBuilder.length(), 33);
            spannableStringBuilder.append((CharSequence) "\n");
            int length2 = spannableStringBuilder.length();
            spannableStringBuilder.append((CharSequence) "\n");
            spannableStringBuilder.setSpan(new RelativeSizeSpan(0.4f), length2, spannableStringBuilder.length(), 33);
            spannableStringBuilder.append((CharSequence) entry.getValue());
            spannableStringBuilder.append((CharSequence) "\n");
            spannableStringBuilder.append((CharSequence) "\n");
        }
        if (this.deniedPermissionHint.size() > 0) {
            spannableStringBuilder.append((CharSequence) "\n");
            String str = "";
            for (int i10 = 0; i10 < this.deniedPermissionHint.size(); i10++) {
                String str2 = this.deniedPermissionHint.get(i10);
                str = i10 == this.deniedPermissionHint.size() - 1 ? str + str2 : str + str2 + this.context.getString(R.string.and);
            }
            spannableStringBuilder.append((CharSequence) this.context.getString(R.string.denied_hint, str));
        }
        TextView textView = (TextView) findViewById(R.id.alert_dialog_message);
        textView.setGravity(GravityCompat.START);
        textView.setText(spannableStringBuilder);
        List<String> list = this.deniedPermissionHint;
        if (list == null || list.size() == 0) {
            addButton(R.string.deny, new View.OnClickListener() { // from class: com.narvii.permisson.PermissionRationaleDialog.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (PermissionRationaleDialog.this.cancelCallback != null) {
                        PermissionRationaleDialog.this.cancelCallback.call(null);
                    }
                }
            }, -7829368);
            addButton(R.string.allow, new View.OnClickListener() { // from class: com.narvii.permisson.PermissionRationaleDialog.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (PermissionRationaleDialog.this.callback != null) {
                        PermissionRationaleDialog.this.callback.call(1);
                    }
                }
            });
        } else {
            addButton(R.string.not_now, new View.OnClickListener() { // from class: com.narvii.permisson.PermissionRationaleDialog.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (PermissionRationaleDialog.this.cancelCallback != null) {
                        PermissionRationaleDialog.this.cancelCallback.call(null);
                    }
                }
            }, -7829368);
            addButton(R.string.app_setttings, new View.OnClickListener() { // from class: com.narvii.permisson.PermissionRationaleDialog.4
                public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
                    Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
                    if (p1 == null) {
                        return;
                    }
                    p0.startActivity(p1);
                }

                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    Intent intent = new Intent();
                    intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
                    intent.setData(Uri.fromParts("package", PermissionRationaleDialog.this.context.getPackageName(), null));
                    safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(PermissionRationaleDialog.this.context, intent);
                }
            });
        }
    }

    public PermissionRationaleDialog(Context context) {
        super(context);
        this.rations = new HashMap<>();
        this.deniedPermissionHint = new ArrayList();
        this.context = context;
        this.tvMessage = (TextView) findViewById(R.id.message);
    }

    public void addPermissionRationale(int i10, int i11) {
        String string = this.context.getString(i10);
        String string2 = this.context.getString(i11);
        if (TextUtils.isEmpty(string) || TextUtils.isEmpty(string)) {
            return;
        }
        this.rations.put(string, string2);
    }

    @Override // com.narvii.widget.ACMAlertDialog, com.narvii.app.NVDialog, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
    }

    @Override // android.app.Dialog
    protected void onStop() {
        super.onStop();
        isShowing = false;
    }

    @Override // com.narvii.app.NVDialog, android.app.Dialog
    public void show() {
        super.show();
        isShowing = true;
    }
}
