package com.narvii.media.online.audio;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.list.NVAdapter;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.statusbar.StatusBarUtils;
import com.narvii.widget.SearchBar;

/* JADX INFO: loaded from: classes.dex */
public class OnlineAudioPickerListSearchFragment extends OnlineAudioPickerBaseOnlineListFragment {
    private String qStr;
    private SearchBar searchBar;

    protected class Adapter extends OnlineAudioPickerBaseOnlineListFragment.SoundAssetAdapter {
        public Adapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            ApiRequest.Builder builderPath = ApiRequest.builder().global().path("/asset/sound/search2");
            builderPath.param("q", OnlineAudioPickerListSearchFragment.this.qStr);
            configDefaultRequestParam(builderPath, z6);
            return builderPath.build();
        }
    }

    @Override // com.narvii.media.online.audio.OnlineAudioPickerBaseOnlineListFragment, com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "music_search_result";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$0() {
        SoftKeyboard.showSoftKeyboard(this.searchBar.getEditText());
    }

    @Override // com.narvii.media.online.audio.OnlineAudioPickerBaseListFragment
    protected NVAdapter createMainAdapter(Bundle bundle) {
        Adapter adapter = new Adapter(this);
        ((OnlineAudioPickerBaseOnlineListFragment) this).adapter = adapter;
        return adapter;
    }

    @Override // com.narvii.media.online.audio.OnlineAudioPickerBaseOnlineListFragment, com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.media_audio_online_picker_search_list, viewGroup, false);
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

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        getActivity().getActionBar().hide();
    }

    @Override // com.narvii.media.online.audio.OnlineAudioPickerBaseOnlineListFragment, com.narvii.media.online.audio.OnlineAudioPickerBaseListFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.selectSortMode = 1;
    }

    @Override // com.narvii.media.online.audio.OnlineAudioPickerBaseOnlineListFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        setEmptyText(R.string.normal_empty_list);
        SearchBar searchBar = (SearchBar) view.findViewById(R.id.search_bar);
        this.searchBar = searchBar;
        searchBar.setOnSearchListener(new SearchBar.OnSearchListener() { // from class: com.narvii.media.online.audio.OnlineAudioPickerListSearchFragment.1
            @Override // com.narvii.widget.SearchBar.OnSearchListener
            public void onSearch(SearchBar searchBar2, String str) {
                OnlineAudioPickerListSearchFragment.this.qStr = str;
                ((OnlineAudioPickerBaseOnlineListFragment) OnlineAudioPickerListSearchFragment.this).adapter.resetList();
                SoftKeyboard.hideSoftKeyboard(OnlineAudioPickerListSearchFragment.this.searchBar.getEditText());
            }

            @Override // com.narvii.widget.SearchBar.OnSearchListener
            public void onTextChanged(SearchBar searchBar2, String str) {
                OnlineAudioPickerListSearchFragment.this.qStr = str;
                ((OnlineAudioPickerBaseOnlineListFragment) OnlineAudioPickerListSearchFragment.this).adapter.resetList();
            }
        });
        this.searchBar.setClearClickListener(new SearchBar.OnClearClickListener() { // from class: com.narvii.media.online.audio.e
            @Override // com.narvii.widget.SearchBar.OnClearClickListener
            public final void onClearClicked() {
                this.f2472a.lambda$onViewCreated$0();
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
}
