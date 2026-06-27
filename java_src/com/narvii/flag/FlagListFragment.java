package com.narvii.flag;

import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Color;
import android.os.Bundle;
import android.support.v4.app.NotificationCompat;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWillFinishListener;
import com.narvii.app.NVActivity;
import com.narvii.drawer.DrawerHost;
import com.narvii.flag.model.Flag;
import com.narvii.flag.model.FlagListResponse;
import com.narvii.flag.resolve.FlagModeHelper;
import com.narvii.list.NVListFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.master.search.SearchPrefsHelper;
import com.narvii.model.User;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.util.DateTimeFormatter;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NicknameView;
import java.util.List;

/* loaded from: classes2.dex */
public class FlagListFragment extends NVListFragment implements NotificationListener, FragmentWillFinishListener {
    private static final int FAKE_EXTERNAL_POST_TYPE = 104;
    private static final int FAKE_LINK_POST_TYPE = 103;
    private static final int FAKE_POLL_TYPE = 101;
    private static final int FAKE_QUESTION_TYPE = 100;
    private static final int FAKE_QUIZ_TYPE = 102;
    private static final String KEY_API_FILTER_RESOLVED = "resolved";
    private static final String KEY_DEFAULT_FILTER_TYPE = "all";
    private static final String KEY_DEFAULT_REQUEST_TYPE = "pending";
    private static final int RESOLVE_MODE_REQUEST = 100;
    private View emptyView;
    private FlagListAdapter mAdapter;
    private View mResolveLayout;
    private String mStopTime;
    private String mReqType = KEY_DEFAULT_REQUEST_TYPE;
    private String mReqFilter = "all";
    private SparseArray<String> apiMapper = new SparseArray<>();
    private SparseArray<String> objectNameMapper = new SparseArray<>();
    private SparseArray<Integer> objectFakeTypeMapper = new SparseArray<>();

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
        initApiMapper();
        initObjectNameMapper();
        initObjectFakeMapper();
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.flag_list_layout, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        setTitle(getString(R.string.main_drawer_flag_center));
        this.mResolveLayout = view.findViewById(R.id.resolve_flag_layout);
        this.mResolveLayout.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.flag.FlagListFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                List<?> list = ((FlagListAdapter) FlagListFragment.this.getListAdapter()).list();
                if (list == null || list.size() <= 0) {
                    return;
                }
                FlagModeHelper.launchFlagMode(FlagListFragment.this, (Flag) list.get(0), list, list.size(), FlagListFragment.this.mReqType.equals(FlagListFragment.KEY_API_FILTER_RESOLVED) ? FlagListFragment.this.mReqType : FlagListFragment.this.mReqFilter, FlagListFragment.this.mStopTime);
            }
        });
        this.mResolveLayout.setVisibility(8);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        ((FlagListAdapter) getListAdapter()).resetList();
    }

    @Override // com.narvii.app.FragmentWillFinishListener
    public void willFinish(NVActivity nVActivity) {
        ((DrawerHost) getService("drawerHost")).refreshGeneralCount(0L);
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        if ((notification.obj instanceof Flag) && notification.action == "delete" && ((FlagListAdapter) getListAdapter()) != null) {
            ((FlagListAdapter) getListAdapter()).editList(notification, false);
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 100 && i2 == -1) {
            int intExtra = intent.getIntExtra("flag_resolve_back_mode", 0);
            if (intExtra == 0) {
                ((FlagListAdapter) getListAdapter()).resetList();
                return;
            }
            if (intExtra == 1) {
                AlertDialog alertDialog = new AlertDialog(getContext());
                alertDialog.setTitle(R.string.flag_resolve);
                alertDialog.setTitleColor(Color.rgb(0, 206, 125));
                alertDialog.setMessage(R.string.flag_resolve_error);
                alertDialog.addButton(android.R.string.ok, 4, (View.OnClickListener) null);
                alertDialog.show();
            }
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, R.string.filter, 1, R.string.filter).setIcon(R.drawable.ic_flag_sort).setShowAsAction(2);
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.string.filter) {
            ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
            final int[] iArr = new int[7];
            iArr[0] = R.string.flag_filter_all;
            actionSheetDialog.addItem(R.string.flag_filter_all, (this.mReqType.equals(KEY_API_FILTER_RESOLVED) || !this.mReqFilter.equals(getApiName(R.string.flag_filter_all))) ? 8 : 4);
            iArr[1] = R.string.flag_filter_off_topic;
            actionSheetDialog.addItem(R.string.flag_filter_off_topic, this.mReqFilter.equals(getApiName(R.string.flag_filter_off_topic)) ? 4 : 8);
            iArr[2] = R.string.flag_filter_bullying;
            actionSheetDialog.addItem(R.string.flag_filter_bullying, this.mReqFilter.equals(getApiName(R.string.flag_filter_bullying)) ? 4 : 8);
            iArr[3] = R.string.flag_filter_spam;
            actionSheetDialog.addItem(R.string.flag_filter_spam, this.mReqFilter.equals(getApiName(R.string.flag_filter_spam)) ? 4 : 8);
            iArr[4] = R.string.others;
            actionSheetDialog.addItem(R.string.others, this.mReqFilter.equals(getApiName(R.string.others)) ? 4 : 8);
            iArr[5] = R.string.flag_filter_resolved;
            actionSheetDialog.addItem(R.string.flag_filter_resolved, this.mReqType.equals(getApiName(R.string.flag_filter_resolved)) ? 4 : 8);
            actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.flag.FlagListFragment.2
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    FlagListFragment.this.mReqType = FlagListFragment.KEY_DEFAULT_REQUEST_TYPE;
                    if (i == 0) {
                        FlagListFragment.this.mReqFilter = "all";
                    } else if (i == 1) {
                        FlagListFragment.this.mReqFilter = "off-topic";
                    } else if (i == 2) {
                        FlagListFragment.this.mReqFilter = "bullying";
                    } else if (i == 3) {
                        FlagListFragment.this.mReqFilter = "spam";
                    } else if (i == 4) {
                        FlagListFragment.this.mReqFilter = SearchPrefsHelper.PREFS_KEY_OTHERS;
                    } else if (i == 5) {
                        FlagListFragment.this.mReqFilter = "all";
                        FlagListFragment.this.mReqType = FlagListFragment.KEY_API_FILTER_RESOLVED;
                    }
                    FlagListFragment.this.mAdapter.resetEmptyList();
                    FlagListFragment.this.mAdapter.refresh(0, null);
                    if (!FlagListFragment.this.mReqType.equals(FlagListFragment.KEY_API_FILTER_RESOLVED)) {
                        String unused = FlagListFragment.this.mReqFilter;
                    }
                    FlagListFragment.this.setTitle(FlagListFragment.this.getString(R.string.main_drawer_flag_center) + " (" + FlagListFragment.this.getString(iArr[i]) + ")");
                }
            });
            actionSheetDialog.show();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    private String getApiName(int i) {
        if (i == 0) {
            return null;
        }
        return this.apiMapper.get(i);
    }

    private String getFilterName(String str) {
        int iIndexOfValue;
        if (!TextUtils.isEmpty(str) && (iIndexOfValue = this.apiMapper.indexOfValue(str)) >= 0) {
            return getString(this.apiMapper.keyAt(iIndexOfValue));
        }
        return null;
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        String string;
        super.onListViewCreated(listView, bundle);
        listView.setDividerHeight(10);
        this.emptyView = setEmptyView(R.layout.flag_resolve_empty_layout);
        if (this.emptyView != null) {
            if (this.mReqType.equals(KEY_API_FILTER_RESOLVED)) {
                string = getString(R.string.flag_resolve_empty_info3) + " " + getFilterName(KEY_API_FILTER_RESOLVED);
            } else if (this.mReqFilter.equals("all")) {
                string = getString(R.string.flag_resolve_empty_info1);
            } else {
                string = getString(R.string.flag_resolve_empty_info3) + " " + getFilterName(this.mReqFilter);
            }
            ((TextView) this.emptyView.findViewById(R.id.empty_content)).setText(string);
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        FlagListAdapter flagListAdapter = new FlagListAdapter();
        this.mAdapter = flagListAdapter;
        return flagListAdapter;
    }

    class FlagListAdapter extends NVPagedAdapter<Flag, FlagListResponse> {
        private static final int TYPE_EXTERNAL_POST = 1;
        private static final int TYPE_NORMAL = 0;
        DateTimeFormatter datetime;

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemTypeCount() {
            return 2;
        }

        public FlagListAdapter() {
            super(FlagListFragment.this);
            this.datetime = DateTimeFormatter.getInstance(getContext());
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<Flag> dataType() {
            return Flag.class;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<? extends FlagListResponse> responseType() {
            return FlagListResponse.class;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, FlagListResponse flagListResponse, int i) {
            super.onPageResponse(apiRequest, (ApiRequest) flagListResponse, i);
            FlagListFragment.this.mStopTime = flagListResponse.timestamp;
            if (((FlagListAdapter) FlagListFragment.this.getListAdapter()).list() == null || ((FlagListAdapter) FlagListFragment.this.getListAdapter()).list().size() <= 0 || FlagListFragment.this.mReqType.equals(FlagListFragment.KEY_API_FILTER_RESOLVED)) {
                FlagListFragment.this.mResolveLayout.setVisibility(8);
            } else {
                FlagListFragment.this.mResolveLayout.setVisibility(0);
            }
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            ApiRequest.Builder builderPath = new ApiRequest.Builder().path("/flag");
            builderPath.param(NotificationCompat.CATEGORY_STATUS, FlagListFragment.this.mReqType);
            builderPath.param("type", FlagListFragment.this.mReqFilter);
            return builderPath.build();
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemType(Object obj) {
            if (!(obj instanceof Flag)) {
                return -1;
            }
            Flag flag = (Flag) obj;
            return (flag.objectType == 1 && flag.getBlogType() == 8) ? 1 : 0;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            if (!(obj instanceof Flag)) {
                return null;
            }
            Flag flag = (Flag) obj;
            User user = flag.objectUser;
            int itemType = getItemType(obj);
            int i = R.layout.flag_item;
            if (itemType != 0 && itemType == 1) {
                i = R.layout.flag_item_external_post;
            }
            boolean z = flag.objectType == 1 && flag.getBlogType() == 8;
            View viewCreateView = createView(i, viewGroup, view);
            NVImageView nVImageView = (NVImageView) viewCreateView.findViewById(R.id.avatar);
            View viewFindViewById = viewCreateView.findViewById(R.id.nickname);
            TextView textView = (TextView) viewCreateView.findViewById(R.id.strike_count);
            TextView textView2 = (TextView) viewCreateView.findViewById(R.id.flagged_count);
            if (z) {
                nVImageView.setImageDrawable(flag.getExternalOriginDrawable(getContext()));
                if (viewFindViewById instanceof TextView) {
                    ((TextView) viewFindViewById).setText(flag.getExternalOriginName(getContext()));
                }
                textView.setVisibility(8);
            } else if (user != null) {
                nVImageView.setImageUrl(user.icon());
                if (viewFindViewById instanceof NicknameView) {
                    ((NicknameView) viewFindViewById).setUser(user);
                }
                textView.setVisibility(0);
                textView.setText(flag.getStrikeSpanStr(getContext()));
            }
            int i2 = flag.flaggedCount;
            textView2.setText(String.valueOf(i2 > 99 ? "99+" : Integer.valueOf(i2)));
            textView2.setTextSize(1, i2 > 99 ? 16.0f : 20.0f);
            int iIntValue = flag.objectType;
            if (iIntValue == 1 && flag.getBlogType() != 0) {
                iIntValue = ((Integer) FlagListFragment.this.objectFakeTypeMapper.get(flag.getBlogType(), Integer.valueOf(iIntValue))).intValue();
            }
            String flagObjectName = FlagListFragment.this.getFlagObjectName(iIntValue);
            TextView textView3 = (TextView) viewCreateView.findViewById(R.id.flag_type);
            textView3.setVisibility(TextUtils.isEmpty(flagObjectName) ? 8 : 0);
            textView3.setText(flagObjectName);
            FlagTagLayout flagTagLayout = (FlagTagLayout) viewCreateView.findViewById(R.id.tags_layout);
            flagTagLayout.addTag(FlagTag.getFlagTagList(flag.flaggedTypes));
            flagTagLayout.requestLayout();
            ((TextView) viewCreateView.findViewById(R.id.flag_time)).setText(this.datetime.format(flag.modifiedTime));
            TextView textView4 = (TextView) viewCreateView.findViewById(R.id.resolved_time);
            View viewFindViewById2 = viewCreateView.findViewById(R.id.resolved_layout);
            if (flag.status == 2) {
                textView4.setText(FlagListFragment.this.getString(R.string.flag_resolved) + " " + this.datetime.format(flag.lastResolvedTime));
                viewFindViewById2.setVisibility(0);
            } else {
                viewFindViewById2.setVisibility(8);
            }
            return viewCreateView;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (obj instanceof Flag) {
                Flag flag = (Flag) obj;
                if (isImodDisable(flag)) {
                    showImodeOperationDialog();
                    return true;
                }
                List<?> list = ((FlagListAdapter) FlagListFragment.this.getListAdapter()).list();
                FlagModeHelper.launchFlagMode(FlagListFragment.this, flag, list, list.size(), FlagListFragment.this.mReqType.equals(FlagListFragment.KEY_API_FILTER_RESOLVED) ? FlagListFragment.this.mReqType : FlagListFragment.this.mReqFilter, FlagListFragment.this.mStopTime);
            }
            return true;
        }

        private boolean isImodDisable(Flag flag) {
            User user;
            return flag != null && (user = flag.operator) != null && user.role == 254 && FlagListFragment.this.mReqType.equals(FlagListFragment.KEY_API_FILTER_RESOLVED);
        }

        private void showImodeOperationDialog() {
            final AlertDialog alertDialog = new AlertDialog(getContext());
            View viewInflate = this.inflater.inflate(R.layout.feed_disable_by_imod_layout, (ViewGroup) null);
            if (viewInflate.findViewById(R.id.action) != null) {
                viewInflate.findViewById(R.id.action).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.flag.FlagListFragment.FlagListAdapter.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        alertDialog.dismiss();
                    }
                });
            }
            alertDialog.setContentView(viewInflate);
            alertDialog.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getFlagObjectName(int i) {
        String str = this.objectNameMapper.get(i);
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return getString(R.string.something_flagged_for, str);
    }

    private void initApiMapper() {
        this.apiMapper.put(R.string.flag_filter_all, "all");
        this.apiMapper.put(R.string.flag_filter_bullying, "bullying");
        this.apiMapper.put(R.string.flag_filter_inappropriate_content, "nappropriate-content");
        this.apiMapper.put(R.string.flag_filter_spam, "spam");
        this.apiMapper.put(R.string.flag_filter_art_theft, "art-theft");
        this.apiMapper.put(R.string.flag_filter_off_topic, "off-topic");
        this.apiMapper.put(R.string.flag_filter_trolling, "trolling");
        this.apiMapper.put(R.string.others, SearchPrefsHelper.PREFS_KEY_OTHERS);
        this.apiMapper.put(R.string.flag_filter_resolved, KEY_API_FILTER_RESOLVED);
    }

    private void initObjectNameMapper() {
        this.objectNameMapper.put(0, getString(R.string.online_user_profile));
        this.objectNameMapper.put(1, getString(R.string.detail_blog));
        this.objectNameMapper.put(2, getString(R.string.wiki_entry));
        this.objectNameMapper.put(3, getString(R.string.comment));
        this.objectNameMapper.put(4, getString(R.string.post_categories));
        this.objectNameMapper.put(7, getString(R.string.chat_message));
        this.objectNameMapper.put(12, getString(R.string.flag_type_chat_room));
        this.objectNameMapper.put(13, getString(R.string.flag_type_favorite_category));
        this.objectNameMapper.put(15, getString(R.string.catalog_submissions));
        this.objectNameMapper.put(16, getString(R.string.community));
        this.objectNameMapper.put(17, getString(R.string.flag_type_community_collection));
        this.objectNameMapper.put(20, getString(R.string.bookmark));
        this.objectNameMapper.put(23, getString(R.string.quiz_question));
        this.objectNameMapper.put(109, getString(R.string.photo));
        this.objectNameMapper.put(100, getString(R.string.detail_question));
        this.objectNameMapper.put(101, getString(R.string.detail_poll));
        this.objectNameMapper.put(103, getString(R.string.post));
        this.objectNameMapper.put(102, getString(R.string.detail_quiz));
        this.objectNameMapper.put(104, getString(R.string.page_external_post));
    }

    private void initObjectFakeMapper() {
        this.objectFakeTypeMapper.put(3, 100);
        this.objectFakeTypeMapper.put(4, 101);
        this.objectFakeTypeMapper.put(5, 103);
        this.objectFakeTypeMapper.put(6, 102);
        this.objectFakeTypeMapper.put(8, 104);
    }
}
