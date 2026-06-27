package com.narvii.chat.input;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.EditText;
import com.narvii.amino.mastes.R;
import com.narvii.chat.input.ChatInputFragment;
import com.narvii.util.Callback;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.widget.TintButton;

/* loaded from: classes2.dex */
public class ChatInputPanelSwitcherButton extends TintButton implements View.OnClickListener {
    private EditText edit;
    public boolean isKeyboardVisible;
    private ChatInputFragment.PanelHideListener panelHideListener;
    private View panelView;
    private SwitcherAdapter switcherAdapter;

    public interface SwitcherAdapter {
        boolean checkThreadAvailable(View view);

        int getValidPanelHeight();

        void hidePanelWithKeyBoardSwitch(View view);

        void scrollChatListToBottom();

        void showPanel(View view);

        void showPanelWithKeyBoardSwitch(View view);
    }

    protected boolean doPreCheck() {
        return false;
    }

    public ChatInputPanelSwitcherButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void bindPanelLayout(View view, EditText editText, SwitcherAdapter switcherAdapter) {
        this.panelView = view;
        this.edit = editText;
        this.switcherAdapter = switcherAdapter;
        setOnClickListener(this);
        SoftKeyboard.observeKeyboard(editText, new Callback<Boolean>() { // from class: com.narvii.chat.input.ChatInputPanelSwitcherButton.1
            @Override // com.narvii.util.Callback
            public void call(Boolean bool) {
                ChatInputPanelSwitcherButton.this.isKeyboardVisible = bool.booleanValue();
            }
        });
        showIcon();
    }

    public void setPanelHideListener(ChatInputFragment.PanelHideListener panelHideListener) {
        this.panelHideListener = panelHideListener;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        SwitcherAdapter switcherAdapter = this.switcherAdapter;
        if (switcherAdapter == null || switcherAdapter.checkThreadAvailable(view)) {
            if (this.panelView.getVisibility() != 0) {
                if (doPreCheck()) {
                    return;
                }
                showKeyboardIcon();
                this.panelHideListener.onPanelShow();
                int validPanelHeight = this.switcherAdapter.getValidPanelHeight();
                if (validPanelHeight > 0) {
                    this.panelView.getLayoutParams().height = validPanelHeight;
                }
                if (this.isKeyboardVisible) {
                    this.switcherAdapter.showPanelWithKeyBoardSwitch(this.panelView);
                    return;
                } else {
                    this.switcherAdapter.showPanel(this.panelView);
                    Utils.post(new Runnable() { // from class: com.narvii.chat.input.ChatInputPanelSwitcherButton.2
                        @Override // java.lang.Runnable
                        public void run() {
                            ChatInputPanelSwitcherButton.this.switcherAdapter.scrollChatListToBottom();
                        }
                    });
                    return;
                }
            }
            hideTargetPanel();
            this.switcherAdapter.hidePanelWithKeyBoardSwitch(this.panelView);
        }
    }

    public void showIcon() {
        setImageResource(R.drawable.ic_chat_input_sticker_button);
    }

    public void showKeyboardIcon() {
        setImageResource(R.drawable.ic_chat_input_keyboard);
    }

    protected void hideTargetPanel() {
        showIcon();
        this.panelHideListener.onPanelHide();
    }
}
