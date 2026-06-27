package com.narvii.item;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.narvii.account.AccountService;
import com.narvii.account.notice.AccountNotice;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVFragment;
import com.narvii.catalog.category.CategoryPickerFragment;
import com.narvii.master.home.profile.GlobalProfileFragment;
import com.narvii.model.Item;
import com.narvii.model.ItemCategory;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.CategoryListResponse;
import com.narvii.notification.Notification;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class ItemHelper {
    public static final int PICK_CATEGORY_REQUEST = 100;
    public NVFragment nvFragment;
    public String source;

    public ItemHelper(NVFragment nVFragment) {
        this.nvFragment = nVFragment;
    }

    public void addToMyFavorites(final String str, final Callback<String> callback) {
        if (str == null) {
            return;
        }
        ProgressDialog progressDialog = new ProgressDialog(this.nvFragment.getContext(), CategoryListResponse.class);
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.item.ItemHelper.1
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                CategoryListResponse categoryListResponse = (CategoryListResponse) apiResponse;
                if (categoryListResponse.getSubCategoryList(categoryListResponse.getRootCategory().categoryId).isEmpty()) {
                    ItemHelper.this.addToCategory(Collections.emptyList(), str, callback);
                    return;
                }
                Intent intent = FragmentWrapperActivity.intent(CategoryPickerFragment.class);
                intent.putExtra("multiPick", true);
                intent.putExtra("uid", ((AccountService) ItemHelper.this.nvFragment.getService("account")).getUserId());
                intent.putExtra("resp", JacksonUtils.writeAsString(categoryListResponse));
                intent.putExtra("title", ItemHelper.this.nvFragment.getString(R.string.catalog_add_to_categories));
                intent.putExtra("itemId", str);
                if (ItemHelper.this.nvFragment.isAdded()) {
                    ItemHelper.this.nvFragment.startActivityForResult(intent, 100);
                }
            }
        };
        ApiService apiService = (ApiService) this.nvFragment.getService("api");
        ApiRequest.Builder builderPath = ApiRequest.builder().path("/item-category");
        builderPath.param("type", GlobalProfileFragment.KEY_USER);
        builderPath.param("q", ((AccountService) this.nvFragment.getService("account")).getUserId());
        apiService.exec(builderPath.build(), progressDialog.dismissListener);
        progressDialog.show();
    }

    public void addToCategory(final List<ItemCategory> list, final String str, final Callback<String> callback) {
        if (str == null) {
            return;
        }
        ProgressDialog progressDialog = new ProgressDialog(this.nvFragment.getContext());
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.item.ItemHelper.2
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                ItemCategory itemCategory;
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(str);
                }
                NVToast.makeText(ItemHelper.this.nvFragment.getContext(), R.string.added_to_favorites, 1).show();
                List list2 = list;
                if (list2 != null && list2.size() > 0) {
                    itemCategory = (ItemCategory) list.get(0);
                } else {
                    itemCategory = new ItemCategory();
                }
                Notification notification = new Notification("update", itemCategory);
                Notification notification2 = new Notification("update", new ItemPinObject(str, 1));
                notification.uid = ((AccountService) ItemHelper.this.nvFragment.getService("account")).getUserId();
                ItemHelper.this.nvFragment.sendNotification(notification);
                ItemHelper.this.nvFragment.sendNotification(notification2);
            }
        };
        ApiRequest.Builder builder = ApiRequest.builder();
        builder.post().path("/item/" + str + "/tag");
        builder.param("destinationUid", ((AccountService) this.nvFragment.getService("account")).getUserId());
        ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
        arrayNodeCreateArrayNode.add(str);
        builder.param("itemIdList", arrayNodeCreateArrayNode);
        ArrayNode arrayNodeCreateArrayNode2 = JacksonUtils.createArrayNode();
        if (list != null) {
            Iterator<ItemCategory> it = list.iterator();
            while (it.hasNext()) {
                arrayNodeCreateArrayNode2.add(it.next().categoryId);
            }
        }
        builder.param("categoryIdList", arrayNodeCreateArrayNode2);
        ((ApiService) this.nvFragment.getService("api")).exec(builder.build(), progressDialog.dismissListener);
        progressDialog.show();
    }

    public void submitOfficialCatalog(final Item item) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.nvFragment.getContext());
        final View viewInflate = View.inflate(this.nvFragment.getContext(), R.layout.catalog_submit_official_dialog, null);
        builder.setView(viewInflate);
        builder.setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() { // from class: com.narvii.item.ItemHelper.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                TextView textView = (TextView) viewInflate.findViewById(R.id.text);
                ProgressDialog progressDialog = new ProgressDialog(ItemHelper.this.nvFragment.getContext());
                progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.item.ItemHelper.3.1
                    @Override // com.narvii.util.Callback
                    public void call(ApiResponse apiResponse) {
                        if (ItemHelper.this.nvFragment.getActivity() != null) {
                            NVToast.makeText(ItemHelper.this.nvFragment.getContext(), R.string.submitted, 1).show();
                        }
                    }
                };
                ((ApiService) ItemHelper.this.nvFragment.getService("api")).exec(ApiRequest.builder().post().path("/knowledge-base-request").param(AccountNotice.LEVEL_MESSAGE, textView.getText().toString()).param("itemId", item.itemId).build(), progressDialog.dismissListener);
                progressDialog.show();
            }
        });
        builder.setNegativeButton(android.R.string.cancel, Utils.DIALOG_BUTTON_EMPTY_LISTENER);
        builder.show();
        Utils.postDelayed(new Runnable() { // from class: com.narvii.item.ItemHelper.4
            @Override // java.lang.Runnable
            public void run() {
                SoftKeyboard.showSoftKeyboard((EditText) viewInflate.findViewById(R.id.text));
            }
        }, 400L);
    }
}
