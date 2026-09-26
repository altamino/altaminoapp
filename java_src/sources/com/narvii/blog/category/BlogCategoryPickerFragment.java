package com.narvii.blog.category;

import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.list.NVListFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.model.BlogCategory;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.model.api.BlogCategoryListResponse;
import com.narvii.util.ActionBarIcon;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.http.ApiRequest;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class BlogCategoryPickerFragment extends NVListFragment {
    public static final String KEY_IS_QUIZ = "isQuiz";
    protected Adapter adapter;
    private boolean isQuiz;

    class Adapter extends NVPagedAdapter<BlogCategory, BlogCategoryListResponse> {
        ArrayList<BlogCategory> selected;

        @Override // com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            return false;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<BlogCategory> dataType() {
            return BlogCategory.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemTypeCount() {
            return 4;
        }

        @Override // com.narvii.list.NVAdapter
        protected void markDisabled(View view, NVObject nVObject) {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<? extends BlogCategoryListResponse> responseType() {
            return BlogCategoryListResponse.class;
        }

        public Adapter() {
            super(BlogCategoryPickerFragment.this);
            ArrayList<BlogCategory> listAs = JacksonUtils.readListAs(BlogCategoryPickerFragment.this.getStringParam("blogCategoryList"), BlogCategory.class);
            this.selected = listAs;
            if (listAs == null) {
                this.selected = new ArrayList<>();
            }
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemType(Object obj) {
            int i10 = ((BlogCategory) obj).type;
            if (i10 == 1) {
                return 1;
            }
            if (i10 == 0) {
                return 0;
            }
            if (i10 == 2) {
                return 2;
            }
            return i10 == 3 ? 3 : -1;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            BlogCategory blogCategory = (BlogCategory) obj;
            int i10 = blogCategory.type;
            if (i10 == 1) {
                View viewCreateView = createView(R.layout.blog_category_picker_group_item, viewGroup, view);
                ((TextView) viewCreateView.findViewById(R.id.text)).setText(blogCategory.label);
                return viewCreateView;
            }
            if (i10 != 0 && i10 != 2 && i10 != 3) {
                return null;
            }
            View viewCreateView2 = createView(R.layout.blog_category_picker_item, viewGroup, view);
            BlogCategoryListItem blogCategoryListItem = (BlogCategoryListItem) viewCreateView2;
            blogCategoryListItem.setCategory(blogCategory);
            ArrayList<BlogCategory> arrayList = this.selected;
            blogCategoryListItem.setChecked(Boolean.valueOf(arrayList != null && Utils.containsId(arrayList, blogCategory.id())));
            markDisabled(viewCreateView2, blogCategory);
            return viewCreateView2;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            User userProfile;
            if (!(obj instanceof BlogCategory)) {
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }
            BlogCategory blogCategory = (BlogCategory) obj;
            if (blogCategory.status() != 0 && ((userProfile = ((AccountService) getService("account")).getUserProfile()) == null || !userProfile.isCurator())) {
                if (blogCategory.status() == 3) {
                    AlertDialog alertDialog = new AlertDialog(getContext());
                    alertDialog.setMessage(BlogCategoryPickerFragment.this.getString(R.string.blog_category_closed_info));
                    alertDialog.setTitle(BlogCategoryPickerFragment.this.getString(R.string.blog_category_closed_title));
                    alertDialog.addButton(android.R.string.ok, 4, (View.OnClickListener) null);
                    alertDialog.show();
                }
                return true;
            }
            if (BlogCategoryPickerFragment.this.getBooleanParam("single")) {
                Intent intent = new Intent();
                ArrayList arrayList = new ArrayList();
                arrayList.add(blogCategory);
                intent.putExtra("blogCategoryList", JacksonUtils.writeAsString(arrayList));
                BlogCategoryPickerFragment.this.setResult(-1, intent);
                BlogCategoryPickerFragment.this.finish();
            } else {
                if (this.selected == null) {
                    this.selected = new ArrayList<>();
                }
                if (Utils.removeId(this.selected, blogCategory.id()) == 0) {
                    int intParam = BlogCategoryPickerFragment.this.getIntParam("maximum", 2);
                    int i11 = intParam > 2 ? intParam : 2;
                    AccountService accountService = (AccountService) getService("account");
                    if ((accountService == null || !accountService.hasAccount() || accountService.getUserProfile() == null || !accountService.getUserProfile().isCurator()) && this.selected.size() >= i11) {
                        NVToast.makeText(getContext(), BlogCategoryPickerFragment.this.getString(R.string.blog_category_maximum_n, Integer.valueOf(i11)), 0).show();
                    } else {
                        this.selected.add(blogCategory);
                    }
                }
                notifyDataSetChanged();
            }
            return true;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            ApiRequest.Builder builder = ApiRequest.builder();
            builder.path("/blog-category");
            return builder.build();
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected List<BlogCategory> filterResponseList(List<BlogCategory> list, int i10) {
            List<BlogCategory> listFilterResponseList = super.filterResponseList(list, i10);
            if (BlogCategoryPickerFragment.this.isQuiz) {
                return listFilterResponseList;
            }
            ArrayList arrayList = new ArrayList();
            for (BlogCategory blogCategory : listFilterResponseList) {
                if (blogCategory.type != 3) {
                    arrayList.add(blogCategory);
                }
            }
            return arrayList;
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i10) {
            Object item = getItem(i10);
            if (item instanceof BlogCategory) {
                int i11 = ((BlogCategory) item).type;
                if (i11 != 0 && i11 != 2 && i11 != 3) {
                    return false;
                }
                return true;
            }
            return super.isEnabled(i10);
        }
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        Adapter adapter = new Adapter();
        this.adapter = adapter;
        return adapter;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        setTitle(R.string.blog_category_pick_category);
        if (bundle != null) {
            this.isQuiz = bundle.getBoolean(KEY_IS_QUIZ);
        } else {
            this.isQuiz = getBooleanParam(KEY_IS_QUIZ);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        if (!getBooleanParam("single")) {
            menu.add(0, android.R.string.ok, 0, android.R.string.ok).setIcon(new ActionBarIcon(getContext(), R.string.fa_check)).setShowAsAction(2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 17039370) {
            Intent intent = new Intent();
            intent.putExtra("blogCategoryList", JacksonUtils.writeAsString(this.adapter.selected));
            setResult(-1, intent);
            finish();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean(KEY_IS_QUIZ, this.isQuiz);
    }
}
