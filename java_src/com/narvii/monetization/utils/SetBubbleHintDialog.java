package com.narvii.monetization.utils;

import android.content.Intent;
import android.support.v4.content.ContextCompat;
import android.view.View;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.model.ChatBubble;
import com.narvii.monetization.bubble.BubbleHelper;
import com.narvii.monetization.bubble.SetBubbleForThreadFragment;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.widget.NVImageView;

/* loaded from: classes3.dex */
public class SetBubbleHintDialog extends AlertDialog implements View.OnClickListener {
    private View btnClose;
    private View btnSelectChat;
    private View btnSetAllChats;
    private ChatBubble bubble;
    NVContext context;
    private NVImageView imgPreview;
    ApplyAllChatListener listener;
    private String threadId;
    private TextView tvBubbleName;

    public interface ApplyAllChatListener {
        void onAppliedBubble(String str);
    }

    public void setApplyAllChatBubbleListener(ApplyAllChatListener applyAllChatListener) {
        this.listener = applyAllChatListener;
    }

    public SetBubbleHintDialog(NVContext nVContext, ChatBubble chatBubble, String str) {
        super(nVContext.getContext());
        this.context = nVContext;
        this.bubble = chatBubble;
        this.threadId = str;
        setContentView(R.layout.dialog_set_bubble_hint);
        this.btnClose = findViewById(R.id.close);
        this.btnClose.setOnClickListener(this);
        this.btnSelectChat = findViewById(R.id.select_a_chat);
        this.btnSelectChat.setOnClickListener(this);
        this.btnSetAllChats = findViewById(R.id.set_all_chats);
        this.btnSetAllChats.setOnClickListener(this);
        this.imgPreview = (NVImageView) findViewById(R.id.bubble_preview);
        boolean z = chatBubble.type == 2;
        int iDpToPx = z ? 0 : (int) Utils.dpToPx(getContext(), 2.0f);
        this.imgPreview.setPadding(iDpToPx, iDpToPx, iDpToPx, iDpToPx);
        this.imgPreview.setBackgroundDrawable(z ? null : ContextCompat.getDrawable(getContext(), R.drawable.bubble_icon_stroke_bg));
        this.imgPreview.setImageUrl(chatBubble.coverImage);
        this.tvBubbleName = (TextView) findViewById(R.id.bubble_name);
        this.tvBubbleName.setText(chatBubble != null ? chatBubble.name : null);
        this.tvBubbleName.setVisibility(chatBubble == null ? 8 : 0);
        findViewById(R.id.amino_plus_badge).setVisibility((chatBubble.getRestrictionInfo() == null || chatBubble.getRestrictionInfo().restrictType != 2) ? 8 : 0);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.close) {
            dismiss();
            return;
        }
        if (id != R.id.select_a_chat) {
            if (id != R.id.set_all_chats) {
                return;
            }
            sendSetBubbleRequest(true);
        } else {
            Intent intent = FragmentWrapperActivity.intent(SetBubbleForThreadFragment.class);
            intent.putExtra("bubble", JacksonUtils.writeAsString(this.bubble));
            this.context.getContext().startActivity(intent);
            dismiss();
        }
    }

    private void sendSetBubbleRequest(final boolean z) {
        new BubbleHelper(this.context).sendApplyBubbleRequest(this.bubble, z, this.threadId, new Callback<Boolean>() { // from class: com.narvii.monetization.utils.SetBubbleHintDialog.1
            @Override // com.narvii.util.Callback
            public void call(Boolean bool) {
                SetBubbleHintDialog setBubbleHintDialog;
                ApplyAllChatListener applyAllChatListener;
                if (bool.booleanValue()) {
                    SetBubbleHintDialog.this.dismiss();
                    if (!(SetBubbleHintDialog.this.context.getContext() instanceof NVActivity)) {
                        NVToast.makeText(SetBubbleHintDialog.this.getContext(), R.string.success, 1).show();
                    }
                    if (!z || (applyAllChatListener = (setBubbleHintDialog = SetBubbleHintDialog.this).listener) == null) {
                        return;
                    }
                    applyAllChatListener.onAppliedBubble(setBubbleHintDialog.bubble.id());
                }
            }
        });
    }
}
