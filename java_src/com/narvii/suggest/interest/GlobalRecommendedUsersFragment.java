package com.narvii.suggest.interest;

import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.StaticViewAdapter;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.suggest.interest.InterestPickerFragment;
import com.narvii.util.Callback;
import com.narvii.util.CollectionUtils;
import com.narvii.util.FilterHelper;
import com.narvii.util.JacksonUtils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.text.TextUtils;
import com.narvii.widget.NicknameView;
import com.narvii.widget.UserAvatarLayout;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* loaded from: classes3.dex */
public class GlobalRecommendedUsersFragment extends InterestPickerFragment.InterestPickerBaseFragment {
    Adapter adapter;
    private Button btNext;

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "RecommendUser";
    }

    @Override // com.narvii.app.NVFragment
    public boolean isGlobal() {
        return true;
    }

    @Override // com.narvii.suggest.interest.InterestPickerFragment.InterestPickerBaseFragment
    protected boolean showSkip() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        StaticViewAdapter staticViewAdapter = new StaticViewAdapter() { // from class: com.narvii.suggest.interest.GlobalRecommendedUsersFragment.1
            @Override // com.narvii.list.StaticViewAdapter, android.widget.Adapter
            public int getCount() {
                Adapter adapter = GlobalRecommendedUsersFragment.this.adapter;
                if (adapter == null || adapter.isEmpty()) {
                    return 0;
                }
                return super.getCount();
            }
        };
        staticViewAdapter.addLayouts(R.layout.interest_picker_layout_recommended_users_header);
        mergeAdapter.addAdapter(staticViewAdapter);
        this.adapter = new Adapter(this);
        mergeAdapter.addAdapter(this.adapter, true);
        mergeAdapter.addAdapter(new InterestPickerFragment.InterestPickerBaseFragment.BottomPaddingAdapter(this.adapter));
        return mergeAdapter;
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.interest_picker_layout_default, viewGroup, false);
    }

    @Override // com.narvii.suggest.interest.InterestPickerFragment.InterestPickerBaseFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        this.btNext = (Button) view.findViewById(R.id.next_button);
        updateButton();
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
        listView.setDividerHeight(0);
    }

    @Override // com.narvii.list.NVListFragment
    public Drawable getListSelector() {
        return new ColorDrawable(0);
    }

    @Override // com.narvii.suggest.interest.InterestPickerFragment.InterestPickerBaseFragment
    protected String getNextButtonText(int i, int i2) {
        return getString(R.string.follow_and_next);
    }

    @Override // com.narvii.suggest.interest.InterestPickerFragment.InterestPickerBaseFragment
    protected void doSubmit() {
        Adapter adapter = this.adapter;
        if (adapter == null) {
            return;
        }
        Set<String> uidList = adapter.getUidList();
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.suggest.interest.GlobalRecommendedUsersFragment.2
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                GlobalRecommendedUsersFragment.this.finish();
            }
        };
        progressDialog.show();
        LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("FollowAndNext").extraParam("followUserCount", Integer.valueOf(uidList.size())).send();
        ApiService apiService = (ApiService) getService("api");
        ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
        Iterator<String> it = uidList.iterator();
        while (it.hasNext()) {
            arrayNodeCreateArrayNode.add(it.next());
        }
        apiService.exec(ApiRequest.builder().global().post().path("/persona/onboarding-following?language=" + getLanguageCode()).param("followingUserIds", arrayNodeCreateArrayNode).build(), progressDialog.dismissListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateButton() {
        Button button = this.btNext;
        Adapter adapter = this.adapter;
        button.setEnabled((adapter == null || adapter.getUidList().isEmpty()) ? false : true);
    }

    class Adapter extends NVAdapter {
        String error;
        Set<String> uidList;
        List<Object> userList;

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 2;
        }

        class Section {
            String name;

            public Section(String str) {
                this.name = str;
            }
        }

        public Adapter(NVContext nVContext) {
            super(nVContext);
            this.uidList = new HashSet();
        }

        public Set<String> getUidList() {
            return this.uidList;
        }

        @Override // com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            sendRequest();
        }

        @Override // com.narvii.list.NVAdapter
        public String errorMessage() {
            return this.error;
        }

        @Override // com.narvii.list.NVAdapter
        public boolean isListShown() {
            return (this.userList == null && this.error == null) ? false : true;
        }

        @Override // com.narvii.list.NVAdapter
        public void refresh(int i, Callback<Integer> callback) {
            this.userList = null;
            this.uidList = new HashSet();
            this.error = null;
            sendRequest();
            notifyDataSetChanged();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void getUserList(RcmdUserListResponse rcmdUserListResponse) {
            List<RcmdUser> list;
            this.userList = new ArrayList();
            this.uidList = new HashSet();
            FilterHelper filterHelper = new FilterHelper(this);
            if (rcmdUserListResponse == null || (list = rcmdUserListResponse.rcmdUsersList) == null) {
                return;
            }
            for (RcmdUser rcmdUser : list) {
                List listFilter = filterHelper.filter(rcmdUser.rcmdUsers);
                if (!CollectionUtils.isEmpty(listFilter)) {
                    this.userList.add(new Section(rcmdUser.getDisplayName()));
                    this.userList.addAll(listFilter);
                    Iterator it = listFilter.iterator();
                    while (it.hasNext()) {
                        this.uidList.add(((User) it.next()).id());
                    }
                }
            }
        }

        private void sendRequest() {
            ((ApiService) getService("api")).exec(ApiRequest.builder().path("/rcmd/users").param("scenario", "onboarding").param(IjkMediaMeta.IJKM_KEY_LANGUAGE, GlobalRecommendedUsersFragment.this.getLanguageCode()).build(), new ApiResponseListener<RcmdUserListResponse>(RcmdUserListResponse.class) { // from class: com.narvii.suggest.interest.GlobalRecommendedUsersFragment.Adapter.1
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, RcmdUserListResponse rcmdUserListResponse) {
                    Adapter.this.getUserList(rcmdUserListResponse);
                    Adapter adapter = Adapter.this;
                    adapter.error = null;
                    adapter.notifyDataSetChanged();
                    GlobalRecommendedUsersFragment.this.updateButton();
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    Adapter adapter = Adapter.this;
                    adapter.error = str;
                    adapter.notifyDataSetChanged();
                }
            });
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i) {
            Object item = getItem(i);
            if (item == null) {
                return -1;
            }
            return item instanceof Section ? 0 : 1;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return CollectionUtils.getSize(this.userList);
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            List<Object> list = this.userList;
            if (list != null && i < list.size() && i >= 0) {
                return this.userList.get(i);
            }
            return null;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if ((obj instanceof User) && view2 != null && view2.getId() == R.id.item_user) {
                User user = (User) obj;
                if (this.uidList.contains(user.id())) {
                    this.uidList.remove(user.id());
                } else {
                    this.uidList.add(user.id());
                }
                notifyDataSetChanged();
                GlobalRecommendedUsersFragment.this.updateButton();
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            Object item = getItem(i);
            if (item instanceof Section) {
                View viewCreateView = createView(R.layout.rcmd_onboarding_interest_name, viewGroup, view);
                ((TextView) viewCreateView.findViewById(R.id.section_name)).setText(((Section) item).name);
                return viewCreateView;
            }
            if (!(item instanceof User)) {
                return null;
            }
            User user = (User) item;
            View viewCreateView2 = createView(R.layout.rcmd_onboarding_user_item, viewGroup, view);
            UserAvatarLayout userAvatarLayout = (UserAvatarLayout) viewCreateView2.findViewById(R.id.user_avatar_layout);
            if (userAvatarLayout != null) {
                userAvatarLayout.setUser(user);
            }
            View viewFindViewById = viewCreateView2.findViewById(R.id.nickname);
            if (viewFindViewById instanceof NicknameView) {
                ((NicknameView) viewFindViewById).setUser(user);
            }
            TextView textView = (TextView) viewCreateView2.findViewById(R.id.bio);
            String strCompactContent = TextUtils.compactContent(user.content);
            textView.setVisibility(android.text.TextUtils.isEmpty(strCompactContent) ? 8 : 0);
            textView.setText(strCompactContent);
            ((ImageView) viewCreateView2.findViewById(R.id.select)).setImageResource(this.uidList.contains(user.id()) ? R.drawable.ic_rcmd_onboarding_user_selected : R.drawable.ic_rcmd_onboarding_user_select);
            viewCreateView2.findViewById(R.id.item_user).setOnClickListener(this.subviewClickListener);
            return viewCreateView2;
        }
    }
}
