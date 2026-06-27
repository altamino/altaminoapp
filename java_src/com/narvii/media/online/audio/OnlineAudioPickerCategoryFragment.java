package com.narvii.media.online.audio;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.app.NVFragment;
import com.narvii.app.NVScrollableTabFragment;
import com.narvii.lib.R;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.media.MediaPickerFragment;
import com.narvii.media.PhoneAudioPickerFragment;
import com.narvii.media.online.audio.model.AssetSection;
import com.narvii.media.online.audio.model.QuerySoundSectionResponse;
import com.narvii.model.api.ApiResponse;
import com.narvii.permisson.NVPermission;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import java.util.List;

/* loaded from: classes3.dex */
public class OnlineAudioPickerCategoryFragment extends NVScrollableTabFragment {
    private static final int REQUEST_AUDIO = 64776;
    private List<AssetSection> categorySections;
    private int defaultTabIndex;
    private String error;
    private View errorView;
    private View progressView;
    private View viewPagerContainer;

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "AddMusic";
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public int initNVTheme() {
        return 2;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        sendRequest();
        if ("SFX".equals(getStringParam(MediaPickerFragment.PICK_ONLINE_AUDIO_TARGET_TAB))) {
            setTitle(R.string.add_sfx);
        } else {
            setTitle(R.string.add_music);
        }
    }

    @Override // com.narvii.app.NVFragment
    protected Drawable getActionBarCustomDrawable() {
        return new ColorDrawable(-15000799);
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        int i = R.string.recently_used;
        menu.add(0, i, 0, i).setIcon(R.drawable.ic_history_used).setShowAsAction(2);
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.string.recently_used) {
            LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("RecentUse").send();
            startActivityForResult(new Intent("android.intent.action.VIEW", Uri.parse("ndc://fragment/" + OnlineAudioHistoryFragment.class.getName())), REQUEST_AUDIO);
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.media_audio_online_picker_category, viewGroup, false);
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        this.progressView = view.findViewById(android.R.id.progress);
        this.errorView = view.findViewById(R.id.error_container);
        this.errorView.findViewById(R.id.retry).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.media.online.audio.OnlineAudioPickerCategoryFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) throws Resources.NotFoundException {
                OnlineAudioPickerCategoryFragment.this.retry();
            }
        });
        this.viewPagerContainer = view.findViewById(R.id.music_category_pages);
        view.findViewById(R.id.open_local_audio_picker).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.media.online.audio.OnlineAudioPickerCategoryFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                OnlineAudioPickerCategoryFragment.this.openLocalPicker();
            }
        });
        view.findViewById(R.id.search_layout_container).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.media.online.audio.OnlineAudioPickerCategoryFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                LogEvent.clickBuilder(OnlineAudioPickerCategoryFragment.this, ActSemantic.pageEnter).area("Search").send();
                OnlineAudioPickerCategoryFragment.this.startActivityForResult(new Intent("android.intent.action.VIEW", Uri.parse("ndc://fragment/" + OnlineAudioPickerListSearchFragment.class.getName())), OnlineAudioPickerCategoryFragment.REQUEST_AUDIO);
            }
        });
        updateViews();
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment
    public int defaultTabIndex() {
        return this.defaultTabIndex;
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment, com.narvii.widget.NVPagerTabLayout.PositionChangeListener
    public void onPositionChange(int i, float f) {
        super.onPositionChange(i, f);
        int indexOfRealPosition = getIndexOfRealPosition(i);
        List<AssetSection> list = this.categorySections;
        if (list != null && list.size() > indexOfRealPosition) {
            AssetSection assetSection = this.categorySections.get(indexOfRealPosition);
            if (assetSection != null && "SFX".equals(assetSection.name)) {
                setTitle(R.string.add_sfx);
                return;
            } else {
                setTitle(R.string.add_music);
                return;
            }
        }
        setTitle(R.string.add_music);
    }

    private void sendRequest() {
        ((ApiService) getService("api")).exec(ApiRequest.builder().global().path("/asset/sound/section").build(), new ApiResponseListener<QuerySoundSectionResponse>(QuerySoundSectionResponse.class) { // from class: com.narvii.media.online.audio.OnlineAudioPickerCategoryFragment.4
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, QuerySoundSectionResponse querySoundSectionResponse) throws Exception {
                OnlineAudioPickerCategoryFragment.this.categorySections = querySoundSectionResponse.sectionList;
                String stringParam = OnlineAudioPickerCategoryFragment.this.getStringParam(MediaPickerFragment.PICK_ONLINE_AUDIO_TARGET_TAB);
                if (stringParam != null && OnlineAudioPickerCategoryFragment.this.categorySections != null) {
                    int i = 0;
                    while (true) {
                        if (i < OnlineAudioPickerCategoryFragment.this.categorySections.size()) {
                            AssetSection assetSection = (AssetSection) OnlineAudioPickerCategoryFragment.this.categorySections.get(i);
                            if (assetSection != null && TextUtils.equals(assetSection.name, stringParam)) {
                                OnlineAudioPickerCategoryFragment.this.defaultTabIndex = i;
                                break;
                            }
                            i++;
                        } else {
                            break;
                        }
                    }
                }
                OnlineAudioPickerCategoryFragment.this.updateViews();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) throws Resources.NotFoundException {
                OnlineAudioPickerCategoryFragment.this.error = str + "";
                OnlineAudioPickerCategoryFragment.this.updateViews();
            }
        });
    }

    private AssetSection getObject(int i) {
        List<AssetSection> list = this.categorySections;
        if (list == null || list.size() <= i) {
            return null;
        }
        return this.categorySections.get(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateViews() throws Resources.NotFoundException {
        resetAdapter();
        List<AssetSection> list = this.categorySections;
        boolean z = list != null && list.size() > 0;
        boolean zIsEmpty = true ^ com.narvii.util.text.TextUtils.isEmpty(this.error);
        this.viewPagerContainer.setVisibility(z ? 0 : 4);
        this.progressView.setVisibility((z || zIsEmpty) ? 8 : 0);
        this.errorView.setVisibility(zIsEmpty ? 0 : 8);
        ((TextView) this.errorView.findViewById(R.id.text)).setText(this.error);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void retry() throws Resources.NotFoundException {
        this.error = null;
        updateViews();
        sendRequest();
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment
    public Drawable tabLayoutBackground() {
        return new ColorDrawable(-15000799);
    }

    @Override // com.narvii.app.NVScrollableTabFragment
    protected String getTabLabel(int i) {
        AssetSection object = getObject(i);
        if (object == null) {
            return null;
        }
        return object.getDisplayName();
    }

    @Override // com.narvii.app.NVScrollableTabFragment
    protected View getTabView(String str, Drawable drawable) {
        View viewInflate = getActivity().getLayoutInflater().inflate(R.layout.media_audio_online_picker_category_tab, (ViewGroup) null);
        ((TextView) viewInflate.findViewById(R.id.text)).setText(str);
        return viewInflate;
    }

    @Override // com.narvii.app.NVScrollableTabFragment
    protected Class<? extends NVFragment> getFragment(int i) {
        return OnlineAudioPickerCategoryPageFragment.class;
    }

    @Override // com.narvii.app.NVScrollableTabFragment
    protected Bundle getBundles(int i) {
        AssetSection object = getObject(i);
        if (object == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        bundle.putString("categorySection", JacksonUtils.writeAsString(object));
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openLocalPicker() {
        NVPermission.builder(this).permission("android.permission.READ_EXTERNAL_STORAGE").requestCode(303).permissionListener(this).request();
    }

    @Override // com.narvii.app.NVFragment, com.narvii.permisson.PermissionListener
    public void onPermissionGranted(int i) {
        if (i == 303) {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("ndc://fragment/" + PhoneAudioPickerFragment.class.getName()));
            Bundle extras = getActivity().getIntent().getExtras();
            if (extras == null) {
                Log.w("open phone audio picker bundle is null");
            } else {
                intent.putExtras(extras);
                startActivityForResult(intent, REQUEST_AUDIO);
            }
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == REQUEST_AUDIO && i2 == -1) {
            setResult(-1, intent);
            finish();
        } else {
            super.onActivityResult(i, i2, intent);
        }
    }
}
