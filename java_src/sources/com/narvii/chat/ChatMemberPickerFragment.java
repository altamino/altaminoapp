package com.narvii.chat;

import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import com.narvii.amino.master.R;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.model.ChatThread;
import com.narvii.model.User;
import com.narvii.search.InstantSearchListener;
import com.narvii.user.list.UserListAdapter;
import com.narvii.util.ActionBarIcon;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.SearchBar;
import com.narvii.widget.ThumbImageView;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class ChatMemberPickerFragment extends NVListFragment {
    Adapter adapter;
    protected InstantSearchListener instantSearchListener = new InstantSearchListener();
    private SearchAdapter searchAdapter;
    protected ChatThread thread;

    public class Adapter extends UserListAdapter {
        protected ArrayList<User> users;

        @Override // com.narvii.user.list.UserListAdapter
        protected boolean filterYourself() {
            return true;
        }

        @Override // com.narvii.user.list.UserListAdapter
        protected int layoutId() {
            return R.layout.user_item_picker;
        }

        public Adapter() {
            super(ChatMemberPickerFragment.this);
        }

        @Override // com.narvii.user.list.UserListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (!(obj instanceof User)) {
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }
            pickerUser((User) obj);
            return true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void pickerUser(User user) {
            if (Utils.removeId(this.users, user.uid) == 0) {
                this.users.add(user);
            }
            notifyDataSetChanged();
            ChatMemberPickerFragment.this.searchAdapter.updateThumbViews();
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            ApiRequest.Builder builder = ApiRequest.builder();
            builder.path("/chat/thread/" + ChatMemberPickerFragment.this.thread.threadId + "/member");
            builder.param("type", ChatMemberPickerFragment.this.getMemberType());
            if (!TextUtils.isEmpty(ChatMemberPickerFragment.this.instantSearchListener.getKeyword())) {
                builder.param("q", ChatMemberPickerFragment.this.instantSearchListener.getKeyword());
            }
            return builder.build();
        }

        @Override // com.narvii.user.list.UserListAdapter, com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            int i10;
            View itemView = super.getItemView(obj, view, viewGroup);
            boolean zContainsId = Utils.containsId(this.users, ((User) obj).uid);
            View viewFindViewById = itemView.findViewById(R.id.user_picker_check);
            int i11 = 8;
            if (zContainsId) {
                i10 = 0;
            } else {
                i10 = 8;
            }
            viewFindViewById.setVisibility(i10);
            View viewFindViewById2 = itemView.findViewById(R.id.user_picker_uncheck);
            if (!zContainsId) {
                i11 = 0;
            }
            viewFindViewById2.setVisibility(i11);
            return itemView;
        }
    }

    protected class SearchAdapter extends NVAdapter implements SearchBar.OnSearchListener {
        private SearchBar searchBar;
        private View searchIcon;
        private ViewGroup thumbContainer;
        private HorizontalScrollView thumbContainerScroller;
        View view;

        @Override // android.widget.Adapter
        public int getCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            return this;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return 0L;
        }

        public SearchAdapter() {
            super(ChatMemberPickerFragment.this);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$updateThumbViews$0() {
            this.thumbContainerScroller.fullScroll(Utils.isRtl() ? 17 : 66);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateThumbViews() {
            if (this.thumbContainer != null) {
                ChatMemberPickerFragment chatMemberPickerFragment = ChatMemberPickerFragment.this;
                if (chatMemberPickerFragment.adapter == null || !chatMemberPickerFragment.showSearchBar()) {
                    return;
                }
                int childCount = this.thumbContainer.getChildCount();
                this.thumbContainer.removeAllViews();
                ArrayList<User> arrayList = ChatMemberPickerFragment.this.adapter.users;
                if (arrayList == null || arrayList.size() <= 0) {
                    View view = this.searchIcon;
                    if (view != null) {
                        view.setVisibility(0);
                        return;
                    }
                    return;
                }
                boolean z6 = childCount < ChatMemberPickerFragment.this.adapter.users.size();
                for (int i10 = 0; i10 < ChatMemberPickerFragment.this.adapter.users.size(); i10++) {
                    ChatMemberPickerFragment chatMemberPickerFragment2 = ChatMemberPickerFragment.this;
                    if (chatMemberPickerFragment2.isUserEnableInSearchBar(chatMemberPickerFragment2.adapter.users.get(i10))) {
                        final ThumbImageView thumbImageView = new ThumbImageView(getContext());
                        int iDpToPx = (int) Utils.dpToPx(getContext(), 2.0f);
                        int iDpToPx2 = (int) Utils.dpToPx(getContext(), 15.0f);
                        thumbImageView.setPadding(iDpToPx, iDpToPx, iDpToPx, iDpToPx);
                        int iDpToPx3 = (int) Utils.dpToPx(getContext(), 30.0f);
                        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(iDpToPx3, iDpToPx3);
                        thumbImageView.setImageUrl(ChatMemberPickerFragment.this.adapter.users.get(i10).icon());
                        thumbImageView.setCornerRadius(iDpToPx2);
                        thumbImageView.setTag(R.id.chat_pick_item, ChatMemberPickerFragment.this.adapter.users.get(i10));
                        thumbImageView.setDefaultDrawable(new ColorDrawable(Color.parseColor("#cccccc")));
                        thumbImageView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.ChatMemberPickerFragment.SearchAdapter.1
                            @Override // android.view.View.OnClickListener
                            public void onClick(View view2) {
                                if (thumbImageView.getTag(R.id.chat_pick_item) instanceof User) {
                                    ChatMemberPickerFragment.this.adapter.users.remove((User) thumbImageView.getTag(R.id.chat_pick_item));
                                }
                                SearchAdapter.this.updateThumbViews();
                                ChatMemberPickerFragment.this.adapter.notifyDataSetChanged();
                            }
                        });
                        this.thumbContainer.addView(thumbImageView, layoutParams);
                    }
                }
                if (z6) {
                    this.thumbContainerScroller.post(new Runnable() { // from class: com.narvii.chat.s
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f2018a.lambda$updateThumbViews$0();
                        }
                    });
                }
                View view2 = this.searchIcon;
                if (view2 != null) {
                    view2.setVisibility(8);
                }
            }
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            if (this.view == null) {
                View viewCreateView = createView(R.layout.search_bar_scrollable_layout, viewGroup, view);
                this.view = viewCreateView;
                this.thumbContainer = (LinearLayout) viewCreateView.findViewById(R.id.thumb_container);
                SearchBar searchBar = (SearchBar) this.view.findViewById(R.id.search_bar);
                this.searchBar = searchBar;
                searchBar.setOnSearchListener(this);
                this.searchIcon = this.view.findViewById(R.id.search_icon);
                this.thumbContainerScroller = (HorizontalScrollView) this.view.findViewById(R.id.search_thumb_scroller);
            }
            return this.view;
        }

        @Override // com.narvii.widget.SearchBar.OnSearchListener
        public void onSearch(SearchBar searchBar, String str) {
            ChatMemberPickerFragment.this.instantSearchListener.onSearch(searchBar, str);
        }

        @Override // com.narvii.widget.SearchBar.OnSearchListener
        public void onTextChanged(SearchBar searchBar, String str) {
            ChatMemberPickerFragment.this.instantSearchListener.onTextChanged(searchBar, str);
        }
    }

    protected String getMemberType() {
        return "default";
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    protected boolean isUserEnableInSearchBar(User user) {
        return true;
    }

    protected boolean showSearchBar() {
        return false;
    }

    protected Adapter createMainAdapter() {
        return new Adapter();
    }

    protected void onConfirmPick(List<User> list) {
        Intent intent = new Intent();
        intent.putExtra("users", JacksonUtils.writeAsString(list));
        setResult(-1, intent);
        finish();
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.adapter = createMainAdapter();
        if (bundle == null) {
            String stringParam = getStringParam("users");
            this.adapter.users = JacksonUtils.readListAs(stringParam, User.class);
            Adapter adapter = this.adapter;
            if (adapter.users == null) {
                adapter.users = new ArrayList<>();
            }
        }
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        this.searchAdapter = new SearchAdapter();
        this.instantSearchListener.attachAdapter(this.adapter);
        if (showSearchBar()) {
            mergeAdapter.addAdapter(this.searchAdapter);
        }
        mergeAdapter.addAdapter(this.adapter, true);
        return mergeAdapter;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.select);
        setHasOptionsMenu(true);
        this.thread = (ChatThread) JacksonUtils.readAs(getStringParam("thread"), ChatThread.class);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, android.R.string.ok, 0, android.R.string.ok).setIcon(new ActionBarIcon(getContext(), R.string.fa_check)).setShowAsAction(2);
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 17039370) {
            onConfirmPick(this.adapter.users);
        }
        return super.onOptionsItemSelected(menuItem);
    }
}
