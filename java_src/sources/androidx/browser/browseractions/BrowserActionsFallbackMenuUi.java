package androidx.browser.browseractions;

import android.app.PendingIntent;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.browser.R;
import androidx.core.widget.TextViewCompat;
import com.google.android.gms.common.internal.ImagesContract;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
@Deprecated
class BrowserActionsFallbackMenuUi implements AdapterView.OnItemClickListener {
    private static final String TAG = "BrowserActionskMenuUi";

    @Nullable
    private BrowserActionsFallbackMenuDialog mBrowserActionsDialog;
    final Context mContext;
    private final List<BrowserActionItem> mMenuItems;

    @Nullable
    BrowserActionsFallMenuUiListener mMenuUiListener;
    final Uri mUri;

    /* JADX INFO: renamed from: androidx.browser.browseractions.BrowserActionsFallbackMenuUi$1, reason: invalid class name */
    /* JADX INFO: loaded from: classes5.dex */
    class AnonymousClass1 implements Runnable {
        final /* synthetic */ BrowserActionsFallbackMenuUi this$0;

        @Override // java.lang.Runnable
        public void run() {
            ((ClipboardManager) this.this$0.mContext.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText(ImagesContract.URL, this.this$0.mUri.toString()));
            Toast.makeText(this.this$0.mContext, this.this$0.mContext.getString(R.string.copy_toast_msg), 0).show();
        }
    }

    /* JADX INFO: renamed from: androidx.browser.browseractions.BrowserActionsFallbackMenuUi$2, reason: invalid class name */
    /* JADX INFO: loaded from: classes5.dex */
    class AnonymousClass2 implements DialogInterface.OnShowListener {
        final /* synthetic */ BrowserActionsFallbackMenuUi this$0;
        final /* synthetic */ View val$view;

        @Override // android.content.DialogInterface.OnShowListener
        public void onShow(DialogInterface dialogInterface) {
            BrowserActionsFallMenuUiListener browserActionsFallMenuUiListener = this.this$0.mMenuUiListener;
            if (browserActionsFallMenuUiListener == null) {
                Log.e(BrowserActionsFallbackMenuUi.TAG, "Cannot trigger menu item listener, it is null");
            } else {
                browserActionsFallMenuUiListener.a(this.val$view);
            }
        }
    }

    /* JADX INFO: renamed from: androidx.browser.browseractions.BrowserActionsFallbackMenuUi$3, reason: invalid class name */
    /* JADX INFO: loaded from: classes5.dex */
    class AnonymousClass3 implements View.OnClickListener {
        final /* synthetic */ BrowserActionsFallbackMenuUi this$0;
        final /* synthetic */ TextView val$urlTextView;

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (TextViewCompat.d(this.val$urlTextView) == Integer.MAX_VALUE) {
                this.val$urlTextView.setMaxLines(1);
                this.val$urlTextView.setEllipsize(TextUtils.TruncateAt.END);
            } else {
                this.val$urlTextView.setMaxLines(Integer.MAX_VALUE);
                this.val$urlTextView.setEllipsize(null);
            }
        }
    }

    @RestrictTo
    @VisibleForTesting
    interface BrowserActionsFallMenuUiListener {
        void a(View view);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i10, long j6) {
        BrowserActionItem browserActionItem = this.mMenuItems.get(i10);
        if (browserActionItem.a() != null) {
            try {
                browserActionItem.a().send();
            } catch (PendingIntent.CanceledException e) {
                Log.e(TAG, "Failed to send custom item action", e);
            }
        } else if (browserActionItem.d() != null) {
            browserActionItem.d().run();
        }
        BrowserActionsFallbackMenuDialog browserActionsFallbackMenuDialog = this.mBrowserActionsDialog;
        if (browserActionsFallbackMenuDialog == null) {
            Log.e(TAG, "Cannot dismiss dialog, it has already been dismissed.");
        } else {
            browserActionsFallbackMenuDialog.dismiss();
        }
    }
}
