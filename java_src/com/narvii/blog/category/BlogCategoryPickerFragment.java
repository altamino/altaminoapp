package com.narvii.blog.category;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
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

/* loaded from: classes2.dex */
public class BlogCategoryPickerFragment extends NVListFragment {
    public static final String KEY_IS_QUIZ = "isQuiz";
    protected Adapter adapter;
    private boolean isQuiz;

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
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

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean(KEY_IS_QUIZ, this.isQuiz);
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        if (getBooleanParam("single")) {
            return;
        }
        menu.add(0, android.R.string.ok, 0, android.R.string.ok).setIcon(new ActionBarIcon(getContext(), R.string.fa_check)).setShowAsAction(2);
    }

    @Override // android.support.v4.app.Fragment
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

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        Adapter adapter = new Adapter();
        this.adapter = adapter;
        return adapter;
    }

    class Adapter extends NVPagedAdapter<BlogCategory, BlogCategoryListResponse> {
        ArrayList<BlogCategory> selected;

        @Override // com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            return false;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemTypeCount() {
            return 4;
        }

        @Override // com.narvii.list.NVAdapter
        protected void markDisabled(View view, NVObject nVObject) {
        }

        public Adapter() {
            super(BlogCategoryPickerFragment.this);
            this.selected = JacksonUtils.readListAs(BlogCategoryPickerFragment.this.getStringParam("blogCategoryList"), BlogCategory.class);
            if (this.selected == null) {
                this.selected = new ArrayList<>();
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<BlogCategory> dataType() {
            return BlogCategory.class;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<? extends BlogCategoryListResponse> responseType() {
            return BlogCategoryListResponse.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            ApiRequest.Builder builder = ApiRequest.builder();
            builder.path("/blog-category");
            return builder.build();
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemType(Object obj) {
            int i = ((BlogCategory) obj).type;
            if (i == 1) {
                return 1;
            }
            if (i == 0) {
                return 0;
            }
            if (i == 2) {
                return 2;
            }
            return i == 3 ? 3 : -1;
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            Object item = getItem(i);
            if (item instanceof BlogCategory) {
                int i2 = ((BlogCategory) item).type;
                return i2 == 0 || i2 == 2 || i2 == 3;
            }
            return super.isEnabled(i);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) throws Resources.NotFoundException {
            BlogCategory blogCategory = (BlogCategory) obj;
            int i = blogCategory.type;
            if (i == 1) {
                View viewCreateView = createView(R.layout.blog_category_picker_group_item, viewGroup, view);
                ((TextView) viewCreateView.findViewById(R.id.text)).setText(blogCategory.label);
                return viewCreateView;
            }
            if (i != 0 && i != 2 && i != 3) {
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
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            User userProfile;
            if (obj instanceof BlogCategory) {
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
                        if (intParam <= 2) {
                            intParam = 2;
                        }
                        AccountService accountService = (AccountService) getService("account");
                        if ((accountService != null && accountService.hasAccount() && accountService.getUserProfile() != null && accountService.getUserProfile().isCurator()) || this.selected.size() < intParam) {
                            this.selected.add(blogCategory);
                        } else {
                            NVToast.makeText(getContext(), BlogCategoryPickerFragment.this.getString(R.string.blog_category_maximum_n, Integer.valueOf(intParam)), 0).show();
                        }
                    }
                    notifyDataSetChanged();
                }
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected List<BlogCategory> filterResponseList(List<BlogCategory> list, int i) {
            List<BlogCategory> listFilterResponseList = super.filterResponseList(list, i);
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
    }
}
