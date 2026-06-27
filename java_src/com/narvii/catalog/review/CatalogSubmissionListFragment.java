package com.narvii.catalog.review;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.catalog.category.CategoryPickerFragment;
import com.narvii.detail.FeedDetailFragment;
import com.narvii.list.NVListFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.model.Item;
import com.narvii.model.ItemCategory;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.Callback;
import com.narvii.util.DateTimeFormatter;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import com.narvii.widget.CardView;
import com.narvii.widget.ExpandTextView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NicknameView;
import java.util.ArrayList;
import java.util.HashSet;

/* loaded from: classes2.dex */
public class CatalogSubmissionListFragment extends NVListFragment {
    static final int PICK_CATEGORY_REQUEST = 1;
    Adapter adapter;
    ItemSubmission currentSubmission;

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.currentSubmission = (ItemSubmission) JacksonUtils.readAs(bundle.getString("currentSubmission"), ItemSubmission.class);
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        if (Utils.isEqualsNotNull(getStringParam("type"), "pending")) {
            setEmptyView(R.layout.catalog_submission_empty_view);
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("currentSubmission", JacksonUtils.safeWriteAsString(this.currentSubmission));
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        Adapter adapter = new Adapter();
        this.adapter = adapter;
        return adapter;
    }

    class Adapter extends NVPagedAdapter<ItemSubmission, ItemSubmissionResponse> implements NotificationListener {
        final HashSet<String> expands;
        final DateTimeFormatter fmt;

        @Override // com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            return false;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemType(Object obj) {
            return 0;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemTypeCount() {
            return 1;
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            return false;
        }

        public Adapter() {
            super(CatalogSubmissionListFragment.this);
            this.expands = new HashSet<>();
            this.fmt = new DateTimeFormatter();
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            ApiRequest.Builder builderPath = ApiRequest.builder().path("/knowledge-base-request");
            builderPath.param("type", CatalogSubmissionListFragment.this.getStringParam("type"));
            return builderPath.build();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<ItemSubmission> dataType() {
            return ItemSubmission.class;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<? extends ItemSubmissionResponse> responseType() {
            return ItemSubmissionResponse.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            ItemSubmission itemSubmission = (ItemSubmission) obj;
            View viewCreateView = createView(R.layout.catalog_submission_item, viewGroup, view);
            viewCreateView.findViewById(R.id.reject).setVisibility(itemSubmission.status == 1 ? 0 : 4);
            viewCreateView.findViewById(R.id.reject).setOnClickListener(this.subviewClickListener);
            viewCreateView.findViewById(R.id.approve).setVisibility(itemSubmission.status == 1 ? 0 : 4);
            viewCreateView.findViewById(R.id.approve).setOnClickListener(this.subviewClickListener);
            viewCreateView.findViewById(R.id.submission_status).setVisibility(itemSubmission.status == 1 ? 4 : 0);
            TextView textView = (TextView) viewCreateView.findViewById(R.id.submission_status);
            int i = itemSubmission.status;
            if (i == 2) {
                textView.setText(R.string.approved);
                textView.setBackgroundResource(R.drawable.submission_status_green);
                textView.setTextColor(-13457134);
            } else if (i == 3) {
                textView.setText(R.string.rejected);
                textView.setBackgroundResource(R.drawable.submission_status_red);
                textView.setTextColor(-1769456);
            } else if (i == 4) {
                textView.setText(R.string.canceled);
                textView.setBackgroundResource(R.drawable.submission_status_gray);
                textView.setTextColor(-5592406);
            }
            ((CardView) viewCreateView.findViewById(R.id.item_card)).setItem(itemSubmission.item);
            viewCreateView.findViewById(R.id.item_card).setOnClickListener(this.subviewClickListener);
            ((TextView) viewCreateView.findViewById(R.id.text)).setText(itemSubmission.message);
            ((ExpandTextView) viewCreateView.findViewById(R.id.text)).setExpand(this.expands.contains(itemSubmission.requestId));
            viewCreateView.findViewById(R.id.expand).setOnClickListener(this.subviewClickListener);
            Item item = itemSubmission.item;
            User user = item != null ? item.author : null;
            ((NVImageView) viewCreateView.findViewById(R.id.avatar)).setImageUrl(user != null ? user.icon() : null);
            ((NicknameView) viewCreateView.findViewById(R.id.nickname)).setUser(user, true);
            viewCreateView.findViewById(R.id.avatar).setOnClickListener(this.subviewClickListener);
            viewCreateView.findViewById(R.id.nickname).setOnClickListener(this.subviewClickListener);
            ((TextView) viewCreateView.findViewById(R.id.datetime)).setText(this.fmt.format(itemSubmission.createdTime));
            return viewCreateView;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            ItemSubmission itemSubmission = (ItemSubmission) obj;
            if (view2 != null && view2.getId() == R.id.reject) {
                CatalogSubmissionListFragment.this.reject(itemSubmission);
                return true;
            }
            if (view2 != null && view2.getId() == R.id.approve) {
                CatalogSubmissionListFragment.this.approve(itemSubmission);
                return true;
            }
            if (view2 != null && view2.getId() == R.id.item_card) {
                startActivity(FeedDetailFragment.intent(itemSubmission.item));
                return true;
            }
            if (view2 != null && view2.getId() == R.id.expand) {
                this.expands.add(itemSubmission.requestId);
                notifyDataSetChanged();
                return true;
            }
            if (view2 != null && (view2.getId() == R.id.avatar || view2.getId() == R.id.nickname)) {
                Intent intent = UserProfileFragment.intent(this, itemSubmission.item.author);
                if (intent == null) {
                    return true;
                }
                startActivity(intent);
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }

        @Override // com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            if (notification.obj instanceof ItemSubmission) {
                editList(notification, false);
            }
        }
    }

    public void reject(final ItemSubmission itemSubmission) {
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.catalog.review.CatalogSubmissionListFragment.1
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                ItemSubmission itemSubmission2 = (ItemSubmission) itemSubmission.m46clone();
                itemSubmission2.status = 3;
                CatalogSubmissionListFragment.this.sendNotification(new Notification("update", itemSubmission2));
            }
        };
        ((ApiService) getService("api")).exec(ApiRequest.builder().post().path("/knowledge-base-request/" + itemSubmission.requestId + "/reject").build(), progressDialog.dismissListener);
        progressDialog.show();
    }

    public void approve(ItemSubmission itemSubmission) {
        if (itemSubmission.originalItem == null) {
            this.currentSubmission = itemSubmission;
            Intent intent = FragmentWrapperActivity.intent(CategoryPickerFragment.class);
            intent.putExtra("multiPick", true);
            startActivityForResult(intent, 1);
            return;
        }
        Intent intent2 = FragmentWrapperActivity.intent(SubmissionDetailFragment.class);
        intent2.putExtra("itemSubmission", JacksonUtils.writeAsString(itemSubmission));
        startActivity(intent2);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 1 && i2 == -1 && intent != null) {
            ArrayList listAs = JacksonUtils.readListAs(intent.getStringExtra("categoryList"), ItemCategory.class);
            ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
            for (int i3 = 0; i3 < listAs.size(); i3++) {
                arrayNodeCreateArrayNode.add(((ItemCategory) listAs.get(i3)).categoryId);
            }
            ProgressDialog progressDialog = new ProgressDialog(getContext());
            progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.catalog.review.CatalogSubmissionListFragment.2
                @Override // com.narvii.util.Callback
                public void call(ApiResponse apiResponse) {
                    ItemSubmission itemSubmission = (ItemSubmission) CatalogSubmissionListFragment.this.currentSubmission.m46clone();
                    itemSubmission.status = 2;
                    CatalogSubmissionListFragment.this.sendNotification(new Notification("update", itemSubmission));
                    CatalogSubmissionListFragment.this.sendNotification(new Notification("update", new ItemCategory()));
                }
            };
            ((ApiService) getService("api")).exec(ApiRequest.builder().post().path("/knowledge-base-request/" + this.currentSubmission.requestId + "/approve").param("destinationCategoryIdList", arrayNodeCreateArrayNode).param("actionType", "create").build(), progressDialog.dismissListener);
            progressDialog.show();
            return;
        }
        super.onActivityResult(i, i2, intent);
    }
}
