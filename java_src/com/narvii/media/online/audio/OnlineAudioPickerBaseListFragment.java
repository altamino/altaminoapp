package com.narvii.media.online.audio;

import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.list.DividerAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.media.online.audio.AudioDownloader;
import com.narvii.media.online.audio.model.Sound;
import com.narvii.model.Media;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.TimeUtils;
import com.narvii.util.text.TextUtils;
import com.narvii.widget.CircleProgressBar;
import com.narvii.widget.NVImageView;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public abstract class OnlineAudioPickerBaseListFragment extends NVListFragment implements AudioDownloader.AudioDownloaderCallback {
    private static final int REQUEST_AUDIO = 64776;
    private AudioDownloader audioDownloader;
    private View currentSelectItemView;
    private NVAdapter mainAdapter;
    private MusicPlayer musicPlayer;
    protected SoundHistoryHelper soundHistoryHelper;

    protected abstract NVAdapter createMainAdapter(Bundle bundle);

    @Override // com.narvii.app.theme.NVThemeFragment
    public int initNVTheme() {
        return 2;
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.musicPlayer = new MusicPlayer(this);
        this.audioDownloader = (AudioDownloader) getService("audioDownloader");
        this.soundHistoryHelper = SoundHistoryHelper.getInstance(this);
        setHasOptionsMenu(true);
        updateWifiActive();
    }

    @Override // com.narvii.app.NVFragment
    protected Drawable getActionBarCustomDrawable() {
        return new ColorDrawable(-15000799);
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

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        int i = R.string.search;
        menu.add(0, i, 0, i).setIcon(R.drawable.ic_search_actionbar).setShowAsAction(2);
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.string.search) {
            startActivityForResult(new Intent("android.intent.action.VIEW", Uri.parse("ndc://fragment/" + OnlineAudioPickerListSearchFragment.class.getName())), REQUEST_AUDIO);
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.mainAdapter = createMainAdapter(bundle);
        DividerAdapter dividerAdapter = new DividerAdapter(this) { // from class: com.narvii.media.online.audio.OnlineAudioPickerBaseListFragment.1
            @Override // com.narvii.list.DividerAdapter
            protected int getDividerLayoutId() {
                return R.layout.media_audio_online_picker_list_divider;
            }
        };
        dividerAdapter.setAdapter(this.mainAdapter);
        return dividerAdapter;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.list.refresh.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() throws IllegalStateException {
        stopPlayMusic();
        super.onRefresh();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onPause() throws IllegalStateException {
        this.musicPlayer.pause();
        super.onPause();
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.audioDownloader.removeCallbackByTag(this);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        try {
            this.musicPlayer.release();
        } catch (Exception unused) {
        }
    }

    public void stopPlayMusic() throws IllegalStateException {
        this.musicPlayer.stop();
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

    @Override // com.narvii.media.online.audio.AudioDownloader.AudioDownloaderCallback
    public void onPostExecute(File file, Sound sound) {
        LogEvent.clickBuilder(this, ActSemantic.downloaded).area("MusicList").extraParam("musicName", sound.title).send();
        this.mainAdapter.notifyDataSetChanged();
    }

    @Override // com.narvii.media.online.audio.AudioDownloader.AudioDownloaderCallback
    public void onError(Sound sound, Exception exc) {
        NVToast.makeText(getContext(), R.string.download_audio_error, 0).show();
        this.mainAdapter.notifyDataSetChanged();
    }

    @Override // com.narvii.media.online.audio.AudioDownloader.AudioDownloaderCallback
    public void onProgressUpdate(Sound sound, int i, int i2) {
        if (this.musicPlayer.isCurrentPlayMusic(sound)) {
            ((CircleProgressBar) this.currentSelectItemView.findViewById(R.id.music_download_progress)).setProgress((i * 100) / i2);
        }
    }

    protected void configItemView(Sound sound, View view) {
        ((NVImageView) view.findViewById(R.id.track_thumbnail)).setImageUrl(sound.thumbnailUrl);
        ((TextView) view.findViewById(R.id.track_name)).setText(sound.title);
        TextView textView = (TextView) view.findViewById(R.id.track_artist);
        textView.setText(sound.artist);
        textView.setVisibility(TextUtils.isEmpty(sound.artist) ? 4 : 0);
        TextView textView2 = (TextView) view.findViewById(R.id.track_tags);
        String tagStr = sound.getTagStr();
        textView2.setText(tagStr);
        textView2.setVisibility(TextUtils.isEmpty(tagStr) ? 4 : 0);
        ((TextView) view.findViewById(R.id.track_duration)).setText(TimeUtils.formatTimeDuration(sound.getDurationInMs()));
        MusicSliderView musicSliderView = (MusicSliderView) view.findViewById(R.id.music_seekbar);
        MusicPlayStatusView musicPlayStatusView = (MusicPlayStatusView) view.findViewById(R.id.playing_status);
        View viewFindViewById = view.findViewById(R.id.music_download_container);
        if (this.musicPlayer.isCurrentPlayMusic(sound)) {
            NVAdapter nVAdapter = this.mainAdapter;
            View.OnClickListener onClickListener = nVAdapter != null ? nVAdapter.subviewClickListener : null;
            this.currentSelectItemView = view;
            viewFindViewById.setVisibility(0);
            musicSliderView.setVisibility(0);
            musicSliderView.setOnClickListener(onClickListener);
            this.musicPlayer.bindViews(musicSliderView, musicPlayStatusView);
            CircleProgressBar circleProgressBar = (CircleProgressBar) viewFindViewById.findViewById(R.id.music_download_progress);
            View viewFindViewById2 = viewFindViewById.findViewById(R.id.music_download_download);
            View viewFindViewById3 = viewFindViewById.findViewById(R.id.music_download_pick);
            int downloadState = this.audioDownloader.getDownloadState(sound);
            if (downloadState == -2) {
                viewFindViewById2.setVisibility(0);
                viewFindViewById3.setVisibility(8);
                circleProgressBar.setVisibility(8);
                viewFindViewById2.setOnClickListener(onClickListener);
                return;
            }
            if (downloadState == -1) {
                viewFindViewById3.setVisibility(0);
                circleProgressBar.setVisibility(8);
                viewFindViewById2.setVisibility(8);
                viewFindViewById3.setOnClickListener(onClickListener);
                return;
            }
            circleProgressBar.setVisibility(0);
            viewFindViewById3.setVisibility(8);
            viewFindViewById2.setVisibility(8);
            circleProgressBar.setProgress(downloadState);
            return;
        }
        musicSliderView.setVisibility(8);
        this.musicPlayer.clearViewBind(musicSliderView, musicPlayStatusView);
        musicPlayStatusView.setStatus(0);
        viewFindViewById.setVisibility(8);
    }

    protected boolean dealClickEvent(Sound sound, View view, View view2) throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        if (view2 == null) {
            LogEvent.clickBuilder(this, ActSemantic.playMusic).area("MusicList").send();
            this.musicPlayer.play(sound);
            if (this.wifiActive && this.audioDownloader.getDownloadState(sound) == -2) {
                startDownload(sound, view);
            }
            this.mainAdapter.notifyDataSetChanged();
            return true;
        }
        if (view2.getId() == R.id.music_seekbar) {
            if (this.musicPlayer.isPlaying()) {
                this.musicPlayer.pause();
            } else {
                this.musicPlayer.resume();
            }
            return true;
        }
        if (view2.getId() == R.id.music_download_download) {
            startDownload(sound, view);
        } else {
            if (view2.getId() != R.id.music_download_pick) {
                return false;
            }
            Media media = sound.getMedia();
            File dwonloadedFile = this.audioDownloader.getDwonloadedFile(sound);
            if (media == null) {
                Log.e("OnlineAudioPicker sound media is null");
                return true;
            }
            this.soundHistoryHelper.add(sound);
            Media media2 = (Media) JacksonUtils.readAs(JacksonUtils.writeAsString(media), Media.class);
            media2.url = Uri.fromFile(dwonloadedFile).toString();
            Intent intent = new Intent();
            ArrayList arrayList = new ArrayList();
            arrayList.add(media2);
            intent.putExtra("mediaList", JacksonUtils.writeAsString(arrayList));
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(Integer.valueOf(sound.type));
            intent.putExtra("soundTypeList", JacksonUtils.writeAsString(arrayList2));
            ArrayList arrayList3 = new ArrayList();
            arrayList3.add(sound);
            intent.putExtra("soundDataList", JacksonUtils.writeAsString(arrayList3));
            intent.putExtra("category", getStringParam("category"));
            setResult(-1, intent);
            finish();
        }
        return true;
    }

    private void startDownload(Sound sound, View view) {
        CircleProgressBar circleProgressBar = (CircleProgressBar) view.findViewById(R.id.music_download_progress);
        View viewFindViewById = view.findViewById(R.id.music_download_download);
        View viewFindViewById2 = view.findViewById(R.id.music_download_pick);
        circleProgressBar.setVisibility(0);
        viewFindViewById2.setVisibility(8);
        viewFindViewById.setVisibility(8);
        circleProgressBar.setProgress(0);
        this.audioDownloader.loadAudioFile(sound, this, this);
    }

    protected static class SoundHistoryHelper {
        private static final String KEY_NAME = "history_list";
        private static final String PREF_NAME = "music_library_V2";
        private static SoundHistoryHelper instance;
        private ArrayList<Sound> cache;
        private final SharedPreferences prefs;

        /* JADX INFO: Access modifiers changed from: private */
        public static SoundHistoryHelper getInstance(NVContext nVContext) {
            if (instance == null) {
                instance = new SoundHistoryHelper(nVContext);
            }
            return instance;
        }

        private SoundHistoryHelper(NVContext nVContext) {
            this.prefs = nVContext.getContext().getSharedPreferences(PREF_NAME, 0);
            loadList();
        }

        protected void add(Sound sound) {
            this.cache.remove(sound);
            this.cache.add(0, sound);
            while (this.cache.size() > 30) {
                this.cache.remove(r3.size() - 1);
            }
            this.prefs.edit().putString(KEY_NAME, JacksonUtils.writeAsString(this.cache)).apply();
        }

        protected ArrayList<Sound> getList() {
            loadList();
            ArrayList<Sound> arrayList = new ArrayList<>();
            ArrayList<Sound> arrayList2 = this.cache;
            if (arrayList2 != null && !arrayList2.isEmpty()) {
                arrayList.addAll(this.cache);
            }
            return arrayList;
        }

        private void loadList() {
            try {
                this.cache = JacksonUtils.readListAs(this.prefs.getString(KEY_NAME, null), Sound.class);
                if (this.cache == null) {
                    this.cache = new ArrayList<>();
                }
            } catch (Exception unused) {
                this.cache = new ArrayList<>();
            }
        }
    }
}
