package com.narvii.video.attachment;

import android.content.ComponentCallbacks;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.PointF;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.app.NotificationCompat;
import android.support.v4.graphics.ColorUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.exoplayer2.util.MimeTypes;
import com.narvii.app.FragmentDismissListener;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.FragmentRegister;
import com.narvii.app.FragmentWillFinishListener;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.comment.list.CommentListFragment;
import com.narvii.mediaeditor.R;
import com.narvii.paging.source.DataSource;
import com.narvii.scene.model.SceneInfo;
import com.narvii.util.CollectionUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.ShareDataSourceHost;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.video.BaseMediaEditorFragment;
import com.narvii.video.BaseViceTimeLineFragment;
import com.narvii.video.attachment.DrawRectView;
import com.narvii.video.attachment.caption.AttachmentDrawRect;
import com.narvii.video.attachment.caption.CaptionEditListener;
import com.narvii.video.attachment.caption.CaptionEditTextFragment;
import com.narvii.video.attachment.caption.CaptionTabChangeListener;
import com.narvii.video.attachment.caption.CaptionTabFragment;
import com.narvii.video.attachment.caption.EditCaptionTextHost;
import com.narvii.video.attachment.sticker.IEditorStickerPicker;
import com.narvii.video.attachment.sticker.IEditorStickerPickerCallback;
import com.narvii.video.interfaces.IPlayingEventListener;
import com.narvii.video.interfaces.IPreviewPlayer;
import com.narvii.video.model.BaseAttachmentInfoPack;
import com.narvii.video.model.BaseClipInfoPack;
import com.narvii.video.model.Caption;
import com.narvii.video.model.StickerInfoPack;
import com.narvii.video.services.FrameRetrieverManager;
import com.narvii.video.widget.MediaTimeLineComponent;
import com.narvii.video.widget.ViceTimeLineWrapperView;
import com.narvii.video.widget.videoview.NVEditorPreviewVideoVIew;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AttachmentEditorFragment.kt */
/* loaded from: classes3.dex */
public final class AttachmentEditorFragment extends BaseViceTimeLineFragment implements FragmentDismissListener, FragmentOnBackListener, CaptionTabChangeListener, IEditorStickerPickerCallback, EditCaptionTextHost, CaptionEditListener, FragmentWillFinishListener, ShareDataSourceHost, IPlayingEventListener, ResetAttachmentViewsListener {
    private HashMap _$_findViewCache;
    private Caption activeCaption;
    private StickerInfoPack activeSticker;
    private boolean editing;
    private int editingPosition;
    private int entranceType;
    private boolean hasMainTrackMovedWhenEnterEditMode;
    private long lastClickTime;
    private StickerInfoPack orgActiveStickerBeforeEditing;
    private String outputFolderPath;
    private ProgressDialog progress;
    private Bundle savedInstanceState;
    private boolean selectedThisEventSequence;
    private final int ATTACHMENT_MAX_COUNT = 10;
    private final int REQUEST_EDIT_TEXT = 300;
    private final HashMap<String, DataSource<?>> hashMap = new HashMap<>();

    @Override // com.narvii.video.BaseViceTimeLineFragment, com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment, com.narvii.app.theme.NVThemeFragment
    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    @Override // com.narvii.video.BaseViceTimeLineFragment, com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment, com.narvii.app.theme.NVThemeFragment
    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View view2 = getView();
        if (view2 == null) {
            return null;
        }
        View viewFindViewById = view2.findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    @Override // com.narvii.video.BaseViceTimeLineFragment, com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // com.narvii.video.interfaces.IPlayingEventListener
    public void onPlayingProgress(long j, long j2) {
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected boolean showPauseButton() {
        return true;
    }

    @Override // com.narvii.app.FragmentWillFinishListener
    public void willFinish(NVActivity nVActivity) {
    }

    public final Caption getActiveCaption() {
        return this.activeCaption;
    }

    public final void setActiveCaption(Caption caption) {
        this.activeCaption = caption;
    }

    public final StickerInfoPack getActiveSticker() {
        return this.activeSticker;
    }

    public final void setActiveSticker(StickerInfoPack stickerInfoPack) {
        this.activeSticker = stickerInfoPack;
    }

    public final boolean getEditing() {
        return this.editing;
    }

    public final void setEditing(boolean z) {
        this.editing = z;
    }

    public final boolean getSelectedThisEventSequence() {
        return this.selectedThisEventSequence;
    }

    public final void setSelectedThisEventSequence(boolean z) {
        this.selectedThisEventSequence = z;
    }

    public final HashMap<String, DataSource<?>> getHashMap() {
        return this.hashMap;
    }

    @Override // com.narvii.util.ShareDataSourceHost
    public void setSharedDataSource(String type, DataSource<?> dataSource) {
        Intrinsics.checkParameterIsNotNull(type, "type");
        this.hashMap.put(type, dataSource);
    }

    @Override // com.narvii.util.ShareDataSourceHost
    public DataSource<?> getSharedDataSource(String type) {
        Intrinsics.checkParameterIsNotNull(type, "type");
        return this.hashMap.get(type);
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        FragmentManager fragmentManager = getFragmentManager();
        Fragment fragmentFindFragmentByTag = fragmentManager != null ? fragmentManager.findFragmentByTag("captionTab") : null;
        if (fragmentFindFragmentByTag instanceof CaptionTabFragment) {
            setCaptionTabListener((CaptionTabFragment) fragmentFindFragmentByTag);
        }
        this.progress = new ProgressDialog(getContext());
        ProgressDialog progressDialog = this.progress;
        if (progressDialog != null) {
            progressDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.narvii.video.attachment.AttachmentEditorFragment.onCreate.1
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    FragmentManager fragmentManager2 = AttachmentEditorFragment.this.getFragmentManager();
                    ComponentCallbacks componentCallbacksFindFragmentByTag = fragmentManager2 != null ? fragmentManager2.findFragmentByTag("stickerTab") : null;
                    if (componentCallbacksFindFragmentByTag instanceof IEditorStickerPicker) {
                        ((IEditorStickerPicker) componentCallbacksFindFragmentByTag).onLocalAnimatedStickerConvertTerminated();
                    }
                }
            });
        } else {
            Intrinsics.throwUninitializedPropertyAccessException(NotificationCompat.CATEGORY_PROGRESS);
            throw null;
        }
    }

    private final void setCaptionTabListener(CaptionTabFragment captionTabFragment) {
        captionTabFragment.captionTabChangeListener = this;
        captionTabFragment.captionEditListener = this;
        captionTabFragment.shareDataSourceHost = this;
        captionTabFragment.resetAttachmentViewsListener = this;
        captionTabFragment.fragmentDismissListener = this;
        captionTabFragment.editCaptionTextHost = this;
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_attachment_editor, viewGroup, false);
    }

    @Override // com.narvii.video.BaseViceTimeLineFragment, com.narvii.video.BaseMediaEditorFragment
    public void initComponent() {
        super.initComponent();
        setVideoDurationText((TextView) _$_findCachedViewById(R.id.video_duration));
        setVideoPlaybackTimeText((TextView) _$_findCachedViewById(R.id.video_playback_time));
        setVideoPlaybackTimeDivider(_$_findCachedViewById(R.id.divider));
        setPreviewVideoView((NVEditorPreviewVideoVIew) _$_findCachedViewById(R.id.video_view_player));
        setPlayerButton((ImageView) _$_findCachedViewById(R.id.player_button));
        setMainTimeLineComponent((MediaTimeLineComponent) _$_findCachedViewById(R.id.video_time_line_component));
        LinearLayout vice_time_line_panel = (LinearLayout) _$_findCachedViewById(R.id.vice_time_line_panel);
        Intrinsics.checkExpressionValueIsNotNull(vice_time_line_panel, "vice_time_line_panel");
        setViceTimeLinePanel(vice_time_line_panel);
    }

    @Override // com.narvii.video.attachment.sticker.IEditorStickerPickerCallback
    public void setPickedPreviewSticker(StickerInfoPack stickerInfoPack) {
        boolean zContains;
        Intrinsics.checkParameterIsNotNull(stickerInfoPack, "stickerInfoPack");
        ProgressDialog progressDialog = this.progress;
        if (progressDialog == null) {
            Intrinsics.throwUninitializedPropertyAccessException(NotificationCompat.CATEGORY_PROGRESS);
            throw null;
        }
        if (progressDialog.isShowing()) {
            ProgressDialog progressDialog2 = this.progress;
            if (progressDialog2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException(NotificationCompat.CATEGORY_PROGRESS);
                throw null;
            }
            progressDialog2.dismiss();
        }
        StickerInfoPack stickerInfoPackCopy = stickerInfoPack.copy();
        Intrinsics.checkExpressionValueIsNotNull(stickerInfoPackCopy, "stickerInfoPack.copy()");
        StickerInfoPack stickerInfoPack2 = this.activeSticker;
        if (stickerInfoPack2 == null) {
            zContains = false;
        } else {
            if (Intrinsics.areEqual(stickerInfoPackCopy, stickerInfoPack2)) {
                return;
            }
            zContains = getPreviewPlayer().getStickerList().contains(stickerInfoPack2);
            stickerInfoPackCopy.mergeEditings(stickerInfoPack2);
        }
        int mainTrackPlaybackTime = getMainTrackPlaybackTime();
        MediaTimeLineComponent mainTimeLineComponent = getMainTimeLineComponent();
        Pair<Boolean, Integer> pairIsTailFrameCellPlaying = mainTimeLineComponent != null ? mainTimeLineComponent.isTailFrameCellPlaying() : null;
        if (pairIsTailFrameCellPlaying != null && pairIsTailFrameCellPlaying.getFirst().booleanValue()) {
            mainTrackPlaybackTime -= 1000;
        }
        int i = stickerInfoPackCopy.startOffsetToMainTrackInMs;
        if (i <= 0 || i >= mainTrackPlaybackTime) {
            stickerInfoPackCopy.startOffsetToMainTrackInMs = mainTrackPlaybackTime;
        }
        if (stickerInfoPackCopy.visibleDurationInMs <= 0) {
            Object service = getService("prefs");
            Intrinsics.checkExpressionValueIsNotNull(service, "getService(\"prefs\")");
            stickerInfoPackCopy.visibleDurationInMs = ((SharedPreferences) service).getInt(stickerInfoPackCopy.getPrefsKey(), 5000);
        }
        this.activeSticker = stickerInfoPackCopy;
        if (zContains) {
            getPreviewPlayer().resetSticker(stickerInfoPackCopy);
        } else {
            IPreviewPlayer.DefaultImpls.addSticker$default(getPreviewPlayer(), stickerInfoPackCopy, false, 2, null);
        }
        if (!stickerInfoPackCopy.hasBeenEdited()) {
            getPreviewPlayer().scaleSticker(stickerInfoPackCopy, 0.5f, new PointF(0.0f, 0.0f));
        }
        getPreviewPlayer().refreshCurrentPosition();
        ((DrawRectView) _$_findCachedViewById(R.id.draw_rect)).setShowEdit(false);
        updateAttachmentCoordinate(stickerInfoPackCopy);
    }

    @Override // com.narvii.video.attachment.sticker.IEditorStickerPickerCallback
    public void savePreviewSticker() throws Resources.NotFoundException {
        this.editing = false;
        StickerInfoPack stickerInfoPack = this.activeSticker;
        StickerInfoPack stickerInfoPackCopy = stickerInfoPack != null ? stickerInfoPack.copy() : null;
        this.activeSticker = this.orgActiveStickerBeforeEditing;
        this.orgActiveStickerBeforeEditing = null;
        changeActiveAttachment(1, stickerInfoPackCopy);
        StickerInfoPack stickerInfoPack2 = this.activeSticker;
        if (stickerInfoPack2 != null) {
            getPreviewPlayer().resetSticker(stickerInfoPack2);
        }
        int i = -1;
        if (this.hasMainTrackMovedWhenEnterEditMode) {
            this.hasMainTrackMovedWhenEnterEditMode = false;
            StickerInfoPack stickerInfoPack3 = this.activeSticker;
            if (stickerInfoPack3 != null) {
                i = stickerInfoPack3.startOffsetToMainTrackInMs;
            }
        }
        refreshViceTimelines$default(this, i, false, 2, null);
        updateAddAttachmentButton();
        if (stickerInfoPackCopy != null) {
            ((DrawRectView) _$_findCachedViewById(R.id.draw_rect)).setShowEdit(true);
            updateAttachmentCoordinate(this.activeSticker);
        }
    }

    @Override // com.narvii.video.attachment.sticker.IEditorStickerPickerCallback
    public void forsakePreviewSticker() throws Resources.NotFoundException {
        this.editing = false;
        StickerInfoPack stickerInfoPack = this.activeSticker;
        if (stickerInfoPack != null) {
            getPreviewPlayer().removeSticker(stickerInfoPack);
        }
        StickerInfoPack stickerInfoPack2 = this.orgActiveStickerBeforeEditing;
        if (stickerInfoPack2 != null) {
            getPreviewPlayer().addSticker(stickerInfoPack2, true);
        }
        StickerInfoPack stickerInfoPack3 = this.orgActiveStickerBeforeEditing;
        if (stickerInfoPack3 != null) {
            this.activeSticker = stickerInfoPack3;
            this.orgActiveStickerBeforeEditing = null;
            StickerInfoPack stickerInfoPack4 = this.activeSticker;
            if (stickerInfoPack4 != null) {
                getPreviewPlayer().resetSticker(stickerInfoPack4);
            }
            ((DrawRectView) _$_findCachedViewById(R.id.draw_rect)).setShowEdit(true);
            updateAttachmentCoordinate(this.activeSticker);
            getPreviewPlayer().refreshCurrentPosition();
            int i = -1;
            if (this.hasMainTrackMovedWhenEnterEditMode) {
                this.hasMainTrackMovedWhenEnterEditMode = false;
                StickerInfoPack stickerInfoPack5 = this.activeSticker;
                if (stickerInfoPack5 != null) {
                    i = stickerInfoPack5.startOffsetToMainTrackInMs;
                }
            }
            refreshViceTimelines$default(this, i, false, 2, null);
            return;
        }
        this.activeSticker = null;
        ((DrawRectView) _$_findCachedViewById(R.id.draw_rect)).setDrawRect(null, 1);
        getPreviewPlayer().refreshCurrentPosition();
    }

    @Override // com.narvii.video.attachment.sticker.IEditorStickerPickerCallback
    public void onBlockedInstallingSticker() {
        ProgressDialog progressDialog = this.progress;
        if (progressDialog != null) {
            progressDialog.show();
        } else {
            Intrinsics.throwUninitializedPropertyAccessException(NotificationCompat.CATEGORY_PROGRESS);
            throw null;
        }
    }

    @Override // com.narvii.video.attachment.sticker.IEditorStickerPickerCallback
    public void onStickerInstallFailed() {
        ProgressDialog progressDialog = this.progress;
        if (progressDialog == null) {
            Intrinsics.throwUninitializedPropertyAccessException(NotificationCompat.CATEGORY_PROGRESS);
            throw null;
        }
        if (progressDialog.isShowing()) {
            ProgressDialog progressDialog2 = this.progress;
            if (progressDialog2 != null) {
                progressDialog2.dismiss();
            } else {
                Intrinsics.throwUninitializedPropertyAccessException(NotificationCompat.CATEGORY_PROGRESS);
                throw null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void addCaption() {
        editCaptionText(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void addSticker() throws ClassNotFoundException {
        openStickerPickerTab(true);
        this.activeCaption = null;
        this.activeSticker = null;
        ((DrawRectView) _$_findCachedViewById(R.id.draw_rect)).setDrawRect(null, 1);
    }

    @Override // com.narvii.video.BaseViceTimeLineFragment
    public void onViceTrackClicked(int i) throws Resources.NotFoundException, ClassNotFoundException {
        int i2;
        List attachmentList$default = getAttachmentList$default(this, false, 1, null);
        int size = attachmentList$default.size();
        if (i >= 0 && size > i) {
            BaseAttachmentInfoPack baseAttachmentInfoPack = (BaseAttachmentInfoPack) attachmentList$default.get(i);
            int i3 = -1;
            if (baseAttachmentInfoPack instanceof Caption) {
                i2 = 0;
            } else {
                i2 = baseAttachmentInfoPack instanceof StickerInfoPack ? 1 : -1;
            }
            Caption caption = this.activeCaption;
            if (caption == null) {
                StickerInfoPack stickerInfoPack = this.activeSticker;
                if (stickerInfoPack != null) {
                    if (stickerInfoPack == null) {
                        Intrinsics.throwNpe();
                        throw null;
                    }
                    i3 = stickerInfoPack.indexInMixedAttachmentList;
                }
            } else {
                if (caption == null) {
                    Intrinsics.throwNpe();
                    throw null;
                }
                i3 = caption.indexInMixedAttachmentList;
            }
            if (i3 != i) {
                setAutoPlaying(false);
                BaseMediaEditorFragment.changeVideoPlaybackStatus$default(this, true, false, 2, null);
                changeActiveAttachment(i2, baseAttachmentInfoPack);
                if (i2 == 1) {
                    ((DrawRectView) _$_findCachedViewById(R.id.draw_rect)).setShowEdit(true);
                }
                updateAttachmentCoordinate(baseAttachmentInfoPack);
                return;
            }
            if (this.editing) {
                return;
            }
            int i4 = baseAttachmentInfoPack.startOffsetToMainTrackInMs;
            int i5 = baseAttachmentInfoPack.visibleDurationInMs + i4;
            int mainTrackPlaybackTime = getMainTrackPlaybackTime();
            if (i4 > mainTrackPlaybackTime || i5 <= mainTrackPlaybackTime) {
                this.hasMainTrackMovedWhenEnterEditMode = true;
                moveMainTrackTo(baseAttachmentInfoPack.startOffsetToMainTrackInMs);
                refreshViceTimelines$default(this, baseAttachmentInfoPack.startOffsetToMainTrackInMs, false, 2, null);
            }
            if (i2 == 0) {
                editCurrentCaption();
            } else if (i2 == 1) {
                StickerInfoPack stickerInfoPack2 = this.activeSticker;
                this.orgActiveStickerBeforeEditing = stickerInfoPack2 != null ? stickerInfoPack2.copy() : null;
                openStickerPickerTab$default(this, false, 1, null);
            }
        }
    }

    private final void changeActiveAttachment(int i, BaseAttachmentInfoPack baseAttachmentInfoPack) {
        if (i == 0) {
            this.activeSticker = null;
            Caption caption = this.activeCaption;
            this.activeCaption = (Caption) baseAttachmentInfoPack;
            if ((caption != null ? caption.indexInMixedAttachmentList : -1) != (baseAttachmentInfoPack != null ? baseAttachmentInfoPack.indexInMixedAttachmentList : -1)) {
                Utils.post(new Runnable() { // from class: com.narvii.video.attachment.AttachmentEditorFragment.changeActiveAttachment.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        AttachmentEditorFragment.this.onActiveAttachmentIndexChanged(0);
                    }
                });
                return;
            }
            return;
        }
        if (i == 1) {
            this.activeCaption = null;
            StickerInfoPack stickerInfoPack = this.activeSticker;
            this.activeSticker = (StickerInfoPack) baseAttachmentInfoPack;
            if ((stickerInfoPack != null ? stickerInfoPack.indexInMixedAttachmentList : -1) != (baseAttachmentInfoPack != null ? baseAttachmentInfoPack.indexInMixedAttachmentList : -1)) {
                Utils.post(new Runnable() { // from class: com.narvii.video.attachment.AttachmentEditorFragment.changeActiveAttachment.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        AttachmentEditorFragment.this.onActiveAttachmentIndexChanged(1);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onActiveAttachmentIndexChanged(final int i) {
        final BaseAttachmentInfoPack baseAttachmentInfoPack;
        if (i == 0) {
            baseAttachmentInfoPack = this.activeCaption;
        } else {
            baseAttachmentInfoPack = this.activeSticker;
        }
        final int i2 = baseAttachmentInfoPack != null ? baseAttachmentInfoPack.indexInMixedAttachmentList : -1;
        int viewIndexOfTrackIndex = getViewIndexOfTrackIndex(i2);
        if (NVApplication.DEBUG) {
            TextView debug_text = (TextView) _$_findCachedViewById(R.id.debug_text);
            Intrinsics.checkExpressionValueIsNotNull(debug_text, "debug_text");
            debug_text.setVisibility(0);
            TextView debug_text2 = (TextView) _$_findCachedViewById(R.id.debug_text);
            Intrinsics.checkExpressionValueIsNotNull(debug_text2, "debug_text");
            debug_text2.setText(String.valueOf(i2));
        }
        LinearLayout vice_time_line_panel = (LinearLayout) _$_findCachedViewById(R.id.vice_time_line_panel);
        Intrinsics.checkExpressionValueIsNotNull(vice_time_line_panel, "vice_time_line_panel");
        int childCount = vice_time_line_panel.getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = ((LinearLayout) _$_findCachedViewById(R.id.vice_time_line_panel)).getChildAt(i3);
            if (childAt instanceof MediaTimeLineComponent) {
                if (i3 == viewIndexOfTrackIndex) {
                    ScrollView vice_timeline_scroll_view = (ScrollView) _$_findCachedViewById(R.id.vice_timeline_scroll_view);
                    Intrinsics.checkExpressionValueIsNotNull(vice_timeline_scroll_view, "vice_timeline_scroll_view");
                    int scrollY = vice_timeline_scroll_view.getScrollY();
                    ScrollView vice_timeline_scroll_view2 = (ScrollView) _$_findCachedViewById(R.id.vice_timeline_scroll_view);
                    Intrinsics.checkExpressionValueIsNotNull(vice_timeline_scroll_view2, "vice_timeline_scroll_view");
                    int height = vice_timeline_scroll_view2.getHeight() + scrollY;
                    MediaTimeLineComponent mediaTimeLineComponent = (MediaTimeLineComponent) childAt;
                    if (mediaTimeLineComponent.getTop() < scrollY) {
                        ((ScrollView) _$_findCachedViewById(R.id.vice_timeline_scroll_view)).smoothScrollTo(0, mediaTimeLineComponent.getTop());
                    } else if (mediaTimeLineComponent.getBottom() > height) {
                        ScrollView scrollView = (ScrollView) _$_findCachedViewById(R.id.vice_timeline_scroll_view);
                        int bottom = mediaTimeLineComponent.getBottom();
                        ScrollView vice_timeline_scroll_view3 = (ScrollView) _$_findCachedViewById(R.id.vice_timeline_scroll_view);
                        Intrinsics.checkExpressionValueIsNotNull(vice_timeline_scroll_view3, "vice_timeline_scroll_view");
                        scrollView.smoothScrollTo(0, bottom - vice_timeline_scroll_view3.getHeight());
                    }
                    ((ViceTimeLineWrapperView) childAt.findViewById(R.id.vice_time_line_wrapper)).toggleEditMode(true);
                    ((ViceTimeLineWrapperView) childAt.findViewById(R.id.vice_time_line_wrapper)).setViceTimeLineEditCallback(new ViceTimeLineWrapperView.IViceTimeLineEditCallback() { // from class: com.narvii.video.attachment.AttachmentEditorFragment.onActiveAttachmentIndexChanged.1
                        @Override // com.narvii.video.widget.ViceTimeLineWrapperView.IViceTimeLineEditCallback
                        public void onViceTimeLineEdit(int i4, int i5) throws Resources.NotFoundException {
                            BaseAttachmentInfoPack activeSticker;
                            if (i4 == -1 || i5 == -1) {
                                return;
                            }
                            BaseAttachmentInfoPack baseAttachmentInfoPack2 = baseAttachmentInfoPack;
                            if ((baseAttachmentInfoPack2 != null ? baseAttachmentInfoPack2.indexInMixedAttachmentList : -1) != i2) {
                                return;
                            }
                            if (i == 0) {
                                activeSticker = AttachmentEditorFragment.this.getActiveCaption();
                            } else {
                                activeSticker = AttachmentEditorFragment.this.getActiveSticker();
                            }
                            if (activeSticker != null) {
                                MediaTimeLineComponent mainTimeLineComponent = AttachmentEditorFragment.this.getMainTimeLineComponent();
                                activeSticker.startOffsetToMainTrackInMs = mainTimeLineComponent != null ? MediaTimeLineComponent.getSectionDurationInMs$default(mainTimeLineComponent, i4, 0, false, 2, null) : 0;
                                activeSticker.visibleDurationInMs = i5;
                                int i6 = i;
                                if (i6 == 0) {
                                    AttachmentEditorFragment.this.onCurrentCaptionChanged(false, false, true);
                                    AttachmentEditorFragment.this.refreshViceTimeline(activeSticker, true);
                                } else if (i6 == 1) {
                                    IPreviewPlayer previewPlayer = AttachmentEditorFragment.this.getPreviewPlayer();
                                    StickerInfoPack activeSticker2 = AttachmentEditorFragment.this.getActiveSticker();
                                    if (activeSticker2 != null) {
                                        previewPlayer.resetSticker(activeSticker2);
                                        AttachmentEditorFragment.this.onAttachmentChanged(activeSticker);
                                        AttachmentEditorFragment.this.refreshViceTimeline(activeSticker, true);
                                        return;
                                    }
                                    Intrinsics.throwNpe();
                                    throw null;
                                }
                            }
                        }
                    });
                } else {
                    ((ViceTimeLineWrapperView) childAt.findViewById(R.id.vice_time_line_wrapper)).toggleEditMode(false);
                    ((ViceTimeLineWrapperView) childAt.findViewById(R.id.vice_time_line_wrapper)).setViceTimeLineEditCallback(null);
                }
            }
        }
    }

    private final void updateViceTimeLineSelectedStatus() {
        int i;
        Caption caption = this.activeCaption;
        if (caption == null) {
            StickerInfoPack stickerInfoPack = this.activeSticker;
            if (stickerInfoPack == null) {
                i = -1;
            } else {
                if (stickerInfoPack == null) {
                    Intrinsics.throwNpe();
                    throw null;
                }
                i = stickerInfoPack.indexInMixedAttachmentList;
            }
        } else {
            if (caption == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            i = caption.indexInMixedAttachmentList;
        }
        int viewIndexOfTrackIndex = getViewIndexOfTrackIndex(i);
        LinearLayout vice_time_line_panel = (LinearLayout) _$_findCachedViewById(R.id.vice_time_line_panel);
        Intrinsics.checkExpressionValueIsNotNull(vice_time_line_panel, "vice_time_line_panel");
        int childCount = vice_time_line_panel.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = ((LinearLayout) _$_findCachedViewById(R.id.vice_time_line_panel)).getChildAt(i2);
            if (childAt instanceof MediaTimeLineComponent) {
                if (i2 == viewIndexOfTrackIndex) {
                    ((ViceTimeLineWrapperView) childAt.findViewById(R.id.vice_time_line_wrapper)).toggleEditMode(true);
                } else {
                    ((ViceTimeLineWrapperView) childAt.findViewById(R.id.vice_time_line_wrapper)).toggleEditMode(false);
                }
            }
        }
    }

    @Override // com.narvii.video.BaseViceTimeLineFragment
    public List<BaseClipInfoPack> getTargetClipListForViceTracks() {
        int iIntValue = getTotalVisibleVideoDurationInMs().getFirst().intValue();
        for (BaseAttachmentInfoPack baseAttachmentInfoPack : CollectionsKt___CollectionsKt.plus(getPreviewPlayer().getCaptionList(), getPreviewPlayer().getStickerList())) {
            baseAttachmentInfoPack.visibleDurationInMs = Math.min(baseAttachmentInfoPack.visibleDurationInMs, iIntValue);
        }
        return getAttachmentList$default(this, false, 1, null);
    }

    @Override // com.narvii.video.BaseViceTimeLineFragment
    public int getViceTrackDataType(int i) {
        List attachmentList$default = getAttachmentList$default(this, false, 1, null);
        int size = attachmentList$default.size();
        if (i < 0 || size <= i) {
            return -1;
        }
        BaseAttachmentInfoPack baseAttachmentInfoPack = (BaseAttachmentInfoPack) attachmentList$default.get(i);
        if (baseAttachmentInfoPack instanceof Caption) {
            return 102;
        }
        return baseAttachmentInfoPack instanceof StickerInfoPack ? 103 : -1;
    }

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        ImageView imageView = (ImageView) _$_findCachedViewById(R.id.option_add_caption);
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.video.attachment.AttachmentEditorFragment.onViewCreated.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    BaseMediaEditorFragment.changeVideoPlaybackStatus$default(AttachmentEditorFragment.this, true, false, 2, null);
                    AttachmentEditorFragment.this.addCaption();
                }
            });
        }
        ImageView imageView2 = (ImageView) _$_findCachedViewById(R.id.option_add_sticker);
        if (imageView2 != null) {
            imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.video.attachment.AttachmentEditorFragment.onViewCreated.2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) throws ClassNotFoundException {
                    BaseMediaEditorFragment.changeVideoPlaybackStatus$default(AttachmentEditorFragment.this, true, false, 2, null);
                    AttachmentEditorFragment.this.setAutoPlaying(false);
                    AttachmentEditorFragment.this.addSticker();
                }
            });
        }
        ((ImageView) _$_findCachedViewById(R.id.option_done)).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.video.attachment.AttachmentEditorFragment.onViewCreated.3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                Intent intent = new Intent();
                MediaTimeLineComponent mainTimeLineComponent = AttachmentEditorFragment.this.getMainTimeLineComponent();
                int mediaLengthInMs = mainTimeLineComponent != null ? mainTimeLineComponent.getMediaLengthInMs() : 0;
                for (BaseAttachmentInfoPack baseAttachmentInfoPack : AttachmentEditorFragment.getAttachmentList$default(AttachmentEditorFragment.this, false, 1, null)) {
                    int i = baseAttachmentInfoPack.visibleDurationInMs;
                    int i2 = baseAttachmentInfoPack.startOffsetToMainTrackInMs;
                    if (i + i2 > mediaLengthInMs) {
                        baseAttachmentInfoPack.visibleDurationInMs = i - ((i2 + i) - mediaLengthInMs);
                    }
                }
                intent.putExtra("captionList", JacksonUtils.writeAsString(AttachmentEditorFragment.this.getPreviewPlayer().getCaptionList()));
                intent.putExtra("stickerList", JacksonUtils.writeAsString(AttachmentEditorFragment.this.getPreviewPlayer().getStickerList()));
                AttachmentEditorFragment.this.setResult(-1, intent);
                AttachmentEditorFragment.this.finish();
            }
        });
        ((DrawRectView) _$_findCachedViewById(R.id.draw_rect)).setDrawRectClickListener(new DrawRectView.onDrawRectClickListener() { // from class: com.narvii.video.attachment.AttachmentEditorFragment.onViewCreated.4
            @Override // com.narvii.video.attachment.DrawRectView.onDrawRectClickListener
            public final void onDrawRectClick(int i) {
                if (i != 0 || AttachmentEditorFragment.this.getSelectedThisEventSequence() || SystemClock.elapsedRealtime() - AttachmentEditorFragment.this.lastClickTime <= 500) {
                    return;
                }
                AttachmentEditorFragment.this.lastClickTime = SystemClock.elapsedRealtime();
                AttachmentEditorFragment.this.editCurrentCaptionText();
            }
        });
        ((DrawRectView) _$_findCachedViewById(R.id.draw_rect)).addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.narvii.video.attachment.AttachmentEditorFragment.onViewCreated.5
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                if (AttachmentEditorFragment.this.getActiveCaption() != null) {
                    AttachmentEditorFragment attachmentEditorFragment = AttachmentEditorFragment.this;
                    attachmentEditorFragment.updateAttachmentCoordinate(attachmentEditorFragment.getActiveCaption());
                } else if (AttachmentEditorFragment.this.getActiveSticker() != null) {
                    AttachmentEditorFragment attachmentEditorFragment2 = AttachmentEditorFragment.this;
                    attachmentEditorFragment2.updateAttachmentCoordinate(attachmentEditorFragment2.getActiveSticker());
                }
            }
        });
        ((DrawRectView) _$_findCachedViewById(R.id.draw_rect)).setOnDrawRectTouchListener(new DrawRectView.OnDrawRectTouchListener() { // from class: com.narvii.video.attachment.AttachmentEditorFragment.onViewCreated.6
            @Override // com.narvii.video.attachment.DrawRectView.OnDrawRectTouchListener
            public void onHorizFlipClick(int i) {
            }

            @Override // com.narvii.video.attachment.DrawRectView.OnDrawRectTouchListener
            public void onDrag(PointF pointF, PointF pointF2, int i) throws Resources.NotFoundException {
                StickerInfoPack activeSticker;
                PointF pointFMapViewToCanonical = AttachmentEditorFragment.this.getPreviewPlayer().mapViewToCanonical(pointF);
                PointF pointFMapViewToCanonical2 = AttachmentEditorFragment.this.getPreviewPlayer().mapViewToCanonical(pointF2);
                if (pointFMapViewToCanonical == null || pointFMapViewToCanonical2 == null) {
                    return;
                }
                PointF pointF3 = new PointF(pointFMapViewToCanonical2.x - pointFMapViewToCanonical.x, pointFMapViewToCanonical2.y - pointFMapViewToCanonical.y);
                if (i == 0) {
                    Caption activeCaption = AttachmentEditorFragment.this.getActiveCaption();
                    if (activeCaption != null) {
                        AttachmentEditorFragment.this.getPreviewPlayer().translateCaption(activeCaption, pointF3);
                        AttachmentEditorFragment.this.notifyCaptionChanged();
                        return;
                    }
                    return;
                }
                if (i != 1 || (activeSticker = AttachmentEditorFragment.this.getActiveSticker()) == null) {
                    return;
                }
                AttachmentEditorFragment.this.getPreviewPlayer().translateSticker(activeSticker, pointF3);
                AttachmentEditorFragment.this.onAttachmentChanged(activeSticker);
            }

            @Override // com.narvii.video.attachment.DrawRectView.OnDrawRectTouchListener
            public void onScaleAndRotate(float f, PointF pointF, float f2, int i) throws Resources.NotFoundException {
                StickerInfoPack activeSticker;
                PointF pointFMapViewToCanonical = AttachmentEditorFragment.this.getPreviewPlayer().mapViewToCanonical(pointF);
                if (i == 0) {
                    Caption activeCaption = AttachmentEditorFragment.this.getActiveCaption();
                    if (activeCaption != null) {
                        AttachmentEditorFragment.this.getPreviewPlayer().scaleCaption(activeCaption, f, pointFMapViewToCanonical);
                        AttachmentEditorFragment.this.getPreviewPlayer().rotateCaption(activeCaption, f2);
                        AttachmentEditorFragment.this.notifyCaptionChanged();
                        return;
                    }
                    return;
                }
                if (i != 1 || (activeSticker = AttachmentEditorFragment.this.getActiveSticker()) == null) {
                    return;
                }
                AttachmentEditorFragment.this.getPreviewPlayer().scaleSticker(activeSticker, f, pointFMapViewToCanonical);
                AttachmentEditorFragment.this.getPreviewPlayer().rotateSticker(activeSticker, f2);
                AttachmentEditorFragment.this.onAttachmentChanged(activeSticker);
            }

            @Override // com.narvii.video.attachment.DrawRectView.OnDrawRectTouchListener
            public void onDel(int i) throws Resources.NotFoundException {
                AttachmentEditorFragment.this.removeCurrentAttachment(i);
            }

            @Override // com.narvii.video.attachment.DrawRectView.OnDrawRectTouchListener
            public void onEdit(int i) throws ClassNotFoundException {
                if (i == 0) {
                    AttachmentEditorFragment.this.editCurrentCaption();
                } else if (i == 1) {
                    AttachmentEditorFragment attachmentEditorFragment = AttachmentEditorFragment.this;
                    StickerInfoPack activeSticker = attachmentEditorFragment.getActiveSticker();
                    attachmentEditorFragment.orgActiveStickerBeforeEditing = activeSticker != null ? activeSticker.copy() : null;
                    AttachmentEditorFragment.openStickerPickerTab$default(AttachmentEditorFragment.this, false, 1, null);
                }
            }

            @Override // com.narvii.video.attachment.DrawRectView.OnDrawRectTouchListener
            public void onBeyondDrawRectClick(int i) {
                AttachmentEditorFragment.this.resetViewsWhenEditing();
            }

            @Override // com.narvii.video.attachment.DrawRectView.OnDrawRectTouchListener
            public void onTouchDown(PointF curPoint, int i) {
                Intrinsics.checkParameterIsNotNull(curPoint, "curPoint");
                AttachmentEditorFragment.this.setSelectedThisEventSequence(false);
                AttachmentEditorFragment.this.selectAttachmentByHandClick(curPoint);
            }
        });
        getPreviewPlayer().addPlayingEventListener(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void notifyCaptionChanged() throws Resources.NotFoundException {
        onCurrentCaptionChanged(false, false, false);
    }

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onActivityCreated(bundle);
        this.savedInstanceState = bundle;
        this.entranceType = getIntParam("attachmentEntranceType", 1);
    }

    @Override // com.narvii.video.BaseViceTimeLineFragment, com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment
    protected void onAVClipsPrepared() throws Resources.NotFoundException, ClassNotFoundException {
        super.onAVClipsPrepared();
        updateAddAttachmentButton();
        if (this.savedInstanceState == null) {
            if (this.entranceType == 1 && CollectionUtils.isEmpty(getCaptionList())) {
                setSkipPauseVideo(true);
                addCaption();
            } else if (this.entranceType == 2 && CollectionUtils.isEmpty(getStickerList())) {
                setSkipPauseVideo(true);
                openStickerPickerTab(true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void removeCurrentAttachment(int i) throws Resources.NotFoundException {
        BaseAttachmentInfoPack baseAttachmentInfoPack;
        if (i == 0) {
            baseAttachmentInfoPack = this.activeCaption;
        } else {
            baseAttachmentInfoPack = this.activeSticker;
        }
        if (baseAttachmentInfoPack != null) {
            if (this.editing) {
                if (i == 0) {
                    FragmentManager fragmentManager = getFragmentManager();
                    Fragment fragmentFindFragmentByTag = fragmentManager != null ? fragmentManager.findFragmentByTag("captionTab") : null;
                    if (fragmentFindFragmentByTag instanceof CaptionTabFragment) {
                        ((CaptionTabFragment) fragmentFindFragmentByTag).dismiss(false);
                    }
                } else if (i == 1) {
                    FragmentManager fragmentManager2 = getFragmentManager();
                    ComponentCallbacks componentCallbacksFindFragmentByTag = fragmentManager2 != null ? fragmentManager2.findFragmentByTag("stickerTab") : null;
                    if (componentCallbacksFindFragmentByTag instanceof IEditorStickerPicker) {
                        ((IEditorStickerPicker) componentCallbacksFindFragmentByTag).onEditorStickerRemoved();
                    }
                    ((DrawRectView) _$_findCachedViewById(R.id.draw_rect)).setDrawRect(null, 1);
                }
            }
            if (i == 0) {
                IPreviewPlayer previewPlayer = getPreviewPlayer();
                if (baseAttachmentInfoPack == null) {
                    throw new TypeCastException("null cannot be cast to non-null type com.narvii.video.model.Caption");
                }
                previewPlayer.removeCaption((Caption) baseAttachmentInfoPack);
                unSelectCurrentAttachment(0);
                refreshViceTimelines$default(this, 0, false, 3, null);
                updateAddAttachmentButton();
            } else if (i == 1) {
                IPreviewPlayer previewPlayer2 = getPreviewPlayer();
                if (baseAttachmentInfoPack == null) {
                    throw new TypeCastException("null cannot be cast to non-null type com.narvii.video.model.StickerInfoPack");
                }
                previewPlayer2.removeSticker((StickerInfoPack) baseAttachmentInfoPack);
                if (!this.editing) {
                    refreshViceTimelines$default(this, 0, false, 3, null);
                    updateAddAttachmentButton();
                }
                unSelectCurrentAttachment(1);
            }
            getPreviewPlayer().refreshCurrentPosition();
        }
    }

    private final void unSelectCurrentAttachment(int i) {
        if (i == 0) {
            changeActiveAttachment(0, null);
            ((DrawRectView) _$_findCachedViewById(R.id.draw_rect)).setDrawRect(null, 0);
        } else if (i == 1) {
            changeActiveAttachment(1, null);
            ((DrawRectView) _$_findCachedViewById(R.id.draw_rect)).setDrawRect(null, 1);
        }
    }

    private final void editCaptionText(Caption caption) {
        ArrayList<Caption> arrayList;
        int i;
        FragmentRegister fragmentRegister = (FragmentRegister) getService("fragmentRegister");
        if (fragmentRegister != null) {
            SceneInfo sceneInfo = new SceneInfo();
            sceneInfo.captions = getPreviewPlayer().getCaptionList();
            sceneInfo.videoClips = getPreviewPlayer().getVideoClipInfoList();
            SceneInfo sceneInfoCopy = sceneInfo.copy();
            Intrinsics.checkExpressionValueIsNotNull(sceneInfoCopy, "sceneInfo.copy()");
            if (caption != null && (arrayList = sceneInfoCopy.captions) != null && (i = caption.indexInScene) >= 0 && i < arrayList.size()) {
                sceneInfoCopy.captions.remove(caption.indexInScene);
            }
            CaptionEditTextFragment.BACKGROUND.set(getPreviewPlayer().getSnapShot(sceneInfoCopy));
            Uri fragmentDeepLinkUri = fragmentRegister.getFragmentDeepLinkUri("captionEditText");
            if (fragmentDeepLinkUri != null) {
                Intent intent = new Intent("android.intent.action.VIEW", fragmentDeepLinkUri);
                if (caption != null) {
                    intent.putExtra(MimeTypes.BASE_TYPE_TEXT, caption.text);
                    intent.putExtra(TtmlNode.ATTR_TTS_COLOR, caption.textColor);
                }
                intent.putExtra("isNew", caption == null);
                startActivityForResult(intent, this.REQUEST_EDIT_TEXT);
                setAutoPlaying(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void editCurrentCaption() {
        FragmentTransaction fragmentTransactionBeginTransaction;
        FragmentTransaction customAnimations;
        FragmentTransaction fragmentTransactionAdd;
        if (this.activeCaption == null) {
            return;
        }
        this.editing = true;
        this.editingPosition = getPreviewPlayer().getCurrentVideoPositionInTimeline();
        ((DrawRectView) _$_findCachedViewById(R.id.draw_rect)).setShowEdit(false);
        CaptionTabFragment captionTabFragment = new CaptionTabFragment();
        Bundle bundle = new Bundle();
        bundle.putString("caption", JacksonUtils.writeAsString(this.activeCaption));
        captionTabFragment.setArguments(bundle);
        setCaptionTabListener(captionTabFragment);
        FragmentManager fragmentManager = getFragmentManager();
        if (fragmentManager == null || (fragmentTransactionBeginTransaction = fragmentManager.beginTransaction()) == null || (customAnimations = fragmentTransactionBeginTransaction.setCustomAnimations(R.anim.activity_push_bottom_in, R.anim.activity_push_bottom_out, R.anim.activity_push_bottom_in, R.anim.activity_push_bottom_out)) == null || (fragmentTransactionAdd = customAnimations.add(R.id.attachment_tab, captionTabFragment, "captionTab")) == null) {
            return;
        }
        fragmentTransactionAdd.commitAllowingStateLoss();
    }

    static /* synthetic */ void openStickerPickerTab$default(AttachmentEditorFragment attachmentEditorFragment, boolean z, int i, Object obj) throws ClassNotFoundException {
        if ((i & 1) != 0) {
            z = false;
        }
        attachmentEditorFragment.openStickerPickerTab(z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void openStickerPickerTab(boolean z) throws ClassNotFoundException {
        Class fragmentClass;
        FragmentTransaction fragmentTransactionBeginTransaction;
        FragmentTransaction customAnimations;
        FragmentTransaction fragmentTransactionAdd;
        FragmentRegister fragmentRegister = (FragmentRegister) getService("fragmentRegister");
        if (fragmentRegister == null || (fragmentClass = fragmentRegister.getFragmentClass("stickerEditorTab")) == null) {
            return;
        }
        this.editing = true;
        this.editingPosition = getPreviewPlayer().getCurrentVideoPositionInTimeline();
        ((DrawRectView) _$_findCachedViewById(R.id.draw_rect)).setShowEdit(false);
        Bundle bundle = new Bundle();
        bundle.putBoolean("tabBottom", true);
        bundle.putString(CommentListFragment.COMMENT_KEY_SOURCE, "editor");
        if (!z) {
            bundle.putString("activeSticker", JacksonUtils.writeAsString(this.activeSticker));
        }
        Fragment fragmentInstantiate = Fragment.instantiate(getContext(), fragmentClass.getName(), bundle);
        if (fragmentInstantiate instanceof IEditorStickerPicker) {
            ((IEditorStickerPicker) fragmentInstantiate).setEditorStickerPickerCallback(this);
        }
        FragmentManager fragmentManager = getFragmentManager();
        if (fragmentManager == null || (fragmentTransactionBeginTransaction = fragmentManager.beginTransaction()) == null || (customAnimations = fragmentTransactionBeginTransaction.setCustomAnimations(R.anim.activity_push_bottom_in, R.anim.activity_push_bottom_out, R.anim.activity_push_bottom_in, R.anim.activity_push_bottom_out)) == null || (fragmentTransactionAdd = customAnimations.add(R.id.attachment_tab, fragmentInstantiate, "stickerTab")) == null) {
            return;
        }
        fragmentTransactionAdd.commitAllowingStateLoss();
    }

    public final void selectAttachmentByHandClick(PointF curPoint) {
        AttachmentDrawRect attachmentDrawRectByTimelinePosition;
        BaseAttachmentInfoPack baseAttachmentInfoPack;
        Intrinsics.checkParameterIsNotNull(curPoint, "curPoint");
        if (this.editing) {
            return;
        }
        if ((!(this.activeSticker == null && this.activeCaption == null) && ((DrawRectView) _$_findCachedViewById(R.id.draw_rect)).curPointInDrawOrEditRect(curPoint)) || (attachmentDrawRectByTimelinePosition = getPreviewPlayer().getAttachmentDrawRectByTimelinePosition(getPreviewPlayer().getCurrentVideoPositionInTimeline(), curPoint)) == null) {
            return;
        }
        int i = attachmentDrawRectByTimelinePosition.mode;
        if (i == 0) {
            baseAttachmentInfoPack = this.activeCaption;
        } else {
            baseAttachmentInfoPack = i == 1 ? this.activeSticker : null;
        }
        if (baseAttachmentInfoPack == null || baseAttachmentInfoPack.indexInMixedAttachmentList != attachmentDrawRectByTimelinePosition.attachment.indexInMixedAttachmentList) {
            this.selectedThisEventSequence = true;
            changeActiveAttachment(attachmentDrawRectByTimelinePosition.mode, attachmentDrawRectByTimelinePosition.attachment);
            setAutoPlaying(false);
            if (getInPlay()) {
                BaseMediaEditorFragment.changeVideoPlaybackStatus$default(this, true, false, 2, null);
                getPreviewPlayer().refreshCurrentPosition();
            }
            ((DrawRectView) _$_findCachedViewById(R.id.draw_rect)).setShowEdit(true);
            ((DrawRectView) _$_findCachedViewById(R.id.draw_rect)).setDrawRect(attachmentDrawRectByTimelinePosition.pointList, attachmentDrawRectByTimelinePosition.mode);
        }
    }

    private final void updateAddAttachmentButton() {
        boolean z = getPreviewPlayer().getCaptionList().size() + getPreviewPlayer().getStickerList().size() < this.ATTACHMENT_MAX_COUNT;
        ImageView option_add_caption = (ImageView) _$_findCachedViewById(R.id.option_add_caption);
        Intrinsics.checkExpressionValueIsNotNull(option_add_caption, "option_add_caption");
        option_add_caption.setAlpha(z ? 1.0f : 0.5f);
        ImageView option_add_caption2 = (ImageView) _$_findCachedViewById(R.id.option_add_caption);
        Intrinsics.checkExpressionValueIsNotNull(option_add_caption2, "option_add_caption");
        option_add_caption2.setClickable(z);
        ImageView option_add_sticker = (ImageView) _$_findCachedViewById(R.id.option_add_sticker);
        Intrinsics.checkExpressionValueIsNotNull(option_add_sticker, "option_add_sticker");
        option_add_sticker.setAlpha(z ? 1.0f : 0.5f);
        ImageView option_add_sticker2 = (ImageView) _$_findCachedViewById(R.id.option_add_sticker);
        Intrinsics.checkExpressionValueIsNotNull(option_add_sticker2, "option_add_sticker");
        option_add_sticker2.setClickable(z);
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment
    protected void onVideoPlaybackStatusChanged(boolean z) {
        int i;
        super.onVideoPlaybackStatusChanged(z);
        if (z) {
            if (this.activeCaption != null) {
                i = 0;
            } else {
                i = this.activeSticker != null ? 1 : -1;
            }
            unSelectCurrentAttachment(i);
        }
    }

    private final void updateAttachmentCoordinate(BaseClipInfoPack baseClipInfoPack, int i) {
        if (baseClipInfoPack != null) {
            int i2 = baseClipInfoPack.startOffsetToMainTrackInMs;
            if (i2 <= i && i2 + baseClipInfoPack.visibleDurationInMs >= i) {
                if (baseClipInfoPack instanceof Caption) {
                    ((DrawRectView) _$_findCachedViewById(R.id.draw_rect)).setDrawRect(getPreviewPlayer().getCaptionViewPoints((Caption) baseClipInfoPack), 0);
                    return;
                } else {
                    if (baseClipInfoPack instanceof StickerInfoPack) {
                        ((DrawRectView) _$_findCachedViewById(R.id.draw_rect)).setDrawRect(getPreviewPlayer().getStickerViewPoints((StickerInfoPack) baseClipInfoPack), 1);
                        return;
                    }
                    return;
                }
            }
            ((DrawRectView) _$_findCachedViewById(R.id.draw_rect)).setDrawRect(null, baseClipInfoPack instanceof StickerInfoPack ? 1 : 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateAttachmentCoordinate(BaseClipInfoPack baseClipInfoPack) {
        updateAttachmentCoordinate(baseClipInfoPack, getPreviewPlayer().getCurrentVideoPositionInTimeline());
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected void onVideoSeekingPositionChanged(long j) {
        Caption caption = this.activeCaption;
        if (caption != null) {
            updateAttachmentCoordinate(caption, (int) j);
        }
        StickerInfoPack stickerInfoPack = this.activeSticker;
        if (stickerInfoPack != null) {
            updateAttachmentCoordinate(stickerInfoPack, (int) j);
        }
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return Utils.isAndroidVersion8() ? R.style.AminoTheme_Overlay : R.style.AminoTheme_Translucent_NoActionBar;
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment
    public void initFrameRetrieverManager() throws Resources.NotFoundException {
        this.outputFolderPath = getStringParam("frameRetrieverOutputFolder");
        if (this.outputFolderPath != null) {
            FrameRetrieverManager frameRetrieverManager = getFrameRetrieverManager();
            String str = this.outputFolderPath;
            if (str != null) {
                FrameRetrieverManager.initRetriever$default(frameRetrieverManager, str, true, false, 4, null);
            } else {
                Intrinsics.throwNpe();
                throw null;
            }
        }
    }

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(NVActivity nVActivity) {
        FragmentManager fragmentManager = getFragmentManager();
        Fragment fragmentFindFragmentByTag = fragmentManager != null ? fragmentManager.findFragmentByTag("captionTab") : null;
        if (fragmentFindFragmentByTag instanceof CaptionTabFragment) {
            ((CaptionTabFragment) fragmentFindFragmentByTag).dismiss(true);
            return true;
        }
        FragmentManager fragmentManager2 = getFragmentManager();
        ComponentCallbacks componentCallbacksFindFragmentByTag = fragmentManager2 != null ? fragmentManager2.findFragmentByTag("stickerTab") : null;
        if (componentCallbacksFindFragmentByTag instanceof FragmentOnBackListener) {
            return ((FragmentOnBackListener) componentCallbacksFindFragmentByTag).onBackPressed(nVActivity);
        }
        return super.onBackPressed(nVActivity);
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) throws Resources.NotFoundException {
        super.onActivityResult(i, i2, intent);
        if (i == this.REQUEST_EDIT_TEXT && i2 == -1 && intent != null) {
            boolean booleanExtra = intent.getBooleanExtra("isNew", false);
            int intExtra = intent.getIntExtra(TtmlNode.ATTR_TTS_COLOR, -1);
            String stringExtra = intent.getStringExtra(MimeTypes.BASE_TYPE_TEXT);
            int mainTrackPlaybackTime = getMainTrackPlaybackTime();
            MediaTimeLineComponent mainTimeLineComponent = getMainTimeLineComponent();
            Pair<Boolean, Integer> pairIsTailFrameCellPlaying = mainTimeLineComponent != null ? mainTimeLineComponent.isTailFrameCellPlaying() : null;
            if (booleanExtra) {
                Caption caption = new Caption();
                caption.text = stringExtra;
                if (pairIsTailFrameCellPlaying != null && pairIsTailFrameCellPlaying.getFirst().booleanValue()) {
                    mainTrackPlaybackTime -= 1000;
                }
                caption.startOffsetToMainTrackInMs = mainTrackPlaybackTime;
                caption.visibleDurationInMs = 5000;
                caption.textColor = ColorUtils.setAlphaComponent(intExtra, Color.alpha(caption.textColor));
                getPreviewPlayer().addCaption(caption);
                getPreviewPlayer().refreshCurrentPosition();
                updateAttachmentCoordinate(caption);
                updateAddAttachmentButton();
                refreshViceTimelines$default(this, 0, false, 3, null);
                changeActiveAttachment(0, caption);
            } else {
                Caption caption2 = this.activeCaption;
                if (caption2 != null) {
                    caption2.text = stringExtra;
                    caption2.textColor = ColorUtils.setAlphaComponent(intExtra, Color.alpha(caption2.textColor));
                    onCurrentCaptionChanged(true);
                    FragmentManager fragmentManager = getFragmentManager();
                    Fragment fragmentFindFragmentByTag = fragmentManager != null ? fragmentManager.findFragmentByTag("captionTab") : null;
                    if (fragmentFindFragmentByTag instanceof CaptionTabFragment) {
                        ((CaptionTabFragment) fragmentFindFragmentByTag).setCaptionColor(caption2.textColor);
                    }
                }
            }
            if (this.editing || this.activeCaption == null) {
                return;
            }
            editCurrentCaption();
            return;
        }
        getPreviewPlayer().refreshCurrentPosition();
    }

    static /* synthetic */ void refreshViceTimeline$default(AttachmentEditorFragment attachmentEditorFragment, BaseAttachmentInfoPack baseAttachmentInfoPack, boolean z, int i, Object obj) throws Resources.NotFoundException {
        if ((i & 2) != 0) {
            z = false;
        }
        attachmentEditorFragment.refreshViceTimeline(baseAttachmentInfoPack, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void refreshViceTimeline(BaseAttachmentInfoPack baseAttachmentInfoPack, boolean z) throws Resources.NotFoundException {
        updateViceTimeLine(baseAttachmentInfoPack, baseAttachmentInfoPack.indexInMixedAttachmentList, true, getMainTrackPlaybackTime() - baseAttachmentInfoPack.startOffsetToMainTrackInMs, z);
    }

    static /* synthetic */ void refreshViceTimelines$default(AttachmentEditorFragment attachmentEditorFragment, int i, boolean z, int i2, Object obj) throws Resources.NotFoundException {
        if ((i2 & 1) != 0) {
            i = -1;
        }
        if ((i2 & 2) != 0) {
            z = false;
        }
        attachmentEditorFragment.refreshViceTimelines(i, z);
    }

    private final void refreshViceTimelines(int i, boolean z) throws Resources.NotFoundException {
        if (i == -1) {
            i = getMainTrackPlaybackTime();
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = getAttachmentList$default(this, false, 1, null).iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(i - ((BaseAttachmentInfoPack) it.next()).startOffsetToMainTrackInMs));
        }
        updateViceTimeLinePanel(true, arrayList, z);
        updateViceTimeLineSelectedStatus();
    }

    @Override // com.narvii.video.attachment.caption.CaptionEditListener
    public void onStyleChanged(String str, String str2) throws Resources.NotFoundException {
        Caption caption = this.activeCaption;
        if (caption != null) {
            caption.styleId = str;
            caption.styleObjectId = str2;
            onCurrentCaptionChanged(false, true, true);
            ((DrawRectView) _$_findCachedViewById(R.id.draw_rect)).setDrawRect(null, 0);
            getPreviewPlayer().unMute();
            IPreviewPlayer previewPlayer = getPreviewPlayer();
            int i = caption.startOffsetToMainTrackInMs;
            previewPlayer.playVideo(i, caption.visibleDurationInMs + i);
        }
    }

    @Override // com.narvii.video.attachment.caption.CaptionEditListener
    public void onColorChanged(int i, int i2, boolean z) throws Resources.NotFoundException {
        Caption caption;
        if (i == 1) {
            Caption caption2 = this.activeCaption;
            if (caption2 != null) {
                caption2.textColor = i2;
                onCurrentCaptionChanged();
                return;
            }
            return;
        }
        if (i != 2) {
            if (i == 3 && (caption = this.activeCaption) != null) {
                caption.shadowColor = i2;
                caption.hasShadow = z;
                onCurrentCaptionChanged();
                return;
            }
            return;
        }
        Caption caption3 = this.activeCaption;
        if (caption3 != null) {
            caption3.strokeColor = i2;
            caption3.hasStroke = z;
            onCurrentCaptionChanged();
        }
    }

    @Override // com.narvii.video.attachment.caption.CaptionEditListener
    public void onFontChanged(String str, String str2) throws Resources.NotFoundException {
        Caption caption = this.activeCaption;
        if (caption != null) {
            caption.fontPath = str;
            caption.fontObjectId = str2;
            onCurrentCaptionChanged();
        }
    }

    @Override // com.narvii.app.FragmentDismissListener
    public void onFragmentDismiss(Fragment fragment) {
        resetViewsWhenEditing();
        this.editing = false;
        ((DrawRectView) _$_findCachedViewById(R.id.draw_rect)).setShowEdit(true);
    }

    @Override // com.narvii.video.attachment.caption.CaptionTabChangeListener
    public void revertCaption(Caption caption) throws Resources.NotFoundException {
        Intrinsics.checkParameterIsNotNull(caption, "caption");
        if (this.activeCaption != null) {
            this.activeCaption = caption;
            onCurrentCaptionChanged();
        }
    }

    public final void onCurrentCaptionChanged() throws Resources.NotFoundException {
        onCurrentCaptionChanged(false);
    }

    public final void onCurrentCaptionChanged(boolean z) throws Resources.NotFoundException {
        onCurrentCaptionChanged(z, false, true);
    }

    public final void onCurrentCaptionChanged(boolean z, boolean z2, boolean z3) throws Resources.NotFoundException {
        Caption caption = this.activeCaption;
        if (caption != null) {
            if (z3) {
                getPreviewPlayer().resetCaption(caption, z2);
            }
            onAttachmentChanged(caption);
            if (z) {
                refreshViceTimelines$default(this, 0, false, 3, null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onAttachmentChanged(BaseAttachmentInfoPack baseAttachmentInfoPack) {
        getPreviewPlayer().refreshCurrentPosition();
        updateAttachmentCoordinate(baseAttachmentInfoPack);
    }

    @Override // com.narvii.video.attachment.caption.EditCaptionTextHost
    public void editCurrentCaptionText() {
        Caption caption = this.activeCaption;
        if (caption != null) {
            editCaptionText(caption);
        }
    }

    @Override // com.narvii.video.BaseViceTimeLineFragment
    public void onViceTrackOffsetChanged(int i) {
        int size = getPreviewPlayer().getCaptionList().size() + getPreviewPlayer().getStickerList().size();
        if (i >= 0 && size > i) {
            BaseAttachmentInfoPack baseAttachmentInfoPack = (BaseAttachmentInfoPack) getAttachmentList$default(this, false, 1, null).get(i);
            if (baseAttachmentInfoPack instanceof Caption) {
                getPreviewPlayer().resetCaption((Caption) baseAttachmentInfoPack, false);
            } else if (baseAttachmentInfoPack instanceof StickerInfoPack) {
                getPreviewPlayer().resetSticker((StickerInfoPack) baseAttachmentInfoPack);
            }
            getPreviewPlayer().refreshCurrentPosition();
        }
    }

    @Override // com.narvii.video.interfaces.IPlayingEventListener
    public void onPlayingEOF() {
        resetViewsWhenEditing();
    }

    @Override // com.narvii.video.interfaces.IPlayingEventListener
    public void onPlayingStopped() {
        resetViewsWhenEditing();
    }

    @Override // com.narvii.video.attachment.ResetAttachmentViewsListener
    public void resetViewsWhenEditing() {
        if (this.editing) {
            StickerInfoPack stickerInfoPack = this.activeSticker;
            if (stickerInfoPack != null) {
                updateAttachmentCoordinate(stickerInfoPack);
            } else {
                Caption caption = this.activeCaption;
                if (caption != null) {
                    updateAttachmentCoordinate(caption);
                }
            }
            getPreviewPlayer().seekTimeLineTo(this.editingPosition);
        }
    }

    static /* synthetic */ List getAttachmentList$default(AttachmentEditorFragment attachmentEditorFragment, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return attachmentEditorFragment.getAttachmentList(z);
    }

    private final List<BaseAttachmentInfoPack> getAttachmentList(boolean z) {
        return CollectionsKt___CollectionsKt.plus(getPreviewPlayer().getStickerList(), getPreviewPlayer().getCaptionList());
    }
}
