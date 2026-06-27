package com.narvii.master.setting;

import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.config.ConfigService;
import com.narvii.language.ContentLanguageService;
import com.narvii.language.LanguageManager;
import com.narvii.language.LanguageSpec;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.master.explorer.SupportLanguageResponse;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.ActionBarIcon;
import com.narvii.util.Callback;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.widget.NVListView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* loaded from: classes3.dex */
public class LanguageSettingFragment extends NVListFragment {
    String languagePicked;
    ContentLanguageService languageService;

    @Override // com.narvii.list.NVListFragment
    protected int getSelectorDarkColor() {
        return 872415231;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.language);
        this.languageService = (ContentLanguageService) getService("content_language");
        setDarkNVTheme(((ConfigService) getService("config")).getCommunityId() == 0);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onActivityCreated(bundle);
        setBackButtonDrawable(ContextCompat.getDrawable(getContext(), R.drawable.ic_actionbar_close));
        setHasOptionsMenu(true);
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        menu.add(0, R.string.submit, 0, R.string.submit).setIcon(new ActionBarIcon(getContext(), getString(R.string.fa_check), 0.85f, ContextCompat.getColor(getContext(), R.color.white))).setShowAsAction(2);
        super.onCreateOptionsMenu(menu, menuInflater);
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.string.submit) {
            ((ContentLanguageService) getService("content_language")).saveLanguageCode(this.languagePicked);
            finish();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
        listView.setDividerHeight(0);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        return new Adapter();
    }

    class Adapter extends NVAdapter {
        String error;
        List<LanguageSpec> languages;

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        @Override // com.narvii.list.NVAdapter
        protected boolean supportNVTheme() {
            return true;
        }

        public Adapter() {
            super(LanguageSettingFragment.this);
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
            return (this.languages == null && this.error == null) ? false : true;
        }

        @Override // com.narvii.list.NVAdapter
        public void refresh(int i, Callback<Integer> callback) {
            this.languages = null;
            this.error = null;
            sendRequest();
            notifyDataSetChanged();
        }

        @Override // android.widget.Adapter
        public int getCount() {
            List<LanguageSpec> list = this.languages;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        @Override // android.widget.Adapter
        public LanguageSpec getItem(int i) {
            return this.languages.get(i);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            final LanguageSpec item = getItem(i);
            View viewCreateView = createView(R.layout.language_item, viewGroup, view);
            ((TextView) viewCreateView.findViewById(R.id.text)).setText(item.name);
            TextView textView = (TextView) viewCreateView.findViewById(R.id.localized_text);
            textView.setVisibility(item.localizedName != null ? 0 : 8);
            textView.setText(item.localizedName);
            ((TextView) viewCreateView.findViewById(R.id.check)).setVisibility(item.code.equals(LanguageSettingFragment.this.languagePicked) ? 0 : 8);
            viewCreateView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.setting.LanguageSettingFragment.Adapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    Adapter adapter = Adapter.this;
                    LanguageSettingFragment.this.languagePicked = item.code;
                    adapter.notifyDataSetChanged();
                }
            });
            return viewCreateView;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public List<LanguageSpec> filterLanguageSpec(List<LanguageSpec> list) {
            if (list == null) {
                return null;
            }
            String requestPrefLanguageWithLocalAsDefault = LanguageSettingFragment.this.languageService.getRequestPrefLanguageWithLocalAsDefault();
            Iterator<LanguageSpec> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                if (it.next().code.equals(requestPrefLanguageWithLocalAsDefault)) {
                    LanguageSettingFragment.this.languagePicked = requestPrefLanguageWithLocalAsDefault;
                    break;
                }
            }
            ArrayList arrayList = new ArrayList();
            for (LanguageSpec languageSpec : list) {
                String lowerCase = languageSpec.code.toLowerCase(Locale.US);
                String str = LanguageSettingFragment.this.languagePicked;
                if (lowerCase.equals(str != null ? str.toLowerCase(Locale.US) : null)) {
                    arrayList.add(0, languageSpec);
                } else {
                    arrayList.add(languageSpec);
                }
            }
            return arrayList;
        }

        void sendRequest() {
            ((ApiService) getService("api")).exec(new ApiRequest.Builder().path("community-collection/supported-languages").global().build(), new ApiResponseListener<SupportLanguageResponse>(SupportLanguageResponse.class) { // from class: com.narvii.master.setting.LanguageSettingFragment.Adapter.2
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, SupportLanguageResponse supportLanguageResponse) throws Exception {
                    LanguageManager languageManager = (LanguageManager) ((NVAdapter) Adapter.this).context.getService(IjkMediaMeta.IJKM_KEY_LANGUAGE);
                    Adapter.this.languages = new ArrayList();
                    List<String> list = supportLanguageResponse.supportedLanguages;
                    if (list != null) {
                        for (String str : list) {
                            Adapter.this.languages.add(new LanguageSpec(languageManager.getDisplayText(str), languageManager.getLocalDisplayText(str), str));
                        }
                    }
                    Adapter adapter = Adapter.this;
                    adapter.languages = adapter.filterLanguageSpec(adapter.languages);
                    if (!Adapter.this.languages.isEmpty()) {
                        ((FragmentWrapperActivity) LanguageSettingFragment.this.getActivity()).setRightViewVisible(true);
                    }
                    Adapter adapter2 = Adapter.this;
                    adapter2.error = null;
                    adapter2.notifyDataSetChanged();
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    Adapter adapter = Adapter.this;
                    adapter.error = str;
                    adapter.notifyDataSetChanged();
                }
            });
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.theme.NVThemeFragment
    public void onThemeChange(int i) throws Resources.NotFoundException {
        super.onThemeChange(i);
        if (i == 2) {
            int color = getResources().getColor(R.color.color_default_primary);
            ((NVListView) getListView()).setOverscrollStretchHeader(color);
            ((NVListView) getListView()).setOverscrollStretchFooter(color);
            ((NVListView) getListView()).setListContentBackgroundColor(0);
            return;
        }
        if (i == 1) {
            int color2 = getResources().getColor(R.color.prefs_background);
            ((NVListView) getListView()).setOverscrollStretchHeader(color2);
            ((NVListView) getListView()).setOverscrollStretchFooter(color2);
            ((NVListView) getListView()).setListContentBackgroundColor(-1);
        }
    }
}
