package com.narvii.poweruser;

import android.content.DialogInterface;
import android.content.res.Resources;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.model.Feed;
import com.narvii.model.api.ApiResponse;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.dialog.CheckDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;

/* loaded from: classes3.dex */
public class PowerFeedHelper {
    SendBroadcastHelper broadcastHelper;
    NVContext context;
    Feed feed;

    public PowerFeedHelper(NVContext nVContext, Feed feed) {
        this.context = nVContext;
        this.feed = feed;
        this.broadcastHelper = new SendBroadcastHelper(nVContext);
    }

    public void showFeatureDialog(final Callback callback) {
        Feed feed = this.feed;
        if (feed == null) {
            return;
        }
        if (feed.featureType() == 2) {
            NVToast.makeText(this.context.getContext(), this.context.getContext().getString(R.string.post_is_pinned), 1).show();
            return;
        }
        if (this.feed.featureType() == 1) {
            NVToast.makeText(this.context.getContext(), this.context.getContext().getString(R.string.post_is_featured), 1).show();
            return;
        }
        ActionSheetDialog actionSheetDialog = new ActionSheetDialog(this.context.getContext());
        actionSheetDialog.setTitle(this.context.getContext().getString(R.string.feature_time_hint));
        actionSheetDialog.addItem(this.context.getContext().getString(R.string.feature_time_1_day), 0);
        actionSheetDialog.addItem(this.context.getContext().getString(R.string.feature_time_2_days), 0);
        actionSheetDialog.addItem(this.context.getContext().getString(R.string.feature_time_3_days), 0);
        actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.poweruser.PowerFeedHelper.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                if (i == 0) {
                    PowerFeedHelper.this.featureFeedForDays(1, callback);
                } else if (i == 1) {
                    PowerFeedHelper.this.featureFeedForDays(2, callback);
                } else {
                    if (i != 2) {
                        return;
                    }
                    PowerFeedHelper.this.featureFeedForDays(3, callback);
                }
            }
        });
        actionSheetDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void featureFeedForDays(int i, Callback<ApiResponse> callback) {
        featureFeed(1, i * 24 * 60 * 60, callback);
    }

    public void featureFeed(final int i, long j, final Callback<ApiResponse> callback) {
        ApiRequest.Builder builder = new ApiRequest.Builder();
        builder.https().post();
        builder.path(this.feed.apiTypeName() + "/" + this.feed.id() + "/admin");
        builder.param("adminOpName", 114);
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put("featuredType", i);
        if (j != 0) {
            objectNodeCreateObjectNode.put("featuredDuration", j);
        }
        builder.param("adminOpValue", objectNodeCreateObjectNode);
        ApiRequest apiRequestBuild = builder.build();
        ProgressDialog progressDialog = new ProgressDialog(this.context.getContext());
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.poweruser.PowerFeedHelper.2
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) throws Resources.NotFoundException {
                int i2 = i;
                if (i2 == 1 || i2 == 2) {
                    ObjectNode objectNode = PowerFeedHelper.this.feed.extensions;
                    if (objectNode != null) {
                        objectNode.put("featuredType", i);
                    } else {
                        ObjectNode objectNodeCreateObjectNode2 = JacksonUtils.createObjectNode();
                        Feed feed = PowerFeedHelper.this.feed;
                        feed.extensions = objectNodeCreateObjectNode2;
                        feed.extensions.put("featuredType", i);
                    }
                } else {
                    PowerFeedHelper.this.feed.extensions.put("featuredType", 0);
                }
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(apiResponse);
                }
                ((NotificationCenter) PowerFeedHelper.this.context.getService("notification")).sendNotification(new Notification("update", PowerFeedHelper.this.feed));
                CheckDialog checkDialog = new CheckDialog(PowerFeedHelper.this.context.getContext());
                checkDialog.setText(PowerFeedHelper.this.context.getContext().getString(R.string.success));
                checkDialog.show();
            }
        };
        progressDialog.show();
        ((ApiService) this.context.getService("api")).exec(apiRequestBuild, progressDialog.dismissListener);
    }

    public void sendBroadCast() {
        Feed feed = this.feed;
        if (feed == null) {
            return;
        }
        this.broadcastHelper.sendBroadcast(feed);
    }

    public void changeBestQuizStatus(final boolean z) {
        ApiRequest.Builder builder = new ApiRequest.Builder();
        builder.https().post();
        builder.path(this.feed.apiTypeName() + "/" + this.feed.id() + "/admin");
        builder.param("adminOpName", Integer.valueOf(z ? 240 : 241));
        ApiRequest apiRequestBuild = builder.build();
        ProgressDialog progressDialog = new ProgressDialog(this.context.getContext());
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.poweruser.PowerFeedHelper.3
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) throws Resources.NotFoundException {
                ObjectNode objectNode = PowerFeedHelper.this.feed.extensions;
                if (objectNode != null) {
                    objectNode.put("quizInBestQuizzes", z);
                } else {
                    ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
                    Feed feed = PowerFeedHelper.this.feed;
                    feed.extensions = objectNodeCreateObjectNode;
                    feed.extensions.put("quizInBestQuizzes", z);
                }
                CheckDialog checkDialog = new CheckDialog(PowerFeedHelper.this.context.getContext());
                checkDialog.setText(null);
                checkDialog.show();
            }
        };
        progressDialog.show();
        ((ApiService) this.context.getService("api")).exec(apiRequestBuild, progressDialog.dismissListener);
    }
}
