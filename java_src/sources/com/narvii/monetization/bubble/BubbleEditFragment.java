package com.narvii.monetization.bubble;

import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentManager;
import com.narvii.amino.master.R;
import com.narvii.app.NVActivity;
import com.narvii.app.NVFragment;
import com.narvii.config.ConfigService;
import com.narvii.model.BubbleInfo;
import com.narvii.model.BubbleSlot;
import com.narvii.model.ChatBubble;
import com.narvii.model.SlotPoint;
import com.narvii.model.Sticker;
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
import com.narvii.util.statistics.StatisticsService;
import java.io.File;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
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
        return 2131951629;
    }

    @Override // com.narvii.monetization.bubble.BubbleEditView.BubbleSlotEditingListener
    public void onCancelEdit() {
        this.curFocusedSlot = null;
        this.bubbleEditorView.loseFocus(this.bubbleInfo);
        updateBubbleEditView(null);
        hideSticker();
    }

    @Override // com.narvii.monetization.bubble.BubbleEditView.BubbleSlotEditingListener
    public void onSlotDeleted(SlotPoint slotPoint) {
        updateSlots(slotPoint, null, null);
        updateBubbleEditView(slotPoint);
        updateSaveButton();
    }

    private void hideSticker() {
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
                StickerPickerTabFragment stickerPickerTabFragment = (StickerPickerTabFragment) BubbleEditFragment.this.getFragmentManager().m0(BubbleEditFragment.TAG_FRAGMENT_STICKER);
                if (stickerPickerTabFragment != null) {
                    stickerPickerTabFragment.onLogLevelActiveChanged(false);
                }
                BubbleEditFragment.this.bubbleEditorView.loseFocus(BubbleEditFragment.this.bubbleInfo);
            }
        });
        this.stickerContainer.startAnimation(animationLoadAnimation);
    }

    private boolean isEditMode() {
        ChatBubble chatBubble = this.curChatBubble;
        return (chatBubble == null || chatBubble.id() == null) ? false : true;
    }

    private void showSticker() {
        if (this.stickerContainer.getVisibility() != 0) {
            this.stickerContainer.setVisibility(0);
            StickerPickerTabFragment stickerPickerTabFragment = (StickerPickerTabFragment) getFragmentManager().m0(TAG_FRAGMENT_STICKER);
            if (stickerPickerTabFragment != null) {
                stickerPickerTabFragment.onLogLevelActiveChanged(true);
            }
            this.stickerContainer.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.slide_in_bottom));
        }
    }

    private void updateBubbleEditView(SlotPoint slotPoint) {
        this.bubbleEditorView.updateSlotViews(this.bubbleInfo);
        setSelectedSticker(slotPoint);
    }

    private void updateSlots(SlotPoint slotPoint, Sticker sticker, String str) {
        this.bubbleInfo.updateSlot(slotPoint, sticker, str);
    }

    private void uploadBubblePreview(Bitmap bitmap, final Callback callback) {
        ((PhotoManager) getService("photo")).upload((String) null, bitmap, "chat-bubble-thumbnail", true, new PhotoUploadListener() { // from class: com.narvii.monetization.bubble.BubbleEditFragment.6
            @Override // com.narvii.photos.PhotoUploadListener
            public void onProgress(String str, int i10, int i11) {
            }

            @Override // com.narvii.photos.PhotoUploadListener
            public void onFail(String str, int i10, String str2, Throwable th) {
                NVToast.makeText(BubbleEditFragment.this.getContext(), str2, 1).show();
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(null);
                }
            }

            @Override // com.narvii.photos.PhotoUploadListener
            public void onFinish(String str, String str2) {
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(str2);
                }
            }
        });
    }

    @Override // com.narvii.monetization.bubble.service.BubbleDownloadListener
    public void onDownloadProgressUpdate(int i10, int i11) {
        Log.d(TAG, "cur " + i10 + " total " + i11);
    }

    @Override // com.narvii.monetization.bubble.service.BubbleDownloadListener
    public void onDownloadSuccess(ChatBubble chatBubble, File file) {
        try {
            this.bubbleInfo = (BubbleInfo) JacksonUtils.DEFAULT_MAPPER.readValue(new File(file, BubbleService.BUBBLE_CONFIG_FILE_NAME), BubbleInfo.class);
            File file2 = new File(file + File.separator + this.bubbleInfo.backgroundPath);
            this.bubbleInfo.id = chatBubble.id();
            this.bubbleInfo.backgroundPath = Uri.fromFile(file2).toString();
            List<BubbleSlot> list = this.bubbleInfo.slots;
            if (list != null) {
                for (BubbleSlot bubbleSlot : list) {
                    bubbleSlot.path = Uri.fromFile(new File(file + File.separator + bubbleSlot.path)).toString();
                }
            }
            this.curChatBubble.config = this.bubbleInfo.m1621clone();
            this.editResourceDownloaed = true;
            this.bubbleEditorView.updateEditorView(this.bubbleInfo);
        } catch (IOException e) {
            e.printStackTrace();
        }
        this.downloadProgress.setVisibility(8);
        this.rootContent.setVisibility(0);
        Log.d(TAG, "download bubble file success " + file.getAbsolutePath());
    }

    @Override // com.narvii.monetization.bubble.BubbleEditView.BubbleSlotEditingListener
    public void onSlotSelected(SlotPoint slotPoint) {
        this.curFocusedSlot = slotPoint;
        showSticker();
        updateBubbleEditView(slotPoint);
    }

    @Override // com.narvii.monetization.bubble.service.BubbleUploadListener
    public void onUploadFail(String str) {
        this.uploadingDlg.dismiss();
        NVToast.makeText(getContext(), str, 1).show();
    }

    @Override // com.narvii.monetization.bubble.service.BubbleUploadListener
    public void onUploadSuccess(ChatBubble chatBubble) {
        this.uploadingDlg.dismiss();
        if (isAdded()) {
            BubbleService bubbleService = this.bubbleService;
            if (bubbleService != null) {
                bubbleService.requireBubble(chatBubble.id(), chatBubble.version(), chatBubble.resourceUrl);
            }
            if (chatBubble != null && chatBubble.config != null) {
                this.curChatBubble.config = this.bubbleInfo.m1621clone();
                updateSaveButton();
            }
            ChatBubble chatBubble2 = this.curChatBubble;
            if (chatBubble2 == null || chatBubble == null || !Utils.isEqualsNotNull(chatBubble2.id(), chatBubble.id())) {
                sendNotification(new Notification("new", chatBubble));
            } else {
                sendNotification(new Notification("update", chatBubble));
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
    public void onZipFail() {
        this.uploadingDlg.dismiss();
        NVToast.makeText(getContext(), getString(R.string.save_bubble_error), 1).show();
    }

    private void closeEditView() {
        finish();
    }

    private void configAttachFragment() {
        FragmentManager fragmentManager = getFragmentManager();
        BubbleTemplatePickerFragment bubbleTemplatePickerFragment = (BubbleTemplatePickerFragment) fragmentManager.m0(TAG_FRAGMENT_PICKER);
        if (bubbleTemplatePickerFragment == null) {
            bubbleTemplatePickerFragment = new BubbleTemplatePickerFragment();
            Bundle bundle = new Bundle();
            bundle.putBoolean("autoChoose", !isEditMode());
            bubbleTemplatePickerFragment.setArguments(bundle);
            fragmentManager.q().c(R.id.bubble_picker_container, bubbleTemplatePickerFragment, TAG_FRAGMENT_PICKER).k();
        }
        bubbleTemplatePickerFragment.setListener(this);
        StickerPickerTabFragment stickerPickerTabFragment = (StickerPickerTabFragment) fragmentManager.m0(TAG_FRAGMENT_STICKER);
        if (stickerPickerTabFragment == null) {
            stickerPickerTabFragment = new StickerPickerTabFragment();
            Bundle bundle2 = new Bundle();
            bundle2.putBoolean("tabBottom", true);
            bundle2.putBoolean("showSelected", true);
            bundle2.putString("source", "Bubble Edit");
            stickerPickerTabFragment.setArguments(bundle2);
            fragmentManager.q().c(R.id.sticker_frame, stickerPickerTabFragment, TAG_FRAGMENT_STICKER).k();
        }
        stickerPickerTabFragment.setCurrentSticker(null);
        stickerPickerTabFragment.setStickerSelectListener(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveBubble(final boolean z6) {
        if (!isAdded()) {
            return;
        }
        this.uploadingDlg.show();
        uploadBubblePreview(this.bubbleEditorView.getPreviewBitmap(this.bubbleInfo), new Callback() { // from class: com.narvii.monetization.bubble.BubbleEditFragment.4
            @Override // com.narvii.util.Callback
            public void call(Object obj) {
                if (obj == null) {
                    BubbleEditFragment.this.uploadingDlg.dismiss();
                    return;
                }
                BubbleInfo bubbleInfoM1621clone = BubbleEditFragment.this.bubbleInfo.m1621clone();
                if (!z6) {
                    bubbleInfoM1621clone.id = null;
                }
                String str = (String) obj;
                bubbleInfoM1621clone.coverImage = str;
                Log.d("bubble", "bubble preview uploaded " + str);
                BubbleEditFragment.this.bubbleService.uploadBubble(((ConfigService) BubbleEditFragment.this.getService("config")).getCommunityId(), bubbleInfoM1621clone, BubbleEditFragment.this);
                if (z6) {
                    return;
                }
                ((StatisticsService) BubbleEditFragment.this.getService("statistics")).event("Creates Customized Chat Bubble").userPropInc("Creates Customized Chat Bubble Total");
            }
        });
    }

    private void setSelectedSticker(SlotPoint slotPoint) {
        StickerPickerTabFragment stickerPickerTabFragment = (StickerPickerTabFragment) getFragmentManager().m0(TAG_FRAGMENT_STICKER);
        if (stickerPickerTabFragment != null) {
            Sticker sticker = new Sticker();
            BubbleSlot slotByPosition = this.bubbleInfo.getSlotByPosition(slotPoint);
            if (slotByPosition != null) {
                sticker.stickerId = slotByPosition.stickerId;
            }
            stickerPickerTabFragment.setCurrentSticker(sticker);
        }
    }

    private void updateSaveButton() {
        BubbleInfo bubbleInfo;
        boolean z6 = false;
        if (!isEditMode() ? !((bubbleInfo = this.bubbleInfo) == null || bubbleInfo.backgroundPath == null || Utils.isEquals(this.curChatBubble.config, bubbleInfo)) : !(!this.editResourceDownloaed || Utils.isEquals(this.curChatBubble.config, this.bubbleInfo))) {
            z6 = true;
        }
        this.btnSaveBubble.setEnabled(z6);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id != R.id.close) {
            if (id != R.id.hide_sticker) {
                if (id == R.id.save_bubble) {
                    if (isEditMode()) {
                        ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
                        actionSheetDialog.addItem(R.string.save, 0);
                        actionSheetDialog.addItem(R.string.bubble_save_as, 0);
                        actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.monetization.bubble.BubbleEditFragment.2
                            @Override // android.content.DialogInterface.OnClickListener
                            public void onClick(DialogInterface dialogInterface, int i10) {
                                if (i10 == 0) {
                                    BubbleEditFragment.this.saveBubble(true);
                                } else {
                                    if (i10 != 1) {
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
                    return;
                }
                return;
            }
            hideSticker();
            return;
        }
        closeEditView();
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getActivity().getActionBar() != null) {
            getActivity().getActionBar().hide();
        }
        this.bubbleService = (BubbleService) getService("bubble");
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        this.uploadingDlg = progressDialog;
        progressDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.monetization.bubble.BubbleEditFragment.1
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
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

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_bubble_edit, viewGroup, false);
    }

    @Override // com.narvii.monetization.bubble.service.BubbleDownloadListener
    public void onDownloadFail(String str) {
        NVToast.makeText(getContext(), str, 1).show();
        this.downloadProgress.setVisibility(8);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString(KEY_BUBBLE_INFO, JacksonUtils.writeAsString(this.bubbleInfo));
        ChatBubble chatBubble = this.curChatBubble;
        if (chatBubble != null) {
            bundle.putString(KEY_CHAT_BUBBLE, JacksonUtils.writeAsString(chatBubble));
        }
        bundle.putBoolean("downloaded", this.editResourceDownloaed);
    }

    @Override // com.narvii.monetization.sticker.picker.StickerSelectListener
    public void onStickerSelected(Sticker sticker, StickerCollection stickerCollection) {
        if (isAdded() && this.curFocusedSlot != null) {
            updateSlots(this.curFocusedSlot, sticker, ((StickerCacheService) getService("stickerCache")).getIconUri(sticker));
            this.bubbleEditorView.updateSlotViews(this.bubbleInfo);
            updateSaveButton();
            return;
        }
        Log.e(TAG, "try to update slot when cur focus is null");
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        this.bubbleService.cancelEditDownload(this.curChatBubble);
        this.bubbleService.cancelUpload(this.bubbleInfo.getBubbleUploadId());
    }

    @Override // com.narvii.monetization.bubble.BubbleTemplatePickerFragment.TemplatePickedListener
    public void onTemplatePicked(BubbleTemplate bubbleTemplate) {
        BubbleInfo bubbleInfoM1621clone;
        String mediaUrl;
        if (!isAdded() || bubbleTemplate == null || Utils.isEqualsNotNull(this.bubbleInfo.templateId, bubbleTemplate.id())) {
            return;
        }
        this.bubbleTemplate = bubbleTemplate;
        String str = this.bubbleInfo.id;
        BubbleInfo bubbleInfo = bubbleTemplate.config;
        if (bubbleInfo == null) {
            bubbleInfoM1621clone = new BubbleInfo();
        } else {
            bubbleInfoM1621clone = bubbleInfo.m1621clone();
        }
        this.bubbleInfo = bubbleInfoM1621clone;
        bubbleInfoM1621clone.id = str;
        bubbleInfoM1621clone.templateId = bubbleTemplate.id;
        bubbleInfoM1621clone.backgroundPath = bubbleTemplate.getMaterialUrl();
        BubbleInfo bubbleInfo2 = this.bubbleInfo;
        if (bubbleTemplate.getBackgroundMedia() == null) {
            mediaUrl = null;
        } else {
            mediaUrl = bubbleTemplate.getBackgroundMedia().getMediaUrl();
        }
        bubbleInfo2.previewBackgroundUrl = mediaUrl;
        this.bubbleEditorView.updateEditorView(this.bubbleInfo);
        this.curFocusedSlot = null;
        updateSaveButton();
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        View viewFindViewById = view.findViewById(R.id.close);
        this.btnBack = viewFindViewById;
        viewFindViewById.setOnClickListener(this);
        View viewFindViewById2 = view.findViewById(R.id.save_bubble);
        this.btnSaveBubble = viewFindViewById2;
        viewFindViewById2.setOnClickListener(this);
        BubbleEditView bubbleEditView = (BubbleEditView) view.findViewById(R.id.bubble_editor);
        this.bubbleEditorView = bubbleEditView;
        bubbleEditView.setListener(this);
        this.stickerContainer = view.findViewById(R.id.sticker_picker_container);
        View viewFindViewById3 = view.findViewById(R.id.hide_sticker);
        this.btnHideSticker = viewFindViewById3;
        viewFindViewById3.setOnClickListener(this);
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
}
