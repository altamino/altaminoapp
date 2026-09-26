package com.narvii.media.online.audio;

import android.content.Intent;
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
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
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
import com.narvii.permisson.GranularMediaPermissions;
import com.narvii.permisson.NVPermission;
import com.narvii.permisson.PermissionUtilsV2;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.safedk.android.utils.Logger;
import java.util.List;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
public class OnlineAudioPickerCategoryFragment extends NVScrollableTabFragment {
    private static final int REQUEST_AUDIO = 64776;
    private List<AssetSection> categorySections;
    private int defaultTabIndex;
    private String error;
    private View errorView;
    private View progressView;
    private View viewPagerContainer;

    /* JADX INFO: Access modifiers changed from: private */
    public void retry() {
        this.error = null;
        updateViews();
        sendRequest();
    }

    public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
        if (p1 == null) {
            return;
        }
        p0.startActivityForResult(p1, p5);
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment
    public int defaultTabIndex() {
        return this.defaultTabIndex;
    }

    @Override // com.narvii.app.NVScrollableTabFragment
    protected Class<? extends NVFragment> getFragment(int i10) {
        return OnlineAudioPickerCategoryPageFragment.class;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @Nullable
    public String getPageName() {
        return "add_music";
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public int initNVTheme() {
        return 2;
    }

    private AssetSection getObject(int i10) {
        List<AssetSection> list = this.categorySections;
        if (list == null || list.size() <= i10) {
            return null;
        }
        return this.categorySections.get(i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openLocalPicker() {
        NVPermission.builder(this).permission(PermissionUtilsV2.INSTANCE.obtainPermissionName(GranularMediaPermissions.READ_MEDIA_AUDIO)).requestCode(303).permissionListener(this).request();
    }

    @Override // com.narvii.app.NVFragment
    protected Drawable getActionBarCustomDrawable() {
        return new ColorDrawable(-15000799);
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment, androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.media_audio_online_picker_category, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.permisson.PermissionListener
    public void onPermissionGranted(int i10) {
        if (i10 == 303) {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("ndc://fragment/" + PhoneAudioPickerFragment.class.getName()));
            Bundle extras = getActivity().getIntent().getExtras();
            if (extras == null) {
                Log.w("open phone audio picker bundle is null");
            } else {
                intent.putExtras(extras);
                safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(this, intent, REQUEST_AUDIO);
            }
        }
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment
    public Drawable tabLayoutBackground() {
        return new ColorDrawable(-15000799);
    }

    private void sendRequest() {
        ((ApiService) getService("api")).exec(ApiRequest.builder().global().path("/asset/sound/section").build(), new ApiResponseListener<QuerySoundSectionResponse>(QuerySoundSectionResponse.class) { // from class: com.narvii.media.online.audio.OnlineAudioPickerCategoryFragment.4
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                OnlineAudioPickerCategoryFragment.this.error = str + "";
                OnlineAudioPickerCategoryFragment.this.updateViews();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, QuerySoundSectionResponse querySoundSectionResponse) throws Exception {
                OnlineAudioPickerCategoryFragment.this.categorySections = querySoundSectionResponse.sectionList;
                String stringParam = OnlineAudioPickerCategoryFragment.this.getStringParam(MediaPickerFragment.PICK_ONLINE_AUDIO_TARGET_TAB);
                if (stringParam != null && OnlineAudioPickerCategoryFragment.this.categorySections != null) {
                    for (int i10 = 0; i10 < OnlineAudioPickerCategoryFragment.this.categorySections.size(); i10++) {
                        AssetSection assetSection = (AssetSection) OnlineAudioPickerCategoryFragment.this.categorySections.get(i10);
                        if (assetSection != null && TextUtils.equals(assetSection.name, stringParam)) {
                            OnlineAudioPickerCategoryFragment.this.defaultTabIndex = i10;
                            break;
                        }
                    }
                }
                OnlineAudioPickerCategoryFragment.this.updateViews();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateViews() {
        boolean z6;
        int i10;
        int i11;
        resetAdapter();
        List<AssetSection> list = this.categorySections;
        int i12 = 0;
        if (list != null && list.size() > 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        boolean zIsEmpty = true ^ com.narvii.util.text.TextUtils.isEmpty(this.error);
        View view = this.viewPagerContainer;
        if (z6) {
            i10 = 0;
        } else {
            i10 = 4;
        }
        view.setVisibility(i10);
        View view2 = this.progressView;
        if (!z6 && !zIsEmpty) {
            i11 = 0;
        } else {
            i11 = 8;
        }
        view2.setVisibility(i11);
        View view3 = this.errorView;
        if (!zIsEmpty) {
            i12 = 8;
        }
        view3.setVisibility(i12);
        ((TextView) this.errorView.findViewById(R.id.text)).setText(this.error);
    }

    @Override // com.narvii.app.NVScrollableTabFragment
    protected Bundle getBundles(int i10) {
        AssetSection object = getObject(i10);
        if (object == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        bundle.putString("categorySection", JacksonUtils.writeAsString(object));
        return bundle;
    }

    @Override // com.narvii.app.NVScrollableTabFragment
    protected String getTabLabel(int i10) {
        AssetSection object = getObject(i10);
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

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        if (i10 == REQUEST_AUDIO && i11 == -1) {
            setResult(-1, intent);
            finish();
        } else {
            super.onActivityResult(i10, i11, intent);
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
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

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        int i10 = R.string.recently_used;
        menu.add(0, i10, 0, i10).setIcon(R.drawable.ic_history_used).setShowAsAction(2);
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.string.recently_used) {
            LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("RecentUse").send();
            safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(this, new Intent("android.intent.action.VIEW", Uri.parse("ndc://fragment/" + OnlineAudioHistoryFragment.class.getName())), REQUEST_AUDIO);
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment, com.narvii.widget.NVPagerTabLayout.PositionChangeListener
    public void onPositionChange(int i10, float f) {
        super.onPositionChange(i10, f);
        int indexOfRealPosition = getIndexOfRealPosition(i10);
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

    @Override // com.narvii.app.NVBaseScrollableTabFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.progressView = view.findViewById(android.R.id.progress);
        View viewFindViewById = view.findViewById(R.id.error_container);
        this.errorView = viewFindViewById;
        viewFindViewById.findViewById(R.id.retry).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.media.online.audio.OnlineAudioPickerCategoryFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
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
            public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
                Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivityForResult(p1, p5);
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                LogEvent.clickBuilder(OnlineAudioPickerCategoryFragment.this, ActSemantic.pageEnter).area("Search").send();
                safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(OnlineAudioPickerCategoryFragment.this, new Intent("android.intent.action.VIEW", Uri.parse("ndc://fragment/" + OnlineAudioPickerListSearchFragment.class.getName())), OnlineAudioPickerCategoryFragment.REQUEST_AUDIO);
            }
        });
        updateViews();
    }
}
