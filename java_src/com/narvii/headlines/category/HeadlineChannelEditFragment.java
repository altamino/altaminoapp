package com.narvii.headlines.category;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.content.ContextCompat;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.language.ContentLanguageService;
import com.narvii.list.DragSortListFragment;
import com.narvii.list.NVArrayAdapter;
import com.narvii.master.theme.MasterThemeExtensionKt;
import com.narvii.model.api.ApiResponse;
import com.narvii.suggest.interest.InterestPickerFragment;
import com.narvii.util.JacksonUtils;
import com.narvii.util.PreferencesHelper;
import com.narvii.util.deviceid.DeviceIDService;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.widget.NVImageView;
import com.narvii.widget.SpinningView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* loaded from: classes2.dex */
public class HeadlineChannelEditFragment extends DragSortListFragment {
    private static int CHANEL_STATUS_ACTIVE = 1;
    private static int CHANEL_STATUS_INACTIVE = 2;
    private static int CHANEL_STATUS_NONE = 0;
    private static final int REQUEST_CODE_INTEREST = 102;
    AccountService accountService;
    private List<HeadLineChannel> activeChannel;
    private boolean allowForceSave;
    private ChannelAdapter channelAdapter;
    private boolean containInactiveOrg;
    private String curLanguage;
    private String error;
    private View errorView;
    HeadLineChannelListResponse headLineCategoryListResponse;
    private List<HeadLineChannel> inactiveChannel;
    private ArrayList<Object> itemList;
    private ContentLanguageService languageService;
    private SpinningView progressView;
    private View retryView;
    PreferencesHelper sharedPreferencesHelper;
    private Section inactiveSection = new Section(R.string.headline_channel_inactive);
    private Section activeSection = new Section(R.string.headline_channel_active);

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131755020;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        sendHeadlineChannelRequest();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.headLineCategoryListResponse = (HeadLineChannelListResponse) JacksonUtils.readAs(bundle.getString("channelResponse"), HeadLineChannelListResponse.class);
            HeadLineChannelListResponse headLineChannelListResponse = this.headLineCategoryListResponse;
            this.activeChannel = headLineChannelListResponse.activeChannelList;
            this.inactiveChannel = headLineChannelListResponse.inactiveChannelList;
            List<HeadLineChannel> list = this.inactiveChannel;
            this.containInactiveOrg = (list == null || list.size() == 0) ? false : true;
            this.curLanguage = bundle.getString("curLanguage");
        }
        this.accountService = (AccountService) getService("account");
        this.sharedPreferencesHelper = new PreferencesHelper(this);
        setTitle(R.string.manage_feeds);
        if (getActivity().getActionBar().getCustomView() != null) {
            ImageView imageView = (ImageView) getActivity().getActionBar().getCustomView().findViewById(R.id.actionbar_back);
            imageView.setImageDrawable(ContextCompat.getDrawable(getContext(), R.drawable.ic_actionbar_close));
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.headlines.category.HeadlineChannelEditFragment.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (HeadlineChannelEditFragment.this.allowForceSave) {
                        HeadlineChannelEditFragment.this.saveChange();
                    } else {
                        HeadlineChannelEditFragment.this.finish();
                    }
                }
            });
        }
        this.languageService = (ContentLanguageService) getService("content_language");
        setHasOptionsMenu(true);
    }

    @Override // com.narvii.list.DragSortListFragment, com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.headline_tab_edit_fragment_layout, viewGroup, false);
    }

    @Override // com.narvii.list.DragSortListFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.progressView = (SpinningView) view.findViewById(android.R.id.progress);
        this.progressView.setSpinColor(-1);
        this.errorView = view.findViewById(R.id.error_container);
        this.retryView = view.findViewById(R.id.retry);
        this.retryView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.headlines.category.HeadlineChannelEditFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                HeadlineChannelEditFragment.this.retry();
            }
        });
        updateHeadlineChannelView();
        FragmentManager fragmentManager = getFragmentManager();
        if (fragmentManager != null) {
            MasterThemeExtensionKt.addMasterThemeFragment(fragmentManager);
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, R.string.done, 0, R.string.done).setIcon(R.drawable.ic_headline_done).setShowAsActionFlags(2);
    }

    @Override // android.support.v4.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        super.onPrepareOptionsMenu(menu);
        menu.findItem(R.string.done).setIcon((isChanged() || this.allowForceSave) ? R.drawable.ic_headline_done : R.drawable.ic_headline_done_disable).setEnabled(isChanged() || this.allowForceSave);
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.string.done) {
            if (isChanged() || this.allowForceSave) {
                saveChange();
            } else {
                getActivity().finish();
            }
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDividerHeight(0);
        listView.setDivider(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void retry() {
        this.error = null;
        updateHeadlineChannelView();
        sendHeadlineChannelRequest();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        HeadLineChannelListResponse headLineChannelListResponse = this.headLineCategoryListResponse;
        if (headLineChannelListResponse != null) {
            bundle.putString("channelResponse", JacksonUtils.writeAsString(headLineChannelListResponse));
        }
        bundle.putString("curLanguage", this.curLanguage);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.DragSortListFragment, com.narvii.list.NVListFragment
    public NVArrayAdapter createAdapter(Bundle bundle) {
        this.itemList = getItemList();
        this.channelAdapter = new ChannelAdapter(this, Object.class, this.itemList);
        return this.channelAdapter;
    }

    private class ChannelAdapter extends NVArrayAdapter {
        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 3;
        }

        public ChannelAdapter(NVContext nVContext, Class cls) {
            super(nVContext, cls);
        }

        public ChannelAdapter(NVContext nVContext, Class cls, List list) {
            super(nVContext, cls, list);
        }

        @Override // com.narvii.list.NVArrayAdapter, com.narvii.list.NVAdapter
        public Bundle onSaveInstanceState() {
            return new Bundle();
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            super.notifyDataSetChanged();
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i) {
            Object item = getItem(i);
            if (item instanceof Section) {
                return 0;
            }
            if (item instanceof HeadLineChannel) {
                return 1;
            }
            return item instanceof ChannelManager ? 2 : -1;
        }

        @Override // android.widget.Adapter
        public View getView(final int i, View view, ViewGroup viewGroup) {
            Object item = getItem(i);
            if (item instanceof Section) {
                View viewCreateView = createView(R.layout.item_headline_channel_edit_section, viewGroup, view);
                ((TextView) viewCreateView.findViewById(R.id.manage_topic)).setText(HeadlineChannelEditFragment.this.getString(((Section) item).nameId));
                return viewCreateView;
            }
            if (item instanceof HeadLineChannel) {
                View viewCreateView2 = createView(R.layout.item_headline_channel_edit_normal, viewGroup, view);
                NVImageView nVImageView = (NVImageView) viewCreateView2.findViewById(R.id.icon);
                int i2 = 8;
                if (nVImageView != null) {
                    HeadLineChannel headLineChannel = (HeadLineChannel) item;
                    Drawable localEditIconDrawable = headLineChannel.getLocalEditIconDrawable(getContext());
                    if (localEditIconDrawable != null) {
                        nVImageView.setImageDrawable(localEditIconDrawable);
                        nVImageView.setVisibility(0);
                    } else {
                        nVImageView.setImageUrl(headLineChannel.icon);
                        nVImageView.setVisibility(TextUtils.isEmpty(headLineChannel.icon) ? 8 : 0);
                        nVImageView.setColorFilter(-12171963);
                    }
                }
                TextView textView = (TextView) viewCreateView2.findViewById(R.id.title);
                if (textView != null) {
                    HeadLineChannel headLineChannel2 = (HeadLineChannel) item;
                    if (headLineChannel2.getLocalTitle(getContext()) != null) {
                        textView.setText(headLineChannel2.getLocalTitle(getContext()));
                    } else {
                        textView.setText(headLineChannel2.title);
                    }
                }
                HeadLineChannel headLineChannel3 = (HeadLineChannel) item;
                int channelStatus = getChannelStatus(headLineChannel3);
                View viewFindViewById = viewCreateView2.findViewById(R.id.drag_handle);
                if (viewFindViewById != null) {
                    if (!headLineChannel3.isLocalChannel() && channelStatus != HeadlineChannelEditFragment.CHANEL_STATUS_INACTIVE) {
                        i2 = 0;
                    }
                    viewFindViewById.setVisibility(i2);
                }
                CheckBox checkBox = (CheckBox) viewCreateView2.findViewById(R.id.actived);
                if (checkBox != null) {
                    checkBox.setOnCheckedChangeListener(null);
                    checkBox.setVisibility(channelStatus == HeadlineChannelEditFragment.CHANEL_STATUS_NONE ? 4 : 0);
                    checkBox.setChecked(channelStatus == HeadlineChannelEditFragment.CHANEL_STATUS_ACTIVE);
                    checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.narvii.headlines.category.HeadlineChannelEditFragment.ChannelAdapter.1
                        @Override // android.widget.CompoundButton.OnCheckedChangeListener
                        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                            int iIndexOf;
                            if (z) {
                                if (HeadlineChannelEditFragment.this.channelAdapter == null || (iIndexOf = HeadlineChannelEditFragment.this.channelAdapter.getList().indexOf(HeadlineChannelEditFragment.this.inactiveSection)) <= 0) {
                                    return;
                                }
                                HeadlineChannelEditFragment.this.drop(i, iIndexOf);
                                return;
                            }
                            HeadlineChannelEditFragment.this.remove(i);
                        }
                    });
                }
                return viewCreateView2;
            }
            if (!(item instanceof ChannelManager)) {
                return null;
            }
            View viewCreateView3 = createView(R.layout.item_headline_channel_edit_manage, viewGroup, view);
            TextView textView2 = (TextView) viewCreateView3.findViewById(R.id.manage_topic);
            textView2.setOnClickListener(this.subviewClickListener);
            textView2.setText(HeadlineChannelEditFragment.this.getString(((ChannelManager) item).nameId));
            return viewCreateView3;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (view2 != null && view2.getId() == R.id.manage_topic) {
                HeadlineChannelEditFragment.this.startActivityForResult(FragmentWrapperActivity.intent(InterestPickerFragment.class), 102);
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }

        @Override // com.narvii.list.NVAdapter
        public String errorMessage() {
            return HeadlineChannelEditFragment.this.error;
        }

        private int getChannelStatus(HeadLineChannel headLineChannel) {
            if (headLineChannel == null || headLineChannel.isLocalChannel()) {
                return HeadlineChannelEditFragment.CHANEL_STATUS_NONE;
            }
            int iIndexOf = getList().indexOf(HeadlineChannelEditFragment.this.inactiveSection);
            int iIndexOf2 = getList().indexOf(headLineChannel);
            if (iIndexOf >= 0 && iIndexOf2 > iIndexOf) {
                return HeadlineChannelEditFragment.CHANEL_STATUS_INACTIVE;
            }
            return HeadlineChannelEditFragment.CHANEL_STATUS_ACTIVE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ArrayList<Object> getItemList() {
        ArrayList<Object> arrayList = new ArrayList<>();
        arrayList.add(this.activeSection);
        HeadLineChannelListResponse headLineChannelListResponse = this.headLineCategoryListResponse;
        if (headLineChannelListResponse != null) {
            if (headLineChannelListResponse.activeChannelList != null) {
                arrayList.addAll(getLocalHeadlineCategory());
                arrayList.addAll(this.headLineCategoryListResponse.activeChannelList);
            }
            List<HeadLineChannel> list = this.headLineCategoryListResponse.inactiveChannelList;
            if (list != null && list.size() > 0) {
                arrayList.add(this.inactiveSection);
                arrayList.addAll(this.headLineCategoryListResponse.inactiveChannelList);
            }
        }
        arrayList.add(new ChannelManager(R.string.manager_my_topic));
        return arrayList;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 102 && i2 == -1) {
            this.allowForceSave = true;
            sendHeadlineChannelRequest();
            invalidateOptionsMenu();
        }
        super.onActivityResult(i, i2, intent);
    }

    private void sendHeadlineChannelRequest() {
        DeviceIDService deviceIDService = (DeviceIDService) getService("deviceid");
        this.languageService = (ContentLanguageService) getService("content_language");
        ((ApiService) getService("api")).exec(new ApiRequest.Builder().global().path("headline/channel").param("deviceID", deviceIDService.getDeviceId()).param(IjkMediaMeta.IJKM_KEY_LANGUAGE, this.languageService.getRequestPrefLanguageWithLocalAsDefault()).build(), new ApiResponseListener<HeadLineChannelListResponse>(HeadLineChannelListResponse.class) { // from class: com.narvii.headlines.category.HeadlineChannelEditFragment.3
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, HeadLineChannelListResponse headLineChannelListResponse) throws Exception {
                super.onFinish(apiRequest, (ApiRequest) headLineChannelListResponse);
                HeadlineChannelEditFragment headlineChannelEditFragment = HeadlineChannelEditFragment.this;
                headlineChannelEditFragment.headLineCategoryListResponse = headLineChannelListResponse;
                headlineChannelEditFragment.activeChannel = headlineChannelEditFragment.headLineCategoryListResponse.activeChannelList;
                HeadlineChannelEditFragment headlineChannelEditFragment2 = HeadlineChannelEditFragment.this;
                headlineChannelEditFragment2.inactiveChannel = headlineChannelEditFragment2.headLineCategoryListResponse.inactiveChannelList;
                HeadlineChannelEditFragment headlineChannelEditFragment3 = HeadlineChannelEditFragment.this;
                headlineChannelEditFragment3.containInactiveOrg = (headlineChannelEditFragment3.inactiveChannel == null || HeadlineChannelEditFragment.this.inactiveChannel.size() == 0) ? false : true;
                HeadlineChannelEditFragment.this.updateHeadlineChannelView();
                if (HeadlineChannelEditFragment.this.channelAdapter != null) {
                    HeadlineChannelEditFragment headlineChannelEditFragment4 = HeadlineChannelEditFragment.this;
                    headlineChannelEditFragment4.itemList = headlineChannelEditFragment4.getItemList();
                    HeadlineChannelEditFragment.this.channelAdapter.setList(HeadlineChannelEditFragment.this.itemList);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str, apiResponse, th);
                HeadlineChannelEditFragment.this.error = str;
                HeadlineChannelEditFragment.this.updateHeadlineChannelView();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateHeadlineChannelView() {
        boolean z = this.headLineCategoryListResponse != null;
        boolean zIsEmpty = true ^ TextUtils.isEmpty(this.error);
        if (getListView() != null) {
            getListView().setVisibility(z ? 0 : 4);
        }
        this.progressView.setVisibility((z || zIsEmpty) ? 8 : 0);
        this.errorView.setVisibility(zIsEmpty ? 0 : 8);
    }

    private List<HeadLineChannel> getLocalHeadlineCategory() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(HeadLineChannel.CATEGORY_HOT);
        if (this.accountService.hasAccount()) {
            arrayList.add(HeadLineChannel.CATEGORY_MY_AMINOS);
        }
        return arrayList;
    }

    @Override // com.narvii.list.DragSortListFragment, com.mobeta.android.dslv.DragSortListView.RemoveListener
    public void remove(int i) {
        Object item = this.channelAdapter.getItem(i);
        super.remove(i);
        if (!this.channelAdapter.getList().contains(this.inactiveSection)) {
            this.channelAdapter.insert(this.inactiveSection, r5.size() - 1);
            this.channelAdapter.insert(item, r5.size() - 1);
        } else {
            this.channelAdapter.insert(item, r5.size() - 1);
        }
        invalidateOptionsMenu();
    }

    @Override // com.narvii.list.DragSortListFragment, com.mobeta.android.dslv.DragSortListView.DropListener
    public void drop(int i, int i2) {
        if (this.channelAdapter != null) {
            if (i2 <= getLocalHeadlineCategory().size()) {
                return;
            }
            if (this.channelAdapter.getList() != null && i2 >= this.channelAdapter.getList().size() - 1) {
                return;
            }
        }
        super.drop(i, i2);
        if (this.channelAdapter.getList().indexOf(this.inactiveSection) >= this.channelAdapter.getList().size() - 2) {
            this.channelAdapter.remove((ChannelAdapter) this.inactiveSection);
        }
        invalidateOptionsMenu();
    }

    private boolean isChanged() {
        if (this.activeChannel == null && this.inactiveChannel == null) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        boolean z = false;
        for (Object obj : this.channelAdapter.getList()) {
            if (obj == this.inactiveSection) {
                z = true;
            }
            if (obj instanceof HeadLineChannel) {
                HeadLineChannel headLineChannel = (HeadLineChannel) obj;
                if (!headLineChannel.isLocalChannel()) {
                    if (z) {
                        arrayList2.add(headLineChannel.channelId);
                    } else {
                        arrayList.add(headLineChannel.channelId);
                    }
                }
            }
        }
        if (this.containInactiveOrg ^ this.channelAdapter.getList().contains(this.inactiveSection)) {
            return true;
        }
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        List<HeadLineChannel> list = this.activeChannel;
        if (list != null) {
            Iterator<HeadLineChannel> it = list.iterator();
            while (it.hasNext()) {
                arrayList3.add(it.next().channelId);
            }
        }
        List<HeadLineChannel> list2 = this.inactiveChannel;
        if (list2 != null) {
            Iterator<HeadLineChannel> it2 = list2.iterator();
            while (it2.hasNext()) {
                arrayList4.add(it2.next().channelId);
            }
        }
        return (arrayList.equals(arrayList3) && arrayList2.equals(arrayList4)) ? false : true;
    }

    private class ChannelManager {
        int nameId;

        public ChannelManager(int i) {
            this.nameId = i;
        }
    }

    private class Section {
        int nameId;

        public Section(int i) {
            this.nameId = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveChange() {
        ChannelAdapter channelAdapter = this.channelAdapter;
        if (channelAdapter == null || channelAdapter.getList() == null) {
            return;
        }
        ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
        ArrayNode arrayNodeCreateArrayNode2 = JacksonUtils.createArrayNode();
        List list = this.channelAdapter.getList();
        ArrayList arrayList = new ArrayList();
        int iIndexOf = list.indexOf(this.inactiveSection);
        for (int i = 0; i < list.size(); i++) {
            Object obj = list.get(i);
            if (obj instanceof HeadLineChannel) {
                HeadLineChannel headLineChannel = (HeadLineChannel) obj;
                if (!headLineChannel.isLocalChannel()) {
                    if (iIndexOf >= 0 && i > iIndexOf) {
                        arrayNodeCreateArrayNode2.add(headLineChannel.channelId);
                    } else {
                        arrayNodeCreateArrayNode.add(headLineChannel.channelId);
                        arrayList.add(headLineChannel);
                    }
                }
            }
        }
        final ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.show();
        ApiRequest.Builder builderPath = ApiRequest.builder().post().path("/headline/channel");
        DeviceIDService deviceIDService = (DeviceIDService) getService("deviceid");
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put("activeChannelIdList", arrayNodeCreateArrayNode);
        objectNodeCreateObjectNode.put("inactiveChannelIdList", arrayNodeCreateArrayNode2);
        objectNodeCreateObjectNode.put("deviceID", deviceIDService.getDeviceId());
        objectNodeCreateObjectNode.put(IjkMediaMeta.IJKM_KEY_LANGUAGE, this.curLanguage);
        builderPath.body(objectNodeCreateObjectNode);
        ApiService apiService = (ApiService) getService("api");
        final ArrayList arrayList2 = new ArrayList(arrayList);
        apiService.exec(builderPath.build(), new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.headlines.category.HeadlineChannelEditFragment.4
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                super.onFinish(apiRequest, apiResponse);
                Intent intent = new Intent();
                intent.putExtra("activeChannels", JacksonUtils.writeAsString(arrayList2));
                HeadlineChannelEditFragment.this.setResult(-1, intent);
                HeadlineChannelEditFragment.this.finish();
                progressDialog.dismiss();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i2, List<NameValuePair> list2, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i2, list2, str, apiResponse, th);
                Toast.makeText(HeadlineChannelEditFragment.this.getContext(), str, 1).show();
                progressDialog.dismiss();
            }
        });
    }
}
