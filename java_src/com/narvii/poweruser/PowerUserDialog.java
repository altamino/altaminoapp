package com.narvii.poweruser;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.app.FragmentTransaction;
import android.text.Html;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
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
import java.io.File;
import java.io.FileOutputStream;

/* loaded from: classes3.dex */
public class PowerUserDialog extends ActionSheetDialog implements DialogInterface.OnClickListener {
    private AccountService account;
    private NVContext context;
    private NVObject object;
    private int[] ops;

    public PowerUserDialog(NVContext nVContext) {
        super(nVContext.getContext());
        this.ops = new int[8];
        this.context = nVContext;
        this.account = (AccountService) nVContext.getService("account");
        setOnClickListener(this);
    }

    public void setTarget(NVObject nVObject) {
        int i;
        this.object = nVObject;
        User userProfile = this.account.getUserProfile();
        if (userProfile == null || !userProfile.isCurator()) {
            return;
        }
        int i2 = userProfile.role;
        clearItems();
        if (userProfile == null || !userProfile.isCurator()) {
            i = 0;
        } else {
            addItem(R.string.urgent_review, false);
            this.ops[0] = R.string.urgent_review;
            i = 1;
        }
        addItem(R.string.change_category, false);
        int i3 = i + 1;
        this.ops[i] = R.string.change_category;
        if ((nVObject instanceof Item) && ((Item) nVObject).author.role == 254) {
            addItem(R.string.edit_directly, false);
            int i4 = i3 + 1;
            this.ops[i3] = R.string.edit_directly;
            addItem(R.string.delete_permanently, true);
            i3 = i4 + 1;
            this.ops[i4] = R.string.delete_permanently;
        }
        if (userProfile.isCurator() && userProfile.isCurator() && (nVObject instanceof Feed)) {
            addItem(R.string.add_to_popular, false);
            this.ops[i3] = R.string.add_to_popular;
            addItem(R.string.remove_from_popular, false);
            this.ops[i3 + 1] = R.string.remove_from_popular;
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) throws PackageManager.NameNotFoundException {
        Uri uriFromFile;
        String strNickname;
        if (this.object == null) {
        }
        switch (this.ops[i]) {
            case R.string.add_to_popular /* 2131689607 */:
            case R.string.remove_from_popular /* 2131693251 */:
                ApiRequest.Builder builder = new ApiRequest.Builder();
                builder.https().post();
                builder.path(this.object.objectTypeName() + "/" + this.object.id() + "/admin");
                builder.param("adminOpName", Integer.valueOf(this.ops[i] != R.string.remove_from_popular ? 114 : 116));
                ApiRequest apiRequestBuild = builder.build();
                ProgressDialog progressDialog = new ProgressDialog(this.context.getContext());
                progressDialog.show();
                ((ApiService) this.context.getService("api")).exec(apiRequestBuild, progressDialog.dismissListener);
                break;
            case R.string.change_category /* 2131689922 */:
                ChangeCategoryFragment changeCategoryFragment = new ChangeCategoryFragment();
                Bundle bundle = new Bundle();
                bundle.putString("id", this.object.id());
                changeCategoryFragment.setArguments(bundle);
                FragmentTransaction fragmentTransactionBeginTransaction = ((NVActivity) this.context.getContext()).getSupportFragmentManager().beginTransaction();
                fragmentTransactionBeginTransaction.add(changeCategoryFragment, "changeCategory");
                fragmentTransactionBeginTransaction.commitAllowingStateLoss();
                break;
            case R.string.delete_permanently /* 2131690326 */:
                new FeedHelper(this.context).delete((Feed) this.object, false);
                break;
            case R.string.edit_directly /* 2131690457 */:
                new FeedHelper(this.context).refreshAndEdit((Feed) this.object);
                break;
            case R.string.urgent_review /* 2131693847 */:
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
                    }
                } else {
                    uriFromFile = null;
                }
                String appName = new PackageUtils(this.context.getContext()).getAppName();
                BaseNavigator baseNavigator = (BaseNavigator) this.context.getService("navigator");
                Intent intent = new Intent("android.intent.action.SENDTO", Uri.fromParts("mailto", "urgent@aminoapps.com", null));
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
                String str = baseNavigator.getMyScheme() + "://" + this.object.objectTypeName() + "/" + this.object.id();
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
                this.context.startActivity(intentCreateChooser);
                break;
        }
    }
}
