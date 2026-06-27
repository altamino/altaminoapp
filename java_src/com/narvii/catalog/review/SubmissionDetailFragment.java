package com.narvii.catalog.review;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVFragment;
import com.narvii.catalog.category.CategoryPickerFragment;
import com.narvii.detail.FeedDetailFragment;
import com.narvii.model.ItemCategory;
import com.narvii.model.api.ApiResponse;
import com.narvii.notification.Notification;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import com.narvii.widget.CardView;

/* loaded from: classes2.dex */
public class SubmissionDetailFragment extends NVFragment implements View.OnClickListener {
    static final int PICK_CATEGORY_REQUEST = 1;
    ItemSubmission itemSubmission;

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.catalog_submission_detail, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        setTitle(R.string.approve_submission);
        this.itemSubmission = (ItemSubmission) JacksonUtils.readAs(getStringParam("itemSubmission"), ItemSubmission.class);
        CardView cardView = (CardView) view.findViewById(R.id.item_card1);
        view.findViewById(R.id.item_card1).setOnClickListener(this);
        CardView cardView2 = (CardView) view.findViewById(R.id.item_card2);
        view.findViewById(R.id.item_card2).setOnClickListener(this);
        cardView.setItem(this.itemSubmission.originalItem);
        cardView2.setItem(this.itemSubmission.item);
        view.findViewById(R.id.show_diff).setOnClickListener(this);
        view.findViewById(R.id.replace).setOnClickListener(this);
        view.findViewById(R.id.add_as_new).setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.item_card1) {
            startActivity(FeedDetailFragment.intent(this.itemSubmission.originalItem));
        }
        if (view.getId() == R.id.item_card2) {
            startActivity(FeedDetailFragment.intent(this.itemSubmission.item));
        }
        if (view.getId() == R.id.show_diff) {
            Intent intent = FragmentWrapperActivity.intent(SubmissionDiffFragment.class);
            intent.putExtra("itemSubmission", getStringParam("itemSubmission"));
            startActivity(intent);
        }
        if (view.getId() == R.id.replace) {
            ProgressDialog progressDialog = new ProgressDialog(getContext());
            progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.catalog.review.SubmissionDetailFragment.1
                @Override // com.narvii.util.Callback
                public void call(ApiResponse apiResponse) {
                    ItemSubmission itemSubmission = (ItemSubmission) SubmissionDetailFragment.this.itemSubmission.m46clone();
                    itemSubmission.status = 2;
                    SubmissionDetailFragment.this.sendNotification(new Notification("update", itemSubmission));
                    SubmissionDetailFragment.this.sendNotification(new Notification("update", new ItemCategory()));
                    SubmissionDetailFragment.this.finish();
                }
            };
            ((ApiService) getService("api")).exec(ApiRequest.builder().post().path("/knowledge-base-request/" + this.itemSubmission.requestId + "/approve").param("actionType", "replace").build(), progressDialog.dismissListener);
            progressDialog.show();
        }
        if (view.getId() == R.id.add_as_new) {
            startActivityForResult(FragmentWrapperActivity.intent(CategoryPickerFragment.class), 1);
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 1 && i2 == -1 && intent != null) {
            ItemCategory itemCategory = (ItemCategory) JacksonUtils.readAs(intent.getStringExtra("category"), ItemCategory.class);
            ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
            arrayNodeCreateArrayNode.add(itemCategory.categoryId);
            ProgressDialog progressDialog = new ProgressDialog(getContext());
            progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.catalog.review.SubmissionDetailFragment.2
                @Override // com.narvii.util.Callback
                public void call(ApiResponse apiResponse) {
                    ItemSubmission itemSubmission = (ItemSubmission) SubmissionDetailFragment.this.itemSubmission.m46clone();
                    itemSubmission.status = 2;
                    SubmissionDetailFragment.this.sendNotification(new Notification("update", itemSubmission));
                    SubmissionDetailFragment.this.sendNotification(new Notification("update", new ItemCategory()));
                    SubmissionDetailFragment.this.finish();
                }
            };
            ((ApiService) getService("api")).exec(ApiRequest.builder().post().path("/knowledge-base-request/" + this.itemSubmission.requestId + "/approve").param("destinationCategoryIdList", arrayNodeCreateArrayNode).param("actionType", "create").build(), progressDialog.dismissListener);
            progressDialog.show();
            return;
        }
        super.onActivityResult(i, i2, intent);
    }
}
