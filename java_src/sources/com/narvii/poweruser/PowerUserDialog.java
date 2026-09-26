package com.narvii.poweruser;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.Html;
import androidx.fragment.app.FragmentTransaction;
import com.google.firebase.sessions.settings.c;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.BaseNavigator;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.feed.FeedHelper;
import com.narvii.model.ChatThread;
import com.narvii.model.Feed;
import com.narvii.model.Item;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.util.PackageUtils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import com.narvii.util.image.Screenshot;
import com.safedk.android.utils.Logger;
import java.io.File;
import java.io.FileOutputStream;

/* JADX INFO: loaded from: classes10.dex */
public class PowerUserDialog extends ActionSheetDialog implements DialogInterface.OnClickListener {
    private AccountService account;
    private NVContext context;
    private NVObject object;
    private int[] ops;

    public static void safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(NVContext p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i10) {
        Uri uriFromFile;
        String strNickname;
        if (this.object == null) {
        }
        switch (this.ops[i10]) {
            case R.string.add_to_popular /* 2131886224 */:
            case R.string.remove_from_popular /* 2131890145 */:
                ApiRequest.Builder builder = new ApiRequest.Builder();
                builder.https().post();
                builder.path(this.object.objectTypeName() + c.FORWARD_SLASH_STRING + this.object.id() + "/admin");
                builder.param("adminOpName", Integer.valueOf(this.ops[i10] != R.string.remove_from_popular ? 114 : 116));
                ApiRequest apiRequestBuild = builder.build();
                ProgressDialog progressDialog = new ProgressDialog(this.context.getContext());
                progressDialog.show();
                ((ApiService) this.context.getService("api")).exec(apiRequestBuild, progressDialog.dismissListener);
                break;
            case R.string.change_category /* 2131886609 */:
                ChangeCategoryFragment changeCategoryFragment = new ChangeCategoryFragment();
                Bundle bundle = new Bundle();
                bundle.putString("id", this.object.id());
                changeCategoryFragment.setArguments(bundle);
                FragmentTransaction fragmentTransactionQ = ((NVActivity) this.context.getContext()).getSupportFragmentManager().q();
                fragmentTransactionQ.e(changeCategoryFragment, "changeCategory");
                fragmentTransactionQ.k();
                break;
            case R.string.delete_permanently /* 2131887022 */:
                new FeedHelper(this.context).delete((Feed) this.object, false);
                break;
            case R.string.edit_directly /* 2131887172 */:
                new FeedHelper(this.context).refreshAndEdit((Feed) this.object);
                break;
            case R.string.urgent_review /* 2131890722 */:
                Object obj = this.context;
                if (obj instanceof Activity) {
                    try {
                        Bitmap bitmapTakeScreenshot = Screenshot.takeScreenshot((Activity) obj, 1.0f, 540, 960);
                        File newScreenshotFile = Screenshot.getNewScreenshotFile(getContext(), "urgent", "png");
                        FileOutputStream fileOutputStream = new FileOutputStream(newScreenshotFile);
                        bitmapTakeScreenshot.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                        fileOutputStream.close();
                        uriFromFile = Uri.fromFile(newScreenshotFile);
                    } catch (Throwable unused) {
                        uriFromFile = null;
                    }
                } else {
                    uriFromFile = null;
                }
                String appName = new PackageUtils(this.context.getContext()).getAppName();
                BaseNavigator baseNavigator = (BaseNavigator) this.context.getService("navigator");
                Intent intent = new Intent("android.intent.action.SENDTO", Uri.fromParts("mailto", "urgent@altamino.top", null));
                intent.putExtra("android.intent.extra.SUBJECT", "Urgent Review - " + appName);
                StringBuilder sb = new StringBuilder();
                User userProfile = this.account.getUserProfile();
                if (userProfile != null) {
                    sb.append("<b>Reporter</b>:&nbsp; <a href=\"");
                    sb.append(baseNavigator.getMyScheme());
                    sb.append("://user/");
                    sb.append(userProfile.uid);
                    sb.append("\" style=\"text-decoration:none\"><font color=\"#000000\">");
                    sb.append(userProfile.nickname());
                    sb.append("</font></a>");
                } else {
                    sb.append("From: [Unknown]");
                }
                sb.append("<br>");
                sb.append("<b>Title</b>:&nbsp; ");
                NVObject nVObject = this.object;
                if (nVObject instanceof Feed) {
                    strNickname = ((Feed) nVObject).title();
                } else if (nVObject instanceof User) {
                    strNickname = ((User) nVObject).nickname();
                } else {
                    strNickname = nVObject instanceof ChatThread ? ((ChatThread) nVObject).title : "";
                }
                String str = baseNavigator.getMyScheme() + "://" + this.object.objectTypeName() + c.FORWARD_SLASH_STRING + this.object.id();
                sb.append("<a href=\"");
                sb.append(str);
                sb.append("\">");
                sb.append(strNickname);
                sb.append("</a><br>");
                sb.append(str);
                sb.append("<br>");
                sb.append("<b>Reason</b>:&nbsp; ");
                intent.putExtra("android.intent.extra.TEXT", Html.fromHtml(sb.toString()));
                if (uriFromFile != null) {
                    intent.putExtra("android.intent.extra.STREAM", uriFromFile);
                }
                Intent intentCreateChooser = Intent.createChooser(intent, this.context.getContext().getString(R.string.app_name));
                if (Build.VERSION.SDK_INT > 24) {
                    intentCreateChooser.setFlags(3);
                }
                safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(this.context, intentCreateChooser);
                break;
        }
    }

    public void setTarget(NVObject nVObject) {
        int i10;
        this.object = nVObject;
        User userProfile = this.account.getUserProfile();
        if (userProfile == null || !userProfile.isCurator()) {
            return;
        }
        clearItems();
        if (userProfile.isCurator()) {
            addItem(R.string.urgent_review, false);
            this.ops[0] = R.string.urgent_review;
            i10 = 1;
        } else {
            i10 = 0;
        }
        addItem(R.string.change_category, false);
        int i11 = i10 + 1;
        this.ops[i10] = R.string.change_category;
        if ((nVObject instanceof Item) && ((Item) nVObject).author.role == 254) {
            addItem(R.string.edit_directly, false);
            this.ops[i11] = R.string.edit_directly;
            addItem(R.string.delete_permanently, true);
            i11 = i10 + 3;
            this.ops[i10 + 2] = R.string.delete_permanently;
        }
        if (userProfile.isCurator() && userProfile.isCurator() && (nVObject instanceof Feed)) {
            addItem(R.string.add_to_popular, false);
            this.ops[i11] = R.string.add_to_popular;
            addItem(R.string.remove_from_popular, false);
            this.ops[i11 + 1] = R.string.remove_from_popular;
        }
    }

    public PowerUserDialog(NVContext nVContext) {
        super(nVContext.getContext());
        this.ops = new int[8];
        this.context = nVContext;
        this.account = (AccountService) nVContext.getService("account");
        setOnClickListener(this);
    }
}
