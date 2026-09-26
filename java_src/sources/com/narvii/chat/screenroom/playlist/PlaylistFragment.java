package com.narvii.chat.screenroom.playlist;

import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.provider.MediaStore;
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
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.view.GravityCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.narvii.amino.master.R;
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
import com.narvii.permisson.GranularMediaPermissions;
import com.narvii.permisson.NVPermission;
import com.narvii.permisson.PermissionUtilsV2;
import com.narvii.photos.PhotoManager;
import com.narvii.photos.PhotoUploadListener;
import com.narvii.util.CollectionUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.TimeUtils;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.NVImageView;
import com.narvii.widget.SwipeableLayout;
import com.safedk.android.utils.Logger;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import pl.droidsonroids.gif.b;

/* JADX INFO: loaded from: classes7.dex */
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

    /* JADX INFO: Access modifiers changed from: private */
    class Adapter extends NVArrayAdapter<PlayListItem> {
        public Adapter(NVContext nVContext) {
            super(nVContext, PlayListItem.class);
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

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            return PlaylistFragment.this.getListView().getFooterViewsCount() == 0 && super.isEmpty();
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, final Object obj, View view, View view2) {
            if (!PlaylistFragment.this.isHost()) {
                return super.onItemClick(listAdapter, i10, obj, view, view2);
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
                actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.chat.screenroom.playlist.a
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i11) throws Throwable {
                        this.f2038a.lambda$onItemClick$0(arrayList, playListItem, obj, dialogInterface, i11);
                    }
                });
            }
            return super.onItemClick(listAdapter, i10, obj, view, view2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$0(ArrayList arrayList, final PlayListItem playListItem, Object obj, DialogInterface dialogInterface, int i10) throws Throwable {
            switch (((Integer) arrayList.get(i10)).intValue()) {
                case R.string.change_the_background /* 2131886616 */:
                    Bundle bundle = new Bundle();
                    bundle.putString("item", JacksonUtils.writeAsString(obj));
                    bundle.putString("type", "cover");
                    PlaylistFragment.this.photoDir.mkdirs();
                    PlaylistFragment.this.mediaPickerFragment.pickMedia(PlaylistFragment.this.photoDir, bundle, 6);
                    break;
                case R.string.delete /* 2131887008 */:
                    PlaylistFragment.this.mainListAdapter.remove(playListItem);
                    PlaylistFragment.this.deletePlayItemList(playListItem);
                    PlaylistFragment.this.onLocalListChanged();
                    break;
                case R.string.rename /* 2131890156 */:
                    final AlertDialog alertDialog = new AlertDialog(getContext());
                    alertDialog.setTitle(R.string.video_name);
                    final EditText editTextBlackCursor = alertDialog.setEditTextBlackCursor();
                    editTextBlackCursor.setText(playListItem.title);
                    alertDialog.addButton(android.R.string.cancel, 0, new View.OnClickListener() { // from class: com.narvii.chat.screenroom.playlist.PlaylistFragment.Adapter.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            SoftKeyboard.hideSoftKeyboard(editTextBlackCursor);
                        }
                    });
                    final TextView textView = (TextView) alertDialog.addButton(R.string.done, 4, new View.OnClickListener() { // from class: com.narvii.chat.screenroom.playlist.PlaylistFragment.Adapter.2
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) throws Throwable {
                            playListItem.title = alertDialog.getEditText();
                            PlaylistFragment.this.onLocalListChanged();
                            SoftKeyboard.hideSoftKeyboard(editTextBlackCursor);
                        }
                    });
                    if (!TextUtils.isEmpty(editTextBlackCursor.getText())) {
                        enableView(textView);
                    } else {
                        disableView(textView);
                    }
                    editTextBlackCursor.addTextChangedListener(new TextWatcher() { // from class: com.narvii.chat.screenroom.playlist.PlaylistFragment.Adapter.3
                        @Override // android.text.TextWatcher
                        public void afterTextChanged(Editable editable) {
                        }

                        @Override // android.text.TextWatcher
                        public void beforeTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
                        }

                        @Override // android.text.TextWatcher
                        public void onTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
                            if (!TextUtils.isEmpty(charSequence.toString())) {
                                Adapter.this.enableView(textView);
                            } else {
                                Adapter.this.disableView(textView);
                            }
                        }
                    });
                    alertDialog.show();
                    break;
                case R.string.video_play /* 2131890791 */:
                    if (playListItem.isLocalMedia()) {
                        if (PlaylistFragment.this.getActivity() instanceof ChatActivity) {
                            ((ChatActivity) PlaylistFragment.this.getActivity()).setAllowFloatingWindow(false);
                        }
                        PlaylistFragment.this.pendingPlayItem = playListItem;
                        NVPermission.builder(PlaylistFragment.this).permissionListener(PlaylistFragment.this).permission(PermissionUtilsV2.INSTANCE.obtainPermissionName(GranularMediaPermissions.READ_MEDIA_VIDEO)).requestCode(307).request();
                    } else {
                        PlaylistFragment.this.screenRoomService.playItem(playListItem);
                        if (PlaylistFragment.this.swipeableLayout != null) {
                            PlaylistFragment.this.swipeableLayout.dismiss(2);
                        }
                    }
                    break;
            }
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) throws Throwable {
            PlayListItem item = getItem(i10);
            if (item == null) {
                return null;
            }
            View viewCreateView = createView(R.layout.screen_room_playlist_item, viewGroup, view);
            ImageView imageView = (ImageView) viewCreateView.findViewById(R.id.screenroom_playlist_status);
            if (PlaylistFragment.this.screenRoomService.getCurrentPlayListItem() == item) {
                if (PlaylistFragment.this.screenRoomService.getCurrentStatus() == 2) {
                    try {
                        imageView.setImageDrawable(new b(PlaylistFragment.this.getResources().getAssets(), "ic_screenroom_playlist_playing_gif.gif"));
                    } catch (IOException unused) {
                        imageView.setImageResource(R.drawable.ic_screenroom_playlist_playing);
                    }
                } else if (PlaylistFragment.this.screenRoomService.getCurrentStatus() == 3 || PlaylistFragment.this.screenRoomService.getCurrentStatus() == 1) {
                    imageView.setImageResource(R.drawable.ic_screenroom_playlist_pause);
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
            int i11 = item.type;
            int i12 = 0;
            if (i11 != 1 && i11 != 3) {
                if (i11 == 2) {
                    textView.setText(PlaylistFragment.this.getString(R.string.screen_room_playlist_youtube, item.author));
                    imageView2.setImageResource(R.drawable.ic_playlist_youtube);
                }
            } else {
                textView.setText(R.string.screen_room_playlist_local);
                imageView2.setImageResource(R.drawable.ic_screenroom_playlist_upload);
            }
            String timeDuration = TimeUtils.formatTimeDuration((int) (item.duration * 1000.0d));
            TextView textView2 = (TextView) viewCreateView.findViewById(R.id.screenroom_playlist_duration);
            textView2.setText(timeDuration);
            textView2.setVisibility(0);
            viewCreateView.findViewById(R.id.screenroom_playlist_thumbnail_overlay).setVisibility(0);
            View viewFindViewById = viewCreateView.findViewById(R.id.drag_handle);
            if (!PlaylistFragment.this.isHost()) {
                i12 = 8;
            }
            viewFindViewById.setVisibility(i12);
            return viewCreateView;
        }
    }

    public interface PlaylistDismissListener {
        void onDismiss();
    }

    private class ThumbnailUploadListener implements PhotoUploadListener {
        private PlayListItem item;

        @Override // com.narvii.photos.PhotoUploadListener
        public void onFail(String str, int i10, String str2, Throwable th) {
        }

        @Override // com.narvii.photos.PhotoUploadListener
        public void onProgress(String str, int i10, int i11) {
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

    public interface VideoPickCallback {
        void onVideoPickFinished();
    }

    public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
        if (p1 == null) {
            return;
        }
        p0.startActivityForResult(p1, p5);
    }

    @Override // com.narvii.list.NVListFragment
    protected boolean autoAddBottomPadding() {
        return false;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @Nullable
    public String getPageName() {
        return "screening_room_playlist";
    }

    @Override // com.narvii.app.NVFragment
    public Boolean hasPostEntry() {
        return Boolean.FALSE;
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

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) throws Throwable {
        if (i11 == -1 && i10 == 100) {
            queryAudioUri(intent.getData());
        } else {
            super.onActivityResult(i10, i11, intent);
        }
    }

    public void registerPlaylistDismissListener(PlaylistDismissListener playlistDismissListener) {
        if (playlistDismissListener == null) {
            return;
        }
        this.onDismissListener = playlistDismissListener;
    }

    public void setVideoPickCallback(VideoPickCallback videoPickCallback) {
        this.videoPickCallback = videoPickCallback;
    }

    public void unregisterPlaylistDismissListener() {
        this.onDismissListener = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearPlayItemList() {
        if (!this.isPrePickMode) {
            this.screenRoomService.onPlayItemClear();
        } else {
            this.prePickPlaylist.clear();
            updateStartButton();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void deletePlayItemList(PlayListItem playListItem) {
        if (!this.isPrePickMode) {
            this.screenRoomService.onPlayItemDeleted(playListItem);
        } else {
            this.prePickPlaylist.remove(playListItem);
            updateStartButton();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<PlayListItem> getPlayItemList() {
        if (!this.isPrePickMode) {
            return this.screenRoomService.getPlayItemList();
        }
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

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isHost() {
        return this.isPrePickMode || this.screenRoomService.isHostInSRChannel();
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

    private void queryAudioUri(Uri uri) throws Throwable {
        PlayListItem playListItem;
        if (uri == null) {
            return;
        }
        Cursor cursorQuery = getContext().getContentResolver().query(uri, new String[]{"_id", "_data", "_display_name", TypedValues.TransitionType.S_DURATION, "album_id"}, null, null, null);
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
            playListItem.duration = ((double) cursorQuery.getInt(3)) / 1000.0d;
            playListItem.albumId = cursorQuery.getInt(4);
            playListItem.needUploadThumbnail = true;
            cursorQuery.close();
        }
        if (playListItem != null) {
            this.mainListAdapter.add(playListItem);
            onLocalListChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPlayItemList(List<PlayListItem> list) {
        if (!this.isPrePickMode) {
            this.screenRoomService.setPlayListItems(list);
        } else {
            this.prePickPlaylist = new ArrayList(list);
            updateStartButton();
        }
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.DragSortListFragment, com.narvii.list.NVListFragment
    public NVArrayAdapter createAdapter(Bundle bundle) {
        this.mainListAdapter = new Adapter(this);
        updatePlayListView();
        return this.mainListAdapter;
    }

    public void dismiss() {
        SwipeableLayout swipeableLayout = this.swipeableLayout;
        if (swipeableLayout != null) {
            swipeableLayout.dismiss(2);
        }
    }

    @Override // com.narvii.media.MediaPickerFragment.OnCustomOptionSelectedListener
    public void onCustomOptionSelected(MediaPickerFragment.Option option, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 33) {
            NVPermission.builder(this).permission("android.permission.WRITE_EXTERNAL_STORAGE").requestCode(303).permissionListener(this).request();
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        this.screenRoomService.removePlayListChangeListener(this);
        this.onDismissListener = null;
        super.onDestroy();
        MediaPickerFragment mediaPickerFragment = this.mediaPickerFragment;
        if (mediaPickerFragment != null) {
            mediaPickerFragment.removeOnResultListener(this);
        }
    }

    @Override // com.narvii.media.MediaPickerFragment.OnResultListener
    public void onPickMediaResult(List<Media> list, Bundle bundle) throws Throwable {
        if (bundle == null) {
            return;
        }
        if (!"video".equals(bundle.getString("type"))) {
            if ("cover".equals(bundle.getString("type"))) {
                List<PlayListItem> list2 = this.mainListAdapter.getList();
                PlayListItem playListItem = (PlayListItem) JacksonUtils.readAs(bundle.getString("item"), PlayListItem.class);
                for (PlayListItem playListItem2 : list2) {
                    if (playListItem2 == playListItem || TextUtils.equals(playListItem2.url, playListItem.url)) {
                        playListItem2.thumbnailUrl = list.get(0).url;
                        playListItem2.needUploadThumbnail = true;
                    }
                }
                this.mainListAdapter.setList(new ArrayList(list2));
                onLocalListChanged();
                return;
            }
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (Media media : list) {
            PlayListItem playListItem3 = new PlayListItem();
            int i10 = media.type;
            if (i10 == 103) {
                playListItem3.type = 2;
                playListItem3.url = media.url;
                ArrayList arrayList2 = new ArrayList();
                playListItem3.mediaList = arrayList2;
                arrayList2.add(media);
                playListItem3.needUploadThumbnail = false;
            } else if (i10 == 123) {
                playListItem3.type = 1;
                playListItem3.localMediaUrl = media.url;
                playListItem3.needUploadThumbnail = true;
            }
            playListItem3.title = media.fileName;
            playListItem3.url = media.url;
            playListItem3.thumbnailUrl = media.coverImage;
            playListItem3.author = media.author;
            playListItem3.duration = media.duration / 1000.0d;
            arrayList.add(playListItem3);
        }
        this.mainListAdapter.addAll(arrayList);
        onLocalListChanged();
    }

    public void setIsPrePickMode(boolean z6, ChatThread chatThread) {
        this.isPrePickMode = z6;
        this.isLoadPlaylistForPrePick = false;
        this.prepickNdcid = chatThread.ndcId;
        this.prePickPlaylist.clear();
        updateBottomViews();
    }

    private void onRemoteListChanged() {
        updatePlayListView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startPick() {
        List<PlayListItem> playItemList = getPlayItemList();
        if (playItemList != null && playItemList.size() >= MAX_PLAYLIST_LENGTH) {
            NVToast.makeText(getContext(), getString(R.string.screen_room_playlist_size_limit, Integer.valueOf(MAX_PLAYLIST_LENGTH)), 0).show();
        } else {
            NVPermission.builder(this).permissionListener(this).permission(PermissionUtilsV2.INSTANCE.obtainPermissionName(GranularMediaPermissions.READ_MEDIA_VIDEO)).requestCode(107).request();
        }
    }

    private void updateLayout() {
        int overlayPlaceholderHeight;
        boolean zIsLandscape = Utils.isLandscape(getContext());
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.swipeableLayout.getLayoutParams();
        if (zIsLandscape) {
            overlayPlaceholderHeight = getStatusBarOverlaySize();
        } else {
            overlayPlaceholderHeight = Utils.getOverlayPlaceholderHeight(getActivity()) + Utils.getDimenPixelSize(getContext(), R.dimen.video_player_height) + (Utils.getDimenPixelSize(getContext(), R.dimen.sr_portrait_margin_h) * 2);
        }
        marginLayoutParams.topMargin = overlayPlaceholderHeight;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePlayListView() {
        int iMax;
        String countText;
        int i10;
        int i11;
        if (getActivity() != null) {
            if (!(getActivity() instanceof NVActivity) || !((NVActivity) getActivity()).isDestoryed()) {
                ArrayList arrayList = new ArrayList(getPlayItemList());
                this.mainListAdapter.setList(arrayList);
                boolean zIsHost = isHost();
                if (zIsHost) {
                    iMax = Math.max(1, 3 - arrayList.size());
                } else {
                    iMax = 0;
                }
                while (getListView().getFooterViewsCount() > iMax) {
                    getListView().removeFooterView(this.addVideoItems[getListView().getFooterViewsCount() - 1]);
                }
                while (getListView().getFooterViewsCount() < iMax) {
                    getListView().addFooterView(this.addVideoItems[getListView().getFooterViewsCount()], null, true);
                }
                LinearLayout linearLayout = this.videoStaticsLayout;
                if (linearLayout != null) {
                    if (zIsHost) {
                        i11 = GravityCompat.START;
                    } else {
                        i11 = 1;
                    }
                    linearLayout.setGravity(i11);
                }
                FrameLayout frameLayout = this.addVideoButton;
                int i12 = 8;
                if (frameLayout != null) {
                    if (zIsHost) {
                        i10 = 0;
                    } else {
                        i10 = 8;
                    }
                    frameLayout.setVisibility(i10);
                }
                Button button = this.clearAllButton;
                if (button != null) {
                    if (zIsHost && !arrayList.isEmpty()) {
                        i12 = 0;
                    }
                    button.setVisibility(i12);
                }
                if (this.videoCounter != null) {
                    this.videoCounter.setText(com.narvii.util.text.TextUtils.getCountText(getContext(), arrayList.size(), R.string.screen_room_playlist_video_counter_one, R.string.screen_room_playlist_video_counter_other));
                }
                if (this.videoTotalTime != null) {
                    Iterator it = arrayList.iterator();
                    long j6 = 0;
                    while (it.hasNext()) {
                        j6 = (long) (j6 + ((PlayListItem) it.next()).duration);
                    }
                    if (j6 == 0) {
                        countText = getString(R.string.duration_none_mins);
                    } else if (j6 < 60) {
                        countText = getString(R.string.duration_less_than_min);
                    } else {
                        countText = com.narvii.util.text.TextUtils.getCountText(getContext(), (int) ((j6 % 3600) / 60), R.string.duration_one_min, R.string.duration_n_mins);
                        if (j6 > 3600) {
                            countText = getString(R.string.duration_more_than_hour, Long.valueOf(j6 / 3600), countText);
                        }
                    }
                    this.videoTotalTime.setText(getString(R.string.screen_room_playlist_video_total_time, countText));
                }
            }
        }
    }

    @Override // com.narvii.list.DragSortListFragment, com.mobeta.android.dslv.DragSortListView.j
    public void drop(int i10, int i11) throws Throwable {
        super.drop(i10, i11);
        onLocalListChanged();
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        updateLayout();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        SoftKeyboard.hideSoftKeyboard(getContext());
        this.photoDir = new File(new File(getContext().getFilesDir(), "photo"), "screenroomPlaylistItemCover");
        MediaPickerFragment mediaPickerFragment = (MediaPickerFragment) getFragmentManager().m0("playListMediaPicker");
        this.mediaPickerFragment = mediaPickerFragment;
        if (mediaPickerFragment == null) {
            this.mediaPickerFragment = new MediaPickerFragment();
            getFragmentManager().q().e(this.mediaPickerFragment, "playListMediaPicker").k();
        }
        this.mediaPickerFragment.addOnResultListener(this);
        this.mediaPickerFragment.setOnCustomOptionSelectedListener(this);
        ScreenRoomService screenRoomService = (ScreenRoomService) getService("screenRoom");
        this.screenRoomService = screenRoomService;
        screenRoomService.addPlayListChangeListenter(this);
        this.photo = (PhotoManager) getService("photo");
        this.playListSharedPreference = new PlayListSharedPreference(this);
    }

    @Override // com.narvii.list.DragSortListFragment, com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_screenroom_playlist, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        getListView().setDivider(new ColorDrawable(-1998528797));
        getListView().setDividerHeight((int) Utils.dpToPx(getContext(), 1.0f));
        int i10 = 0;
        while (true) {
            View[] viewArr = this.addVideoItems;
            if (i10 < viewArr.length) {
                viewArr[i10] = getLayoutInflater(null).inflate(R.layout.screen_room_playlist_item_empty, (ViewGroup) getListView(), false);
                i10++;
            } else {
                return;
            }
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.permisson.PermissionListener
    public void onPermissionGranted(int i10) {
        PlayListItem playListItem;
        super.onPermissionGranted(i10);
        if (i10 == 107) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(new MediaPickerFragment.Option(1, getString(R.string.media_music_picker), 0, 1));
            Bundle bundle = new Bundle();
            bundle.putString("type", "video");
            bundle.putBoolean(MediaPickerFragment.PICK_YOUTUBE_NEED_DURATION, true);
            this.mediaPickerFragment.pickMedia(null, bundle, 262656, MAX_PLAYLIST_LENGTH - getPlayItemList().size(), arrayList);
            return;
        }
        if (i10 == 303) {
            safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(this, Intent.createChooser(new Intent("android.intent.action.PICK", MediaStore.Audio.Media.EXTERNAL_CONTENT_URI), getString(R.string.media_music_picker)), 100);
        } else if (i10 == 307 && (playListItem = this.pendingPlayItem) != null && !this.isPrePickMode) {
            this.screenRoomService.playItem(playListItem);
        }
    }

    @Override // com.narvii.chat.screenroom.playlist.PlayListChangeListener
    public void onPlayListChanged(PlayList playList) {
        onRemoteListChanged();
    }

    @Override // com.narvii.list.DragSortListFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        int iDpToPx;
        PlayList playList;
        ListView listView;
        ListAdapter adapter;
        super.onViewCreated(view, bundle);
        SwipeableLayout swipeableLayout = (SwipeableLayout) view.findViewById(R.id.frame);
        this.swipeableLayout = swipeableLayout;
        swipeableLayout.setAllowDirection(2);
        int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.swipe_layout_radius);
        boolean z6 = false;
        this.swipeableLayout.setRadius(dimensionPixelSize, dimensionPixelSize, 0, 0);
        this.swipeableLayout.setAppearAnimation(1);
        if (getContext().getResources().getConfiguration().orientation == 2) {
            z6 = true;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.swipeableLayout.getLayoutParams();
        if (z6) {
            iDpToPx = getStatusBarOverlaySize();
        } else {
            iDpToPx = (int) Utils.dpToPx(getContext(), 200.0f);
        }
        marginLayoutParams.topMargin = iDpToPx;
        this.backgroundMaskView = null;
        if (getActivity() instanceof ChatActivity) {
            this.backgroundMaskView = getActivity().findViewById(R.id.screen_room_playlist);
        }
        this.swipeableLayout.setSwipeListener(new SwipeableLayout.SwipeListener() { // from class: com.narvii.chat.screenroom.playlist.PlaylistFragment.1
            @Override // com.narvii.widget.SwipeableLayout.SwipeListener
            public void onLayoutMoved(int i10, int i11, int i12, int i13) {
                int iMax = (int) ((1.0f - ((Math.max(0, i13 - i12) * 1.0f) / PlaylistFragment.this.swipeableLayout.getHeight())) * 204.0f);
                View view2 = PlaylistFragment.this.backgroundMaskView;
                if (iMax < 0) {
                    iMax = 0;
                }
                view2.setBackgroundColor(Color.argb(iMax, 0, 0, 0));
            }

            @Override // com.narvii.widget.SwipeableLayout.SwipeListener
            public void onLayoutSwiped() {
                if (PlaylistFragment.this.onDismissListener != null) {
                    PlaylistFragment.this.onDismissListener.onDismiss();
                }
                PlaylistFragment.this.removeSelfAndBg();
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
        Button button = (Button) view.findViewById(R.id.clear_all_button);
        this.clearAllButton = button;
        button.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.screenroom.playlist.PlaylistFragment.3
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
        FrameLayout frameLayout = (FrameLayout) view.findViewById(R.id.screen_room_add_video);
        this.addVideoButton = frameLayout;
        frameLayout.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.screenroom.playlist.PlaylistFragment.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                PlaylistFragment.this.startPick();
            }
        });
        updateLayout();
        updatePlayListView();
        if (bundle == null && (playList = this.screenRoomService.getPlayList()) != null && playList.currentItemIndex != -1 && (listView = (ListView) view.findViewById(android.R.id.list)) != null && (adapter = listView.getAdapter()) != null && adapter.getCount() > playList.currentItemIndex) {
            int size = CollectionUtils.getSize(playList.items);
            int i10 = playList.currentItemIndex;
            if (size > i10) {
                try {
                    listView.setSelectionFromTop(i10, Utils.dpToPxInt(getContext(), 30.0f));
                } catch (Exception e) {
                    Log.e(ScreenRoomFragment.PLAYLIST_FRAGMENT_TAG, e);
                }
            }
        }
        this.startFrame = view.findViewById(R.id.start_frame);
        this.selectFrame = view.findViewById(R.id.select_frame);
        View viewFindViewById = view.findViewById(R.id.btn_start);
        this.btnStart = viewFindViewById;
        viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.screenroom.playlist.PlaylistFragment.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                List<PlayListItem> playItemList = PlaylistFragment.this.getPlayItemList();
                HashSet hashSet = new HashSet();
                if (playItemList != null) {
                    Iterator<PlayListItem> it = playItemList.iterator();
                    while (it.hasNext()) {
                        int i11 = it.next().type;
                        if (i11 == 1) {
                            hashSet.add("Local Video");
                        } else if (i11 == 2) {
                            hashSet.add("Youtube");
                        } else if (i11 == 3) {
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

    public void remove() {
        FragmentManager fragmentManager = getFragmentManager();
        if (fragmentManager != null) {
            fragmentManager.q().t(this).k();
        }
    }

    public void removeSelfAndBg() {
        remove();
        View view = this.backgroundMaskView;
        if (view != null) {
            view.setBackgroundColor(0);
        }
    }
}
