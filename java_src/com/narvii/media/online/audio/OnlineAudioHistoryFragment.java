package com.narvii.media.online.audio;

import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import com.narvii.lib.R;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVArrayAdapter;
import com.narvii.media.online.audio.model.Sound;
import com.narvii.util.Callback;

/* loaded from: classes3.dex */
public class OnlineAudioHistoryFragment extends OnlineAudioPickerBaseListFragment {
    @Override // com.narvii.media.online.audio.OnlineAudioPickerBaseListFragment, com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return false;
    }

    @Override // com.narvii.media.online.audio.OnlineAudioPickerBaseListFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.recently_used);
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.media_audio_online_picker_list, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        view.findViewById(R.id.filter_and_sourt).setVisibility(8);
        View viewFindViewById = view.findViewById(R.id.empty_retry);
        if (viewFindViewById != null) {
            viewFindViewById.setVisibility(8);
        }
    }

    @Override // com.narvii.media.online.audio.OnlineAudioPickerBaseListFragment
    protected NVAdapter createMainAdapter(Bundle bundle) {
        return new Adapter();
    }

    private class Adapter extends NVArrayAdapter<Sound> {
        public Adapter() {
            super(OnlineAudioHistoryFragment.this, Sound.class);
            setList(OnlineAudioHistoryFragment.this.soundHistoryHelper.getList());
        }

        @Override // com.narvii.list.NVAdapter
        public void refresh(int i, Callback<Integer> callback) {
            setList(OnlineAudioHistoryFragment.this.soundHistoryHelper.getList());
            super.refresh(i, callback);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.media_audio_online_picker_list_item, viewGroup, view);
            OnlineAudioHistoryFragment.this.configItemView(getItem(i), viewCreateView);
            return viewCreateView;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (!(obj instanceof Sound)) {
                return false;
            }
            if (OnlineAudioHistoryFragment.this.dealClickEvent((Sound) obj, view, view2)) {
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }
    }
}
