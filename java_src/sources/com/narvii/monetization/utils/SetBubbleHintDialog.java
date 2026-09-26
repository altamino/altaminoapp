package com.narvii.monetization.utils;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.model.ChatBubble;
import com.narvii.monetization.bubble.BubbleHelper;
import com.narvii.monetization.bubble.SetBubbleForThreadFragment;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.widget.NVImageView;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes9.dex */
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

    public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public void setApplyAllChatBubbleListener(ApplyAllChatListener applyAllChatListener) {
        this.listener = applyAllChatListener;
    }

    private void sendSetBubbleRequest(final boolean z6) {
        new BubbleHelper(this.context).sendApplyBubbleRequest(this.bubble, z6, this.threadId, new Callback<Boolean>() { // from class: com.narvii.monetization.utils.SetBubbleHintDialog.1
            @Override // com.narvii.util.Callback
            public void call(Boolean bool) {
                SetBubbleHintDialog setBubbleHintDialog;
                ApplyAllChatListener applyAllChatListener;
                if (bool.booleanValue()) {
                    SetBubbleHintDialog.this.dismiss();
                    if (SetBubbleHintDialog.this.context.getContext() instanceof NVActivity) {
                        ((StatisticsService) ((NVActivity) SetBubbleHintDialog.this.context.getContext()).getService("statistics")).event("Picks a chat bubble").userPropInc("Picks a chat bubble Total").param("Customized", SetBubbleHintDialog.this.bubble.type == 1).param("Chat", z6 ? "All Chats" : "Current Chat").param(ExternalPostPreviewFragment.SOURCE, "Store Product Detail Page");
                    } else {
                        NVToast.makeText(SetBubbleHintDialog.this.getContext(), R.string.success, 1).show();
                    }
                    if (!z6 || (applyAllChatListener = (setBubbleHintDialog = SetBubbleHintDialog.this).listener) == null) {
                        return;
                    }
                    applyAllChatListener.onAppliedBubble(setBubbleHintDialog.bubble.id());
                }
            }
        });
    }

    public SetBubbleHintDialog(NVContext nVContext, ChatBubble chatBubble, String str) {
        boolean z6;
        int iDpToPx;
        Drawable drawable;
        super(nVContext.getContext());
        this.context = nVContext;
        this.bubble = chatBubble;
        this.threadId = str;
        setContentView(R.layout.dialog_set_bubble_hint);
        View viewFindViewById = findViewById(R.id.close);
        this.btnClose = viewFindViewById;
        viewFindViewById.setOnClickListener(this);
        View viewFindViewById2 = findViewById(R.id.select_a_chat);
        this.btnSelectChat = viewFindViewById2;
        viewFindViewById2.setOnClickListener(this);
        View viewFindViewById3 = findViewById(R.id.set_all_chats);
        this.btnSetAllChats = viewFindViewById3;
        viewFindViewById3.setOnClickListener(this);
        this.imgPreview = (NVImageView) findViewById(R.id.bubble_preview);
        if (chatBubble.type == 2) {
            z6 = true;
        } else {
            z6 = false;
        }
        if (z6) {
            iDpToPx = 0;
        } else {
            iDpToPx = (int) Utils.dpToPx(getContext(), 2.0f);
        }
        this.imgPreview.setPadding(iDpToPx, iDpToPx, iDpToPx, iDpToPx);
        NVImageView nVImageView = this.imgPreview;
        if (z6) {
            drawable = null;
        } else {
            drawable = ContextCompat.getDrawable(getContext(), R.drawable.bubble_icon_stroke_bg);
        }
        nVImageView.setBackgroundDrawable(drawable);
        this.imgPreview.setImageUrl(chatBubble.coverImage);
        TextView textView = (TextView) findViewById(R.id.bubble_name);
        this.tvBubbleName = textView;
        textView.setText(chatBubble.name);
        this.tvBubbleName.setVisibility(0);
        findViewById(R.id.amino_plus_badge).setVisibility((chatBubble.getRestrictionInfo() == null || chatBubble.getRestrictionInfo().restrictType != 2) ? 8 : 0);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id != R.id.close) {
            if (id != R.id.select_a_chat) {
                if (id == R.id.set_all_chats) {
                    sendSetBubbleRequest(true);
                    return;
                }
                return;
            } else {
                Intent intent = FragmentWrapperActivity.intent(SetBubbleForThreadFragment.class);
                intent.putExtra("bubble", JacksonUtils.writeAsString(this.bubble));
                safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(this.context.getContext(), intent);
                dismiss();
                return;
            }
        }
        dismiss();
    }
}
