package com.narvii.monetization.bubble;

import android.content.DialogInterface;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.content.ContextCompat;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVActivity;
import com.narvii.app.NVFragment;
import com.narvii.comment.list.CommentListFragment;
import com.narvii.config.ConfigService;
import com.narvii.model.BubbleInfo;
import com.narvii.model.BubbleSlot;
import com.narvii.model.ChatBubble;
import com.narvii.model.SlotPoint;
import com.narvii.model.Sticker;
import com.narvii.monetization.bubble.BubbleEditView;
import com.narvii.monetization.bubble.BubbleTemplatePickerFragment;
import com.narvii.monetization.bubble.model.BubbleTemplate;
import com.narvii.monetization.bubble.service.BubbleDownloadListener;
import com.narvii.monetization.bubble.service.BubbleUploadListener;
import com.narvii.monetization.sticker.model.StickerCollection;
import com.narvii.monetization.sticker.picker.StickerPickerTabFragment;
import com.narvii.monetization.sticker.picker.StickerSelectListener;
import com.narvii.notification.Notification;
import com.narvii.photos.PhotoManager;
import com.narvii.photos.PhotoUploadListener;
import com.narvii.sticker.StickerCacheService;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.dialog.ProgressDialog;
import java.io.File;
import java.io.IOException;

/* loaded from: classes3.dex */
public class BubbleEditFragment extends NVFragment implements View.OnClickListener, BubbleTemplatePickerFragment.TemplatePickedListener, BubbleEditView.BubbleSlotEditingListener, BubbleUploadListener, StickerSelectListener, BubbleDownloadListener {
    public static final String KEY_BUBBLE_INFO = "key_bubble_info";
    public static final String KEY_CHAT_BUBBLE = "key_chat_bubble";
    private static final String TAG = "BubbleEdit";
    private static final String TAG_FRAGMENT_PICKER = "bubble_template_picker";
    private static final String TAG_FRAGMENT_STICKER = "bubble_template_sticker";
    private View btnBack;
    private View btnHideSticker;
    private View btnSaveBubble;
    private BubbleEditView bubbleEditorView;
    private BubbleInfo bubbleInfo;
    private BubbleService bubbleService;
    private BubbleTemplate bubbleTemplate;
    private ChatBubble curChatBubble;
    private SlotPoint curFocusedSlot = null;
    private View downloadProgress;
    private boolean editResourceDownloaed;
    private View rootContent;
    private View stickerContainer;
    private ProgressDialog uploadingDlg;

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131755020;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getActivity().getActionBar() != null) {
            getActivity().getActionBar().hide();
        }
        this.bubbleService = (BubbleService) getService("bubble");
        this.uploadingDlg = new ProgressDialog(getContext());
        this.uploadingDlg.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.monetization.bubble.BubbleEditFragment.1
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) throws IOException {
                if (BubbleEditFragment.this.bubbleInfo != null) {
                    BubbleEditFragment.this.bubbleService.cancelUpload(BubbleEditFragment.this.bubbleInfo.getBubbleUploadId());
                }
            }
        });
        if (bundle != null) {
            String string = bundle.getString(KEY_BUBBLE_INFO);
            this.bubbleInfo = (BubbleInfo) JacksonUtils.readAs(bundle.getString(KEY_CHAT_BUBBLE), BubbleInfo.class);
            this.curChatBubble = (ChatBubble) JacksonUtils.readAs(string, ChatBubble.class);
            this.editResourceDownloaed = bundle.getBoolean("downloaded");
        } else {
            this.bubbleInfo = new BubbleInfo();
            if (getStringParam(KEY_CHAT_BUBBLE) != null) {
                this.curChatBubble = (ChatBubble) JacksonUtils.readAs(getStringParam(KEY_CHAT_BUBBLE), ChatBubble.class);
            }
        }
        if (this.curChatBubble == null) {
            this.curChatBubble = new ChatBubble();
        }
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_bubble_edit, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws IOException {
        super.onViewCreated(view, bundle);
        this.btnBack = view.findViewById(R.id.close);
        this.btnBack.setOnClickListener(this);
        this.btnSaveBubble = view.findViewById(R.id.save_bubble);
        this.btnSaveBubble.setOnClickListener(this);
        this.bubbleEditorView = (BubbleEditView) view.findViewById(R.id.bubble_editor);
        this.bubbleEditorView.setListener(this);
        this.stickerContainer = view.findViewById(R.id.sticker_picker_container);
        this.btnHideSticker = view.findViewById(R.id.hide_sticker);
        this.btnHideSticker.setOnClickListener(this);
        this.downloadProgress = view.findViewById(android.R.id.progress);
        this.rootContent = view.findViewById(R.id.content);
        if (isEditMode()) {
            this.bubbleService.downloadEditChatBubble(this.curChatBubble, this);
            this.downloadProgress.setVisibility(0);
            this.rootContent.setVisibility(8);
        } else {
            this.rootContent.setVisibility(0);
            this.downloadProgress.setVisibility(8);
        }
        updateSaveButton();
        configAttachFragment();
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onStop() throws IOException {
        super.onStop();
        this.bubbleService.cancelEditDownload(this.curChatBubble);
        this.bubbleService.cancelUpload(this.bubbleInfo.getBubbleUploadId());
    }

    private boolean isEditMode() {
        ChatBubble chatBubble = this.curChatBubble;
        return (chatBubble == null || chatBubble.id() == null) ? false : true;
    }

    private void configAttachFragment() {
        FragmentManager fragmentManager = getFragmentManager();
        BubbleTemplatePickerFragment bubbleTemplatePickerFragment = (BubbleTemplatePickerFragment) fragmentManager.findFragmentByTag(TAG_FRAGMENT_PICKER);
        if (bubbleTemplatePickerFragment == null) {
            bubbleTemplatePickerFragment = new BubbleTemplatePickerFragment();
            Bundle bundle = new Bundle();
            bundle.putBoolean("autoChoose", !isEditMode());
            bubbleTemplatePickerFragment.setArguments(bundle);
            fragmentManager.beginTransaction().add(R.id.bubble_picker_container, bubbleTemplatePickerFragment, TAG_FRAGMENT_PICKER).commitAllowingStateLoss();
        }
        bubbleTemplatePickerFragment.setListener(this);
        StickerPickerTabFragment stickerPickerTabFragment = (StickerPickerTabFragment) fragmentManager.findFragmentByTag(TAG_FRAGMENT_STICKER);
        if (stickerPickerTabFragment == null) {
            stickerPickerTabFragment = new StickerPickerTabFragment();
            Bundle bundle2 = new Bundle();
            bundle2.putBoolean("tabBottom", true);
            bundle2.putBoolean("showSelected", true);
            bundle2.putString(CommentListFragment.COMMENT_KEY_SOURCE, "Bubble Edit");
            stickerPickerTabFragment.setArguments(bundle2);
            fragmentManager.beginTransaction().add(R.id.sticker_frame, stickerPickerTabFragment, TAG_FRAGMENT_STICKER).commitAllowingStateLoss();
        }
        stickerPickerTabFragment.setCurrentSticker(null);
        stickerPickerTabFragment.setStickerSelectListener(this);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString(KEY_BUBBLE_INFO, JacksonUtils.writeAsString(this.bubbleInfo));
        ChatBubble chatBubble = this.curChatBubble;
        if (chatBubble != null) {
            bundle.putString(KEY_CHAT_BUBBLE, JacksonUtils.writeAsString(chatBubble));
        }
        bundle.putBoolean("downloaded", this.editResourceDownloaed);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) throws Resources.NotFoundException {
        int id = view.getId();
        if (id == R.id.close) {
            closeEditView();
            return;
        }
        if (id == R.id.hide_sticker) {
            hideSticker();
            return;
        }
        if (id != R.id.save_bubble) {
            return;
        }
        if (isEditMode()) {
            ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
            actionSheetDialog.addItem(R.string.save, 0);
            actionSheetDialog.addItem(R.string.bubble_save_as, 0);
            actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.monetization.bubble.BubbleEditFragment.2
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    if (i == 0) {
                        BubbleEditFragment.this.saveBubble(true);
                    } else {
                        if (i != 1) {
                            return;
                        }
                        BubbleEditFragment.this.saveBubble(false);
                    }
                }
            });
            actionSheetDialog.show();
            return;
        }
        saveBubble(false);
    }

    private void hideSticker() throws Resources.NotFoundException {
        if (this.stickerContainer.getVisibility() != 0) {
            return;
        }
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(getContext(), R.anim.slide_out_bottom);
        animationLoadAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.narvii.monetization.bubble.BubbleEditFragment.3
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                BubbleEditFragment.this.stickerContainer.setVisibility(8);
                StickerPickerTabFragment stickerPickerTabFragment = (StickerPickerTabFragment) BubbleEditFragment.this.getFragmentManager().findFragmentByTag(BubbleEditFragment.TAG_FRAGMENT_STICKER);
                if (stickerPickerTabFragment != null) {
                    stickerPickerTabFragment.onLogLevelActiveChanged(false);
                }
                BubbleEditFragment.this.bubbleEditorView.loseFocus(BubbleEditFragment.this.bubbleInfo);
            }
        });
        this.stickerContainer.startAnimation(animationLoadAnimation);
    }

    private void showSticker() throws Resources.NotFoundException {
        if (this.stickerContainer.getVisibility() != 0) {
            this.stickerContainer.setVisibility(0);
            StickerPickerTabFragment stickerPickerTabFragment = (StickerPickerTabFragment) getFragmentManager().findFragmentByTag(TAG_FRAGMENT_STICKER);
            if (stickerPickerTabFragment != null) {
                stickerPickerTabFragment.onLogLevelActiveChanged(true);
            }
            this.stickerContainer.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.slide_in_bottom));
        }
    }

    private void closeEditView() {
        finish();
    }

    @Override // com.narvii.monetization.bubble.BubbleTemplatePickerFragment.TemplatePickedListener
    public void onTemplatePicked(BubbleTemplate bubbleTemplate) {
        if (!isAdded() || bubbleTemplate == null || Utils.isEqualsNotNull(this.bubbleInfo.templateId, bubbleTemplate.id())) {
            return;
        }
        this.bubbleTemplate = bubbleTemplate;
        String str = this.bubbleInfo.id;
        BubbleInfo bubbleInfo = bubbleTemplate.config;
        this.bubbleInfo = bubbleInfo == null ? new BubbleInfo() : bubbleInfo.m45clone();
        BubbleInfo bubbleInfo2 = this.bubbleInfo;
        bubbleInfo2.id = str;
        bubbleInfo2.templateId = bubbleTemplate.id;
        bubbleInfo2.backgroundPath = bubbleTemplate.getMaterialUrl();
        this.bubbleInfo.previewBackgroundUrl = bubbleTemplate.getBackgroundMedia() == null ? null : bubbleTemplate.getBackgroundMedia().getMediaUrl();
        this.bubbleEditorView.updateEditorView(this.bubbleInfo);
        this.curFocusedSlot = null;
        updateSaveButton();
    }

    @Override // com.narvii.monetization.bubble.BubbleEditView.BubbleSlotEditingListener
    public void onSlotSelected(SlotPoint slotPoint) throws Resources.NotFoundException {
        this.curFocusedSlot = slotPoint;
        showSticker();
        updateBubbleEditView(slotPoint);
    }

    @Override // com.narvii.monetization.bubble.BubbleEditView.BubbleSlotEditingListener
    public void onSlotDeleted(SlotPoint slotPoint) {
        updateSlots(slotPoint, null, null);
        updateBubbleEditView(slotPoint);
        updateSaveButton();
    }

    @Override // com.narvii.monetization.bubble.BubbleEditView.BubbleSlotEditingListener
    public void onCancelEdit() throws Resources.NotFoundException {
        this.curFocusedSlot = null;
        this.bubbleEditorView.loseFocus(this.bubbleInfo);
        updateBubbleEditView(null);
        hideSticker();
    }

    @Override // com.narvii.monetization.sticker.picker.StickerSelectListener
    public void onStickerSelected(Sticker sticker, StickerCollection stickerCollection) {
        if (!isAdded() || this.curFocusedSlot == null) {
            Log.e(TAG, "try to update slot when cur focus is null");
            return;
        }
        updateSlots(this.curFocusedSlot, sticker, ((StickerCacheService) getService("stickerCache")).getIconUri(sticker));
        this.bubbleEditorView.updateSlotViews(this.bubbleInfo);
        updateSaveButton();
    }

    private void updateBubbleEditView(SlotPoint slotPoint) {
        this.bubbleEditorView.updateSlotViews(this.bubbleInfo);
        setSelectedSticker(slotPoint);
    }

    private void updateSaveButton() {
        BubbleInfo bubbleInfo;
        boolean z = true;
        if (!isEditMode() ? (bubbleInfo = this.bubbleInfo) == null || bubbleInfo.backgroundPath == null || Utils.isEquals(this.curChatBubble.config, bubbleInfo) : !this.editResourceDownloaed || Utils.isEquals(this.curChatBubble.config, this.bubbleInfo)) {
            z = false;
        }
        this.btnSaveBubble.setEnabled(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveBubble(final boolean z) {
        if (isAdded()) {
            this.uploadingDlg.show();
            uploadBubblePreview(this.bubbleEditorView.getPreviewBitmap(this.bubbleInfo), new Callback() { // from class: com.narvii.monetization.bubble.BubbleEditFragment.4
                @Override // com.narvii.util.Callback
                public void call(Object obj) throws IOException {
                    if (obj == null) {
                        BubbleEditFragment.this.uploadingDlg.dismiss();
                        return;
                    }
                    BubbleInfo bubbleInfoM45clone = BubbleEditFragment.this.bubbleInfo.m45clone();
                    if (!z) {
                        bubbleInfoM45clone.id = null;
                    }
                    String str = (String) obj;
                    bubbleInfoM45clone.coverImage = str;
                    Log.d("bubble", "bubble preview uploaded " + str);
                    BubbleEditFragment.this.bubbleService.uploadBubble(((ConfigService) BubbleEditFragment.this.getService("config")).getCommunityId(), bubbleInfoM45clone, BubbleEditFragment.this);
                    boolean z2 = z;
                }
            });
        }
    }

    @Override // com.narvii.monetization.bubble.service.BubbleUploadListener
    public void onUploadSuccess(ChatBubble chatBubble) throws Resources.NotFoundException, IOException {
        this.uploadingDlg.dismiss();
        if (isAdded()) {
            BubbleService bubbleService = this.bubbleService;
            if (bubbleService != null) {
                bubbleService.requireBubble(chatBubble.id(), chatBubble.version(), chatBubble.resourceUrl);
            }
            if (chatBubble != null && chatBubble.config != null) {
                this.curChatBubble.config = this.bubbleInfo.m45clone();
                updateSaveButton();
            }
            ChatBubble chatBubble2 = this.curChatBubble;
            if (chatBubble2 != null && chatBubble != null && Utils.isEqualsNotNull(chatBubble2.id(), chatBubble.id())) {
                sendNotification(new Notification("update", chatBubble));
            } else {
                sendNotification(new Notification("new", chatBubble));
            }
            if (getContext() instanceof NVActivity) {
                ((NVActivity) getContext()).toastImageWithText(ContextCompat.getDrawable(getContext(), R.drawable.check), getContext().getString(R.string.saved), R.anim.toast_scale_in, 600L);
            } else {
                NVToast.makeText(getContext(), R.string.saved, 1).show();
            }
            Utils.postDelayed(new Runnable() { // from class: com.narvii.monetization.bubble.BubbleEditFragment.5
                @Override // java.lang.Runnable
                public void run() {
                    if (BubbleEditFragment.this.isAdded()) {
                        BubbleEditFragment.this.getActivity().finish();
                    }
                }
            }, 500L);
        }
    }

    @Override // com.narvii.monetization.bubble.service.BubbleUploadListener
    public void onUploadFail(String str) {
        this.uploadingDlg.dismiss();
        NVToast.makeText(getContext(), str, 1).show();
    }

    @Override // com.narvii.monetization.bubble.service.BubbleUploadListener
    public void onZipFail() {
        this.uploadingDlg.dismiss();
        NVToast.makeText(getContext(), getString(R.string.save_bubble_error), 1).show();
    }

    private void updateSlots(SlotPoint slotPoint, Sticker sticker, String str) {
        this.bubbleInfo.updateSlot(slotPoint, sticker, str);
    }

    private void setSelectedSticker(SlotPoint slotPoint) {
        StickerPickerTabFragment stickerPickerTabFragment = (StickerPickerTabFragment) getFragmentManager().findFragmentByTag(TAG_FRAGMENT_STICKER);
        if (stickerPickerTabFragment != null) {
            Sticker sticker = new Sticker();
            BubbleSlot slotByPosition = this.bubbleInfo.getSlotByPosition(slotPoint);
            if (slotByPosition != null) {
                sticker.stickerId = slotByPosition.stickerId;
            }
            stickerPickerTabFragment.setCurrentSticker(sticker);
        }
    }

    private void uploadBubblePreview(Bitmap bitmap, final Callback callback) {
        ((PhotoManager) getService("photo")).upload((String) null, bitmap, "chat-bubble-thumbnail", true, new PhotoUploadListener() { // from class: com.narvii.monetization.bubble.BubbleEditFragment.6
            @Override // com.narvii.photos.PhotoUploadListener
            public void onProgress(String str, int i, int i2) {
            }

            @Override // com.narvii.photos.PhotoUploadListener
            public void onFinish(String str, String str2) {
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(str2);
                }
            }

            @Override // com.narvii.photos.PhotoUploadListener
            public void onFail(String str, int i, String str2, Throwable th) {
                NVToast.makeText(BubbleEditFragment.this.getContext(), str2, 1).show();
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(null);
                }
            }
        });
    }

    @Override // com.narvii.monetization.bubble.service.BubbleDownloadListener
    public void onDownloadSuccess(ChatBubble chatBubble, File file) {
        try {
            this.bubbleInfo = (BubbleInfo) JacksonUtils.DEFAULT_MAPPER.readValue(new File(file, BubbleService.BUBBLE_CONFIG_FILE_NAME), BubbleInfo.class);
            File file2 = new File(file + File.separator + this.bubbleInfo.backgroundPath);
            this.bubbleInfo.id = chatBubble.id();
            this.bubbleInfo.backgroundPath = Uri.fromFile(file2).toString();
            if (this.bubbleInfo.slots != null) {
                for (BubbleSlot bubbleSlot : this.bubbleInfo.slots) {
                    bubbleSlot.path = Uri.fromFile(new File(file + File.separator + bubbleSlot.path)).toString();
                }
            }
            this.curChatBubble.config = this.bubbleInfo.m45clone();
            this.editResourceDownloaed = true;
            this.bubbleEditorView.updateEditorView(this.bubbleInfo);
        } catch (IOException e) {
            e.printStackTrace();
        }
        this.downloadProgress.setVisibility(8);
        this.rootContent.setVisibility(0);
        Log.d(TAG, "download bubble file success " + file.getAbsolutePath());
    }

    @Override // com.narvii.monetization.bubble.service.BubbleDownloadListener
    public void onDownloadProgressUpdate(int i, int i2) {
        Log.d(TAG, "cur " + i + " total " + i2);
    }

    @Override // com.narvii.monetization.bubble.service.BubbleDownloadListener
    public void onDownloadFail(String str) {
        NVToast.makeText(getContext(), str, 1).show();
        this.downloadProgress.setVisibility(8);
    }
}
