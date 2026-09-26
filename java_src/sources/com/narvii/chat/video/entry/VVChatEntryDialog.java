package com.narvii.chat.video.entry;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.app.NVDialog;
import com.narvii.modulization.CommunityConfigHelper;

/* JADX INFO: loaded from: classes5.dex */
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
        void onEntrySelected(int i10);
    }

    public void setEntrySelectListener(EntrySelectListener entrySelectListener) {
        this.entrySelectListener = entrySelectListener;
    }

    private void onChannelSelected(int i10) {
        EntrySelectListener entrySelectListener = this.entrySelectListener;
        if (entrySelectListener != null) {
            entrySelectListener.onEntrySelected(i10);
            dismiss();
        }
    }

    public VVChatEntryDialog(NVContext nVContext) {
        int i10;
        super(nVContext.getContext(), R.style.CustomDialog);
        super.setContentView(R.layout.dialog_vv_chat_entry);
        this.ctx = nVContext;
        this.vRootView = findViewById(R.id.dialog_root);
        CommunityConfigHelper communityConfigHelper = new CommunityConfigHelper(nVContext);
        this.communityConfigHelper = communityConfigHelper;
        this.isVoiceChatEnabled = communityConfigHelper.isAudio2ChatEnable();
        this.isVideoChatEnabled = this.communityConfigHelper.isVideoChatEnable();
        this.isAvatarChatEnable = this.communityConfigHelper.isAvatarChatEnable();
        this.vVoiceEntry = findViewById(R.id.voice_container);
        this.vVideoEntry = findViewById(R.id.video_container);
        this.btnClose = findViewById(R.id.close);
        this.vEntryContainer = findViewById(R.id.entry_containers);
        this.btnClose.setOnClickListener(this);
        this.vVoiceEntry.setOnClickListener(this);
        this.vVideoEntry.setOnClickListener(this);
        View view = this.vVoiceEntry;
        if (this.isVoiceChatEnabled) {
            i10 = 0;
        } else {
            i10 = 8;
        }
        view.setVisibility(i10);
        this.vVideoEntry.setVisibility(this.isVideoChatEnabled ? 0 : 8);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id != R.id.close) {
            if (id != R.id.video_container) {
                if (id == R.id.voice_container) {
                    onChannelSelected(1);
                    return;
                }
                return;
            }
            onChannelSelected(4);
            return;
        }
        dismiss();
    }

    @Override // com.narvii.app.NVDialog, android.app.Dialog
    public void show() {
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
}
