package com.narvii.chat.video.entry;

import android.content.res.Resources;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.app.NVDialog;
import com.narvii.modulization.CommunityConfigHelper;

/* loaded from: classes2.dex */
public class VVChatEntryDialog extends NVDialog implements View.OnClickListener {
    private View btnClose;
    CommunityConfigHelper communityConfigHelper;
    private NVContext ctx;
    EntrySelectListener entrySelectListener;
    private boolean isAvatarChatEnable;
    private boolean isVideoChatEnabled;
    private boolean isVoiceChatEnabled;
    private View vEntryContainer;
    private View vRootView;
    private View vVideoEntry;
    private View vVoiceEntry;

    public interface EntrySelectListener {
        void onEntrySelected(int i);
    }

    public void setEntrySelectListener(EntrySelectListener entrySelectListener) {
        this.entrySelectListener = entrySelectListener;
    }

    public VVChatEntryDialog(NVContext nVContext) {
        super(nVContext.getContext(), R.style.CustomDialog);
        super.setContentView(R.layout.dialog_vv_chat_entry);
        this.ctx = nVContext;
        this.vRootView = findViewById(R.id.dialog_root);
        this.communityConfigHelper = new CommunityConfigHelper(nVContext);
        this.isVoiceChatEnabled = this.communityConfigHelper.isAudio2ChatEnable();
        this.isVideoChatEnabled = this.communityConfigHelper.isVideoChatEnable();
        this.isAvatarChatEnable = this.communityConfigHelper.isAvatarChatEnable();
        this.vVoiceEntry = findViewById(R.id.voice_container);
        this.vVideoEntry = findViewById(R.id.video_container);
        this.btnClose = findViewById(R.id.close);
        this.vEntryContainer = findViewById(R.id.entry_containers);
        this.btnClose.setOnClickListener(this);
        this.vVoiceEntry.setOnClickListener(this);
        this.vVideoEntry.setOnClickListener(this);
        this.vVoiceEntry.setVisibility(this.isVoiceChatEnabled ? 0 : 8);
        this.vVideoEntry.setVisibility(this.isVideoChatEnabled ? 0 : 8);
    }

    @Override // com.narvii.app.NVDialog, android.app.Dialog
    public void show() throws Resources.NotFoundException {
        super.show();
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(getContext(), R.anim.rtc_entry_scale_in);
        Animation animationLoadAnimation2 = AnimationUtils.loadAnimation(getContext(), R.anim.rtc_entry_alpha_in);
        View view = this.vRootView;
        if (view != null) {
            view.startAnimation(animationLoadAnimation2);
        }
        View view2 = this.vEntryContainer;
        if (view2 != null) {
            view2.startAnimation(animationLoadAnimation);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.close) {
            dismiss();
        } else if (id == R.id.video_container) {
            onChannelSelected(4);
        } else {
            if (id != R.id.voice_container) {
                return;
            }
            onChannelSelected(1);
        }
    }

    private void onChannelSelected(int i) {
        EntrySelectListener entrySelectListener = this.entrySelectListener;
        if (entrySelectListener != null) {
            entrySelectListener.onEntrySelected(i);
            dismiss();
        }
    }
}
