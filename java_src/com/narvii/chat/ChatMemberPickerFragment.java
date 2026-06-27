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
import com.narvii.amino.mastes.R;
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

/* loaded from: classes2.dex */
public class ChatMemberPickerFragment extends NVListFragment {
    Adapter adapter;
    protected InstantSearchListener instantSearchListener = new InstantSearchListener();
    private SearchAdapter searchAdapter;
    protected ChatThread thread;

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

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.select);
        setHasOptionsMenu(true);
        this.thread = (ChatThread) JacksonUtils.readAs(getStringParam("thread"), ChatThread.class);
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

    protected Adapter createMainAdapter() {
        return new Adapter();
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, android.R.string.ok, 0, android.R.string.ok).setIcon(new ActionBarIcon(getContext(), R.string.fa_check)).setShowAsAction(2);
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 17039370) {
            onConfirmPick(this.adapter.users);
        }
        return super.onOptionsItemSelected(menuItem);
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
        public Object getItem(int i) {
            return this;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        public SearchAdapter() {
            super(ChatMemberPickerFragment.this);
        }

        @Override // com.narvii.widget.SearchBar.OnSearchListener
        public void onTextChanged(SearchBar searchBar, String str) {
            ChatMemberPickerFragment.this.instantSearchListener.onTextChanged(searchBar, str);
        }

        @Override // com.narvii.widget.SearchBar.OnSearchListener
        public void onSearch(SearchBar searchBar, String str) {
            ChatMemberPickerFragment.this.instantSearchListener.onSearch(searchBar, str);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (this.view == null) {
                this.view = createView(R.layout.search_bar_scrollable_layout, viewGroup, view);
                this.thumbContainer = (LinearLayout) this.view.findViewById(R.id.thumb_container);
                this.searchBar = (SearchBar) this.view.findViewById(R.id.search_bar);
                this.searchBar.setOnSearchListener(this);
                this.searchIcon = this.view.findViewById(R.id.search_icon);
                this.thumbContainerScroller = (HorizontalScrollView) this.view.findViewById(R.id.search_thumb_scroller);
            }
            return this.view;
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
                if (arrayList != null && arrayList.size() > 0) {
                    boolean z = childCount < ChatMemberPickerFragment.this.adapter.users.size();
                    for (int i = 0; i < ChatMemberPickerFragment.this.adapter.users.size(); i++) {
                        ChatMemberPickerFragment chatMemberPickerFragment2 = ChatMemberPickerFragment.this;
                        if (chatMemberPickerFragment2.isUserEnableInSearchBar(chatMemberPickerFragment2.adapter.users.get(i))) {
                            final ThumbImageView thumbImageView = new ThumbImageView(getContext());
                            int iDpToPx = (int) Utils.dpToPx(getContext(), 2.0f);
                            int iDpToPx2 = (int) Utils.dpToPx(getContext(), 15.0f);
                            thumbImageView.setPadding(iDpToPx, iDpToPx, iDpToPx, iDpToPx);
                            int iDpToPx3 = (int) Utils.dpToPx(getContext(), 30.0f);
                            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(iDpToPx3, iDpToPx3);
                            thumbImageView.setImageUrl(ChatMemberPickerFragment.this.adapter.users.get(i).icon());
                            thumbImageView.setCornerRadius(iDpToPx2);
                            thumbImageView.setTag(R.id.chat_pick_item, ChatMemberPickerFragment.this.adapter.users.get(i));
                            thumbImageView.setDefaultDrawable(new ColorDrawable(Color.parseColor("#cccccc")));
                            thumbImageView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.ChatMemberPickerFragment.SearchAdapter.1
                                @Override // android.view.View.OnClickListener
                                public void onClick(View view) {
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
                    if (z) {
                        this.thumbContainerScroller.post(new Runnable() { // from class: com.narvii.chat.-$$Lambda$ChatMemberPickerFragment$SearchAdapter$7rQ7iCr38Xw51VjkJgvLuzdMx_c
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$updateThumbViews$0$ChatMemberPickerFragment$SearchAdapter();
                            }
                        });
                    }
                    View view = this.searchIcon;
                    if (view != null) {
                        view.setVisibility(8);
                        return;
                    }
                    return;
                }
                View view2 = this.searchIcon;
                if (view2 != null) {
                    view2.setVisibility(0);
                }
            }
        }

        public /* synthetic */ void lambda$updateThumbViews$0$ChatMemberPickerFragment$SearchAdapter() {
            this.thumbContainerScroller.fullScroll(Utils.isRtl() ? 17 : 66);
        }
    }

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

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
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
            View itemView = super.getItemView(obj, view, viewGroup);
            boolean zContainsId = Utils.containsId(this.users, ((User) obj).uid);
            itemView.findViewById(R.id.user_picker_check).setVisibility(zContainsId ? 0 : 8);
            itemView.findViewById(R.id.user_picker_uncheck).setVisibility(zContainsId ? 8 : 0);
            return itemView;
        }

        @Override // com.narvii.user.list.UserListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (obj instanceof User) {
                pickerUser((User) obj);
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void pickerUser(User user) {
            if (Utils.removeId(this.users, user.uid) == 0) {
                this.users.add(user);
            }
            notifyDataSetChanged();
            ChatMemberPickerFragment.this.searchAdapter.updateThumbViews();
        }
    }

    protected void onConfirmPick(List<User> list) {
        Intent intent = new Intent();
        intent.putExtra("users", JacksonUtils.writeAsString(list));
        setResult(-1, intent);
        finish();
    }
}
