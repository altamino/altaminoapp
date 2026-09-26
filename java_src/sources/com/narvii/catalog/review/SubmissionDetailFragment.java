package com.narvii.catalog.review;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.narvii.amino.master.R;
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
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes7.dex */
public class SubmissionDetailFragment extends NVFragment implements View.OnClickListener {
    static final int PICK_CATEGORY_REQUEST = 1;
    ItemSubmission itemSubmission;

    public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
        if (p1 == null) {
            return;
        }
        p0.startActivityForResult(p1, p5);
    }

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        if (i10 != 1 || i11 != -1 || intent == null) {
            super.onActivityResult(i10, i11, intent);
            return;
        }
        ItemCategory itemCategory = (ItemCategory) JacksonUtils.readAs(intent.getStringExtra("category"), ItemCategory.class);
        ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
        arrayNodeCreateArrayNode.add(itemCategory.categoryId);
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.catalog.review.SubmissionDetailFragment.2
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                ItemSubmission itemSubmission = (ItemSubmission) SubmissionDetailFragment.this.itemSubmission.m1622clone();
                itemSubmission.status = 2;
                SubmissionDetailFragment.this.sendNotification(new Notification("update", itemSubmission));
                SubmissionDetailFragment.this.sendNotification(new Notification("update", new ItemCategory()));
                SubmissionDetailFragment.this.finish();
            }
        };
        ((ApiService) getService("api")).exec(ApiRequest.builder().post().path("/knowledge-base-request/" + this.itemSubmission.requestId + "/approve").param("destinationCategoryIdList", arrayNodeCreateArrayNode).param("actionType", "create").build(), progressDialog.dismissListener);
        progressDialog.show();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.item_card1) {
            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, FeedDetailFragment.intent(this.itemSubmission.originalItem));
        }
        if (view.getId() == R.id.item_card2) {
            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, FeedDetailFragment.intent(this.itemSubmission.item));
        }
        if (view.getId() == R.id.show_diff) {
            Intent intent = FragmentWrapperActivity.intent(SubmissionDiffFragment.class);
            intent.putExtra("itemSubmission", getStringParam("itemSubmission"));
            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
        }
        if (view.getId() == R.id.replace) {
            ProgressDialog progressDialog = new ProgressDialog(getContext());
            progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.catalog.review.SubmissionDetailFragment.1
                @Override // com.narvii.util.Callback
                public void call(ApiResponse apiResponse) {
                    ItemSubmission itemSubmission = (ItemSubmission) SubmissionDetailFragment.this.itemSubmission.m1622clone();
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
            safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(this, FragmentWrapperActivity.intent(CategoryPickerFragment.class), 1);
        }
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.catalog_submission_detail, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
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
}
