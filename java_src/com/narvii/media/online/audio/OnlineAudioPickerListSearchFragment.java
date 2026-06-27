package com.narvii.media.online.audio;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.list.NVAdapter;
import com.narvii.media.online.audio.OnlineAudioPickerBaseOnlineListFragment;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.statusbar.StatusBarUtils;
import com.narvii.widget.SearchBar;

/* loaded from: classes3.dex */
public class OnlineAudioPickerListSearchFragment extends OnlineAudioPickerBaseOnlineListFragment {
    private String qStr;
    private SearchBar searchBar;

    @Override // com.narvii.media.online.audio.OnlineAudioPickerBaseOnlineListFragment, com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "MusicSearchResult";
    }

    @Override // com.narvii.media.online.audio.OnlineAudioPickerBaseOnlineListFragment, com.narvii.media.online.audio.OnlineAudioPickerBaseListFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.selectSortMode = 1;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onActivityCreated(bundle);
        getActivity().getActionBar().hide();
    }

    @Override // com.narvii.media.online.audio.OnlineAudioPickerBaseOnlineListFragment, com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.media_audio_online_picker_search_list, viewGroup, false);
    }

    @Override // com.narvii.media.online.audio.OnlineAudioPickerBaseOnlineListFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        setEmptyText(R.string.normal_empty_list);
        this.searchBar = (SearchBar) view.findViewById(R.id.search_bar);
        this.searchBar.setOnSearchListener(new SearchBar.OnSearchListener() { // from class: com.narvii.media.online.audio.OnlineAudioPickerListSearchFragment.1
            @Override // com.narvii.widget.SearchBar.OnSearchListener
            public void onTextChanged(SearchBar searchBar, String str) throws IllegalStateException {
                OnlineAudioPickerListSearchFragment.this.qStr = str;
                ((OnlineAudioPickerBaseOnlineListFragment) OnlineAudioPickerListSearchFragment.this).adapter.resetList();
            }

            @Override // com.narvii.widget.SearchBar.OnSearchListener
            public void onSearch(SearchBar searchBar, String str) throws IllegalStateException {
                OnlineAudioPickerListSearchFragment.this.qStr = str;
                ((OnlineAudioPickerBaseOnlineListFragment) OnlineAudioPickerListSearchFragment.this).adapter.resetList();
                SoftKeyboard.hideSoftKeyboard(OnlineAudioPickerListSearchFragment.this.searchBar.getEditText());
            }
        });
        this.searchBar.setClearClickListener(new SearchBar.OnClearClickListener() { // from class: com.narvii.media.online.audio.-$$Lambda$OnlineAudioPickerListSearchFragment$xkIKTQ-NVOzM9pCX7nlwvveCaxg
            @Override // com.narvii.widget.SearchBar.OnClearClickListener
            public final void onClearClicked() {
                this.f$0.lambda$onViewCreated$0$OnlineAudioPickerListSearchFragment();
            }
        });
        StatusBarUtils.addMarginTopToContentChild(this.searchBar, getStatusBarOverlaySize());
        ((Button) this.searchBar.findViewById(R.id.search_cancel)).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.media.online.audio.OnlineAudioPickerListSearchFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                OnlineAudioPickerListSearchFragment.this.finish();
            }
        });
        this.searchBar.setFocusableInTouchMode(true);
        this.searchBar.clearFocus();
        this.searchBar.post(new Runnable() { // from class: com.narvii.media.online.audio.OnlineAudioPickerListSearchFragment.3
            @Override // java.lang.Runnable
            public void run() {
                Utils.post(new Runnable() { // from class: com.narvii.media.online.audio.OnlineAudioPickerListSearchFragment.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        SoftKeyboard.showSoftKeyboard(OnlineAudioPickerListSearchFragment.this.searchBar.getEditText());
                    }
                });
            }
        });
    }

    public /* synthetic */ void lambda$onViewCreated$0$OnlineAudioPickerListSearchFragment() {
        SoftKeyboard.showSoftKeyboard(this.searchBar.getEditText());
    }

    @Override // com.narvii.media.online.audio.OnlineAudioPickerBaseOnlineListFragment
    protected void presetSubCategoryViewData(Intent intent) {
        intent.putExtra("q", this.qStr);
    }

    @Override // com.narvii.media.online.audio.OnlineAudioPickerBaseOnlineListFragment
    protected View initPopupWindow(View view) {
        View viewInitPopupWindow = super.initPopupWindow(view);
        viewInitPopupWindow.findViewById(R.id.sort_select_default).setVisibility(8);
        ((TextView) view.findViewById(R.id.sort_text)).setText(R.string.relevance);
        return viewInitPopupWindow;
    }

    @Override // com.narvii.media.online.audio.OnlineAudioPickerBaseListFragment
    protected NVAdapter createMainAdapter(Bundle bundle) {
        Adapter adapter = new Adapter(this);
        ((OnlineAudioPickerBaseOnlineListFragment) this).adapter = adapter;
        return adapter;
    }

    protected class Adapter extends OnlineAudioPickerBaseOnlineListFragment.SoundAssetAdapter {
        public Adapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            ApiRequest.Builder builderPath = ApiRequest.builder().global().path("/asset/sound/search2");
            builderPath.param("q", OnlineAudioPickerListSearchFragment.this.qStr);
            configDefaultRequestParam(builderPath, z);
            return builderPath.build();
        }
    }
}
