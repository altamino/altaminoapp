package com.narvii.chat.screenroom.playlist;

import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.provider.MediaStore;
import android.support.v4.app.FragmentManager;
import android.support.v4.view.GravityCompat;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.chat.ChatActivity;
import com.narvii.chat.screenroom.ScreenRoomService;
import com.narvii.chat.screenroom.utils.PlayListSharedPreference;
import com.narvii.chat.video.fragments.ScreenRoomFragment;
import com.narvii.list.DragSortListFragment;
import com.narvii.list.NVArrayAdapter;
import com.narvii.logging.LogEvent;
import com.narvii.media.MediaPickerFragment;
import com.narvii.model.ChatThread;
import com.narvii.model.Media;
import com.narvii.model.PlayList;
import com.narvii.model.PlayListItem;
import com.narvii.permisson.NVPermission;
import com.narvii.photos.PhotoManager;
import com.narvii.photos.PhotoUploadListener;
import com.narvii.util.CollectionUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.TimeUtils;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.NVImageView;
import com.narvii.widget.SwipeableLayout;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import pl.droidsonroids.gif.GifDrawable;

/* loaded from: classes2.dex */
public class PlaylistFragment extends DragSortListFragment implements MediaPickerFragment.OnResultListener, PlayListChangeListener, MediaPickerFragment.OnCustomOptionSelectedListener {
    private static final int ADD_VIDEO_PLACEHOLDER_NUM = 3;
    private static int MAX_PLAYLIST_LENGTH = 500;
    private FrameLayout addVideoButton;
    private View backgroundMaskView;
    private View btnStart;
    private Button clearAllButton;
    private boolean isLoadPlaylistForPrePick;
    private boolean isPrePickMode;
    private Adapter mainListAdapter;
    private MediaPickerFragment mediaPickerFragment;
    private PlaylistDismissListener onDismissListener;
    private PlayListItem pendingPlayItem;
    private PhotoManager photo;
    private File photoDir;
    private PlayListSharedPreference playListSharedPreference;
    private ScreenRoomService screenRoomService;
    private View selectFrame;
    private View startFrame;
    private SwipeableLayout swipeableLayout;
    private TextView videoCounter;
    private VideoPickCallback videoPickCallback;
    private LinearLayout videoStaticsLayout;
    private TextView videoTotalTime;
    private View[] addVideoItems = new View[3];
    private List<PlayListItem> prePickPlaylist = new ArrayList();
    private int prepickNdcid = -1;

    public interface PlaylistDismissListener {
        void onDismiss();
    }

    public interface VideoPickCallback {
        void onVideoPickFinished();
    }

    @Override // com.narvii.list.NVListFragment
    protected boolean autoAddBottomPadding() {
        return false;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "ScreeningRoomPlaylist";
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return false;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public boolean isFinalPage() {
        return true;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public boolean isValidPage() {
        return false;
    }

    public void setVideoPickCallback(VideoPickCallback videoPickCallback) {
        this.videoPickCallback = videoPickCallback;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.photoDir = new File(new File(getContext().getFilesDir(), "photo"), "screenroomPlaylistItemCover");
        this.mediaPickerFragment = (MediaPickerFragment) getFragmentManager().findFragmentByTag("playListMediaPicker");
        if (this.mediaPickerFragment == null) {
            this.mediaPickerFragment = new MediaPickerFragment();
            getFragmentManager().beginTransaction().add(this.mediaPickerFragment, "playListMediaPicker").commitAllowingStateLoss();
        }
        this.mediaPickerFragment.addOnResultListener(this);
        this.mediaPickerFragment.setOnCustomOptionSelectedListener(this);
        this.screenRoomService = (ScreenRoomService) getService("screenRoom");
        this.screenRoomService.addPlayListChangeListenter(this);
        this.photo = (PhotoManager) getService("photo");
        this.playListSharedPreference = new PlayListSharedPreference(this);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        this.screenRoomService.removePlayListChangeListener(this);
        this.onDismissListener = null;
        super.onDestroy();
        MediaPickerFragment mediaPickerFragment = this.mediaPickerFragment;
        if (mediaPickerFragment != null) {
            mediaPickerFragment.removeOnResultListener(this);
        }
    }

    @Override // com.narvii.list.DragSortListFragment, com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_screenroom_playlist, viewGroup, false);
    }

    @Override // com.narvii.list.DragSortListFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        PlayList playList;
        ListView listView;
        ListAdapter adapter;
        super.onViewCreated(view, bundle);
        this.swipeableLayout = (SwipeableLayout) view.findViewById(R.id.frame);
        this.swipeableLayout.setAllowDirection(2);
        int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.swipe_layout_radius);
        this.swipeableLayout.setRadius(dimensionPixelSize, dimensionPixelSize, 0, 0);
        this.swipeableLayout.setAppearAnimation(1);
        boolean z = getContext().getResources().getConfiguration().orientation == 2;
        ((ViewGroup.MarginLayoutParams) this.swipeableLayout.getLayoutParams()).topMargin = z ? getStatusBarOverlaySize() : (int) Utils.dpToPx(getContext(), 200.0f);
        this.backgroundMaskView = null;
        if (getActivity() instanceof ChatActivity) {
            this.backgroundMaskView = getActivity().findViewById(R.id.screen_room_playlist);
        }
        this.swipeableLayout.setSwipeListener(new SwipeableLayout.SwipeListener() { // from class: com.narvii.chat.screenroom.playlist.PlaylistFragment.1
            @Override // com.narvii.widget.SwipeableLayout.SwipeListener
            public void onLayoutSwiped() {
                if (PlaylistFragment.this.onDismissListener != null) {
                    PlaylistFragment.this.onDismissListener.onDismiss();
                }
                PlaylistFragment.this.removeSelfAndBg();
            }

            @Override // com.narvii.widget.SwipeableLayout.SwipeListener
            public void onLayoutMoved(int i, int i2, int i3, int i4) {
                int iMax = (int) ((1.0f - ((Math.max(0, i4 - i3) * 1.0f) / PlaylistFragment.this.swipeableLayout.getHeight())) * 204.0f);
                View view2 = PlaylistFragment.this.backgroundMaskView;
                if (iMax < 0) {
                    iMax = 0;
                }
                view2.setBackgroundColor(Color.argb(iMax, 0, 0, 0));
            }
        });
        this.swipeableLayout.bindListView(getListView());
        view.findViewById(R.id.click_remove_mask).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.screenroom.playlist.PlaylistFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (PlaylistFragment.this.swipeableLayout != null) {
                    PlaylistFragment.this.swipeableLayout.dismiss(2);
                }
            }
        });
        this.clearAllButton = (Button) view.findViewById(R.id.clear_all_button);
        this.clearAllButton.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.screenroom.playlist.PlaylistFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(PlaylistFragment.this.getContext());
                aCMAlertDialog.setMessage(R.string.screen_room_playlist_clear_confirm);
                aCMAlertDialog.addButton(R.string.no, (View.OnClickListener) null, -4473925);
                aCMAlertDialog.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.chat.screenroom.playlist.PlaylistFragment.3.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view3) throws Throwable {
                        PlaylistFragment.this.mainListAdapter.clear();
                        PlaylistFragment.this.clearPlayItemList();
                        PlaylistFragment.this.onLocalListChanged();
                    }
                });
                aCMAlertDialog.show();
            }
        });
        view.findViewById(R.id.minimize_area).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.screenroom.playlist.PlaylistFragment.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (PlaylistFragment.this.swipeableLayout != null) {
                    PlaylistFragment.this.swipeableLayout.dismiss(2);
                }
            }
        });
        this.videoCounter = (TextView) view.findViewById(R.id.screenroom_playlist_video_counter);
        this.videoTotalTime = (TextView) view.findViewById(R.id.screenroom_playlist_video_time_total);
        this.videoStaticsLayout = (LinearLayout) view.findViewById(R.id.screenroom_playlist_video_statics_layout);
        this.addVideoButton = (FrameLayout) view.findViewById(R.id.screen_room_add_video);
        this.addVideoButton.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.screenroom.playlist.PlaylistFragment.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                PlaylistFragment.this.startPick();
            }
        });
        updateLayout();
        updatePlayListView();
        if (bundle == null && (playList = this.screenRoomService.getPlayList()) != null && playList.currentItemIndex != -1 && (listView = (ListView) view.findViewById(android.R.id.list)) != null && (adapter = listView.getAdapter()) != null && adapter.getCount() > playList.currentItemIndex) {
            int size = CollectionUtils.getSize(playList.items);
            int i = playList.currentItemIndex;
            if (size > i) {
                try {
                    listView.setSelectionFromTop(i, Utils.dpToPxInt(getContext(), 30.0f));
                } catch (Exception e) {
                    Log.e(ScreenRoomFragment.PLAYLIST_FRAGMENT_TAG, e);
                }
            }
        }
        this.startFrame = view.findViewById(R.id.start_frame);
        this.selectFrame = view.findViewById(R.id.select_frame);
        this.btnStart = view.findViewById(R.id.btn_start);
        this.btnStart.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.screenroom.playlist.PlaylistFragment.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                List<PlayListItem> playItemList = PlaylistFragment.this.getPlayItemList();
                HashSet hashSet = new HashSet();
                if (playItemList != null) {
                    Iterator<PlayListItem> it = playItemList.iterator();
                    while (it.hasNext()) {
                        int i2 = it.next().type;
                        if (i2 == 1) {
                            hashSet.add("Local Video");
                        } else if (i2 == 2) {
                            hashSet.add("Youtube");
                        } else if (i2 == 3) {
                            hashSet.add("Local Music");
                        }
                    }
                }
                LogEvent.clickWildcardBuilder(PlaylistFragment.this, "StartButton").extraParam("videoCount", Integer.valueOf(CollectionUtils.getSize(playItemList))).extraParam("videoType", TextUtils.join(",", hashSet)).send();
                PlaylistFragment.this.playListSharedPreference.savePlaylist(PlaylistFragment.this.prepickNdcid, playItemList);
                if (PlaylistFragment.this.videoPickCallback != null) {
                    PlaylistFragment.this.videoPickCallback.onVideoPickFinished();
                }
            }
        });
        updateBottomViews();
    }

    public void setIsPrePickMode(boolean z, ChatThread chatThread) {
        this.isPrePickMode = z;
        this.isLoadPlaylistForPrePick = false;
        this.prepickNdcid = chatThread.ndcId;
        this.prePickPlaylist.clear();
        updateBottomViews();
    }

    private void updateBottomViews() {
        View view = this.startFrame;
        if (view != null) {
            view.setVisibility(this.isPrePickMode ? 0 : 8);
        }
        View view2 = this.selectFrame;
        if (view2 != null) {
            view2.setVisibility(this.isPrePickMode ? 8 : 0);
        }
        updateStartButton();
    }

    private void updateStartButton() {
        if (this.btnStart != null) {
            List<PlayListItem> playItemList = getPlayItemList();
            this.btnStart.setEnabled((playItemList == null || playItemList.isEmpty()) ? false : true);
        }
    }

    public void removeSelfAndBg() {
        remove();
        View view = this.backgroundMaskView;
        if (view != null) {
            view.setBackgroundColor(0);
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        getListView().setDivider(new ColorDrawable(-1998528797));
        getListView().setDividerHeight((int) Utils.dpToPx(getContext(), 1.0f));
        int i = 0;
        while (true) {
            View[] viewArr = this.addVideoItems;
            if (i >= viewArr.length) {
                return;
            }
            viewArr[i] = getLayoutInflater(null).inflate(R.layout.screen_room_playlist_item_empty, (ViewGroup) getListView(), false);
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.DragSortListFragment, com.narvii.list.NVListFragment
    public NVArrayAdapter createAdapter(Bundle bundle) {
        this.mainListAdapter = new Adapter(this);
        updatePlayListView();
        return this.mainListAdapter;
    }

    @Override // com.narvii.app.NVFragment
    public Boolean hasPostEntry() {
        return false;
    }

    @Override // com.narvii.list.DragSortListFragment, com.mobeta.android.dslv.DragSortListView.DropListener
    public void drop(int i, int i2) throws Throwable {
        super.drop(i, i2);
        onLocalListChanged();
    }

    public void remove() {
        FragmentManager fragmentManager = getFragmentManager();
        if (fragmentManager != null) {
            fragmentManager.beginTransaction().remove(this).commitAllowingStateLoss();
        }
    }

    public void dismiss() {
        SwipeableLayout swipeableLayout = this.swipeableLayout;
        if (swipeableLayout != null) {
            swipeableLayout.dismiss(2);
        }
    }

    public void registerPlaylistDismissListener(PlaylistDismissListener playlistDismissListener) {
        if (playlistDismissListener == null) {
            return;
        }
        this.onDismissListener = playlistDismissListener;
    }

    public void unregisterPlaylistDismissListener() {
        this.onDismissListener = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startPick() {
        List<PlayListItem> playItemList = getPlayItemList();
        if (playItemList == null || playItemList.size() < MAX_PLAYLIST_LENGTH) {
            NVPermission.builder(this).permissions(new String[]{"android.permission.READ_EXTERNAL_STORAGE"}).permissionListener(this).requestCode(107).request();
        } else {
            NVToast.makeText(getContext(), getString(R.string.screen_room_playlist_size_limit, Integer.valueOf(MAX_PLAYLIST_LENGTH)), 0).show();
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.permisson.PermissionListener
    public void onPermissionGranted(int i) {
        PlayListItem playListItem;
        super.onPermissionGranted(i);
        if (i == 107) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(new MediaPickerFragment.Option(1, getString(R.string.media_music_picker), 0, 1));
            Bundle bundle = new Bundle();
            bundle.putString("type", "video");
            bundle.putBoolean(MediaPickerFragment.PICK_YOUTUBE_NEED_DURATION, true);
            this.mediaPickerFragment.pickMedia(null, bundle, 262656, MAX_PLAYLIST_LENGTH - getPlayItemList().size(), arrayList);
            return;
        }
        if (i == 303) {
            startActivityForResult(Intent.createChooser(new Intent("android.intent.action.PICK", MediaStore.Audio.Media.EXTERNAL_CONTENT_URI), getString(R.string.media_music_picker)), 100);
        } else {
            if (i != 307 || (playListItem = this.pendingPlayItem) == null || this.isPrePickMode) {
                return;
            }
            this.screenRoomService.playItem(playListItem);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<PlayListItem> getPlayItemList() {
        if (this.isPrePickMode) {
            if (!this.isLoadPlaylistForPrePick) {
                this.prePickPlaylist.clear();
                List<PlayListItem> listLoadPlayListItem = this.playListSharedPreference.loadPlayListItem(this.prepickNdcid);
                if (listLoadPlayListItem != null) {
                    this.prePickPlaylist.addAll(listLoadPlayListItem);
                }
                this.isLoadPlaylistForPrePick = true;
            }
            return this.prePickPlaylist;
        }
        return this.screenRoomService.getPlayItemList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPlayItemList(List<PlayListItem> list) {
        if (this.isPrePickMode) {
            this.prePickPlaylist = new ArrayList(list);
            updateStartButton();
        } else {
            this.screenRoomService.setPlayListItems(list);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearPlayItemList() {
        if (this.isPrePickMode) {
            this.prePickPlaylist.clear();
            updateStartButton();
        } else {
            this.screenRoomService.onPlayItemClear();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void deletePlayItemList(PlayListItem playListItem) {
        if (this.isPrePickMode) {
            this.prePickPlaylist.remove(playListItem);
            updateStartButton();
        } else {
            this.screenRoomService.onPlayItemDeleted(playListItem);
        }
    }

    @Override // com.narvii.media.MediaPickerFragment.OnCustomOptionSelectedListener
    public void onCustomOptionSelected(MediaPickerFragment.Option option, Bundle bundle) {
        startActivityForResult(Intent.createChooser(new Intent("android.intent.action.PICK", MediaStore.Audio.Media.EXTERNAL_CONTENT_URI), getString(R.string.media_music_picker)), 100);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) throws Throwable {
        if (i2 == -1 && i == 100) {
            queryAudioUri(intent.getData());
        } else {
            super.onActivityResult(i, i2, intent);
        }
    }

    private void queryAudioUri(Uri uri) throws Throwable {
        PlayListItem playListItem;
        if (uri == null) {
            return;
        }
        Cursor cursorQuery = getContext().getContentResolver().query(uri, new String[]{"_id", "_data", "_display_name", "duration", "album_id"}, null, null, null);
        if (cursorQuery == null || !cursorQuery.moveToFirst()) {
            playListItem = null;
        } else {
            playListItem = new PlayListItem();
            playListItem.type = 3;
            playListItem.songId = cursorQuery.getInt(0);
            String string = cursorQuery.getString(1);
            if (string != null) {
                playListItem.localMediaUrl = Uri.fromFile(new File(string)).toString();
            }
            playListItem.url = playListItem.localMediaUrl;
            playListItem.title = cursorQuery.getString(2);
            double d = cursorQuery.getInt(3);
            Double.isNaN(d);
            playListItem.duration = d / 1000.0d;
            playListItem.albumId = cursorQuery.getInt(4);
            playListItem.needUploadThumbnail = true;
            cursorQuery.close();
        }
        if (playListItem != null) {
            this.mainListAdapter.add(playListItem);
            onLocalListChanged();
        }
    }

    @Override // com.narvii.media.MediaPickerFragment.OnResultListener
    public void onPickMediaResult(List<Media> list, Bundle bundle) throws Throwable {
        if (bundle == null) {
            return;
        }
        if ("video".equals(bundle.getString("type"))) {
            ArrayList arrayList = new ArrayList();
            for (Media media : list) {
                PlayListItem playListItem = new PlayListItem();
                int i = media.type;
                if (i == 103) {
                    playListItem.type = 2;
                    playListItem.url = media.url;
                    playListItem.mediaList = new ArrayList();
                    playListItem.mediaList.add(media);
                    playListItem.needUploadThumbnail = false;
                } else if (i == 123) {
                    playListItem.type = 1;
                    playListItem.localMediaUrl = media.url;
                    playListItem.needUploadThumbnail = true;
                }
                playListItem.title = media.fileName;
                playListItem.url = media.url;
                playListItem.thumbnailUrl = media.coverImage;
                playListItem.author = media.author;
                double d = media.duration;
                Double.isNaN(d);
                playListItem.duration = d / 1000.0d;
                arrayList.add(playListItem);
            }
            this.mainListAdapter.addAll(arrayList);
            onLocalListChanged();
            return;
        }
        if ("cover".equals(bundle.getString("type"))) {
            List<PlayListItem> list2 = this.mainListAdapter.getList();
            PlayListItem playListItem2 = (PlayListItem) JacksonUtils.readAs(bundle.getString("item"), PlayListItem.class);
            for (PlayListItem playListItem3 : list2) {
                if (playListItem3 == playListItem2 || TextUtils.equals(playListItem3.url, playListItem2.url)) {
                    playListItem3.thumbnailUrl = list.get(0).url;
                    playListItem3.needUploadThumbnail = true;
                }
            }
            this.mainListAdapter.setList(new ArrayList(list2));
            onLocalListChanged();
        }
    }

    @Override // com.narvii.chat.screenroom.playlist.PlayListChangeListener
    public void onPlayListChanged(PlayList playList) {
        onRemoteListChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onLocalListChanged() throws Throwable {
        List<PlayListItem> list = this.mainListAdapter.getList();
        for (PlayListItem playListItem : list) {
            String str = playListItem.thumbnailUrl;
            if (str != null && playListItem.needUploadThumbnail) {
                this.photo.upload(str, new ThumbnailUploadListener(playListItem));
            } else if (playListItem.type == 3 && playListItem.needUploadThumbnail) {
                try {
                    Bitmap artwork = PlaylistUtils.getArtwork(getContext(), playListItem.songId, playListItem.albumId);
                    if (artwork == null) {
                        playListItem.needUploadThumbnail = false;
                    } else {
                        this.photo.upload((String) null, artwork, (String) null, new ThumbnailUploadListener(playListItem));
                    }
                } catch (OutOfMemoryError unused) {
                }
            }
        }
        setPlayItemList(list);
        updatePlayListView();
    }

    private class ThumbnailUploadListener implements PhotoUploadListener {
        private PlayListItem item;

        @Override // com.narvii.photos.PhotoUploadListener
        public void onFail(String str, int i, String str2, Throwable th) {
        }

        @Override // com.narvii.photos.PhotoUploadListener
        public void onProgress(String str, int i, int i2) {
        }

        public ThumbnailUploadListener(PlayListItem playListItem) {
            this.item = playListItem;
        }

        @Override // com.narvii.photos.PhotoUploadListener
        public void onFinish(String str, String str2) {
            Media media = new Media();
            media.url = str2;
            media.type = 100;
            List<PlayListItem> playItemList = PlaylistFragment.this.getPlayItemList();
            for (PlayListItem playListItem : playItemList) {
                PlayListItem playListItem2 = this.item;
                if (playListItem == playListItem2 || (TextUtils.equals(playListItem.url, playListItem2.url) && (playListItem.thumbnailUrl != null || playListItem.needUploadThumbnail))) {
                    List<Media> list = playListItem.mediaList;
                    if (list == null) {
                        playListItem.mediaList = new ArrayList();
                    } else {
                        list.clear();
                    }
                    playListItem.mediaList.add(media);
                    playListItem.thumbnailUrl = null;
                    playListItem.needUploadThumbnail = false;
                }
            }
            PlaylistFragment.this.setPlayItemList(playItemList);
            PlaylistFragment.this.updatePlayListView();
        }
    }

    private void onRemoteListChanged() {
        updatePlayListView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePlayListView() {
        String countText;
        if (getActivity() != null) {
            if ((getActivity() instanceof NVActivity) && ((NVActivity) getActivity()).isDestoryed()) {
                return;
            }
            ArrayList arrayList = new ArrayList(getPlayItemList());
            this.mainListAdapter.setList(arrayList);
            boolean zIsHost = isHost();
            int iMax = zIsHost ? Math.max(1, 3 - arrayList.size()) : 0;
            while (getListView().getFooterViewsCount() > iMax) {
                getListView().removeFooterView(this.addVideoItems[getListView().getFooterViewsCount() - 1]);
            }
            while (getListView().getFooterViewsCount() < iMax) {
                getListView().addFooterView(this.addVideoItems[getListView().getFooterViewsCount()], null, true);
            }
            LinearLayout linearLayout = this.videoStaticsLayout;
            if (linearLayout != null) {
                linearLayout.setGravity(zIsHost ? GravityCompat.START : 1);
            }
            FrameLayout frameLayout = this.addVideoButton;
            int i = 8;
            if (frameLayout != null) {
                frameLayout.setVisibility(zIsHost ? 0 : 8);
            }
            Button button = this.clearAllButton;
            if (button != null) {
                if (zIsHost && !arrayList.isEmpty()) {
                    i = 0;
                }
                button.setVisibility(i);
            }
            if (this.videoCounter != null) {
                this.videoCounter.setText(com.narvii.util.text.TextUtils.getCountText(getContext(), arrayList.size(), R.string.screen_room_playlist_video_counter_one, R.string.screen_room_playlist_video_counter_other));
            }
            if (this.videoTotalTime != null) {
                Iterator it = arrayList.iterator();
                long j = 0;
                while (it.hasNext()) {
                    double d = j;
                    double d2 = ((PlayListItem) it.next()).duration;
                    Double.isNaN(d);
                    j = (long) (d + d2);
                }
                if (j == 0) {
                    countText = getString(R.string.duration_none_mins);
                } else if (j < 60) {
                    countText = getString(R.string.duration_less_than_min);
                } else {
                    countText = com.narvii.util.text.TextUtils.getCountText(getContext(), (int) ((j % 3600) / 60), R.string.duration_one_min, R.string.duration_n_mins);
                    if (j > 3600) {
                        countText = getString(R.string.duration_more_than_hour, Long.valueOf(j / 3600), countText);
                    }
                }
                this.videoTotalTime.setText(getString(R.string.screen_room_playlist_video_total_time, countText));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isHost() {
        return this.isPrePickMode || this.screenRoomService.isHostInSRChannel();
    }

    @Override // android.support.v4.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        updateLayout();
    }

    private void updateLayout() {
        boolean zIsLandscape = Utils.isLandscape(getContext());
        ((ViewGroup.MarginLayoutParams) this.swipeableLayout.getLayoutParams()).topMargin = zIsLandscape ? getStatusBarOverlaySize() : Utils.getOverlayPlaceholderHeight(getActivity()) + Utils.getDimenPixelSize(getContext(), R.dimen.video_player_height) + (Utils.getDimenPixelSize(getContext(), R.dimen.sr_portrait_margin_h) * 2);
    }

    private class Adapter extends NVArrayAdapter<PlayListItem> {
        public Adapter(NVContext nVContext) {
            super(nVContext, PlayListItem.class);
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            return PlaylistFragment.this.getListView().getFooterViewsCount() == 0 && super.isEmpty();
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) throws Throwable {
            PlayListItem item = getItem(i);
            if (item == null) {
                return null;
            }
            View viewCreateView = createView(R.layout.screen_room_playlist_item, viewGroup, view);
            ImageView imageView = (ImageView) viewCreateView.findViewById(R.id.screenroom_playlist_status);
            if (PlaylistFragment.this.screenRoomService.getCurrentPlayListItem() == item) {
                if (PlaylistFragment.this.screenRoomService.getCurrentStatus() != 2) {
                    if (PlaylistFragment.this.screenRoomService.getCurrentStatus() == 3 || PlaylistFragment.this.screenRoomService.getCurrentStatus() == 1) {
                        imageView.setImageResource(R.drawable.ic_screenroom_playlist_pause);
                    }
                } else {
                    try {
                        imageView.setImageDrawable(new GifDrawable(PlaylistFragment.this.getResources().getAssets(), "ic_screenroom_playlist_playing_gif.gif"));
                    } catch (IOException unused) {
                        imageView.setImageResource(R.drawable.ic_screenroom_playlist_playing);
                    }
                }
            } else if (item.isDone) {
                imageView.setImageResource(R.drawable.ic_screenroom_playlist_played);
            } else {
                imageView.setImageDrawable(null);
            }
            PlaylistUtils.setThumbnailImage(getContext(), (NVImageView) viewCreateView.findViewById(R.id.screenroom_playlist_thumbnail), item);
            ((TextView) viewCreateView.findViewById(R.id.screenroom_playlist_title)).setText(item.title);
            TextView textView = (TextView) viewCreateView.findViewById(R.id.screenroom_playlist_source_text);
            ImageView imageView2 = (ImageView) viewCreateView.findViewById(R.id.screenroom_playlist_source_icon);
            int i2 = item.type;
            if (i2 == 1 || i2 == 3) {
                textView.setText(R.string.screen_room_playlist_local);
                imageView2.setImageResource(R.drawable.ic_screenroom_playlist_upload);
            } else if (i2 == 2) {
                textView.setText(PlaylistFragment.this.getString(R.string.screen_room_playlist_youtube, item.author));
                imageView2.setImageResource(R.drawable.ic_playlist_youtube);
            }
            String timeDuration = TimeUtils.formatTimeDuration((int) (item.duration * 1000.0d));
            TextView textView2 = (TextView) viewCreateView.findViewById(R.id.screenroom_playlist_duration);
            textView2.setText(timeDuration);
            textView2.setVisibility(0);
            viewCreateView.findViewById(R.id.screenroom_playlist_thumbnail_overlay).setVisibility(0);
            viewCreateView.findViewById(R.id.drag_handle).setVisibility(PlaylistFragment.this.isHost() ? 0 : 8);
            return viewCreateView;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, final Object obj, View view, View view2) {
            if (!PlaylistFragment.this.isHost()) {
                return super.onItemClick(listAdapter, i, obj, view, view2);
            }
            if (obj == null) {
                PlaylistFragment.this.startPick();
            }
            if (obj instanceof PlayListItem) {
                final PlayListItem playListItem = (PlayListItem) obj;
                ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
                final ArrayList arrayList = new ArrayList();
                if (!PlaylistFragment.this.isPrePickMode) {
                    actionSheetDialog.addItem(R.string.video_play, 0);
                    arrayList.add(Integer.valueOf(R.string.video_play));
                }
                actionSheetDialog.addItem(R.string.rename, 0);
                arrayList.add(Integer.valueOf(R.string.rename));
                if (playListItem.type != 2) {
                    actionSheetDialog.addItem(R.string.change_the_background, 0);
                    arrayList.add(Integer.valueOf(R.string.change_the_background));
                }
                actionSheetDialog.addItem(R.string.delete, 1);
                arrayList.add(Integer.valueOf(R.string.delete));
                actionSheetDialog.show();
                actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.chat.screenroom.playlist.PlaylistFragment.Adapter.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i2) throws Throwable {
                        switch (((Integer) arrayList.get(i2)).intValue()) {
                            case R.string.change_the_background /* 2131689928 */:
                                Bundle bundle = new Bundle();
                                bundle.putString("item", JacksonUtils.writeAsString(obj));
                                bundle.putString("type", "cover");
                                PlaylistFragment.this.photoDir.mkdirs();
                                PlaylistFragment.this.mediaPickerFragment.pickMedia(PlaylistFragment.this.photoDir, bundle, 6);
                                break;
                            case R.string.delete /* 2131690312 */:
                                PlaylistFragment.this.mainListAdapter.remove((Adapter) playListItem);
                                PlaylistFragment.this.deletePlayItemList(playListItem);
                                PlaylistFragment.this.onLocalListChanged();
                                break;
                            case R.string.rename /* 2131693267 */:
                                final AlertDialog alertDialog = new AlertDialog(Adapter.this.getContext());
                                alertDialog.setTitle(R.string.video_name);
                                final EditText editTextBlackCursor = alertDialog.setEditTextBlackCursor();
                                editTextBlackCursor.setText(playListItem.title);
                                alertDialog.addButton(android.R.string.cancel, 0, new View.OnClickListener() { // from class: com.narvii.chat.screenroom.playlist.PlaylistFragment.Adapter.1.1
                                    @Override // android.view.View.OnClickListener
                                    public void onClick(View view3) {
                                    }
                                });
                                final TextView textView = (TextView) alertDialog.addButton(R.string.done, 4, new View.OnClickListener() { // from class: com.narvii.chat.screenroom.playlist.PlaylistFragment.Adapter.1.2
                                    @Override // android.view.View.OnClickListener
                                    public void onClick(View view3) throws Throwable {
                                        playListItem.title = alertDialog.getEditText();
                                        PlaylistFragment.this.onLocalListChanged();
                                    }
                                });
                                if (!TextUtils.isEmpty(editTextBlackCursor.getText())) {
                                    Adapter.this.enableView(textView);
                                } else {
                                    Adapter.this.disableView(textView);
                                }
                                editTextBlackCursor.addTextChangedListener(new TextWatcher() { // from class: com.narvii.chat.screenroom.playlist.PlaylistFragment.Adapter.1.3
                                    @Override // android.text.TextWatcher
                                    public void afterTextChanged(Editable editable) {
                                    }

                                    @Override // android.text.TextWatcher
                                    public void beforeTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
                                    }

                                    @Override // android.text.TextWatcher
                                    public void onTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
                                        if (!TextUtils.isEmpty(charSequence.toString())) {
                                            Adapter.this.enableView(textView);
                                        } else {
                                            Adapter.this.disableView(textView);
                                        }
                                    }
                                });
                                alertDialog.show();
                                break;
                            case R.string.video_play /* 2131693918 */:
                                if (!playListItem.isLocalMedia()) {
                                    PlaylistFragment.this.screenRoomService.playItem(playListItem);
                                    if (PlaylistFragment.this.swipeableLayout != null) {
                                        PlaylistFragment.this.swipeableLayout.dismiss(2);
                                        break;
                                    }
                                } else {
                                    if (PlaylistFragment.this.getActivity() instanceof ChatActivity) {
                                        ((ChatActivity) PlaylistFragment.this.getActivity()).setAllowFloatingWindow(false);
                                    }
                                    PlaylistFragment.this.pendingPlayItem = playListItem;
                                    NVPermission.builder(PlaylistFragment.this).permissionListener(PlaylistFragment.this).permission("android.permission.READ_EXTERNAL_STORAGE").requestCode(307).request();
                                    break;
                                }
                                break;
                        }
                    }
                });
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }

        void disableView(TextView textView) {
            if (textView == null) {
                return;
            }
            textView.setBackgroundDrawable(getContext().getResources().getDrawable(R.drawable.button_round_gray));
            textView.setClickable(false);
        }

        void enableView(TextView textView) {
            if (textView == null) {
                return;
            }
            textView.setBackgroundDrawable(getContext().getResources().getDrawable(R.drawable.button_round_green));
            textView.setClickable(true);
        }
    }
}
