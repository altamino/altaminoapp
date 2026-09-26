package com.narvii.video.attachment;

import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.graphics.PointF;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.activity.result.ActivityResultCaller;
import androidx.core.graphics.ColorUtils;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.narvii.app.FragmentDismissListener;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.FragmentRegister;
import com.narvii.app.FragmentWillFinishListener;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.incubator.IncubatorApplication;
import com.narvii.mediaeditor.R;
import com.narvii.mediaeditor.databinding.FragmentAttachmentEditorBinding;
import com.narvii.paging.source.DataSource;
import com.narvii.scene.model.SceneInfo;
import com.narvii.util.CollectionUtils;
import com.narvii.util.FragmentExtensionsKt;
import com.narvii.util.JacksonUtils;
import com.narvii.util.ShareDataSourceHost;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.video.BaseMediaEditorFragment;
import com.narvii.video.BaseViceTimeLineFragment;
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
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.d0;
import kotlin.jvm.internal.g0;
import kotlin.jvm.internal.q0;
import kotlin.jvm.internal.t;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.u;

/* JADX INFO: loaded from: classes.dex */
public final class AttachmentEditorFragment extends BaseViceTimeLineFragment implements FragmentDismissListener, CaptionTabChangeListener, IEditorStickerPickerCallback, EditCaptionTextHost, CaptionEditListener, FragmentWillFinishListener, ShareDataSourceHost, IPlayingEventListener, ResetAttachmentViewsListener {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {q0.g(new g0(AttachmentEditorFragment.class, "binding", "getBinding()Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;", 0))};

    @Nullable
    private Caption activeCaption;

    @Nullable
    private StickerInfoPack activeSticker;
    private boolean editing;
    private int editingPosition;
    private int entranceType;
    private boolean hasMainTrackMovedWhenEnterEditMode;
    private long lastClickTime;

    @Nullable
    private StickerInfoPack orgActiveStickerBeforeEditing;

    @Nullable
    private String outputFolderPath;
    private ProgressDialog progress;

    @Nullable
    private Bundle savedInstanceState;
    private boolean selectedThisEventSequence;
    private final int ATTACHMENT_MAX_COUNT = 10;
    private final int REQUEST_EDIT_TEXT = 300;

    @NotNull
    private final HashMap<String, DataSource<?>> hashMap = new HashMap<>();

    @NotNull
    private final kotlin.properties.d binding$delegate = FragmentExtensionsKt.viewBinding(this, AttachmentEditorFragment$binding$2.INSTANCE);

    private final void addCaption() {
        editCaptionText(null);
    }

    private final void addSticker() {
        openStickerPickerTab(true);
        this.activeCaption = null;
        this.activeSticker = null;
        getBinding().drawRect.setDrawRect(null, 1);
    }

    private final void changeActiveAttachment(int i10, BaseAttachmentInfoPack baseAttachmentInfoPack) {
        if (i10 == 0) {
            this.activeSticker = null;
            Caption caption = this.activeCaption;
            this.activeCaption = (Caption) baseAttachmentInfoPack;
            if ((caption != null ? caption.indexInMixedAttachmentList : -1) != (baseAttachmentInfoPack != null ? baseAttachmentInfoPack.indexInMixedAttachmentList : -1)) {
                Utils.post(new Runnable() { // from class: com.narvii.video.attachment.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        AttachmentEditorFragment.changeActiveAttachment$lambda$8(this.f2855a);
                    }
                });
                return;
            }
            return;
        }
        if (i10 != 1) {
            return;
        }
        this.activeCaption = null;
        StickerInfoPack stickerInfoPack = this.activeSticker;
        this.activeSticker = (StickerInfoPack) baseAttachmentInfoPack;
        if ((stickerInfoPack != null ? stickerInfoPack.indexInMixedAttachmentList : -1) != (baseAttachmentInfoPack != null ? baseAttachmentInfoPack.indexInMixedAttachmentList : -1)) {
            Utils.post(new Runnable() { // from class: com.narvii.video.attachment.b
                @Override // java.lang.Runnable
                public final void run() {
                    AttachmentEditorFragment.changeActiveAttachment$lambda$9(this.f2856a);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void notifyCaptionChanged() {
        onCurrentCaptionChanged(false, false, false);
    }

    private final void refreshViceTimelines(int i10, boolean z6) {
        if (i10 == -1) {
            i10 = getMainTrackPlaybackTime();
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = getAttachmentList$default(this, false, 1, null).iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(i10 - ((BaseAttachmentInfoPack) it.next()).startOffsetToMainTrackInMs));
        }
        updateViceTimeLinePanel(true, arrayList, z6);
        updateViceTimeLineSelectedStatus();
    }

    public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
        if (p1 == null) {
            return;
        }
        p0.startActivityForResult(p1, p5);
    }

    private final void unSelectCurrentAttachment(int i10) {
        if (i10 == 0) {
            changeActiveAttachment(0, null);
            getBinding().drawRect.setDrawRect(null, 0);
        } else {
            if (i10 != 1) {
                return;
            }
            changeActiveAttachment(1, null);
            getBinding().drawRect.setDrawRect(null, 1);
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private final void updateAttachmentCoordinate(BaseClipInfoPack baseClipInfoPack, int i10) {
        if (baseClipInfoPack != null) {
            int i11 = baseClipInfoPack.startOffsetToMainTrackInMs;
            if (i11 > i10 || i11 + baseClipInfoPack.visibleDurationInMs < i10) {
                getBinding().drawRect.setDrawRect(null, baseClipInfoPack instanceof StickerInfoPack ? 1 : 0);
                return;
            }
            if (baseClipInfoPack instanceof Caption) {
                getBinding().drawRect.setDrawRect(getPreviewPlayer().getCaptionViewPoints((Caption) baseClipInfoPack), 0);
            } else if (baseClipInfoPack instanceof StickerInfoPack) {
                getBinding().drawRect.setDrawRect(getPreviewPlayer().getStickerViewPoints((StickerInfoPack) baseClipInfoPack), 1);
            }
        }
    }

    @Override // com.narvii.video.attachment.sticker.IEditorStickerPickerCallback
    public void forsakePreviewSticker() {
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
        if (stickerInfoPack3 == null) {
            this.activeSticker = null;
            getBinding().drawRect.setDrawRect(null, 1);
            getPreviewPlayer().refreshCurrentPosition();
            return;
        }
        this.activeSticker = stickerInfoPack3;
        this.orgActiveStickerBeforeEditing = null;
        if (stickerInfoPack3 != null) {
            getPreviewPlayer().resetSticker(stickerInfoPack3);
        }
        getBinding().drawRect.setShowEdit(true);
        updateAttachmentCoordinate(this.activeSticker);
        getPreviewPlayer().refreshCurrentPosition();
        int i10 = -1;
        if (this.hasMainTrackMovedWhenEnterEditMode) {
            this.hasMainTrackMovedWhenEnterEditMode = false;
            StickerInfoPack stickerInfoPack4 = this.activeSticker;
            if (stickerInfoPack4 != null) {
                i10 = stickerInfoPack4.startOffsetToMainTrackInMs;
            }
        }
        refreshViceTimelines$default(this, i10, false, 2, null);
    }

    @Nullable
    public final Caption getActiveCaption() {
        return this.activeCaption;
    }

    @Nullable
    public final StickerInfoPack getActiveSticker() {
        return this.activeSticker;
    }

    public final boolean getEditing() {
        return this.editing;
    }

    @NotNull
    public final HashMap<String, DataSource<?>> getHashMap() {
        return this.hashMap;
    }

    public final boolean getSelectedThisEventSequence() {
        return this.selectedThisEventSequence;
    }

    @Override // com.narvii.video.BaseViceTimeLineFragment
    public int getViceTrackDataType(int i10) {
        List attachmentList$default = getAttachmentList$default(this, false, 1, null);
        if (i10 < 0 || i10 >= attachmentList$default.size()) {
            return -1;
        }
        BaseAttachmentInfoPack baseAttachmentInfoPack = (BaseAttachmentInfoPack) attachmentList$default.get(i10);
        if (baseAttachmentInfoPack instanceof Caption) {
            return 102;
        }
        return baseAttachmentInfoPack instanceof StickerInfoPack ? 103 : -1;
    }

    @Override // com.narvii.video.attachment.caption.CaptionEditListener
    public void onColorChanged(int i10, int i11, boolean z6) {
        Caption caption;
        if (i10 == 1) {
            Caption caption2 = this.activeCaption;
            if (caption2 != null) {
                caption2.textColor = i11;
                onCurrentCaptionChanged();
                return;
            }
            return;
        }
        if (i10 != 2) {
            if (i10 == 3 && (caption = this.activeCaption) != null) {
                caption.shadowColor = i11;
                caption.hasShadow = z6;
                onCurrentCaptionChanged();
                return;
            }
            return;
        }
        Caption caption3 = this.activeCaption;
        if (caption3 != null) {
            caption3.strokeColor = i11;
            caption3.hasStroke = z6;
            onCurrentCaptionChanged();
        }
    }

    public final void onCurrentCaptionChanged() {
        onCurrentCaptionChanged(false);
    }

    @Override // com.narvii.video.interfaces.IPlayingEventListener
    public void onPlayingProgress(long j6, long j10) {
    }

    @Override // com.narvii.video.BaseViceTimeLineFragment
    public void onViceTrackClicked(int i10) {
        int i11;
        List attachmentList$default = getAttachmentList$default(this, false, 1, null);
        if (i10 < 0 || i10 >= attachmentList$default.size()) {
            return;
        }
        BaseAttachmentInfoPack baseAttachmentInfoPack = (BaseAttachmentInfoPack) attachmentList$default.get(i10);
        int i12 = -1;
        if (baseAttachmentInfoPack instanceof Caption) {
            i11 = 0;
        } else {
            i11 = baseAttachmentInfoPack instanceof StickerInfoPack ? 1 : -1;
        }
        Caption caption = this.activeCaption;
        if (caption != null) {
            t.g(caption);
            i12 = caption.indexInMixedAttachmentList;
        } else {
            StickerInfoPack stickerInfoPack = this.activeSticker;
            if (stickerInfoPack != null) {
                t.g(stickerInfoPack);
                i12 = stickerInfoPack.indexInMixedAttachmentList;
            }
        }
        if (i12 != i10) {
            setAutoPlaying(false);
            BaseMediaEditorFragment.changeVideoPlaybackStatus$default(this, true, false, 2, null);
            changeActiveAttachment(i11, baseAttachmentInfoPack);
            if (i11 == 1) {
                getBinding().drawRect.setShowEdit(true);
            }
            updateAttachmentCoordinate(baseAttachmentInfoPack);
            return;
        }
        if (this.editing) {
            return;
        }
        int i13 = baseAttachmentInfoPack.startOffsetToMainTrackInMs;
        int i14 = baseAttachmentInfoPack.visibleDurationInMs + i13;
        int mainTrackPlaybackTime = getMainTrackPlaybackTime();
        if (i13 > mainTrackPlaybackTime || mainTrackPlaybackTime >= i14) {
            this.hasMainTrackMovedWhenEnterEditMode = true;
            moveMainTrackTo(baseAttachmentInfoPack.startOffsetToMainTrackInMs);
            refreshViceTimelines$default(this, baseAttachmentInfoPack.startOffsetToMainTrackInMs, false, 2, null);
        }
        if (i11 == 0) {
            editCurrentCaption();
        } else {
            if (i11 != 1) {
                return;
            }
            StickerInfoPack stickerInfoPack2 = this.activeSticker;
            this.orgActiveStickerBeforeEditing = stickerInfoPack2 != null ? stickerInfoPack2.copy() : null;
            openStickerPickerTab$default(this, false, 1, null);
        }
    }

    @Override // com.narvii.video.attachment.sticker.IEditorStickerPickerCallback
    public void savePreviewSticker() {
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
        int i10 = -1;
        if (this.hasMainTrackMovedWhenEnterEditMode) {
            this.hasMainTrackMovedWhenEnterEditMode = false;
            StickerInfoPack stickerInfoPack3 = this.activeSticker;
            if (stickerInfoPack3 != null) {
                i10 = stickerInfoPack3.startOffsetToMainTrackInMs;
            }
        }
        refreshViceTimelines$default(this, i10, false, 2, null);
        updateAddAttachmentButton();
        if (stickerInfoPackCopy != null) {
            getBinding().drawRect.setShowEdit(true);
            updateAttachmentCoordinate(this.activeSticker);
        }
    }

    public final void setActiveCaption(@Nullable Caption caption) {
        this.activeCaption = caption;
    }

    public final void setActiveSticker(@Nullable StickerInfoPack stickerInfoPack) {
        this.activeSticker = stickerInfoPack;
    }

    public final void setEditing(boolean z6) {
        this.editing = z6;
    }

    public final void setSelectedThisEventSequence(boolean z6) {
        this.selectedThisEventSequence = z6;
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected boolean showPauseButton() {
        return true;
    }

    @Override // com.narvii.app.FragmentWillFinishListener
    public void willFinish(@Nullable NVActivity nVActivity) {
    }

    private final void editCaptionText(Caption caption) {
        ArrayList<Caption> arrayList;
        int i10;
        FragmentRegister fragmentRegister = (FragmentRegister) getService("fragmentRegister");
        if (fragmentRegister != null) {
            SceneInfo sceneInfo = new SceneInfo();
            sceneInfo.captions = getPreviewPlayer().getCaptionList();
            sceneInfo.videoClips = getPreviewPlayer().getVideoClipInfoList();
            SceneInfo sceneInfoCopy = sceneInfo.copy();
            t.i(sceneInfoCopy, "copy(...)");
            if (caption != null && (arrayList = sceneInfoCopy.captions) != null && (i10 = caption.indexInScene) >= 0 && i10 < arrayList.size()) {
                sceneInfoCopy.captions.remove(caption.indexInScene);
            }
            CaptionEditTextFragment.BACKGROUND.set(getPreviewPlayer().getSnapShot(sceneInfoCopy));
            Uri fragmentDeepLinkUri = fragmentRegister.getFragmentDeepLinkUri("captionEditText");
            if (fragmentDeepLinkUri != null) {
                Intent intent = new Intent("android.intent.action.VIEW", fragmentDeepLinkUri);
                if (caption != null) {
                    intent.putExtra("text", caption.text);
                    intent.putExtra("color", caption.textColor);
                }
                intent.putExtra("isNew", caption == null);
                safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(this, intent, this.REQUEST_EDIT_TEXT);
                setAutoPlaying(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void editCurrentCaption() {
        FragmentTransaction fragmentTransactionQ;
        int i10;
        int i11;
        FragmentTransaction fragmentTransactionZ;
        FragmentTransaction fragmentTransactionC;
        if (this.activeCaption == null) {
            return;
        }
        this.editing = true;
        this.editingPosition = getPreviewPlayer().getCurrentVideoPositionInTimeline();
        getBinding().drawRect.setShowEdit(false);
        CaptionTabFragment captionTabFragment = new CaptionTabFragment();
        Bundle bundle = new Bundle();
        bundle.putString("caption", JacksonUtils.writeAsString(this.activeCaption));
        captionTabFragment.setArguments(bundle);
        setCaptionTabListener(captionTabFragment);
        FragmentManager fragmentManager = getFragmentManager();
        if (fragmentManager == null || (fragmentTransactionQ = fragmentManager.q()) == null || (fragmentTransactionZ = fragmentTransactionQ.z((i10 = R.anim.activity_push_bottom_in), (i11 = R.anim.activity_push_bottom_out), i10, i11)) == null || (fragmentTransactionC = fragmentTransactionZ.c(R.id.attachment_tab, captionTabFragment, "captionTab")) == null) {
            return;
        }
        fragmentTransactionC.k();
    }

    static /* synthetic */ List getAttachmentList$default(AttachmentEditorFragment attachmentEditorFragment, boolean z6, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z6 = false;
        }
        return attachmentEditorFragment.getAttachmentList(z6);
    }

    private final FragmentAttachmentEditorBinding getBinding() {
        return (FragmentAttachmentEditorBinding) this.binding$delegate.getValue(this, $$delegatedProperties[0]);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void openStickerPickerTab(boolean z6) {
        Class fragmentClass;
        FragmentTransaction fragmentTransactionQ;
        int i10;
        int i11;
        FragmentTransaction fragmentTransactionZ;
        FragmentTransaction fragmentTransactionC;
        FragmentRegister fragmentRegister = (FragmentRegister) getService("fragmentRegister");
        if (fragmentRegister == null || (fragmentClass = fragmentRegister.getFragmentClass("stickerEditorTab")) == null) {
            return;
        }
        this.editing = true;
        this.editingPosition = getPreviewPlayer().getCurrentVideoPositionInTimeline();
        getBinding().drawRect.setShowEdit(false);
        Bundle bundle = new Bundle();
        bundle.putBoolean("tabBottom", true);
        bundle.putString("source", "editor");
        if (!z6) {
            bundle.putString("activeSticker", JacksonUtils.writeAsString(this.activeSticker));
        }
        Fragment fragmentInstantiate = Fragment.instantiate(getContext(), fragmentClass.getName(), bundle);
        t.i(fragmentInstantiate, "instantiate(...)");
        if (fragmentInstantiate instanceof IEditorStickerPicker) {
            ((IEditorStickerPicker) fragmentInstantiate).setEditorStickerPickerCallback(this);
        }
        FragmentManager fragmentManager = getFragmentManager();
        if (fragmentManager == null || (fragmentTransactionQ = fragmentManager.q()) == null || (fragmentTransactionZ = fragmentTransactionQ.z((i10 = R.anim.activity_push_bottom_in), (i11 = R.anim.activity_push_bottom_out), i10, i11)) == null || (fragmentTransactionC = fragmentTransactionZ.c(R.id.attachment_tab, fragmentInstantiate, "stickerTab")) == null) {
            return;
        }
        fragmentTransactionC.k();
    }

    static /* synthetic */ void openStickerPickerTab$default(AttachmentEditorFragment attachmentEditorFragment, boolean z6, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z6 = false;
        }
        attachmentEditorFragment.openStickerPickerTab(z6);
    }

    static /* synthetic */ void refreshViceTimeline$default(AttachmentEditorFragment attachmentEditorFragment, BaseAttachmentInfoPack baseAttachmentInfoPack, boolean z6, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z6 = false;
        }
        attachmentEditorFragment.refreshViceTimeline(baseAttachmentInfoPack, z6);
    }

    static /* synthetic */ void refreshViceTimelines$default(AttachmentEditorFragment attachmentEditorFragment, int i10, boolean z6, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = -1;
        }
        if ((i11 & 2) != 0) {
            z6 = false;
        }
        attachmentEditorFragment.refreshViceTimelines(i10, z6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void removeCurrentAttachment(int i10) {
        BaseAttachmentInfoPack baseAttachmentInfoPack = i10 == 0 ? this.activeCaption : this.activeSticker;
        if (baseAttachmentInfoPack != null) {
            if (this.editing) {
                if (i10 == 0) {
                    FragmentManager fragmentManager = getFragmentManager();
                    Fragment fragmentM0 = fragmentManager != null ? fragmentManager.m0("captionTab") : null;
                    if (fragmentM0 instanceof CaptionTabFragment) {
                        ((CaptionTabFragment) fragmentM0).dismiss(false);
                    }
                } else if (i10 == 1) {
                    FragmentManager fragmentManager2 = getFragmentManager();
                    ActivityResultCaller activityResultCallerM0 = fragmentManager2 != null ? fragmentManager2.m0("stickerTab") : null;
                    if (activityResultCallerM0 instanceof IEditorStickerPicker) {
                        ((IEditorStickerPicker) activityResultCallerM0).onEditorStickerRemoved();
                    }
                    getBinding().drawRect.setDrawRect(null, 1);
                }
            }
            if (i10 == 0) {
                getPreviewPlayer().removeCaption((Caption) baseAttachmentInfoPack);
                unSelectCurrentAttachment(0);
                refreshViceTimelines$default(this, 0, false, 3, null);
                updateAddAttachmentButton();
            } else if (i10 == 1) {
                getPreviewPlayer().removeSticker((StickerInfoPack) baseAttachmentInfoPack);
                if (!this.editing) {
                    refreshViceTimelines$default(this, 0, false, 3, null);
                    updateAddAttachmentButton();
                }
                unSelectCurrentAttachment(1);
            }
            getPreviewPlayer().refreshCurrentPosition();
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

    private final void updateViceTimeLineSelectedStatus() {
        int i10;
        Caption caption = this.activeCaption;
        if (caption != null) {
            t.g(caption);
            i10 = caption.indexInMixedAttachmentList;
        } else {
            StickerInfoPack stickerInfoPack = this.activeSticker;
            if (stickerInfoPack != null) {
                t.g(stickerInfoPack);
                i10 = stickerInfoPack.indexInMixedAttachmentList;
            } else {
                i10 = -1;
            }
        }
        int viewIndexOfTrackIndex = getViewIndexOfTrackIndex(i10);
        int childCount = getBinding().viceTimeLinePanel.getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getBinding().viceTimeLinePanel.getChildAt(i11);
            ViceTimeLineWrapperView viceTimeLineWrapperView = (ViceTimeLineWrapperView) childAt.findViewById(R.id.vice_time_line_wrapper);
            if (childAt instanceof MediaTimeLineComponent) {
                if (i11 == viewIndexOfTrackIndex) {
                    viceTimeLineWrapperView.toggleEditMode(true);
                } else {
                    viceTimeLineWrapperView.toggleEditMode(false);
                }
            }
        }
    }

    @Override // com.narvii.video.attachment.caption.EditCaptionTextHost
    public void editCurrentCaptionText() {
        Caption caption = this.activeCaption;
        if (caption != null) {
            editCaptionText(caption);
        }
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment
    public void initFrameRetrieverManager() {
        String stringParam = getStringParam("frameRetrieverOutputFolder");
        this.outputFolderPath = stringParam;
        if (stringParam != null) {
            FrameRetrieverManager frameRetrieverManager = getFrameRetrieverManager();
            String str = this.outputFolderPath;
            t.g(str);
            FrameRetrieverManager.initRetriever$default(frameRetrieverManager, str, true, false, 4, null);
        }
    }

    @Override // com.narvii.video.attachment.sticker.IEditorStickerPickerCallback
    public void onBlockedInstallingSticker() {
        ProgressDialog progressDialog = this.progress;
        if (progressDialog == null) {
            t.B("progress");
            progressDialog = null;
        }
        progressDialog.show();
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        t.j(inflater, "inflater");
        return getBinding().getRoot();
    }

    public final void onCurrentCaptionChanged(boolean z6) {
        onCurrentCaptionChanged(z6, false, true);
    }

    @Override // com.narvii.video.attachment.caption.CaptionEditListener
    public void onFontChanged(@Nullable String str, @Nullable String str2) {
        Caption caption = this.activeCaption;
        if (caption != null) {
            caption.fontPath = str;
            caption.fontObjectId = str2;
            onCurrentCaptionChanged();
        }
    }

    @Override // com.narvii.video.attachment.sticker.IEditorStickerPickerCallback
    public void onStickerInstallFailed() {
        ProgressDialog progressDialog = this.progress;
        ProgressDialog progressDialog2 = null;
        if (progressDialog == null) {
            t.B("progress");
            progressDialog = null;
        }
        if (progressDialog.isShowing()) {
            ProgressDialog progressDialog3 = this.progress;
            if (progressDialog3 == null) {
                t.B("progress");
            } else {
                progressDialog2 = progressDialog3;
            }
            progressDialog2.dismiss();
        }
    }

    @Override // com.narvii.video.attachment.caption.CaptionEditListener
    public void onStyleChanged(@Nullable String str, @Nullable String str2) {
        Caption caption = this.activeCaption;
        if (caption != null) {
            caption.styleId = str;
            caption.styleObjectId = str2;
            onCurrentCaptionChanged(false, true, true);
            getBinding().drawRect.setDrawRect(null, 0);
            getPreviewPlayer().unMute();
            IPreviewPlayer previewPlayer = getPreviewPlayer();
            int i10 = caption.startOffsetToMainTrackInMs;
            previewPlayer.playVideo(i10, caption.visibleDurationInMs + i10);
        }
    }

    @Override // com.narvii.video.BaseViceTimeLineFragment
    public void onViceTrackOffsetChanged(int i10) {
        if (i10 < 0 || i10 >= getPreviewPlayer().getCaptionList().size() + getPreviewPlayer().getStickerList().size()) {
            return;
        }
        BaseAttachmentInfoPack baseAttachmentInfoPack = (BaseAttachmentInfoPack) getAttachmentList$default(this, false, 1, null).get(i10);
        if (baseAttachmentInfoPack instanceof Caption) {
            getPreviewPlayer().resetCaption((Caption) baseAttachmentInfoPack, false);
        } else if (baseAttachmentInfoPack instanceof StickerInfoPack) {
            getPreviewPlayer().resetSticker((StickerInfoPack) baseAttachmentInfoPack);
        }
        getPreviewPlayer().refreshCurrentPosition();
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected void onVideoSeekingPositionChanged(long j6) {
        Caption caption = this.activeCaption;
        if (caption != null) {
            updateAttachmentCoordinate(caption, (int) j6);
        }
        StickerInfoPack stickerInfoPack = this.activeSticker;
        if (stickerInfoPack != null) {
            updateAttachmentCoordinate(stickerInfoPack, (int) j6);
        }
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

    @Override // com.narvii.video.attachment.caption.CaptionTabChangeListener
    public void revertCaption(@NotNull Caption caption) {
        t.j(caption, "caption");
        if (this.activeCaption != null) {
            this.activeCaption = caption;
            onCurrentCaptionChanged();
        }
    }

    public final void selectAttachmentByHandClick(@NotNull PointF curPoint) {
        AttachmentDrawRect attachmentDrawRectByTimelinePosition;
        BaseAttachmentInfoPack baseAttachmentInfoPack;
        t.j(curPoint, "curPoint");
        if (this.editing) {
            return;
        }
        if ((!(this.activeSticker == null && this.activeCaption == null) && getBinding().drawRect.curPointInDrawOrEditRect(curPoint)) || (attachmentDrawRectByTimelinePosition = getPreviewPlayer().getAttachmentDrawRectByTimelinePosition(getPreviewPlayer().getCurrentVideoPositionInTimeline(), curPoint)) == null) {
            return;
        }
        int i10 = attachmentDrawRectByTimelinePosition.mode;
        if (i10 == 0) {
            baseAttachmentInfoPack = this.activeCaption;
        } else {
            baseAttachmentInfoPack = i10 == 1 ? this.activeSticker : null;
        }
        if (baseAttachmentInfoPack == null || baseAttachmentInfoPack.indexInMixedAttachmentList != attachmentDrawRectByTimelinePosition.attachment.indexInMixedAttachmentList) {
            this.selectedThisEventSequence = true;
            changeActiveAttachment(i10, attachmentDrawRectByTimelinePosition.attachment);
            setAutoPlaying(false);
            if (getInPlay()) {
                BaseMediaEditorFragment.changeVideoPlaybackStatus$default(this, true, false, 2, null);
                getPreviewPlayer().refreshCurrentPosition();
            }
            getBinding().drawRect.setShowEdit(true);
            getBinding().drawRect.setDrawRect(attachmentDrawRectByTimelinePosition.pointList, attachmentDrawRectByTimelinePosition.mode);
        }
    }

    @Override // com.narvii.video.attachment.sticker.IEditorStickerPickerCallback
    public void setPickedPreviewSticker(@NotNull StickerInfoPack stickerInfoPack) {
        boolean zContains;
        t.j(stickerInfoPack, "stickerInfoPack");
        ProgressDialog progressDialog = this.progress;
        if (progressDialog == null) {
            t.B("progress");
            progressDialog = null;
        }
        if (progressDialog.isShowing()) {
            ProgressDialog progressDialog2 = this.progress;
            if (progressDialog2 == null) {
                t.B("progress");
                progressDialog2 = null;
            }
            progressDialog2.dismiss();
        }
        StickerInfoPack stickerInfoPackCopy = stickerInfoPack.copy();
        t.i(stickerInfoPackCopy, "copy(...)");
        StickerInfoPack stickerInfoPack2 = this.activeSticker;
        if (stickerInfoPack2 == null) {
            zContains = false;
        } else {
            if (t.e(stickerInfoPackCopy, stickerInfoPack2)) {
                return;
            }
            zContains = getPreviewPlayer().getStickerList().contains(stickerInfoPack2);
            stickerInfoPackCopy.mergeEditings(stickerInfoPack2);
        }
        int mainTrackPlaybackTime = getMainTrackPlaybackTime();
        MediaTimeLineComponent mainTimeLineComponent = getMainTimeLineComponent();
        u<Boolean, Integer> uVarIsTailFrameCellPlaying = mainTimeLineComponent != null ? mainTimeLineComponent.isTailFrameCellPlaying() : null;
        if (uVarIsTailFrameCellPlaying != null && uVarIsTailFrameCellPlaying.c().booleanValue()) {
            mainTrackPlaybackTime -= 1000;
        }
        int i10 = stickerInfoPackCopy.startOffsetToMainTrackInMs;
        if (i10 <= 0 || i10 >= mainTrackPlaybackTime) {
            stickerInfoPackCopy.startOffsetToMainTrackInMs = mainTrackPlaybackTime;
        }
        if (stickerInfoPackCopy.visibleDurationInMs <= 0) {
            Object service = getService(IncubatorApplication.PREFS_SERVICE_KEY);
            t.i(service, "getService(...)");
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
        getBinding().drawRect.setShowEdit(false);
        updateAttachmentCoordinate(stickerInfoPackCopy);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void changeActiveAttachment$lambda$8(AttachmentEditorFragment this$0) {
        t.j(this$0, "this$0");
        this$0.onActiveAttachmentIndexChanged(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void changeActiveAttachment$lambda$9(AttachmentEditorFragment this$0) {
        t.j(this$0, "this$0");
        this$0.onActiveAttachmentIndexChanged(1);
    }

    private final List<BaseAttachmentInfoPack> getAttachmentList(boolean z6) {
        return d0.D0(getPreviewPlayer().getStickerList(), getPreviewPlayer().getCaptionList());
    }

    private final void onActiveAttachmentIndexChanged(final int i10) {
        final BaseAttachmentInfoPack baseAttachmentInfoPack;
        final int i11;
        FragmentAttachmentEditorBinding binding = getBinding();
        if (i10 == 0) {
            baseAttachmentInfoPack = this.activeCaption;
        } else {
            baseAttachmentInfoPack = this.activeSticker;
        }
        if (baseAttachmentInfoPack != null) {
            i11 = baseAttachmentInfoPack.indexInMixedAttachmentList;
        } else {
            i11 = -1;
        }
        int viewIndexOfTrackIndex = getViewIndexOfTrackIndex(i11);
        if (NVApplication.DEBUG) {
            binding.debugText.setVisibility(0);
            binding.debugText.setText(String.valueOf(i11));
        }
        int childCount = binding.viceTimeLinePanel.getChildCount();
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = binding.viceTimeLinePanel.getChildAt(i12);
            if (childAt instanceof MediaTimeLineComponent) {
                ViceTimeLineWrapperView viceTimeLineWrapperView = (ViceTimeLineWrapperView) childAt.findViewById(R.id.vice_time_line_wrapper);
                if (i12 == viewIndexOfTrackIndex) {
                    int scrollY = getBinding().viceTimelineScrollView.getScrollY();
                    int height = getBinding().viceTimelineScrollView.getHeight() + scrollY;
                    MediaTimeLineComponent mediaTimeLineComponent = (MediaTimeLineComponent) childAt;
                    if (mediaTimeLineComponent.getTop() < scrollY) {
                        getBinding().viceTimelineScrollView.smoothScrollTo(0, mediaTimeLineComponent.getTop());
                    } else if (mediaTimeLineComponent.getBottom() > height) {
                        getBinding().viceTimelineScrollView.smoothScrollTo(0, mediaTimeLineComponent.getBottom() - getBinding().viceTimelineScrollView.getHeight());
                    }
                    viceTimeLineWrapperView.toggleEditMode(true);
                    viceTimeLineWrapperView.setViceTimeLineEditCallback(new ViceTimeLineWrapperView.IViceTimeLineEditCallback() { // from class: com.narvii.video.attachment.AttachmentEditorFragment$onActiveAttachmentIndexChanged$1$1
                        @Override // com.narvii.video.widget.ViceTimeLineWrapperView.IViceTimeLineEditCallback
                        public void onViceTimeLineEdit(int i13, int i14) {
                            if (i13 == -1 || i14 == -1) {
                                return;
                            }
                            BaseAttachmentInfoPack baseAttachmentInfoPack2 = baseAttachmentInfoPack;
                            if ((baseAttachmentInfoPack2 != null ? baseAttachmentInfoPack2.indexInMixedAttachmentList : -1) != i11) {
                                return;
                            }
                            BaseAttachmentInfoPack activeCaption = i10 == 0 ? this.getActiveCaption() : this.getActiveSticker();
                            if (activeCaption != null) {
                                AttachmentEditorFragment attachmentEditorFragment = this;
                                int i15 = i10;
                                MediaTimeLineComponent mainTimeLineComponent = attachmentEditorFragment.getMainTimeLineComponent();
                                activeCaption.startOffsetToMainTrackInMs = mainTimeLineComponent != null ? MediaTimeLineComponent.getSectionDurationInMs$default(mainTimeLineComponent, i13, 0, false, 2, null) : 0;
                                activeCaption.visibleDurationInMs = i14;
                                if (i15 == 0) {
                                    attachmentEditorFragment.onCurrentCaptionChanged(false, false, true);
                                    attachmentEditorFragment.refreshViceTimeline(activeCaption, true);
                                } else {
                                    if (i15 != 1) {
                                        return;
                                    }
                                    IPreviewPlayer previewPlayer = attachmentEditorFragment.getPreviewPlayer();
                                    StickerInfoPack activeSticker = attachmentEditorFragment.getActiveSticker();
                                    t.g(activeSticker);
                                    previewPlayer.resetSticker(activeSticker);
                                    attachmentEditorFragment.onAttachmentChanged(activeCaption);
                                    attachmentEditorFragment.refreshViceTimeline(activeCaption, true);
                                }
                            }
                        }
                    });
                } else {
                    viceTimeLineWrapperView.toggleEditMode(false);
                    viceTimeLineWrapperView.setViceTimeLineEditCallback(null);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onAttachmentChanged(BaseAttachmentInfoPack baseAttachmentInfoPack) {
        getPreviewPlayer().refreshCurrentPosition();
        updateAttachmentCoordinate(baseAttachmentInfoPack);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreate$lambda$0(AttachmentEditorFragment this$0, DialogInterface dialogInterface) {
        ActivityResultCaller activityResultCallerM0;
        t.j(this$0, "this$0");
        FragmentManager fragmentManager = this$0.getFragmentManager();
        if (fragmentManager != null) {
            activityResultCallerM0 = fragmentManager.m0("stickerTab");
        } else {
            activityResultCallerM0 = null;
        }
        if (activityResultCallerM0 instanceof IEditorStickerPicker) {
            ((IEditorStickerPicker) activityResultCallerM0).onLocalAnimatedStickerConvertTerminated();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$11(AttachmentEditorFragment this$0, View view) {
        t.j(this$0, "this$0");
        BaseMediaEditorFragment.changeVideoPlaybackStatus$default(this$0, true, false, 2, null);
        this$0.addCaption();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$12(AttachmentEditorFragment this$0, View view) {
        t.j(this$0, "this$0");
        BaseMediaEditorFragment.changeVideoPlaybackStatus$default(this$0, true, false, 2, null);
        this$0.setAutoPlaying(false);
        this$0.addSticker();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$13(AttachmentEditorFragment this$0, View view) {
        int mediaLengthInMs;
        t.j(this$0, "this$0");
        Intent intent = new Intent();
        MediaTimeLineComponent mainTimeLineComponent = this$0.getMainTimeLineComponent();
        if (mainTimeLineComponent != null) {
            mediaLengthInMs = mainTimeLineComponent.getMediaLengthInMs();
        } else {
            mediaLengthInMs = 0;
        }
        for (BaseAttachmentInfoPack baseAttachmentInfoPack : getAttachmentList$default(this$0, false, 1, null)) {
            int i10 = baseAttachmentInfoPack.visibleDurationInMs;
            int i11 = baseAttachmentInfoPack.startOffsetToMainTrackInMs;
            if (i10 + i11 > mediaLengthInMs) {
                baseAttachmentInfoPack.visibleDurationInMs = i10 - ((i11 + i10) - mediaLengthInMs);
            }
        }
        intent.putExtra("captionList", JacksonUtils.writeAsString(this$0.getPreviewPlayer().getCaptionList()));
        intent.putExtra("stickerList", JacksonUtils.writeAsString(this$0.getPreviewPlayer().getStickerList()));
        this$0.setResult(-1, intent);
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$14(AttachmentEditorFragment this$0, int i10) {
        t.j(this$0, "this$0");
        if (i10 == 0 && !this$0.selectedThisEventSequence && SystemClock.elapsedRealtime() - this$0.lastClickTime > 500) {
            this$0.lastClickTime = SystemClock.elapsedRealtime();
            this$0.editCurrentCaptionText();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$15(AttachmentEditorFragment this$0, View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        t.j(this$0, "this$0");
        Caption caption = this$0.activeCaption;
        if (caption != null) {
            this$0.updateAttachmentCoordinate(caption);
            return;
        }
        StickerInfoPack stickerInfoPack = this$0.activeSticker;
        if (stickerInfoPack != null) {
            this$0.updateAttachmentCoordinate(stickerInfoPack);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void refreshViceTimeline(BaseAttachmentInfoPack baseAttachmentInfoPack, boolean z6) {
        updateViceTimeLine(baseAttachmentInfoPack, baseAttachmentInfoPack.indexInMixedAttachmentList, true, getMainTrackPlaybackTime() - baseAttachmentInfoPack.startOffsetToMainTrackInMs, z6);
    }

    private final void updateAddAttachmentButton() {
        boolean z6;
        float f;
        FragmentAttachmentEditorBinding binding = getBinding();
        if (getPreviewPlayer().getCaptionList().size() + getPreviewPlayer().getStickerList().size() < this.ATTACHMENT_MAX_COUNT) {
            z6 = true;
        } else {
            z6 = false;
        }
        ImageView imageView = binding.optionAddCaption;
        float f6 = 0.5f;
        if (z6) {
            f = 1.0f;
        } else {
            f = 0.5f;
        }
        imageView.setAlpha(f);
        binding.optionAddCaption.setClickable(z6);
        ImageView imageView2 = binding.optionAddSticker;
        if (z6) {
            f6 = 1.0f;
        }
        imageView2.setAlpha(f6);
        binding.optionAddSticker.setClickable(z6);
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        if (Utils.isAndroidVersion8()) {
            return R.style.AminoTheme_Overlay;
        }
        return R.style.AminoTheme_Translucent_NoActionBar;
    }

    @Override // com.narvii.util.ShareDataSourceHost
    @Nullable
    public DataSource<?> getSharedDataSource(@NotNull String type) {
        t.j(type, "type");
        return this.hashMap.get(type);
    }

    @Override // com.narvii.video.BaseViceTimeLineFragment
    @NotNull
    public List<BaseClipInfoPack> getTargetClipListForViceTracks() {
        int iIntValue = getTotalVisibleVideoDurationInMs().c().intValue();
        for (BaseAttachmentInfoPack baseAttachmentInfoPack : d0.D0(getPreviewPlayer().getCaptionList(), getPreviewPlayer().getStickerList())) {
            baseAttachmentInfoPack.visibleDurationInMs = Math.min(baseAttachmentInfoPack.visibleDurationInMs, iIntValue);
        }
        return getAttachmentList$default(this, false, 1, null);
    }

    @Override // com.narvii.video.BaseViceTimeLineFragment, com.narvii.video.BaseMediaEditorFragment
    public void initComponent() {
        super.initComponent();
        setVideoDurationText(getBinding().videoDuration);
        setVideoPlaybackTimeText(getBinding().videoPlaybackTime);
        setVideoPlaybackTimeDivider(getBinding().divider);
        setPreviewVideoView(getBinding().videoViewPlayer);
        setPlayerButton(getBinding().playerButton);
        setMainTimeLineComponent(getBinding().videoTimeLineComponent);
        LinearLayout viceTimeLinePanel = getBinding().viceTimeLinePanel;
        t.i(viceTimeLinePanel, "viceTimeLinePanel");
        setViceTimeLinePanel(viceTimeLinePanel);
    }

    @Override // com.narvii.video.BaseViceTimeLineFragment, com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment
    protected void onAVClipsPrepared() {
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

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        this.savedInstanceState = bundle;
        this.entranceType = getIntParam("attachmentEntranceType", 1);
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, @Nullable Intent intent) {
        u<Boolean, Integer> uVarIsTailFrameCellPlaying;
        super.onActivityResult(i10, i11, intent);
        if (i10 == this.REQUEST_EDIT_TEXT && i11 == -1 && intent != null) {
            boolean booleanExtra = intent.getBooleanExtra("isNew", false);
            int intExtra = intent.getIntExtra("color", -1);
            String stringExtra = intent.getStringExtra("text");
            int mainTrackPlaybackTime = getMainTrackPlaybackTime();
            MediaTimeLineComponent mainTimeLineComponent = getMainTimeLineComponent();
            Fragment fragmentM0 = null;
            if (mainTimeLineComponent != null) {
                uVarIsTailFrameCellPlaying = mainTimeLineComponent.isTailFrameCellPlaying();
            } else {
                uVarIsTailFrameCellPlaying = null;
            }
            if (booleanExtra) {
                Caption caption = new Caption();
                caption.text = stringExtra;
                if (uVarIsTailFrameCellPlaying != null && uVarIsTailFrameCellPlaying.c().booleanValue()) {
                    mainTrackPlaybackTime -= 1000;
                }
                caption.startOffsetToMainTrackInMs = mainTrackPlaybackTime;
                caption.visibleDurationInMs = 5000;
                caption.textColor = ColorUtils.o(intExtra, Color.alpha(caption.textColor));
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
                    caption2.textColor = ColorUtils.o(intExtra, Color.alpha(caption2.textColor));
                    onCurrentCaptionChanged(true);
                    FragmentManager fragmentManager = getFragmentManager();
                    if (fragmentManager != null) {
                        fragmentM0 = fragmentManager.m0("captionTab");
                    }
                    if (fragmentM0 instanceof CaptionTabFragment) {
                        ((CaptionTabFragment) fragmentM0).setCaptionColor(caption2.textColor);
                    }
                }
            }
            if (!this.editing && this.activeCaption != null) {
                editCurrentCaption();
                return;
            }
            return;
        }
        getPreviewPlayer().refreshCurrentPosition();
    }

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(@Nullable NVActivity nVActivity) {
        Fragment fragmentM0;
        FragmentManager fragmentManager = getFragmentManager();
        ActivityResultCaller activityResultCallerM0 = null;
        if (fragmentManager != null) {
            fragmentM0 = fragmentManager.m0("captionTab");
        } else {
            fragmentM0 = null;
        }
        if (fragmentM0 instanceof CaptionTabFragment) {
            ((CaptionTabFragment) fragmentM0).dismiss(true);
            return true;
        }
        FragmentManager fragmentManager2 = getFragmentManager();
        if (fragmentManager2 != null) {
            activityResultCallerM0 = fragmentManager2.m0("stickerTab");
        }
        if (activityResultCallerM0 instanceof FragmentOnBackListener) {
            return ((FragmentOnBackListener) activityResultCallerM0).onBackPressed(nVActivity);
        }
        return super.onBackPressed(nVActivity);
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        Fragment fragmentM0;
        super.onCreate(bundle);
        FragmentManager fragmentManager = getFragmentManager();
        if (fragmentManager != null) {
            fragmentM0 = fragmentManager.m0("captionTab");
        } else {
            fragmentM0 = null;
        }
        if (fragmentM0 instanceof CaptionTabFragment) {
            setCaptionTabListener((CaptionTabFragment) fragmentM0);
        }
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        this.progress = progressDialog;
        progressDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.narvii.video.attachment.h
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                AttachmentEditorFragment.onCreate$lambda$0(this.f2862a, dialogInterface);
            }
        });
    }

    public final void onCurrentCaptionChanged(boolean z6, boolean z10, boolean z11) {
        Caption caption = this.activeCaption;
        if (caption != null) {
            if (z11) {
                getPreviewPlayer().resetCaption(caption, z10);
            }
            onAttachmentChanged(caption);
            if (z6) {
                refreshViceTimelines$default(this, 0, false, 3, null);
            }
        }
    }

    @Override // com.narvii.app.FragmentDismissListener
    public void onFragmentDismiss(@Nullable Fragment fragment) {
        resetViewsWhenEditing();
        this.editing = false;
        getBinding().drawRect.setShowEdit(true);
    }

    @Override // com.narvii.video.interfaces.IPlayingEventListener
    public void onPlayingEOF() {
        resetViewsWhenEditing();
    }

    @Override // com.narvii.video.interfaces.IPlayingEventListener
    public void onPlayingStopped() {
        resetViewsWhenEditing();
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment
    protected void onVideoPlaybackStatusChanged(boolean z6) {
        int i10;
        super.onVideoPlaybackStatusChanged(z6);
        if (z6) {
            if (this.activeCaption != null) {
                i10 = 0;
            } else if (this.activeSticker != null) {
                i10 = 1;
            } else {
                i10 = -1;
            }
            unSelectCurrentAttachment(i10);
        }
    }

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        t.j(view, "view");
        super.onViewCreated(view, bundle);
        getBinding().optionAddCaption.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.video.attachment.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                AttachmentEditorFragment.onViewCreated$lambda$11(this.f2857a, view2);
            }
        });
        getBinding().optionAddSticker.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.video.attachment.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                AttachmentEditorFragment.onViewCreated$lambda$12(this.f2858a, view2);
            }
        });
        getBinding().optionDone.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.video.attachment.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                AttachmentEditorFragment.onViewCreated$lambda$13(this.f2859a, view2);
            }
        });
        getBinding().drawRect.setDrawRectClickListener(new DrawRectView.onDrawRectClickListener() { // from class: com.narvii.video.attachment.f
            @Override // com.narvii.video.attachment.DrawRectView.onDrawRectClickListener
            public final void onDrawRectClick(int i10) {
                AttachmentEditorFragment.onViewCreated$lambda$14(this.f2860a, i10);
            }
        });
        getBinding().drawRect.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.narvii.video.attachment.g
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view2, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
                AttachmentEditorFragment.onViewCreated$lambda$15(this.f2861a, view2, i10, i11, i12, i13, i14, i15, i16, i17);
            }
        });
        getBinding().drawRect.setOnDrawRectTouchListener(new DrawRectView.OnDrawRectTouchListener() { // from class: com.narvii.video.attachment.AttachmentEditorFragment.onViewCreated.6
            @Override // com.narvii.video.attachment.DrawRectView.OnDrawRectTouchListener
            public void onHorizFlipClick(int i10) {
            }

            @Override // com.narvii.video.attachment.DrawRectView.OnDrawRectTouchListener
            public void onBeyondDrawRectClick(int i10) {
                AttachmentEditorFragment.this.resetViewsWhenEditing();
            }

            @Override // com.narvii.video.attachment.DrawRectView.OnDrawRectTouchListener
            public void onDel(int i10) {
                AttachmentEditorFragment.this.removeCurrentAttachment(i10);
            }

            @Override // com.narvii.video.attachment.DrawRectView.OnDrawRectTouchListener
            public void onDrag(@Nullable PointF pointF, @Nullable PointF pointF2, int i10) {
                StickerInfoPack activeSticker;
                PointF pointFMapViewToCanonical = AttachmentEditorFragment.this.getPreviewPlayer().mapViewToCanonical(pointF);
                PointF pointFMapViewToCanonical2 = AttachmentEditorFragment.this.getPreviewPlayer().mapViewToCanonical(pointF2);
                if (pointFMapViewToCanonical == null || pointFMapViewToCanonical2 == null) {
                    return;
                }
                PointF pointF3 = new PointF(pointFMapViewToCanonical2.x - pointFMapViewToCanonical.x, pointFMapViewToCanonical2.y - pointFMapViewToCanonical.y);
                if (i10 != 0) {
                    if (i10 == 1 && (activeSticker = AttachmentEditorFragment.this.getActiveSticker()) != null) {
                        AttachmentEditorFragment attachmentEditorFragment = AttachmentEditorFragment.this;
                        attachmentEditorFragment.getPreviewPlayer().translateSticker(activeSticker, pointF3);
                        attachmentEditorFragment.onAttachmentChanged(activeSticker);
                        return;
                    }
                    return;
                }
                Caption activeCaption = AttachmentEditorFragment.this.getActiveCaption();
                if (activeCaption != null) {
                    AttachmentEditorFragment attachmentEditorFragment2 = AttachmentEditorFragment.this;
                    attachmentEditorFragment2.getPreviewPlayer().translateCaption(activeCaption, pointF3);
                    attachmentEditorFragment2.notifyCaptionChanged();
                }
            }

            @Override // com.narvii.video.attachment.DrawRectView.OnDrawRectTouchListener
            public void onEdit(int i10) {
                if (i10 == 0) {
                    AttachmentEditorFragment.this.editCurrentCaption();
                } else {
                    if (i10 != 1) {
                        return;
                    }
                    AttachmentEditorFragment attachmentEditorFragment = AttachmentEditorFragment.this;
                    StickerInfoPack activeSticker = attachmentEditorFragment.getActiveSticker();
                    attachmentEditorFragment.orgActiveStickerBeforeEditing = activeSticker != null ? activeSticker.copy() : null;
                    AttachmentEditorFragment.openStickerPickerTab$default(AttachmentEditorFragment.this, false, 1, null);
                }
            }

            @Override // com.narvii.video.attachment.DrawRectView.OnDrawRectTouchListener
            public void onScaleAndRotate(float f, @Nullable PointF pointF, float f6, int i10) {
                StickerInfoPack activeSticker;
                PointF pointFMapViewToCanonical = AttachmentEditorFragment.this.getPreviewPlayer().mapViewToCanonical(pointF);
                if (i10 != 0) {
                    if (i10 == 1 && (activeSticker = AttachmentEditorFragment.this.getActiveSticker()) != null) {
                        AttachmentEditorFragment attachmentEditorFragment = AttachmentEditorFragment.this;
                        attachmentEditorFragment.getPreviewPlayer().scaleSticker(activeSticker, f, pointFMapViewToCanonical);
                        attachmentEditorFragment.getPreviewPlayer().rotateSticker(activeSticker, f6);
                        attachmentEditorFragment.onAttachmentChanged(activeSticker);
                        return;
                    }
                    return;
                }
                Caption activeCaption = AttachmentEditorFragment.this.getActiveCaption();
                if (activeCaption != null) {
                    AttachmentEditorFragment attachmentEditorFragment2 = AttachmentEditorFragment.this;
                    attachmentEditorFragment2.getPreviewPlayer().scaleCaption(activeCaption, f, pointFMapViewToCanonical);
                    attachmentEditorFragment2.getPreviewPlayer().rotateCaption(activeCaption, f6);
                    attachmentEditorFragment2.notifyCaptionChanged();
                }
            }

            @Override // com.narvii.video.attachment.DrawRectView.OnDrawRectTouchListener
            public void onTouchDown(@NotNull PointF curPoint, int i10) {
                t.j(curPoint, "curPoint");
                AttachmentEditorFragment.this.setSelectedThisEventSequence(false);
                AttachmentEditorFragment.this.selectAttachmentByHandClick(curPoint);
            }
        });
        getPreviewPlayer().addPlayingEventListener(this);
    }

    @Override // com.narvii.util.ShareDataSourceHost
    public void setSharedDataSource(@NotNull String type, @Nullable DataSource<?> dataSource) {
        t.j(type, "type");
        this.hashMap.put(type, dataSource);
    }

    private final void updateAttachmentCoordinate(BaseClipInfoPack baseClipInfoPack) {
        updateAttachmentCoordinate(baseClipInfoPack, getPreviewPlayer().getCurrentVideoPositionInTimeline());
    }
}
